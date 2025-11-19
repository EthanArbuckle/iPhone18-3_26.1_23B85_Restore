@interface RMSControlInterface
- (RMSControlInterface)initWithProtobuf:(id)a3;
- (id)protobuf;
@end

@implementation RMSControlInterface

- (RMSControlInterface)initWithProtobuf:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RMSControlInterface;
  v5 = [(RMSControlInterface *)&v7 init];
  if (v5)
  {
    v5->_supportsSpeakerSelection = [v4 supportsSpeakerSelection];
    v5->_supportsVolumeControl = [v4 supportsVolumeControl];
    v5->_supportsDirectionalControl = [v4 supportsDirectionalControl];
  }

  return v5;
}

- (id)protobuf
{
  v3 = objc_opt_new();
  [v3 setSupportsSpeakerSelection:self->_supportsSpeakerSelection];
  [v3 setSupportsVolumeControl:self->_supportsVolumeControl];
  [v3 setSupportsDirectionalControl:self->_supportsDirectionalControl];

  return v3;
}

@end