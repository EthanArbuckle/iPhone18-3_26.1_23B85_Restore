@interface PGMergeCandidateQuestion
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQuestion:(id)question;
- (PGMergeCandidateQuestion)initWithPerson:(id)person score:(double)score;
- (void)remove;
@end

@implementation PGMergeCandidateQuestion

- (BOOL)isEqualToQuestion:(id)question
{
  questionCopy = question;
  if ([questionCopy type] == self->_type)
  {
    person = [questionCopy person];
    v6 = person == self->_person;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGMergeCandidateQuestion *)self isEqualToQuestion:equalCopy];

  return v5;
}

- (void)remove
{
  v2 = [MEMORY[0x277CD9940] changeRequestForPerson:self->_person];
  [v2 setQuestionType:0];
}

- (PGMergeCandidateQuestion)initWithPerson:(id)person score:(double)score
{
  personCopy = person;
  v13.receiver = self;
  v13.super_class = PGMergeCandidateQuestion;
  v8 = [(PGMergeCandidateQuestion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_person, person);
    uuid = [(PHPerson *)v9->_person uuid];
    entityIdentifier = v9->_entityIdentifier;
    v9->_entityIdentifier = uuid;

    v9->_state = 0;
    v9->_score = score;
  }

  return v9;
}

@end