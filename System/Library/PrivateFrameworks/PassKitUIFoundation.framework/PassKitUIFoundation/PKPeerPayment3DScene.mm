@interface PKPeerPayment3DScene
+ (__n64)rotationMatrixForRollPitch:(double)pitch;
+ (float32x2_t)skewForRollPitch:(double)pitch;
- (PKPeerPayment3DScene)init;
- (__n128)currentRotationMatrix;
- (__n128)setCurrentRotationMatrix:(__n128)matrix;
- (void)resetScene;
@end

@implementation PKPeerPayment3DScene

- (PKPeerPayment3DScene)init
{
  v21.receiver = self;
  v21.super_class = PKPeerPayment3DScene;
  v2 = [(PKPeerPayment3DScene *)&v21 init];
  if (v2)
  {
    +[PKPeerPayment3DScene staticRollPitch];
    *v2->_currentRollPitch = v3;
    [PKPeerPayment3DScene rotationMatrixForRollPitch:?];
    *&v2[1].super.super.isa = v4;
    *&v2[1].super._sceneSource = v5;
    *&v2[1].super._rootNode = v6;
    *&v2[1].super._layerRootNode[1] = v7;
    [PKPeerPayment3DScene skewForRollPitch:*v2->_currentRollPitch];
    *v2->_currentSkew = v8;
    node = [MEMORY[0x277CDBAA8] node];
    camera = [MEMORY[0x277CDBA48] camera];
    [node setCamera:camera];
    [camera setUsesOrthographicProjection:1];
    [camera setOrthographicScale:4.0];
    LODWORD(v11) = 1114636288;
    [node setPosition:{0.0, 0.0, v11}];
    [(PKPeerPayment3DScene *)v2 setCameraNode:node];
    rootNode = [(PKPeerPayment3DScene *)v2 rootNode];
    [rootNode addChildNode:node];

    node2 = [MEMORY[0x277CDBAA8] node];
    [(PKPeerPayment3DScene *)v2 setTextContainerNode:node2];
    rootNode2 = [(PKPeerPayment3DScene *)v2 rootNode];
    [rootNode2 addChildNode:node2];

    node3 = [MEMORY[0x277CDBAA8] node];
    light = [MEMORY[0x277CDBA88] light];
    [node3 setLight:light];
    [light setType:*MEMORY[0x277CDBB90]];
    v17 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    [light setColor:v17];

    [light setSpotInnerAngle:40.0];
    [light setSpotOuterAngle:180.0];
    LODWORD(v18) = 1.0;
    [node3 setOrientation:{0.0, 0.0, v18, 0.0}];
    [(PKPeerPayment3DScene *)v2 setLightNode:node3];
    rootNode3 = [(PKPeerPayment3DScene *)v2 rootNode];
    [rootNode3 addChildNode:node3];

    [(PKPeerPayment3DScene *)v2 resetScene];
  }

  return v2;
}

- (void)resetScene
{
  v17 = *MEMORY[0x277D85DE8];
  [(PKPeerPayment3DScene *)self setPaused:1];
  v3 = +[PKPeerPayment3DStore sharedInstance];
  material = [v3 material];
  [(PKPeerPayment3DScene *)self setTextMaterial:material];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  textContainerNode = [(PKPeerPayment3DScene *)self textContainerNode];
  childNodes = [textContainerNode childNodes];

  v7 = [childNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(childNodes);
        }

        [*(*(&v12 + 1) + 8 * v10++) removeFromParentNode];
      }

      while (v8 != v10);
      v8 = [childNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (__n64)rotationMatrixForRollPitch:(double)pitch
{
  v1 = __sincosf_stret(0.5 * *&pitch);
  v24 = vmulq_n_f32(xmmword_25E0D5B70, v1.__sinval);
  v2 = __sincosf_stret(vmuls_lane_f32(0.5, *&pitch, 1));
  v3 = vmulq_n_f32(xmmword_25E0D5B80, v2.__sinval);
  v3.i32[3] = LODWORD(v2.__cosval);
  v4 = vnegq_f32(v3);
  v5 = vtrn2q_s32(v3, vtrn1q_s32(v3, v4));
  v6 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v3, v4, 8uLL), *v24.f32, 1), vextq_s8(v5, v5, 8uLL), v24.f32[0]);
  _Q2 = vrev64q_s32(v3);
  _Q2.i32[0] = v4.i32[1];
  _Q2.i32[3] = v4.i32[2];
  _Q3 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v3, v1.__cosval), _Q2, v24, 2), v6);
  _S4 = _Q3.i32[1];
  _S5 = _Q3.i32[2];
  __asm { FMLS            S2, S5, V3.S[2] }

  _S7 = _Q3.i32[3];
  __asm { FMLA            S2, S7, V3.S[3] }

  v16 = vmuls_lane_f32(_Q3.f32[2], _Q3, 3);
  result.n64_u32[0] = _Q2.i32[0];
  result.n64_f32[1] = (v16 + (_Q3.f32[0] * _Q3.f32[1])) + (v16 + (_Q3.f32[0] * _Q3.f32[1]));
  __asm
  {
    FMLA            S6, S4, V3.S[1]
    FMLA            S6, S7, V3.S[3]
    FMLA            S16, S5, V3.S[1]
    FMLA            S6, S5, V3.S[2]
    FMLS            S5, S4, V3.S[1]
  }

  return result;
}

+ (float32x2_t)skewForRollPitch:(double)pitch
{
  v3 = *&pitch;
  v4 = sinf(*(&pitch + 1));
  v1.f32[0] = sinf(v3);
  v1.f32[1] = v4;
  return vmul_f32(v1, 0x3F0000003F000000);
}

- (__n128)currentRotationMatrix
{
  result = *(self + 256);
  v2 = *(self + 272);
  v3 = *(self + 288);
  v4 = *(self + 304);
  return result;
}

- (__n128)setCurrentRotationMatrix:(__n128)matrix
{
  result[16] = a2;
  result[17] = matrix;
  result[18] = a4;
  result[19] = a5;
  return result;
}

@end