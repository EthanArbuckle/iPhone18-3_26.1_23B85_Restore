@interface _UIAnimatedAttachmentView
+ (id)cacheKeyForAttachmentData:(id)a3 name:(id)a4;
+ (id)cachedObjectWithKey:(id)a3 creationBlock:(id)a4;
- (_UIAnimatedAttachmentView)initWithAttachment:(id)a3;
- (_UIAnimatedAttachmentView)initWithCoder:(id)a3;
- (_UIAnimatedAttachmentView)initWithFrame:(CGRect)a3;
@end

@implementation _UIAnimatedAttachmentView

+ (id)cacheKeyForAttachmentData:(id)a3 name:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  v4 = a3;
  CC_SHA1_Init(&v10);
  v5 = v4;
  v6 = [v5 bytes];
  v7 = [v4 length];

  CC_SHA1_Update(&v10, v6, v7);
  CC_SHA1_Final(md, &v10);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];

  return v8;
}

+ (id)cachedObjectWithKey:(id)a3 creationBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1ED4A2358 != -1)
  {
    dispatch_once(&qword_1ED4A2358, &__block_literal_global_624);
  }

  v7 = [qword_1ED4A2350 objectForKey:v5];
  if (!v7)
  {
    v7 = v6[2](v6);
    objc_setAssociatedObject(v7, &_MergedGlobals_1332, v5, 1);
    [qword_1ED4A2350 setObject:v7 forKey:v5];
  }

  return v7;
}

- (_UIAnimatedAttachmentView)initWithAttachment:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _UIAnimatedAttachmentView;
  v5 = [(UIView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [v4 fileWrapper];
    v7 = [v6 regularFileContents];

    v8 = objc_opt_class();
    v9 = [v4 fileWrapper];
    v10 = [v9 preferredFilename];
    v11 = [v8 cacheKeyForAttachmentData:v7 name:v10];

    v12 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48___UIAnimatedAttachmentView_initWithAttachment___block_invoke;
    v17[3] = &unk_1E70FD370;
    v18 = v7;
    v13 = v7;
    v14 = [v12 cachedObjectWithKey:v11 creationBlock:v17];
    v15 = [(UIView *)v5 layer];
    [v15 addAnimation:v14 forKey:@"UIAnimatedImage"];
  }

  return v5;
}

- (_UIAnimatedAttachmentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UIAnimatedAttachmentView *)self initWithAttachment:0];
  v8 = v7;
  if (v7)
  {
    [(UIView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (_UIAnimatedAttachmentView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIAnimatedAttachmentView;
  return [(UIView *)&v4 initWithCoder:a3];
}

@end