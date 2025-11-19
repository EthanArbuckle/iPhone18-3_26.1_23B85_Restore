@interface SymptomExpertSystemDiagnosingState
+ (id)createStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5;
@end

@implementation SymptomExpertSystemDiagnosingState

+ (id)createStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(ExpertSystemStateCore *)[SymptomExpertSystemDiagnosingState alloc] initStateWithLabel:v8 rank:a4 entryPreds:v7];

  return v9;
}

@end