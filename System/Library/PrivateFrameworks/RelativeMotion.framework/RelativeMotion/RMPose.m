@interface RMPose
- (RMPose)initWithCoder:(id)a3;
- (id)_initWithAttitude:(id)a3 consumedAuxTimestamp:(double)a4 receivedAuxTimestamp:(double)a5 machAbsTimestamp:(double)a6 presentationTimestamp:(double)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMPose

- (id)_initWithAttitude:(id)a3 consumedAuxTimestamp:(double)a4 receivedAuxTimestamp:(double)a5 machAbsTimestamp:(double)a6 presentationTimestamp:(double)a7
{
  v13 = a3;
  [v13 timestamp];
  v17.receiver = self;
  v17.super_class = RMPose;
  v14 = [(RMLogItem *)&v17 _initWithTimestamp:?];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 2, a3);
    v15[3] = a4;
    v15[4] = a5;
    v15[5] = a6;
    v15[6] = a7;
  }

  return v15;
}

- (RMPose)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RMPose;
  v5 = [(RMLogItem *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RMPoseEncodingKeyAttitude"];
    attitude = v5->_attitude;
    v5->_attitude = v6;

    [v4 decodeDoubleForKey:@"RMPoseEncodingKeyConsumedAuxTimestamp"];
    v5->_consumedAuxTimestamp = v8;
    [v4 decodeDoubleForKey:@"RMPoseEncodingKeyReceivedAuxTimestamp"];
    v5->_receivedAuxTimestamp = v9;
    [v4 decodeDoubleForKey:@"RMPoseEncodingKeyMachAbsTimestamp"];
    v5->_machAbsTimestamp = v10;
    [v4 decodeDoubleForKey:@"RMPoseEncodingKeyPresentationTimestamp"];
    v5->_presentationTimestamp = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RMPose;
  v4 = a3;
  [(RMLogItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_attitude forKey:{@"RMPoseEncodingKeyAttitude", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"RMPoseEncodingKeyConsumedAuxTimestamp" forKey:self->_consumedAuxTimestamp];
  [v4 encodeDouble:@"RMPoseEncodingKeyReceivedAuxTimestamp" forKey:self->_receivedAuxTimestamp];
  [v4 encodeDouble:@"RMPoseEncodingKeyMachAbsTimestamp" forKey:self->_machAbsTimestamp];
  [v4 encodeDouble:@"RMPoseEncodingKeyPresentationTimestamp" forKey:self->_presentationTimestamp];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(RMLogItem *)self timestamp];
  v5 = [v4 _initWithTimestamp:?];
  if (v5)
  {
    v6 = [(RMPose *)self attitude];
    v7 = v5[2];
    v5[2] = v6;

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