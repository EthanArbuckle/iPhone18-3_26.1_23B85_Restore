@interface SKGProcessedPerson
- (SKGProcessedPerson)initWithPerson:(id)a3;
@end

@implementation SKGProcessedPerson

- (SKGProcessedPerson)initWithPerson:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKGProcessedPerson;
  v6 = [(SKGProcessedPerson *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, a3);
  }

  return v7;
}

@end