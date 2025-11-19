@interface MRCAMLKeyframe
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation MRCAMLKeyframe

- (void)dealloc
{
  [(MRCAMLKeyframe *)self setSpline:0];
  v3.receiver = self;
  v3.super_class = MRCAMLKeyframe;
  [(MRCAMLKeyframe *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSpline:{-[MRCAMLKeyframe spline](self, "spline")}];
  v4[4] = self->time;
  v4[2] = self->value0;
  v4[3] = self->value1;
  return v4;
}

@end