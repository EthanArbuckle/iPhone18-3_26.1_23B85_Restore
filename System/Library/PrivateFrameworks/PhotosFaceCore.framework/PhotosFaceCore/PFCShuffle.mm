@interface PFCShuffle
- (PFCShuffle)initWithPeople:(id)people pets:(BOOL)pets nature:(BOOL)nature cityscape:(BOOL)cityscape;
- (id)description;
@end

@implementation PFCShuffle

- (PFCShuffle)initWithPeople:(id)people pets:(BOOL)pets nature:(BOOL)nature cityscape:(BOOL)cityscape
{
  peopleCopy = people;
  v15.receiver = self;
  v15.super_class = PFCShuffle;
  v12 = [(PFCShuffle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_people, people);
    v13->_pets = pets;
    v13->_nature = nature;
    v13->_cityscape = cityscape;
  }

  return v13;
}

- (id)description
{
  v2 = "NO";
  if (self->_pets)
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  if (self->_nature)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  if (self->_cityscape)
  {
    v2 = "YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[PFCShuffle people = (%@), pets=%s, nature=%s, city=%s]", self->_people, v3, v4, v2];
}

@end