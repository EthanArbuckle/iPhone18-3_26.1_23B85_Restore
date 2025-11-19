uint64_t _indexHomogeneousValue<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 * *(*(a4 - 8) + 72)) >> 64 != (a2 * *(*(a4 - 8) + 72)) >> 63)
  {
    __break(1u);
  }

  return MEMORY[0x2A1C725E8]();
}

float _GLKMatrix2.subscript.getter(unint64_t a1, float a2, float a3, float a4, float a5)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    __break(1u);
  }

  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  result = *&v7[a1];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

float _GLKVector2.subscript.getter(unint64_t a1, float a2, float a3)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 > 1)
  {
    __break(1u);
  }

  *v5 = a2;
  *&v5[1] = a3;
  result = *&v5[a1];
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

float _GLKMatrix3.subscript.getter(unint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 > 8)
  {
    __break(1u);
  }

  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v6 = *(v1 + 32);
  result = *(v5 + a1);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

float _GLKVector3.subscript.getter(unint64_t a1, float a2, float a3, float a4)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 > 2)
  {
    __break(1u);
  }

  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  result = *&v6[a1];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

float _GLKMatrix4.subscript.getter(unint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 > 0xF)
  {
    __break(1u);
  }

  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v3 = v1[3];
  v6[2] = v1[2];
  v6[3] = v3;
  result = *(v6 + a1);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

float _GLKVector4.subscript.getter(unint64_t a1, float a2, float a3, float a4, float a5)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];

  return _GLKVector4.subscript.getter(a1, a2, a3, a4, a5);
}

{
  v8 = *MEMORY[0x29EDCA608];
  if (a1 > 3)
  {
    __break(1u);
  }

  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  result = *&v7[a1];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

float _GLKQuaternion.subscript.getter(unint64_t a1, float a2, float a3, float a4, float a5)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];

  return _GLKVector4.subscript.getter(a1, a2, a3, a4, a5);
}