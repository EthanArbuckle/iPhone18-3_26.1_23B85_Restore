@interface StreamingFileWriterQueueReservation
- (StreamingFileWriterQueueReservation)initWithReservationSize:(int64_t)a3;
@end

@implementation StreamingFileWriterQueueReservation

- (StreamingFileWriterQueueReservation)initWithReservationSize:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = StreamingFileWriterQueueReservation;
  result = [(StreamingFileWriterQueueReservation *)&v5 init];
  if (result)
  {
    result->_reservedSize = a3;
    result->_valid = 1;
  }

  return result;
}

@end