@interface StreamingFileWriterQueueReservation
- (StreamingFileWriterQueueReservation)initWithReservationSize:(int64_t)size;
@end

@implementation StreamingFileWriterQueueReservation

- (StreamingFileWriterQueueReservation)initWithReservationSize:(int64_t)size
{
  v5.receiver = self;
  v5.super_class = StreamingFileWriterQueueReservation;
  result = [(StreamingFileWriterQueueReservation *)&v5 init];
  if (result)
  {
    result->_reservedSize = size;
    result->_valid = 1;
  }

  return result;
}

@end