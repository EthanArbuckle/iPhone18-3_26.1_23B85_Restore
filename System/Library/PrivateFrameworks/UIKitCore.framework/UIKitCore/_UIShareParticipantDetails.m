@interface _UIShareParticipantDetails
- (_UIShareParticipantDetails)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIShareParticipantDetails

- (void)encodeWithCoder:(id)a3
{
  detailText = self->_detailText;
  v5 = a3;
  [v5 encodeObject:detailText forKey:@"deta"];
  [v5 encodeObject:self->_participantID forKey:@"part"];
  [v5 encodeObject:self->_participantColor forKey:@"colo"];
}

- (_UIShareParticipantDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIShareParticipantDetails;
  v5 = [(_UIShareParticipantDetails *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deta"];
    detailText = v5->_detailText;
    v5->_detailText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"part"];
    participantID = v5->_participantID;
    v5->_participantID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colo"];
    participantColor = v5->_participantColor;
    v5->_participantColor = v10;
  }

  return v5;
}

@end