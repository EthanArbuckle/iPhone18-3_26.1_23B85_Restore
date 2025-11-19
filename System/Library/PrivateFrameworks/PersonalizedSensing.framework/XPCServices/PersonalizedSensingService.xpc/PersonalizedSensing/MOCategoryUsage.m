@interface MOCategoryUsage
+ (id)descriptionOfAppCategory:(unint64_t)a3;
- (MOCategoryUsage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOCategoryUsage

+ (id)descriptionOfAppCategory:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return @"Invalid";
  }

  else
  {
    return off_1000B5490[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  duration = self->_duration;
  v5 = a3;
  [v5 encodeObject:duration forKey:@"duration"];
  [v5 encodeInteger:self->_appCategory forKey:@"appCategory"];
}

- (MOCategoryUsage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MOCategoryUsage;
  v5 = [(MOCategoryUsage *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v6;

    v5->_appCategory = [v4 decodeIntegerForKey:@"appCategory"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOCategoryUsage);
  v5 = [(MOCategoryUsage *)self duration];
  [(MOCategoryUsage *)v4 setDuration:v5];

  [(MOCategoryUsage *)v4 setAppCategory:[(MOCategoryUsage *)self appCategory]];
  return v4;
}

- (id)description
{
  v3 = [MOCategoryUsage descriptionOfAppCategory:self->_appCategory];
  [(NSNumber *)self->_duration doubleValue];
  v5 = [NSString stringWithFormat:@"app category, %@, duration, %f", v3, v4];

  return v5;
}

@end