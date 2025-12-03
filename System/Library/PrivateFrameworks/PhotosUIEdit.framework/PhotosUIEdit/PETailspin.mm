@interface PETailspin
- (PETailspin)init;
- (void)dealloc;
- (void)dumpTailspinOutputWithCompletion:(id)completion;
@end

@implementation PETailspin

- (void)dumpTailspinOutputWithCompletion:(id)completion
{
  v18[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:1];
  [v4 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v5 = NSTemporaryDirectory();
  v6 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v4 stringFromDate:date];
  v9 = [v6 stringWithFormat:@"tailspin_trace_%@.tailspin", v8];

  v10 = [v5 stringByAppendingPathComponent:v9];
  v11 = umask(0);
  LODWORD(v8) = open([v10 UTF8String], 2562, 432);
  umask(v11);
  if (v8)
  {
    v12 = *MEMORY[0x277D82CC8];
    v17[0] = *MEMORY[0x277D82D28];
    v17[1] = v12;
    v18[0] = MEMORY[0x277CBEC38];
    v18[1] = MEMORY[0x277CBEC38];
    v17[2] = *MEMORY[0x277D82CC0];
    v18[2] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v14 = dispatch_get_global_queue(0, 0);
    v15 = v10;
    v16 = completionCopy;
    tailspin_dump_output_with_options();
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __47__PETailspin_dumpTailspinOutputWithCompletion___block_invoke(uint64_t a1, int a2)
{
  close(*(a1 + 48));
  if (a2)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)dealloc
{
  tailspinPropertyQueue = [(PETailspin *)self tailspinPropertyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__PETailspin_dealloc__block_invoke;
  block[3] = &unk_279A30D28;
  block[4] = self;
  dispatch_sync(tailspinPropertyQueue, block);

  v4.receiver = self;
  v4.super_class = PETailspin;
  [(PETailspin *)&v4 dealloc];
}

uint64_t __21__PETailspin_dealloc__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) tailspinConfig];
  if (result)
  {
    MEMORY[0x25F8BF640]([*(a1 + 32) tailspinConfig]);
    v3 = *(a1 + 32);

    return [v3 setTailspinConfig:0];
  }

  return result;
}

- (PETailspin)init
{
  v5.receiver = self;
  v5.super_class = PETailspin;
  v2 = [(PETailspin *)&v5 init];
  v3 = dispatch_queue_create("PETailspin", 0);
  [(PETailspin *)v2 setTailspinPropertyQueue:v3];

  return v2;
}

@end