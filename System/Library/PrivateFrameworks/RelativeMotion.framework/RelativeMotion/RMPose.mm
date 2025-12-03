@interface RMPose
- (RMPose)initWithCoder:(id)coder;
- (id)_initWithAttitude:(id)attitude consumedAuxTimestamp:(double)timestamp receivedAuxTimestamp:(double)auxTimestamp machAbsTimestamp:(double)absTimestamp presentationTimestamp:(double)presentationTimestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMPose

- (id)_initWithAttitude:(id)attitude consumedAuxTimestamp:(double)timestamp receivedAuxTimestamp:(double)auxTimestamp machAbsTimestamp:(double)absTimestamp presentationTimestamp:(double)presentationTimestamp
{
  attitudeCopy = attitude;
  [attitudeCopy timestamp];
  v17.receiver = self;
  v17.super_class = RMPose;
  v14 = [(RMLogItem *)&v17 _initWithTimestamp:?];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 2, attitude);
    v15[3] = timestamp;
    v15[4] = auxTimestamp;
    v15[5] = absTimestamp;
    v15[6] = presentationTimestamp;
  }

  return v15;
}

- (RMPose)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RMPose;
  v5 = [(RMLogItem *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RMPoseEncodingKeyAttitude"];
    attitude = v5->_attitude;
    v5->_attitude = v6;

    [coderCopy decodeDoubleForKey:@"RMPoseEncodingKeyConsumedAuxTimestamp"];
    v5->_consumedAuxTimestamp = v8;
    [coderCopy decodeDoubleForKey:@"RMPoseEncodingKeyReceivedAuxTimestamp"];
    v5->_receivedAuxTimestamp = v9;
    [coderCopy decodeDoubleForKey:@"RMPoseEncodingKeyMachAbsTimestamp"];
    v5->_machAbsTimestamp = v10;
    [coderCopy decodeDoubleForKey:@"RMPoseEncodingKeyPresentationTimestamp"];
    v5->_presentationTimestamp = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RMPose;
  coderCopy = coder;
  [(RMLogItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_attitude forKey:{@"RMPoseEncodingKeyAttitude", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"RMPoseEncodingKeyConsumedAuxTimestamp" forKey:self->_consumedAuxTimestamp];
  [coderCopy encodeDouble:@"RMPoseEncodingKeyReceivedAuxTimestamp" forKey:self->_receivedAuxTimestamp];
  [coderCopy encodeDouble:@"RMPoseEncodingKeyMachAbsTimestamp" forKey:self->_machAbsTimestamp];
  [coderCopy encodeDouble:@"RMPoseEncodingKeyPresentationTimestamp" forKey:self->_presentationTimestamp];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(RMLogItem *)self timestamp];
  v5 = [v4 _initWithTimestamp:?];
  if (v5)
  {
    attitude = [(RMPose *)self attitude];
    v7 = v5[2];
    v5[2] = attitude;

    [(RMPose *)self consumedAuxTimestamp];
    v5[3] = v8;
    [(RMPose *)self receivedAuxTimestamp];
    v5[4] = v9;
    [(RMPose *)self machAbsTimestamp];
    v5[5] = v10;
    [(RMPose *)self presentationTimestamp];
    v5[6] = v11;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(RMAttitude *)self->_attitude quaternion];
  v5 = v4;
  [(RMAttitude *)self->_attitude quaternion];
  v7 = v6;
  [(RMAttitude *)self->_attitude quaternion];
  v9 = v8;
  [(RMAttitude *)self->_attitude quaternion];
  v11 = v10;
  consumedAuxTimestamp = self->_consumedAuxTimestamp;
  receivedAuxTimestamp = self->_receivedAuxTimestamp;
  machAbsTimestamp = self->_machAbsTimestamp;
  presentationTimestamp = self->_presentationTimestamp;
  [(RMLogItem *)self timestamp];
  return [v3 stringWithFormat:@"RMPose, q.x, %f, q.y, %f, q.z, %f, q.w, %f, consumedAuxTimestamp, %f, receivedAuxTimestamp, %f, machAbsTimestamp, %f, presentationTimestamp, %f, timestamp, %f", v5, v7, v9, v11, *&consumedAuxTimestamp, *&receivedAuxTimestamp, *&machAbsTimestamp, *&presentationTimestamp, v16];
}

@end