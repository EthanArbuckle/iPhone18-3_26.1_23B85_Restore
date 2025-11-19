@interface VGEarPCASelectionState
- (EarPose)pose;
- (id).cxx_construct;
- (void)setPose:(EarPose *)a3;
@end

@implementation VGEarPCASelectionState

- (EarPose)pose
{
  v5 = *&self[1]._rightEarYawAngleCapturedPoses;
  *&retstr[2].side = *&self[1]._leftEarYawAngleCapturedPoses;
  *&retstr[2].faceYawAngle.var0.__null_state_ = v5;
  v6 = *&self[1]._rightEarYawAngleCaptured;
  *&retstr[3].side = *&self[1]._leftEarYawAngleCaptured;
  *&retstr[3].faceYawAngle.var0.__null_state_ = v6;
  v7 = *&self->_pose.faceYawAngle.var0.__null_state_;
  *&retstr->side = *&self->_pose.side;
  *&retstr->faceYawAngle.var0.__null_state_ = v7;
  v8 = *&self[1]._leftFrameCount;
  *&retstr[1].side = *&self[1].super.isa;
  *&retstr[1].faceYawAngle.var0.__null_state_ = v8;
  *&retstr[4].side = 0;
  v9 = *&self[1]._pose.side;
  v10 = *&self[1]._pose.lmPCA.__elems_[1];
  *&retstr[4].lmPCA.__elems_[1] = 0;
  retstr[4].faceYawAngle = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&retstr[4], v9, v10, (v10 - v9) >> 2);
  *&retstr[4].yawAngle = 0;
  *&retstr[5].side = 0;
  *&retstr[5].lmPCA.__elems_[1] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&retstr[4].yawAngle, *&self[1]._pose.yawAngle, self[2].super.isa, (self[2].super.isa - *&self[1]._pose.yawAngle) >> 2);
}

- (void)setPose:(EarPose *)a3
{
  v4 = *&a3->side;
  v5 = *&a3->faceYawAngle.var0.__null_state_;
  v6 = *&a3[1].faceYawAngle.var0.__null_state_;
  *&self[1].super.isa = *&a3[1].side;
  *&self[1]._leftFrameCount = v6;
  *&self->_pose.side = v4;
  *&self->_pose.faceYawAngle.var0.__null_state_ = v5;
  v7 = *&a3[2].side;
  v8 = *&a3[2].faceYawAngle.var0.__null_state_;
  v9 = *&a3[3].faceYawAngle.var0.__null_state_;
  *&self[1]._leftEarYawAngleCaptured = *&a3[3].side;
  *&self[1]._rightEarYawAngleCaptured = v9;
  *&self[1]._leftEarYawAngleCapturedPoses = v7;
  *&self[1]._rightEarYawAngleCapturedPoses = v8;
  if (&self->_pose != a3)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self[1]._pose.side, *&a3[4].side, *&a3[4].lmPCA.__elems_[1], (*&a3[4].lmPCA.__elems_[1] - *&a3[4].side) >> 2);
    v12 = *&a3[4].yawAngle;
    v13 = *&a3[5].side;

    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self[1]._pose.yawAngle, v12, v13, (v13 - v12) >> 2);
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 188) = 0;
  *(self + 192) = 0;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  return self;
}

@end