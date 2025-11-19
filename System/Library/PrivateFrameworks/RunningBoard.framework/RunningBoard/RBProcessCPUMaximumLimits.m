@interface RBProcessCPUMaximumLimits
- (BOOL)isEqual:(id)a3;
- (RBProcessCPUMaximumLimits)initWithPercentage:(unint64_t)a3 duration:(unint64_t)a4 violationPolicy:(unint64_t)a5;
- (id)description;
- (id)unionLimit:(id)a3;
- (unint64_t)hash;
@end

@implementation RBProcessCPUMaximumLimits

- (RBProcessCPUMaximumLimits)initWithPercentage:(unint64_t)a3 duration:(unint64_t)a4 violationPolicy:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = RBProcessCPUMaximumLimits;
  result = [(RBProcessCPUMaximumLimits *)&v9 init];
  if (result)
  {
    result->_percentage = a3;
    result->_duration = a4;
    result->_violationPolicy = a5;
  }

  return result;
}

- (id)unionLimit:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    goto LABEL_5;
  }

  percentage = self->_percentage;
  duration = self->_duration;
  v8 = [(RBProcessCPUMaximumLimits *)v4 duration];
  v9 = [(RBProcessCPUMaximumLimits *)v5 percentage];
  v10 = v9 * v8;
  v11 = percentage * duration;
  violationPolicy = self->_violationPolicy;
  v13 = [(RBProcessCPUMaximumLimits *)v5 violationPolicy];
  if (v13 > violationPolicy || v10 < v11)
  {
    if (v13 <= violationPolicy)
    {
      v15 = violationPolicy;
    }

    else
    {
      v15 = v13;
    }

    if (v10 >= v11)
    {
      v9 = percentage;
      v8 = duration;
    }

    v14 = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:v9 duration:v8 violationPolicy:v15];
  }

  else
  {
LABEL_5:
    v14 = self;
  }

  v16 = v14;

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  v7 = 1;
  if (self != v4)
  {
    if (!v4 || (v6 = objc_opt_class(), v6 == objc_opt_class()) && (self->_percentage != v5->_percentage || self->_duration != v5->_duration || self->_violationPolicy != v5->_violationPolicy))
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
  v4 = self->_violationPolicy ^ (self->_violationPolicy >> 30);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
  return (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ v5) >> 31) ^ (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  percentage = self->_percentage;
  duration = self->_duration;
  violationPolicy = self->_violationPolicy;
  v8 = NSStringFromRBSCPUMaximumUsageViolationPolicy();
  v9 = [v3 initWithFormat:@"<%@| percentage:%lu duration:%lu violationPolicy:%@>", v4, percentage, duration, v8];

  return v9;
}

@end