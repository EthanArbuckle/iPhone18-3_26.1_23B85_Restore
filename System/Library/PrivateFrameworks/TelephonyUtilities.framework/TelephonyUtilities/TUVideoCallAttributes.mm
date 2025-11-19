@interface TUVideoCallAttributes
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVideoCallAttributes:(id)a3;
- (TUVideoCallAttributes)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUVideoCallAttributes *)self isEqualToVideoCallAttributes:v4];

  return v5;
}

- (BOOL)isEqualToVideoCallAttributes:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoCallAttributes *)self remoteCameraOrientation];
  if (v5 == [v4 remoteCameraOrientation] && (v6 = -[TUVideoCallAttributes localVideoContextSlotIdentifier](self, "localVideoContextSlotIdentifier"), v6 == objc_msgSend(v4, "localVideoContextSlotIdentifier")))
  {
    v7 = [(TUVideoCallAttributes *)self remoteVideoContextSlotIdentifier];
    v8 = v7 == [v4 remoteVideoContextSlotIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(TUVideoCallAttributes *)self remoteCameraOrientation];
  v4 = [(TUVideoCallAttributes *)self localVideoContextSlotIdentifier]^ v3;
  return v4 ^ [(TUVideoCallAttributes *)self remoteVideoContextSlotIdentifier];
}

- (TUVideoCallAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoCallAttributes *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_remoteCameraOrientation);
    v5->_remoteCameraOrientation = [v4 decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_localVideoContextSlotIdentifier);
    v5->_localVideoContextSlotIdentifier = [v4 decodeIntegerForKey:v7];

    v8 = NSStringFromSelector(sel_remoteVideoContextSlotIdentifier);
    v5->_remoteVideoContextSlotIdentifier = [v4 decodeIntegerForKey:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  remoteCameraOrientation = self->_remoteCameraOrientation;
  v5 = a3;
  v6 = NSStringFromSelector(sel_remoteCameraOrientation);
  [v5 encodeInteger:remoteCameraOrientation forKey:v6];

  localVideoContextSlotIdentifier = self->_localVideoContextSlotIdentifier;
  v8 = NSStringFromSelector(sel_localVideoContextSlotIdentifier);
  [v5 encodeInteger:localVideoContextSlotIdentifier forKey:v8];

  remoteVideoContextSlotIdentifier = self->_remoteVideoContextSlotIdentifier;
  v10 = NSStringFromSelector(sel_remoteVideoContextSlotIdentifier);
  [v5 encodeInteger:remoteVideoContextSlotIdentifier forKey:v10];
}

@end