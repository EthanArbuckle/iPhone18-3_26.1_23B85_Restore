@interface _UIStoryboardProxy
- (_UIStoryboardProxy)initWithCoder:(id)coder;
- (_UIStoryboardProxy)initWithStoryboard:(id)storyboard;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStoryboardProxy

- (_UIStoryboardProxy)initWithStoryboard:(id)storyboard
{
  v6.receiver = self;
  v6.super_class = _UIStoryboardProxy;
  v4 = [(_UIStoryboardProxy *)&v6 init];
  if (v4)
  {
    if (storyboard)
    {
      v4->_storyboard = storyboard;
    }

    else
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SWarningTriedT.isa, "[_UIStoryboardProxy initWithStoryboard:]", 0);
      }

      return 0;
    }
  }

  return v4;
}

- (_UIStoryboardProxy)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kStoryboardNameKey"];
  if (v5)
  {
    v6 = v5;
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kStoryboardBundlePathKey"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AAE8] bundleWithPath:v7];
    }

    else
    {
      v8 = 0;
    }

    v11 = [UIStoryboard storyboardWithName:v6 bundle:v8];
  }

  else
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SNoStoryboardN.isa, "[_UIStoryboardProxy initWithCoder:]", self);
    }

    v11 = 0;
  }

  selfCopy = self;

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  name = [(UIStoryboard *)self->_storyboard name];
  if (name)
  {
    [coder encodeObject:name forKey:@"kStoryboardNameKey"];
    bundle = [(UIStoryboard *)self->_storyboard bundle];
    if (bundle)
    {
      v7 = bundle;
      if (bundle != [MEMORY[0x1E696AAE8] mainBundle])
      {
        bundlePath = [(NSBundle *)v7 bundlePath];
        if (bundlePath)
        {

          [coder encodeObject:bundlePath forKey:@"kStoryboardBundlePathKey"];
        }

        else if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SStoryboardBun.isa, "[_UIStoryboardProxy encodeWithCoder:]", v7);
        }
      }
    }
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SStoryboardHas.isa, "[_UIStoryboardProxy encodeWithCoder:]", self->_storyboard);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIStoryboardProxy;
  [(_UIStoryboardProxy *)&v3 dealloc];
}

@end