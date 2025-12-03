@interface _UIAnimatedAttachmentView
+ (id)cacheKeyForAttachmentData:(id)data name:(id)name;
+ (id)cachedObjectWithKey:(id)key creationBlock:(id)block;
- (_UIAnimatedAttachmentView)initWithAttachment:(id)attachment;
- (_UIAnimatedAttachmentView)initWithCoder:(id)coder;
- (_UIAnimatedAttachmentView)initWithFrame:(CGRect)frame;
@end

@implementation _UIAnimatedAttachmentView

+ (id)cacheKeyForAttachmentData:(id)data name:(id)name
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  dataCopy = data;
  CC_SHA1_Init(&v10);
  v5 = dataCopy;
  bytes = [v5 bytes];
  v7 = [dataCopy length];

  CC_SHA1_Update(&v10, bytes, v7);
  CC_SHA1_Final(md, &v10);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];

  return v8;
}

+ (id)cachedObjectWithKey:(id)key creationBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  if (qword_1ED4A2358 != -1)
  {
    dispatch_once(&qword_1ED4A2358, &__block_literal_global_624);
  }

  v7 = [qword_1ED4A2350 objectForKey:keyCopy];
  if (!v7)
  {
    v7 = blockCopy[2](blockCopy);
    objc_setAssociatedObject(v7, &_MergedGlobals_1332, keyCopy, 1);
    [qword_1ED4A2350 setObject:v7 forKey:keyCopy];
  }

  return v7;
}

- (_UIAnimatedAttachmentView)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v19.receiver = self;
  v19.super_class = _UIAnimatedAttachmentView;
  v5 = [(UIView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    fileWrapper = [attachmentCopy fileWrapper];
    regularFileContents = [fileWrapper regularFileContents];

    v8 = objc_opt_class();
    fileWrapper2 = [attachmentCopy fileWrapper];
    preferredFilename = [fileWrapper2 preferredFilename];
    v11 = [v8 cacheKeyForAttachmentData:regularFileContents name:preferredFilename];

    v12 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48___UIAnimatedAttachmentView_initWithAttachment___block_invoke;
    v17[3] = &unk_1E70FD370;
    v18 = regularFileContents;
    v13 = regularFileContents;
    v14 = [v12 cachedObjectWithKey:v11 creationBlock:v17];
    layer = [(UIView *)v5 layer];
    [layer addAnimation:v14 forKey:@"UIAnimatedImage"];
  }

  return v5;
}

- (_UIAnimatedAttachmentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(_UIAnimatedAttachmentView *)self initWithAttachment:0];
  v8 = v7;
  if (v7)
  {
    [(UIView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (_UIAnimatedAttachmentView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIAnimatedAttachmentView;
  return [(UIView *)&v4 initWithCoder:coder];
}

@end