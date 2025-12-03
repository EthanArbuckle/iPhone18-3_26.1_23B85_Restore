@interface TSCH3DDataBufferResource
+ (TSCH3DDataBufferResource)resourceWithBuffer:(id)buffer;
- (TSCH3DDataBufferResource)initWithBuffer:(id)buffer;
- (id)buffer;
- (id)description;
- (void)clear;
- (void)setBuffer:(id)buffer;
- (void)setChanged:(BOOL)changed;
@end

@implementation TSCH3DDataBufferResource

+ (TSCH3DDataBufferResource)resourceWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithBuffer_(v5, v6, v7, v8, v9, bufferCopy);

  return v10;
}

- (TSCH3DDataBufferResource)initWithBuffer:(id)buffer
{
  bufferCopy = buffer;
  v9.receiver = self;
  v9.super_class = TSCH3DDataBufferResource;
  v6 = [(TSCH3DResource *)&v9 initWithCaching:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._cache, buffer);
    v7->super._cached = 1;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DDataBufferResource;
  v4 = [(TSCH3DDataBufferResource *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(%@)", v4, self->super._cache);

  return v9;
}

- (void)setChanged:(BOOL)changed
{
  v4.receiver = self;
  v4.super_class = TSCH3DDataBufferResource;
  [(TSCH3DResource *)&v4 setChanged:changed];
  self->super._cached = 1;
}

- (id)buffer
{
  if (!self->super._cached)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DDataBufferResource buffer]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBufferResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 52, 0, "data buffer resource should alaways be cached");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  cache = self->super._cache;

  return cache;
}

- (void)setBuffer:(id)buffer
{
  objc_storeStrong(&self->super._cache, buffer);
  objc_msgSend_setChanged_(self, v4, v5, v6, v7, 1);
  self->super._cached = 1;
}

- (void)clear
{
  v9 = objc_msgSend_buffer(self, a2, v2, v3, v4);
  objc_msgSend_clear(v9, v5, v6, v7, v8);
}

@end