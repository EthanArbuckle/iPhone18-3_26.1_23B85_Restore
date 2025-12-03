@interface SiriInferenceDodMLPlugin
- (void)performEvaluation:(id)evaluation;
@end

@implementation SiriInferenceDodMLPlugin

- (void)performEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  selfCopy = self;
  sub_10000B3A0(evaluationCopy);
}

@end