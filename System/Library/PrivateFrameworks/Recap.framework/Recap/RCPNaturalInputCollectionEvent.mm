@interface RCPNaturalInputCollectionEvent
- (RCPNaturalInputCollectionEvent)initWithManipulators:(id)manipulators selections:(id)selections phase:(int64_t)phase timestamp:(unint64_t)timestamp senderProperties:(id)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RCPNaturalInputCollectionEvent

- (RCPNaturalInputCollectionEvent)initWithManipulators:(id)manipulators selections:(id)selections phase:(int64_t)phase timestamp:(unint64_t)timestamp senderProperties:(id)properties
{
  v22.receiver = self;
  v22.super_class = RCPNaturalInputCollectionEvent;
  propertiesCopy = properties;
  selectionsCopy = selections;
  manipulatorsCopy = manipulators;
  v14 = [(RCPNaturalInputCollectionEvent *)&v22 init];
  v15 = [manipulatorsCopy copy];

  manipulators = v14->_manipulators;
  v14->_manipulators = v15;

  v17 = [selectionsCopy copy];
  selections = v14->_selections;
  v14->_selections = v17;

  v14->_phase = phase;
  v14->_timestamp = timestamp;
  v19 = [propertiesCopy copy];

  senderProperties = v14->_senderProperties;
  v14->_senderProperties = v19;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  manipulators = [(RCPNaturalInputCollectionEvent *)self manipulators];
  selections = [(RCPNaturalInputCollectionEvent *)self selections];
  phase = [(RCPNaturalInputCollectionEvent *)self phase];
  timestamp = [(RCPNaturalInputCollectionEvent *)self timestamp];
  senderProperties = [(RCPNaturalInputCollectionEvent *)self senderProperties];
  v10 = [v3 stringWithFormat:@"<%@: { Manipulators: %@, Selections: %@, Phase: %lu, Timestamp: %llu, Sender Properties: %@ }>", v4, manipulators, selections, phase, timestamp, senderProperties];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  manipulators = self->_manipulators;
  selections = self->_selections;
  phase = self->_phase;
  timestamp = self->_timestamp;
  senderProperties = self->_senderProperties;

  return [v4 initWithManipulators:manipulators selections:selections phase:phase timestamp:timestamp senderProperties:senderProperties];
}

@end