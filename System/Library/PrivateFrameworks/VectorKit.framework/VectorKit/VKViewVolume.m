@interface VKViewVolume
- (Matrix<double,)lerpPoint:(float *)a3;
- (void)updateWithFrustum:(id *)a3 matrix:(const void *)a4;
@end

@implementation VKViewVolume

- (Matrix<double,)lerpPoint:(float *)a3
{
  v3 = 0;
  v4 = a3[1];
  v5 = *a3;
  v6 = a3[2];
  v27 = self->_corners[0];
  do
  {
    v27._e[v3] = v27._e[v3] + (self->_corners[1]._e[v3] - v27._e[v3]) * v5;
    ++v3;
  }

  while (v3 != 3);
  v7 = 0;
  v8 = *v27._e;
  v9 = v27._e[2];
  v27 = self->_corners[2];
  do
  {
    v27._e[v7] = v27._e[v7] + (self->_corners[3]._e[v7] - v27._e[v7]) * v5;
    ++v7;
  }

  while (v7 != 3);
  v10 = 0;
  v26 = v27;
  v27 = self->_corners[4];
  do
  {
    v27._e[v10] = v27._e[v10] + (self->_corners[5]._e[v10] - v27._e[v10]) * v5;
    ++v10;
  }

  while (v10 != 3);
  v11 = 0;
  v12 = *v27._e;
  v13 = v27._e[2];
  v27 = self->_corners[6];
  do
  {
    v27._e[v11] = v27._e[v11] + (self->_corners[7]._e[v11] - v27._e[v11]) * v5;
    ++v11;
  }

  while (v11 != 3);
  v14 = 0;
  v15 = v4;
  v25 = v27;
  *v27._e = v8;
  v27._e[2] = v9;
  do
  {
    v27._e[v14] = v27._e[v14] + (v26._e[v14] - v27._e[v14]) * v15;
    ++v14;
  }

  while (v14 != 3);
  v16 = 0;
  v17 = *v27._e;
  v18 = v27._e[2];
  *v27._e = v12;
  v27._e[2] = v13;
  do
  {
    v27._e[v16] = v27._e[v16] + (v25._e[v16] - v27._e[v16]) * v15;
    ++v16;
  }

  while (v16 != 3);
  v19 = 0;
  v20 = v6;
  v24 = v27;
  *v27._e = v17;
  v27._e[2] = v18;
  do
  {
    v27._e[v19] = v27._e[v19] + (v24._e[v19] - v27._e[v19]) * v20;
    ++v19;
  }

  while (v19 != 3);
  v22 = v27._e[1];
  v21 = v27._e[0];
  v23 = v27._e[2];
  result._e[2] = v23;
  result._e[1] = v22;
  result._e[0] = v21;
  return result;
}

- (void)updateWithFrustum:(id *)a3 matrix:(const void *)a4
{
  var4 = a3->var4;
  v6 = a3->var5 + a3->var5;
  v7 = -1.0 - v6;
  v8 = a3->var1 * 0.5;
  v9 = a3->var2 * 0.5;
  var3 = a3->var3;
  v11 = v8 * (-1.0 - v6);
  v12 = -v9;
  self->_corners[0]._e[0] = v11;
  self->_corners[0]._e[1] = -v9;
  v13 = 1.0 - v6;
  v14 = v8 * (1.0 - v6);
  self->_corners[0]._e[2] = -var3;
  self->_corners[1]._e[0] = v14;
  self->_corners[1]._e[1] = -v9;
  self->_corners[1]._e[2] = -var3;
  self->_corners[2]._e[0] = v11;
  self->_corners[2]._e[1] = v9;
  self->_corners[2]._e[2] = -var3;
  self->_corners[3]._e[0] = v14;
  self->_corners[3]._e[1] = v9;
  self->_corners[3]._e[2] = -var3;
  if (!a3->var0)
  {
    v15 = var4 / var3 * v8;
    v12 = -(var4 / var3 * v9);
    v9 = var4 / var3 * v9;
    v11 = v15 * v7;
    v14 = v15 * v13;
  }

  v16 = -var4;
  self->_corners[4]._e[0] = v11;
  self->_corners[4]._e[1] = v12;
  self->_corners[4]._e[2] = v16;
  self->_corners[5]._e[0] = v14;
  self->_corners[5]._e[1] = v12;
  self->_corners[5]._e[2] = v16;
  self->_corners[6]._e[0] = v11;
  self->_corners[6]._e[1] = v9;
  self->_corners[6]._e[2] = v16;
  self->_corners[7]._e[0] = v14;
  v17 = &self->_corners[0]._e[2];
  v18 = 8;
  self->_corners[7]._e[1] = v9;
  self->_corners[7]._e[2] = v16;
  do
  {
    v19 = *v17;
    v22 = *(v17 - 1);
    v23 = v19;
    v24 = 0x3FF0000000000000;
    *(v17 - 2) = gm::operator*<double,4,4,1>(a4, &v22);
    *(v17 - 1) = v20;
    *v17 = v21;
    v17 += 3;
    --v18;
  }

  while (v18);
}

@end