@interface SKGProcessedPerson
- (SKGProcessedPerson)initWithPerson:(id)person;
@end

@implementation SKGProcessedPerson

- (SKGProcessedPerson)initWithPerson:(id)person
{
  personCopy = person;
  v9.receiver = self;
  v9.super_class = SKGProcessedPerson;
  v6 = [(SKGProcessedPerson *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, person);
  }

  return v7;
}

@end