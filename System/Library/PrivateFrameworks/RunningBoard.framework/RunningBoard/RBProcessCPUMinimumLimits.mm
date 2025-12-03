@interface RBProcessCPUMinimumLimits
- (BOOL)isEqual:(id)equal;
- (RBProcessCPUMinimumLimits)initWithPercentage:(unint64_t)percentage duration:(unint64_t)duration;
- (id)description;
- (id)unionLimit:(id)limit;
- (unint64_t)hash;
@end

@implementation RBProcessCPUMinimumLimits

- (RBProcessCPUMinimumLimits)initWithPercentage:(unint64_t)percentage duration:(unint64_t)duration
{
  v7.receiver = self;
  v7.super_class = RBProcessCPUMinimumLimits;
  result = [(RBProcessCPUMinimumLimits *)&v7 init];
  if (result)
  {
    result->_percentage = percentage;
    result->_duration = duration;
  }

  return result;
}

- (id)unionLimit:(id)limit
{
  limitCopy = limit;
  v5 = limitCopy;
  if (limitCopy && limitCopy != self && ((duration = self->_duration, v7 = [(RBProcessCPUMinimumLimits *)limitCopy duration], percentage = self->_percentage, v9 = [(RBProcessCPUMinimumLimits *)v5 percentage], v9 > percentage) || v7 > duration))
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

    selfCopy = [[RBProcessCPUMinimumLimits alloc] initWithPercentage:v11 duration:v7];
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v7 = 1;
  if (self != equalCopy)
  {
    if (!equalCopy || (v6 = objc_opt_class(), v6 == objc_opt_class()) && (self->_percentage != v5->_percentage || self->_duration != v5->_duration))
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