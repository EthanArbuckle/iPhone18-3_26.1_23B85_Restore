@interface RBProcessCPUMinimumLimits
- (BOOL)isEqual:(id)a3;
- (RBProcessCPUMinimumLimits)initWithPercentage:(unint64_t)a3 duration:(unint64_t)a4;
- (id)description;
- (id)unionLimit:(id)a3;
- (unint64_t)hash;
@end

@implementation RBProcessCPUMinimumLimits

- (RBProcessCPUMinimumLimits)initWithPercentage:(unint64_t)a3 duration:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = RBProcessCPUMinimumLimits;
  result = [(RBProcessCPUMinimumLimits *)&v7 init];
  if (result)
  {
    result->_percentage = a3;
    result->_duration = a4;
  }

  return result;
}

- (id)unionLimit:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && v4 != self && ((duration = self->_duration, v7 = [(RBProcessCPUMinimumLimits *)v4 duration], percentage = self->_percentage, v9 = [(RBProcessCPUMinimumLimits *)v5 percentage], v9 > percentage) || v7 > duration))
  {
    if (v9 <= percentage)
    {
      v11 = percentage;
    }

    else
    {
      v11 = v9;
    }

    if (v7 <= duration)
    {
      v7 = duration;
    }

    v10 = [[RBProcessCPUMinimumLimits alloc] initWithPercentage:v11 duration:v7];
  }

  else
  {
    v10 = self;
  }

  v12 = v10;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  v7 = 1;
  if (self != v4)
  {
    if (!v4 || (v6 = objc_opt_class(), v6 == objc_opt_class()) && (self->_percentage != v5->_percentage || self->_duration != v5->_duration))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = 0xBF58476D1CE4E5B9 * (self->_percentage ^ (self->_percentage >> 30));
  v3 = 0xBF58476D1CE4E5B9 * (self->_duration ^ (self->_duration >> 30));
  return (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27)))) >> 31) ^ (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27)));
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| percentage:%lu duration:%lu", v4, self->_percentage, self->_duration];

  return v5;
}

@end