@interface _UIShareParticipantDetails
- (_UIShareParticipantDetails)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIShareParticipantDetails

- (void)encodeWithCoder:(id)coder
{
  detailText = self->_detailText;
  coderCopy = coder;
  [coderCopy encodeObject:detailText forKey:@"deta"];
  [coderCopy encodeObject:self->_participantID forKey:@"part"];
  [coderCopy encodeObject:self->_participantColor forKey:@"colo"];
}

- (_UIShareParticipantDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIShareParticipantDetails;
  v5 = [(_UIShareParticipantDetails *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deta"];
    detailText = v5->_detailText;
    v5->_detailText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"part"];
    participantID = v5->_participantID;
    v5->_participantID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colo"];
    participantColor = v5->_participantColor;
    v5->_participantColor = v10;
  }

  return v5;
}

@end