@interface RCPGlobalPositionEvent
- (CGPoint)location;
- (RCPGlobalPositionEvent)initWithLocation:(CGFloat)location zPosition:(double)position orientation:(__n128)orientation timestamp:(uint64_t)timestamp senderProperties:(unint64_t)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RCPGlobalPositionEvent

- (RCPGlobalPositionEvent)initWithLocation:(CGFloat)location zPosition:(double)position orientation:(__n128)orientation timestamp:(uint64_t)timestamp senderProperties:(unint64_t)properties
{
  v13 = a8;
  v18.receiver = self;
  v18.super_class = RCPGlobalPositionEvent;
  v14 = [(RCPGlobalPositionEvent *)&v18 init];
  v14->_location.x = a2;
  v14->_location.y = location;
  v14->_zPosition = position;
  *&v14[1].super.isa = orientation;
  senderProperties = v14->_senderProperties;
  v14->_timestamp = properties;
  v14->_senderProperties = v13;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(RCPGlobalPositionEvent *)self location];
  v6 = v5;
  [(RCPGlobalPositionEvent *)self location];
  v8 = v7;
  [(RCPGlobalPositionEvent *)self zPosition];
  v10 = v9;
  [(RCPGlobalPositionEvent *)self orientation];
  v12 = v11;
  [(RCPGlobalPositionEvent *)self orientation];
  v14 = v13;
  [(RCPGlobalPositionEvent *)self orientation];
  v16 = v15;
  [(RCPGlobalPositionEvent *)self orientation];
  v18 = v17;
  timestamp = [(RCPGlobalPositionEvent *)self timestamp];
  senderProperties = [(RCPGlobalPositionEvent *)self senderProperties];
  v21 = [v3 stringWithFormat:@"<%@: { Location: (%f, %f), zPosition: %f, Orientation: (%f, %f, %f, %f), Timestamp: %llu, Sender Properties: %@ }>", v4, v6, v8, v10, *&v12, *&v14, *&v16, *&v18, timestamp, senderProperties];

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  zPosition = self->_zPosition;
  timestamp = self->_timestamp;
  senderProperties = self->_senderProperties;
  x = self->_location.x;
  y = self->_location.y;
  v10 = *&self[1].super.isa;

  return [v4 initWithLocation:timestamp zPosition:senderProperties orientation:x timestamp:y senderProperties:{zPosition, *&v10}];
}

- (CGPoint)location
{
  objc_copyStruct(v4, &self->_location, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end