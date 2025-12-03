@interface TUVideoCallAttributes
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVideoCallAttributes:(id)attributes;
- (TUVideoCallAttributes)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUVideoCallAttributes

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" remoteCameraOrientation=%ld", -[TUVideoCallAttributes remoteCameraOrientation](self, "remoteCameraOrientation")];
  [v3 appendFormat:@" localVideoContextSlotIdentifier=%ld", -[TUVideoCallAttributes localVideoContextSlotIdentifier](self, "localVideoContextSlotIdentifier")];
  [v3 appendFormat:@" remoteVideoContextSlotIdentifier=%ld", -[TUVideoCallAttributes remoteVideoContextSlotIdentifier](self, "remoteVideoContextSlotIdentifier")];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUVideoCallAttributes *)self isEqualToVideoCallAttributes:equalCopy];

  return v5;
}

- (BOOL)isEqualToVideoCallAttributes:(id)attributes
{
  attributesCopy = attributes;
  remoteCameraOrientation = [(TUVideoCallAttributes *)self remoteCameraOrientation];
  if (remoteCameraOrientation == [attributesCopy remoteCameraOrientation] && (v6 = -[TUVideoCallAttributes localVideoContextSlotIdentifier](self, "localVideoContextSlotIdentifier"), v6 == objc_msgSend(attributesCopy, "localVideoContextSlotIdentifier")))
  {
    remoteVideoContextSlotIdentifier = [(TUVideoCallAttributes *)self remoteVideoContextSlotIdentifier];
    v8 = remoteVideoContextSlotIdentifier == [attributesCopy remoteVideoContextSlotIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  remoteCameraOrientation = [(TUVideoCallAttributes *)self remoteCameraOrientation];
  v4 = [(TUVideoCallAttributes *)self localVideoContextSlotIdentifier]^ remoteCameraOrientation;
  return v4 ^ [(TUVideoCallAttributes *)self remoteVideoContextSlotIdentifier];
}

- (TUVideoCallAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUVideoCallAttributes *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_remoteCameraOrientation);
    v5->_remoteCameraOrientation = [coderCopy decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_localVideoContextSlotIdentifier);
    v5->_localVideoContextSlotIdentifier = [coderCopy decodeIntegerForKey:v7];

    v8 = NSStringFromSelector(sel_remoteVideoContextSlotIdentifier);
    v5->_remoteVideoContextSlotIdentifier = [coderCopy decodeIntegerForKey:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  remoteCameraOrientation = self->_remoteCameraOrientation;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_remoteCameraOrientation);
  [coderCopy encodeInteger:remoteCameraOrientation forKey:v6];

  localVideoContextSlotIdentifier = self->_localVideoContextSlotIdentifier;
  v8 = NSStringFromSelector(sel_localVideoContextSlotIdentifier);
  [coderCopy encodeInteger:localVideoContextSlotIdentifier forKey:v8];

  remoteVideoContextSlotIdentifier = self->_remoteVideoContextSlotIdentifier;
  v10 = NSStringFromSelector(sel_remoteVideoContextSlotIdentifier);
  [coderCopy encodeInteger:remoteVideoContextSlotIdentifier forKey:v10];
}

@end