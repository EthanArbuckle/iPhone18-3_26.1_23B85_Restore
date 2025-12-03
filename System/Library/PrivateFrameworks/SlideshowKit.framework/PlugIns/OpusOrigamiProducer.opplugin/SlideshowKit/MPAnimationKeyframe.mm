@interface MPAnimationKeyframe
- (MPAnimationKeyframe)init;
- (double)postControl;
- (double)preControl;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)relativeTimeCompare:(id)compare;
- (void)copyVars:(id)vars;
- (void)dealloc;
- (void)setKeyframe:(id)keyframe;
- (void)setOffsetType:(unint64_t)type;
- (void)setParentPath:(id)path;
- (void)setPostControl:(double)control;
- (void)setPreControl:(double)control;
- (void)setTime:(double)time;
@end

@implementation MPAnimationKeyframe

- (MPAnimationKeyframe)init
{
  v4.receiver = self;
  v4.super_class = MPAnimationKeyframe;
  v2 = [(MPAnimationKeyframe *)&v4 init];
  if (v2)
  {
    v2->_attributes = objc_alloc_init(NSMutableDictionary);
    v2->_time = 0.0;
    v2->_offsetType = 0;
    *&v2->_preControl = vdupq_n_s64(0x416312D000000000uLL);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 copyVars:self];
  return v4;
}

- (void)dealloc
{
  keyframe = self->_keyframe;
  if (keyframe)
  {

    self->_keyframe = 0;
  }

  v4.receiver = self;
  v4.super_class = MPAnimationKeyframe;
  [(MPAnimationKeyframe *)&v4 dealloc];
}

- (void)setTime:(double)time
{
  self->_time = time;
  keyframe = self->_keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setTimeOffset:?];
  }
}

- (void)setOffsetType:(unint64_t)type
{
  self->_offsetType = type;
  keyframe = self->_keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setTimeOffsetKind:?];
  }
}

- (double)preControl
{
  result = self->_preControl;
  if (result == 10000000.0)
  {
    return 0.0;
  }

  return result;
}

- (void)setPreControl:(double)control
{
  self->_preControl = control;
  keyframe = self->_keyframe;
  if (keyframe)
  {
    *&control = control;
    [(MCAnimationKeyframe *)keyframe setPreControl:control];
  }
}

- (double)postControl
{
  result = self->_postControl;
  if (result == 10000000.0)
  {
    return 0.0;
  }

  return result;
}

- (void)setPostControl:(double)control
{
  self->_postControl = control;
  keyframe = self->_keyframe;
  if (keyframe)
  {
    *&control = control;
    [(MCAnimationKeyframe *)keyframe setPostControl:control];
  }
}

- (int64_t)relativeTimeCompare:(id)compare
{
  parentPath = self->_parentPath;
  [(MPAnimationPath *)parentPath relativeTimeForKeyframe:self];
  v6 = v5;
  [(MPAnimationPath *)parentPath relativeTimeForKeyframe:compare];
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

- (void)setParentPath:(id)path
{
  if (path && self->_parentPath)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A keyframe  may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentPath = path;
}

- (void)setKeyframe:(id)keyframe
{
  keyframe = self->_keyframe;
  if (keyframe)
  {

    self->_keyframe = 0;
  }

  keyframeCopy = keyframe;
  self->_keyframe = keyframeCopy;
  if (keyframeCopy)
  {
    if (self->_preControl != 10000000.0)
    {
      [(MPAnimationKeyframe *)self preControl];
      *&v7 = v7;
      [(MCAnimationKeyframe *)self->_keyframe setPreControl:v7];
    }

    if (self->_postControl != 10000000.0)
    {
      [(MPAnimationKeyframe *)self postControl];
      *&v8 = v8;
      v9 = self->_keyframe;

      [(MCAnimationKeyframe *)v9 setPostControl:v8];
    }
  }
}

- (void)copyVars:(id)vars
{
  self->_time = *(vars + 4);
  self->_offsetType = *(vars + 5);
  self->_preControl = *(vars + 6);
  self->_postControl = *(vars + 7);
}

@end