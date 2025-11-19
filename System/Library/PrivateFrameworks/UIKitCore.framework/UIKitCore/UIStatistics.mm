@interface UIStatistics
@end

@implementation UIStatistics

uint64_t __72___UIStatistics_UICommonStatisticsGathering__previewInteractionTapCount__block_invoke()
{
  v0 = [[_UIStatisticsScalar alloc] initWithDomain:@"UIKit.peekAndPop.tap.count" identifierReporting:2];
  v1 = qword_1ED4A2808;
  qword_1ED4A2808 = v0;

  v2 = qword_1ED4A2808;

  return [v2 setSampleRate:0.0];
}

void __54___UIStatistics_UICommonStatisticsGathering__maxForce__block_invoke()
{
  v0 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.forceTouch.maxForce" identifierReporting:0];
  v1 = qword_1ED4A2848;
  qword_1ED4A2848 = v0;

  v2 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.forceTouch.maxForce.all" identifierReporting:1];
  [qword_1ED4A2848 _addChildStatistic:v2];
  [qword_1ED4A2848 setSampleRate:0.01];
  [qword_1ED4A2848 randomizeSampleValue];
}

void __73___UIStatistics_UICommonStatisticsGathering__previewInteractionPeekCount__block_invoke()
{
  v0 = [[_UIStatisticsScalar alloc] initWithDomain:@"UIKit.peekAndPop.peek.count" identifierReporting:2];
  v1 = qword_1ED4A27D8;
  qword_1ED4A27D8 = v0;

  v2 = [[_UIStatisticsScalar alloc] initWithDomain:@"UIKit.peekAndPop.peek.count.all" identifierReporting:1];
  [qword_1ED4A27D8 _addChildStatistic:v2];
}

void __76___UIStatistics_UICommonStatisticsGathering__previewInteractionPeekDuration__block_invoke()
{
  v0 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.peekAndPop.peek.duration" identifierReporting:2];
  v1 = qword_1ED4A27E8;
  qword_1ED4A27E8 = v0;

  v2 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.peekAndPop.peek.duration.all" identifierReporting:1];
  [qword_1ED4A27E8 _addChildStatistic:v2];
}

void __72___UIStatistics_UICommonStatisticsGathering__previewInteractionPopCount__block_invoke()
{
  v0 = [[_UIStatisticsScalar alloc] initWithDomain:@"UIKit.peekAndPop.pop.count" identifierReporting:2];
  v1 = qword_1ED4A27F8;
  qword_1ED4A27F8 = v0;

  v2 = [[_UIStatisticsScalar alloc] initWithDomain:@"UIKit.peekAndPop.pop.count.all" identifierReporting:1];
  [qword_1ED4A27F8 _addChildStatistic:v2];
}

void __86___UIStatistics_UICommonStatisticsGathering__previewInteractionAlertPresentationCount__block_invoke()
{
  v0 = [[_UIStatisticsScalar alloc] initWithDomain:@"UIKit.peekAndPop.alert.count" identifierReporting:2];
  v1 = qword_1ED4A2818;
  qword_1ED4A2818 = v0;

  v2 = [[_UIStatisticsScalar alloc] initWithDomain:@"UIKit.peekAndPop.alert.count.all" identifierReporting:1];
  [qword_1ED4A2818 _addChildStatistic:v2];
}

void __73___UIStatistics_UICommonStatisticsGathering__previewInteractionPeekForce__block_invoke()
{
  v0 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.peekAndPop.peek.force" identifierReporting:0];
  v1 = qword_1ED4A2828;
  qword_1ED4A2828 = v0;

  v2 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.peekAndPop.peek.force.all" identifierReporting:1];
  [qword_1ED4A2828 _addChildStatistic:v2];
}

void __72___UIStatistics_UICommonStatisticsGathering__previewInteractionPopForce__block_invoke()
{
  v0 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.peekAndPop.pop.force" identifierReporting:0];
  v1 = qword_1ED4A2838;
  qword_1ED4A2838 = v0;

  v2 = [[_UIStatisticsDistribution alloc] initWithDomain:@"UIKit.peekAndPop.pop.force.all" identifierReporting:1];
  [qword_1ED4A2838 _addChildStatistic:v2];
}

void __64___UIStatistics_UICommonStatisticsGathering__scrubberUsageCount__block_invoke()
{
  v0 = [[_UIStatisticsScalar alloc] initWithDomain:@"mediacontroller.UIMovieScrubber.ScrubberInteraction.count" identifierReporting:0];
  v1 = qword_1ED4A2858;
  qword_1ED4A2858 = v0;
}

void __63___UIStatistics_UICommonStatisticsGathering__scrubberUsageTime__block_invoke()
{
  v0 = [[_UIStatisticsDistribution alloc] initWithDomain:@"mediacontroller.UIMovieScrubber.ScrubberInteraction.duration" identifierReporting:0];
  v1 = qword_1ED4A2868;
  qword_1ED4A2868 = v0;
}

void __109___UIStatistics_UICommonStatisticsGathering___sharedStatisticWithDomain_statisticsClass_identifierReporting___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2880;
  qword_1ED4A2880 = v0;
}

@end