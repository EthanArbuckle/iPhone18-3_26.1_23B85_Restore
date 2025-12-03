@interface PAAccessRecordAccumulator
- (PAAccessRecordAccumulator)init;
@end

@implementation PAAccessRecordAccumulator

- (PAAccessRecordAccumulator)init
{
  v8.receiver = self;
  v8.super_class = PAAccessRecordAccumulator;
  v2 = [(PAAccessRecordAccumulator *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    ongoingIntervals = v2->_ongoingIntervals;
    v2->_ongoingIntervals = dictionary;

    v5 = [MEMORY[0x1E695DFA8] set];
    seenEvents = v2->_seenEvents;
    v2->_seenEvents = v5;
  }

  return v2;
}

@end