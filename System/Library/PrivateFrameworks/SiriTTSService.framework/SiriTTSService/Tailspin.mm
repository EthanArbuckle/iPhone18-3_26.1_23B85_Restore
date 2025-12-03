@interface Tailspin
+ (void)collectTailspinToFile:(id)file minTimestamp:(unint64_t)timestamp completion:(id)completion;
@end

@implementation Tailspin

+ (void)collectTailspinToFile:(id)file minTimestamp:(unint64_t)timestamp completion:(id)completion
{
  fileCopy = file;
  completionCopy = completion;
  v9 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__Tailspin_collectTailspinToFile_minTimestamp_completion___block_invoke;
  block[3] = &unk_1E7AF3A10;
  v14 = completionCopy;
  timestampCopy = timestamp;
  v13 = fileCopy;
  v10 = completionCopy;
  v11 = fileCopy;
  dispatch_async(v9, block);
}

void __58__Tailspin_collectTailspinToFile_minTimestamp_completion___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E59B0];
  v9[0] = MEMORY[0x1E695E118];
  v3 = *MEMORY[0x1E69E59B8];
  v8[0] = v2;
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 48)];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  [*(a1 + 32) fileDescriptor];
  v7 = *(a1 + 40);
  tailspin_dump_output_with_options();

  v6 = *MEMORY[0x1E69E9840];
}

void __58__Tailspin_collectTailspinToFile_minTimestamp_completion___block_invoke_2(uint64_t a1, char a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A578];
    v8[0] = @"Unable to dump tailspin";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v3 = [v4 errorWithDomain:&stru_1F28C4E90 code:-1 userInfo:v5];
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

@end