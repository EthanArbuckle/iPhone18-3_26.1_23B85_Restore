@interface ATXLocationManagerKnownLOIs
- (ATXLocationManagerKnownLOIs)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXLocationManagerKnownLOIs

- (void)encodeWithCoder:(id)a3
{
  Home = self->Home;
  v5 = a3;
  [v5 encodeObject:Home forKey:@"Home"];
  [v5 encodeObject:self->Work forKey:@"Work"];
  [v5 encodeObject:self->School forKey:@"School"];
  [v5 encodeObject:self->Gym forKey:@"Gym"];
}

- (ATXLocationManagerKnownLOIs)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ATXLocationManagerKnownLOIs;
  v5 = [(ATXLocationManagerKnownLOIs *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Home"];
    Home = v5->Home;
    v5->Home = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Work"];
    Work = v5->Work;
    v5->Work = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"School"];
    School = v5->School;
    v5->School = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Gym"];
    Gym = v5->Gym;
    v5->Gym = v12;
  }

  return v5;
}

@end