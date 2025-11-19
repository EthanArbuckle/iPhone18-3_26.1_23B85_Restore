@interface RCPNaturalInputCollectionEvent
- (RCPNaturalInputCollectionEvent)initWithManipulators:(id)a3 selections:(id)a4 phase:(int64_t)a5 timestamp:(unint64_t)a6 senderProperties:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RCPNaturalInputCollectionEvent

- (RCPNaturalInputCollectionEvent)initWithManipulators:(id)a3 selections:(id)a4 phase:(int64_t)a5 timestamp:(unint64_t)a6 senderProperties:(id)a7
{
  v22.receiver = self;
  v22.super_class = RCPNaturalInputCollectionEvent;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [(RCPNaturalInputCollectionEvent *)&v22 init];
  v15 = [v13 copy];

  manipulators = v14->_manipulators;
  v14->_manipulators = v15;

  v17 = [v12 copy];
  selections = v14->_selections;
  v14->_selections = v17;

  v14->_phase = a5;
  v14->_timestamp = a6;
  v19 = [v11 copy];

  senderProperties = v14->_senderProperties;
  v14->_senderProperties = v19;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RCPNaturalInputCollectionEvent *)self manipulators];
  v6 = [(RCPNaturalInputCollectionEvent *)self selections];
  v7 = [(RCPNaturalInputCollectionEvent *)self phase];
  v8 = [(RCPNaturalInputCollectionEvent *)self timestamp];
  v9 = [(RCPNaturalInputCollectionEvent *)self senderProperties];
  v10 = [v3 stringWithFormat:@"<%@: { Manipulators: %@, Selections: %@, Phase: %lu, Timestamp: %llu, Sender Properties: %@ }>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  manipulators = self->_manipulators;
  selections = self->_selections;
  phase = self->_phase;
  timestamp = self->_timestamp;
  senderProperties = self->_senderProperties;

  return [v4 initWithManipulators:manipulators selections:selections phase:phase timestamp:timestamp senderProperties:senderProperties];
}

@end