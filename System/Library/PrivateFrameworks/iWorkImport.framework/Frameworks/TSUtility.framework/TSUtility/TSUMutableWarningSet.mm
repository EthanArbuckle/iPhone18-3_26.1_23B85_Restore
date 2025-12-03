@interface TSUMutableWarningSet
- (BOOL)containsWarningPassingTest:(id)test;
- (BOOL)hasWarningsOfKind:(int64_t)kind;
- (NSSet)allWarnings;
- (TSUMutableWarningSet)init;
- (TSUMutableWarningSet)initWithSet:(id)set;
- (id)popAllWarnings;
- (id)popAllWarningsIfContainsWarningPassingTest:(id)test;
- (id)warningsOfKind:(int64_t)kind;
- (id)warningsPassingTest:(id)test;
- (unint64_t)count;
- (void)addWarning:(id)warning;
- (void)unionSet:(id)set;
@end

@implementation TSUMutableWarningSet

- (TSUMutableWarningSet)init
{
  v8.receiver = self;
  v8.super_class = TSUMutableWarningSet;
  v2 = [(TSUMutableWarningSet *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("TIADocument.PersistenceWarnings", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    warnings = v2->_warnings;
    v2->_warnings = v5;
  }

  return v2;
}

- (TSUMutableWarningSet)initWithSet:(id)set
{
  setCopy = set;
  v5 = [(TSUMutableWarningSet *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableSet *)v5->_warnings unionSet:setCopy];
  }

  return v6;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27708F408;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)unionSet:(id)set
{
  setCopy = set;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_27708F4D8;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)addWarning:(id)warning
{
  warningCopy = warning;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_27708F57C;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = warningCopy;
  v6 = warningCopy;
  dispatch_sync(accessQueue, v7);
}

- (id)warningsPassingTest:(id)test
{
  testCopy = test;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27708F660;
  block[3] = &unk_27A7024A0;
  block[4] = self;
  v14 = testCopy;
  v7 = v5;
  v13 = v7;
  v8 = testCopy;
  dispatch_sync(accessQueue, block);
  v9 = v13;
  v10 = v7;

  return v7;
}

- (BOOL)containsWarningPassingTest:(id)test
{
  testCopy = test;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27708F83C;
  block[3] = &unk_27A7024F0;
  block[4] = self;
  v9 = testCopy;
  v10 = &v11;
  v6 = testCopy;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQueue;
}

- (NSSet)allWarnings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_27708FA10;
  v10 = sub_27708FA20;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27708FA28;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)popAllWarnings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_27708FA10;
  v10 = sub_27708FA20;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27708FB64;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)popAllWarningsIfContainsWarningPassingTest:(id)test
{
  testCopy = test;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_27708FA10;
  v19 = sub_27708FA20;
  v20 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27708FD24;
  block[3] = &unk_27A7024F0;
  block[4] = self;
  v6 = testCopy;
  v13 = v6;
  v14 = &v15;
  dispatch_sync(accessQueue, block);
  v7 = v16[5];
  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v9 = v16[5];
    v16[5] = v8;

    v7 = v16[5];
  }

  v10 = v7;

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)warningsOfKind:(int64_t)kind
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27708FF0C;
  v5[3] = &unk_27A702510;
  v5[4] = kind;
  v3 = [(TSUMutableWarningSet *)self warningsPassingTest:v5];

  return v3;
}

- (BOOL)hasWarningsOfKind:(int64_t)kind
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_27708FFAC;
  v4[3] = &unk_27A702510;
  v4[4] = kind;
  return [(TSUMutableWarningSet *)self containsWarningPassingTest:v4];
}

@end