@interface VKBlockUIActivity
- (VKBlockUIActivity)initWithTitle:(id)title image:(id)image activityType:(id)type block:(id)block;
- (VKBlockUIActivity)initWithTitle:(id)title systemImageName:(id)name activityType:(id)type block:(id)block;
- (id)activityType;
- (void)performActivity;
@end

@implementation VKBlockUIActivity

- (VKBlockUIActivity)initWithTitle:(id)title image:(id)image activityType:(id)type block:(id)block
{
  titleCopy = title;
  imageCopy = image;
  typeCopy = type;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = VKBlockUIActivity;
  v15 = [(UIActivity *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    v17 = _Block_copy(blockCopy);
    block = v16->_block;
    v16->_block = v17;

    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v16->_image, image);
  }

  return v16;
}

- (VKBlockUIActivity)initWithTitle:(id)title systemImageName:(id)name activityType:(id)type block:(id)block
{
  v10 = MEMORY[0x1E69DCAB8];
  blockCopy = block;
  typeCopy = type;
  titleCopy = title;
  v14 = [v10 systemImageNamed:name];
  v15 = [(VKBlockUIActivity *)self initWithTitle:titleCopy image:v14 activityType:typeCopy block:blockCopy];

  return v15;
}

- (id)activityType
{
  type = [(VKBlockUIActivity *)self type];
  v4 = type;
  if (type)
  {
    v5 = type;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    title = [(VKBlockUIActivity *)self title];
    v5 = [v6 stringWithFormat:@"%@.%@", v7, title];
  }

  return v5;
}

- (void)performActivity
{
  block = [(VKBlockUIActivity *)self block];

  if (block)
  {
    block2 = [(VKBlockUIActivity *)self block];
    block2[2]();
  }

  [(UIActivity *)self activityDidFinish:1];
}

@end