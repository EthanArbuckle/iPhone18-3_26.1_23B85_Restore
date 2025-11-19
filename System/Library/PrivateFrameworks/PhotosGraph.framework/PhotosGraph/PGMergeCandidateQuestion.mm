@interface PGMergeCandidateQuestion
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQuestion:(id)a3;
- (PGMergeCandidateQuestion)initWithPerson:(id)a3 score:(double)a4;
- (void)remove;
@end

@implementation PGMergeCandidateQuestion

- (BOOL)isEqualToQuestion:(id)a3
{
  v4 = a3;
  if ([v4 type] == self->_type)
  {
    v5 = [v4 person];
    v6 = v5 == self->_person;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGMergeCandidateQuestion *)self isEqualToQuestion:v4];

  return v5;
}

- (void)remove
{
  v2 = [MEMORY[0x277CD9940] changeRequestForPerson:self->_person];
  [v2 setQuestionType:0];
}

- (PGMergeCandidateQuestion)initWithPerson:(id)a3 score:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PGMergeCandidateQuestion;
  v8 = [(PGMergeCandidateQuestion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_person, a3);
    v10 = [(PHPerson *)v9->_person uuid];
    entityIdentifier = v9->_entityIdentifier;
    v9->_entityIdentifier = v10;

    v9->_state = 0;
    v9->_score = a4;
  }

  return v9;
}

@end