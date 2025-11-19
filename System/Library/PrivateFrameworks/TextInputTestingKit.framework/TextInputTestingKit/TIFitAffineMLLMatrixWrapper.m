@interface TIFitAffineMLLMatrixWrapper
- (CGPoint)transformedPoint:(CGPoint)a3;
- (TIFitAffineMLLMatrixWrapper)init;
- (void)calcMatrix;
- (void)dealloc;
- (void)setMatrix:(void *)a3;
- (void)setRotation:(double)a3;
- (void)setSkewRotation:(double)a3;
- (void)setXScale:(double)a3 yScale:(double)a4;
- (void)setXTrans:(double)a3 yTrans:(double)a4;
@end

@implementation TIFitAffineMLLMatrixWrapper

- (CGPoint)transformedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v12[3] = *MEMORY[0x277D85DE8];
  [(TIFitAffineMLLMatrixWrapper *)self calcMatrix];
  *v12 = x;
  *&v12[1] = y;
  v12[2] = 0x3FF0000000000000;
  MEMORY[0x26D6C05A0](v9, 3, 1, v12, 3);
  TIFitAffineMLLMatrix::operator*();
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(v9[3]);
  v5 = *MEMORY[0x26D6C05B0](v10, 0, 0);
  v6 = *MEMORY[0x26D6C05B0](v10, 1, 0);
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(v11);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)calcMatrix
{
  v12[5] = *MEMORY[0x277D85DE8];
  if (!self->_pMatrix)
  {
    pScaleMatrix = self->_pScaleMatrix;
    if (pScaleMatrix)
    {
      TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(v11, pScaleMatrix);
    }

    else
    {
      TIFitAffineMLLMatrix::identity(2);
    }

    pRotationMatrix = self->_pRotationMatrix;
    if (pRotationMatrix)
    {
      TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(v10, pRotationMatrix);
    }

    else
    {
      TIFitAffineMLLMatrix::identity(2);
    }

    pSkewMatrix = self->_pSkewMatrix;
    if (pSkewMatrix)
    {
      TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(v9, pSkewMatrix);
    }

    else
    {
      TIFitAffineMLLMatrix::identity(2);
    }

    pTransMatrix = self->_pTransMatrix;
    if (pTransMatrix)
    {
      TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(v8, pTransMatrix);
    }

    else
    {
      v12[0] = 0;
      v12[1] = 0;
      MEMORY[0x26D6C05A0](v8, 2, 1, v12, 2);
    }

    TIFitAffineMLLMatrix::operator*();
    TIFitAffineMLLMatrix::operator*();
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(v7);
    operator new();
  }
}

- (void)setXTrans:(double)a3 yTrans:(double)a4
{
  pMatrix = self->_pMatrix;
  if (pMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pMatrix[3]);
    MEMORY[0x26D6C07C0](pMatrix, 0x1020C40FAF5D19FLL);
  }

  self->_pMatrix = 0;
  pTransMatrix = self->_pTransMatrix;
  if (pTransMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pTransMatrix[3]);
    MEMORY[0x26D6C07C0](pTransMatrix, 0x1020C40FAF5D19FLL);
  }

  operator new();
}

- (void)setSkewRotation:(double)a3
{
  pMatrix = self->_pMatrix;
  if (pMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pMatrix[3]);
    MEMORY[0x26D6C07C0](pMatrix, 0x1020C40FAF5D19FLL);
  }

  self->_pMatrix = 0;
  pSkewMatrix = self->_pSkewMatrix;
  if (pSkewMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pSkewMatrix[3]);
    MEMORY[0x26D6C07C0](pSkewMatrix, 0x1020C40FAF5D19FLL);
  }

  operator new();
}

- (void)setRotation:(double)a3
{
  pMatrix = self->_pMatrix;
  if (pMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pMatrix[3]);
    MEMORY[0x26D6C07C0](pMatrix, 0x1020C40FAF5D19FLL);
  }

  self->_pMatrix = 0;
  pRotationMatrix = self->_pRotationMatrix;
  if (pRotationMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pRotationMatrix[3]);
    MEMORY[0x26D6C07C0](pRotationMatrix, 0x1020C40FAF5D19FLL);
  }

  __sincos_stret(a3);
  operator new();
}

- (void)setXScale:(double)a3 yScale:(double)a4
{
  pMatrix = self->_pMatrix;
  if (pMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pMatrix[3]);
    MEMORY[0x26D6C07C0](pMatrix, 0x1020C40FAF5D19FLL);
  }

  self->_pMatrix = 0;
  pScaleMatrix = self->_pScaleMatrix;
  if (pScaleMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pScaleMatrix[3]);
    MEMORY[0x26D6C07C0](pScaleMatrix, 0x1020C40FAF5D19FLL);
  }

  operator new();
}

- (void)setMatrix:(void *)a3
{
  pMatrix = self->_pMatrix;
  if (pMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pMatrix[3]);
    MEMORY[0x26D6C07C0](pMatrix, 0x1020C40FAF5D19FLL);
  }

  operator new();
}

- (void)dealloc
{
  pMatrix = self->_pMatrix;
  if (pMatrix)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(pMatrix[3]);
    MEMORY[0x26D6C07C0](pMatrix, 0x1020C40FAF5D19FLL);
  }

  v4.receiver = self;
  v4.super_class = TIFitAffineMLLMatrixWrapper;
  [(TIFitAffineMLLMatrixWrapper *)&v4 dealloc];
}

- (TIFitAffineMLLMatrixWrapper)init
{
  v3.receiver = self;
  v3.super_class = TIFitAffineMLLMatrixWrapper;
  if ([(TIFitAffineMLLMatrixWrapper *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end