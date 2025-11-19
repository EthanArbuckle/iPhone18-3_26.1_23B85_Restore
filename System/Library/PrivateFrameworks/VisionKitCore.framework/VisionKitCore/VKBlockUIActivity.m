@interface VKBlockUIActivity
- (VKBlockUIActivity)initWithTitle:(id)a3 image:(id)a4 activityType:(id)a5 block:(id)a6;
- (VKBlockUIActivity)initWithTitle:(id)a3 systemImageName:(id)a4 activityType:(id)a5 block:(id)a6;
- (id)activityType;
- (void)performActivity;
@end

@implementation VKBlockUIActivity

- (VKBlockUIActivity)initWithTitle:(id)a3 image:(id)a4 activityType:(id)a5 block:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = VKBlockUIActivity;
  v15 = [(UIActivity *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    v17 = _Block_copy(v14);
    block = v16->_block;
    v16->_block = v17;

    objc_storeStrong(&v16->_type, a5);
    objc_storeStrong(&v16->_image, a4);
  }

  return v16;
}

- (VKBlockUIActivity)initWithTitle:(id)a3 systemImageName:(id)a4 activityType:(id)a5 block:(id)a6
{
  v10 = MEMORY[0x1E69DCAB8];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v10 systemImageNamed:a4];
  v15 = [(VKBlockUIActivity *)self initWithTitle:v13 image:v14 activityType:v12 block:v11];

  return v15;
}

- (id)activityType
{
  v3 = [(VKBlockUIActivity *)self type];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [(VKBlockUIActivity *)self title];
    v5 = [v6 stringWithFormat:@"%@.%@", v7, v8];
  }

  return v5;
}

- (void)performActivity
{
  v3 = [(VKBlockUIActivity *)self block];

  if (v3)
  {
    v4 = [(VKBlockUIActivity *)self block];
    v4[2]();
  }

  [(UIActivity *)self activityDidFinish:1];
}

@end