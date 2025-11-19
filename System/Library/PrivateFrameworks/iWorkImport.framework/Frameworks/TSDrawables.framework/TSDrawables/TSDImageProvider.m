@interface TSDImageProvider
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isValid;
- (CGSize)naturalSize;
- (TSDImageProvider)initWithImageData:(id)a3;
- (TSDImageProvider)retain;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
- (void)i_flushIfNoOneUsing;
- (void)release;
@end

@implementation TSDImageProvider

+ (id)allocWithZone:(_NSZone *)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSDImageProvider;
  result = objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  if (result)
  {
    atomic_store(1u, result + 8);
  }

  return result;
}

- (TSDImageProvider)initWithImageData:(id)a3
{
  if (!a3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageProvider initWithImageData:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 37, 0, "invalid nil value for '%{public}s'", "imageData");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v21.receiver = self;
  v21.super_class = TSDImageProvider;
  v12 = [(TSDImageProvider *)&v21 init];
  if (v12)
  {
    v12->mImageData = a3;
    v13 = objc_alloc(MEMORY[0x277D81370]);
    v16 = objc_msgSend_context(a3, v14, v15);
    v12->mObjectContextReference = objc_msgSend_initWithObject_(v13, v17, v16);
    objc_msgSend_i_commonInit(v12, v18, v19);
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDImageProvider;
  [(TSDImageProvider *)&v3 dealloc];
}

- (CGSize)naturalSize
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageProvider naturalSize]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 68, 0, "subclasses of TSDImageProvider must implement -naturalSize");
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = 100.0;
  v10 = 100.0;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)isValid
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageProvider isValid]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 86, 0, "subclasses of TSDImageProvider must implement -isValid");
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  return 1;
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageProvider drawImageInContext:rect:]", a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 96, 0, "subclasses of TSDImageProvider must implement -drawImageInContext:rect:");
  v11 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (TSDImageProvider)retain
{
  atomic_fetch_add(&self->mRetainCount, 1u);
  v3.receiver = self;
  v3.super_class = TSDImageProvider;
  return [(TSDImageProvider *)&v3 retain];
}

- (void)release
{
  atomic_fetch_add(&self->mRetainCount, 0xFFFFFFFF);
  v2.receiver = self;
  v2.super_class = TSDImageProvider;
  [(TSDImageProvider *)&v2 release];
}

- (void)i_flushIfNoOneUsing
{
  v3 = atomic_load(&self->mRetainCount);
  if (v3 == 1)
  {
    objc_msgSend_flush(self, a2, v2);
  }
}

@end