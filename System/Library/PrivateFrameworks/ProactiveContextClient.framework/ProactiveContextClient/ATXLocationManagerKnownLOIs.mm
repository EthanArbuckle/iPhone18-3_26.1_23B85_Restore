@interface ATXLocationManagerKnownLOIs
- (ATXLocationManagerKnownLOIs)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXLocationManagerKnownLOIs

- (void)encodeWithCoder:(id)coder
{
  Home = self->Home;
  coderCopy = coder;
  [coderCopy encodeObject:Home forKey:@"Home"];
  [coderCopy encodeObject:self->Work forKey:@"Work"];
  [coderCopy encodeObject:self->School forKey:@"School"];
  [coderCopy encodeObject:self->Gym forKey:@"Gym"];
}

- (ATXLocationManagerKnownLOIs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ATXLocationManagerKnownLOIs;
  v5 = [(ATXLocationManagerKnownLOIs *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Home"];
    Home = v5->Home;
    v5->Home = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Work"];
    Work = v5->Work;
    v5->Work = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"School"];
    School = v5->School;
    v5->School = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Gym"];
    Gym = v5->Gym;
    v5->Gym = v12;
  }

  return v5;
}

@end