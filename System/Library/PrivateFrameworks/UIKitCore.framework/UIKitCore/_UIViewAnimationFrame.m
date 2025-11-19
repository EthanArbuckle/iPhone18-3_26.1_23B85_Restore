@interface _UIViewAnimationFrame
- (id)description;
- (int64_t)compareStartTimes:(id)a3;
@end

@implementation _UIViewAnimationFrame

- (int64_t)compareStartTimes:(id)a3
{
  startTime = self->_startTime;
  v4 = *(a3 + 2);
  if (startTime < v4)
  {
    return -1;
  }

  else
  {
    return startTime > v4;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _UIViewAnimationFrame;
  v4 = [(_UIViewAnimationFrame *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ value=%@ startTime=%f duration=%f", v4, self->_value, *&self->_startTime, *&self->_duration];

  return v5;
}

@end