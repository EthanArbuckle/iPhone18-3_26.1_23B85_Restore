unint64_t storeEnumTagSinglePayload for InterspersedMapSequence(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = 0x7FFFFFFF;
  if (v8 >= 0x80000000)
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 64);
  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = 0;
  v13 = 1;
  if (v9 < a3)
  {
    v14 = a3 - v9 + 1;
    v15 = 2;
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14;
    }

    v16 = 2 * (v15 >= &loc_10000) + 2;
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    v12 = 0;
    if (v15 >= 2)
    {
      v12 = v16;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = a2 - v9;
    }

    else
    {
      __bzero(a1, v11);
      *a1 = a2 + ~v9;
    }

    result = v12;
    switch(v12)
    {
      case 0u:
        return result;
      case 1u:
        *(a1 + v11) = v13;
        return result;
      case 2u:
        *(a1 + v11) = v13;
        return result;
      case 3u:
        goto LABEL_29;
      case 4u:
        *(a1 + v11) = v13;
        return result;
    }
  }

  result = v12;
  switch(v12)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v11) = 0;
      break;
    case 2u:
      *(a1 + v11) = 0;
      break;
    case 3u:
LABEL_29:
      BUG();
    case 4u:
      *(a1 + v11) = 0;
      break;
  }

  if (a2)
  {
    if (v8 < 0x7FFFFFFF)
    {
      result = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        *result = a2 & 0x7FFFFFFF;
        *(result + 8) = 0;
      }

      else
      {
        *result = (a2 - 1);
      }
    }

    else
    {
      return __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
    }
  }

  return result;
}

uint64_t type metadata completion function for InterspersedMapSequence.Iterator(void *a1)
{
  v1 = a1[2];
  v2 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, v2, v1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v4 = AssociatedTypeWitness;
  if (v5 <= 0x3F)
  {
    v9[0] = *(AssociatedTypeWitness - 8) + 64;
    v9[1] = &value witness table for () + 64;
    v9[2] = &value witness table for () + 64;
    v6 = type metadata accessor for InterspersedMapSequence.Iterator.State(319, v1, a1[3], v2);
    v4 = v6;
    if (v7 <= 0x3F)
    {
      v9[3] = *(v6 - 8) + 64;
      v4 = 0;
      swift_initStructMetadata(a1, 0, 4, v9, a1 + 5);
    }
  }

  return v4;
}

uint64_t *initializeBufferWithCopyOfBuffer for InterspersedMapSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  v26 = *(v6 + 64);
  v7 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v9 | *(v6 + 80) & 0xF8;
  if (v10 > 7 || ((v9 | *(v6 + 80)) & 0x100000) != 0 || (v11 = *(v8 + 64), (v9 | (-17 - (v9 + ((((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)))) - (v11 + 1) < 0xFFFFFFFFFFFFFFE7))
  {
    v22 = *a2;
    *a1 = *a2;
    v21 = (v22 + (((v10 | 7) + 16) & ~(v10 | 7)));
    v22;
  }

  else
  {
    v28 = v7;
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v12 = ((a1 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = (a2 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 8);
    *v12 = *v13;
    v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v16 + 8);
    *v15 = *v16;
    v18 = *(v16 + v11 + 16);
    v19 = (v16 + 16);
    v14;
    v17;
    if (v18 < 2)
    {
LABEL_8:
      v21 = a1;
    }

    else
    {
      v20 = 4;
      if (v11 < 4)
      {
        v20 = v11;
      }

      switch(v20)
      {
        case 0:
          goto LABEL_8;
        case 1:
          v23 = *v19;
          break;
        case 2:
          v23 = *v19;
          break;
        case 3:
          v23 = *v19 | (v19[2] << 16);
          break;
        case 4:
          v23 = *v19;
          break;
      }

      v21 = a1;
      if (v11 < 4)
      {
        v23 |= (v18 - 2) << (8 * v11);
      }

      v18 = v23 + 2;
    }

    v24 = v15 + 1;
    if (v18 == 1)
    {
      (*(v8 + 16))(v24, v19, v28);
      v24[v11] = 1;
    }

    else if (v18)
    {
      memcpy(v24, v19, v11 + 1);
    }

    else
    {
      (*(v8 + 16))(v24, v19, v28);
      v24[v11] = 0;
    }
  }

  return v21;
}

uint64_t destroy for InterspersedMapSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v3, v2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 8))(a1, AssociatedTypeWitness);
  v6 = (*(v5 + 64) + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v6 + 8);
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v7 + 8);
  result = swift_getAssociatedTypeWitness(0, v3, v2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(result - 8);
  v10 = ((v7 + *(v9 + 80) + 16) & ~*(v9 + 80));
  v11 = *(v9 + 64);
  v12 = v10[v11];
  if (v12 >= 2)
  {
    v13 = 4;
    if (v11 < 4)
    {
      v13 = v11;
    }

    switch(v13)
    {
      case 0:
        break;
      case 1:
        v14 = *v10;
        goto LABEL_9;
      case 2:
        v14 = *v10;
        goto LABEL_9;
      case 3:
        v14 = *v10 | (*(&dword_0 + ((v7 + *(v9 + 80) + 16) & ~*(v9 + 80)) + 2) << 16);
        goto LABEL_9;
      case 4:
        v14 = *v10;
LABEL_9:
        if (v11 < 4)
        {
          v14 |= (v12 - 2) << (8 * v11);
        }

        v12 = v14 + 2;
        break;
    }
  }

  if (v12 <= 1)
  {
    return (*(v9 + 8))(v10, result);
  }

  return result;
}

uint64_t initializeWithCopy for InterspersedMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = ((v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = (v7 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v9 + 8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v11 + 8);
  *v10 = *v11;
  v28 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v12 = *(v28 - 8);
  v13 = *(v12 + 80);
  v24 = v10 + v13 + 16;
  v14 = v13 + v11 + 16;
  v15 = ~v13;
  v16 = (v15 & v14);
  v27 = v12;
  v17 = *(v12 + 64);
  v18 = v16[v17];
  v25;
  v26;
  if (v18 < 2)
  {
LABEL_5:
    v20 = a1;
  }

  else
  {
    v19 = 4;
    if (v17 < 4)
    {
      v19 = v17;
    }

    switch(v19)
    {
      case 0:
        goto LABEL_5;
      case 1:
        v21 = *v16;
        break;
      case 2:
        v21 = *v16;
        break;
      case 3:
        v21 = *v16 | (v16[2] << 16);
        break;
      case 4:
        v21 = *v16;
        break;
    }

    v20 = a1;
    if (v17 < 4)
    {
      v21 |= (v18 - 2) << (8 * v17);
    }

    v18 = v21 + 2;
  }

  v22 = (v15 & v24);
  if (v18 == 1)
  {
    (*(v27 + 16))(v22, v16, v28);
    v22[v17] = 1;
  }

  else if (v18)
  {
    memcpy(v22, v16, v17 + 1);
  }

  else
  {
    (*(v27 + 16))(v22, v16, v28);
    v22[v17] = 0;
  }

  return v20;
}

uint64_t assignWithCopy for InterspersedMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = (v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 8);
  v11 = *(v9 + 8);
  *v8 = *v9;
  v11;
  v10;
  v12 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v12 + 8);
  v15 = *(v13 + 8);
  *v12 = *v13;
  v15;
  v14;
  v16 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v18 + v12 + 16;
  v20 = v18 + v13 + 16;
  v21 = ~v18;
  v22 = (v21 & v19);
  v23 = (v20 & v21);
  if (v22 != v23)
  {
    v24 = *(v17 + 64);
    v25 = v22[v24];
    v26 = 4;
    if (v25 >= 2)
    {
      v27 = v24;
      if (v24 >= 4)
      {
        v27 = 4;
      }

      switch(v27)
      {
        case 0:
          break;
        case 1:
          v28 = *v22;
          goto LABEL_10;
        case 2:
          v28 = *v22;
          goto LABEL_10;
        case 3:
          v28 = *v22 | (v22[2] << 16);
          goto LABEL_10;
        case 4:
          v28 = *v22;
LABEL_10:
          if (v24 < 4)
          {
            v28 |= (v25 - 2) << (8 * v24);
          }

          v25 = v28 + 2;
          break;
      }
    }

    if (v25 <= 1)
    {
      v29 = *(v16 - 8);
      v30 = v16;
      (*(v17 + 8))(v22, v16);
      v26 = 4;
      v16 = v30;
      v17 = v29;
    }

    v31 = v23[v24];
    if (v31 >= 2)
    {
      if (v24 < 4)
      {
        v26 = v24;
      }

      switch(v26)
      {
        case 0:
          break;
        case 1:
          v32 = *v23;
          goto LABEL_23;
        case 2:
          v32 = *v23;
          goto LABEL_23;
        case 3:
          v32 = *v23 | (v23[2] << 16);
          goto LABEL_23;
        case 4:
          v32 = *v23;
LABEL_23:
          if (v24 < 4)
          {
            v32 |= (v31 - 2) << (8 * v24);
          }

          v31 = v32 + 2;
          break;
      }
    }

    if (v31 == 1)
    {
      (*(v17 + 16))(v22, v23, v16);
      v22[v24] = 1;
    }

    else if (v31)
    {
      memcpy(v22, v23, v24 + 1);
    }

    else
    {
      (*(v17 + 16))(v22, v23, v16);
      v22[v24] = 0;
    }
  }

  return a1;
}

uint64_t initializeWithTake for InterspersedMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = ((v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v10 + v14 + 16;
  v16 = v11 + v14 + 16;
  v17 = ~v14;
  v18 = (v17 & v16);
  v19 = *(v13 + 64);
  v20 = v18[v19];
  if (v20 < 2)
  {
LABEL_5:
    v22 = a1;
  }

  else
  {
    v21 = 4;
    if (v19 < 4)
    {
      v21 = v19;
    }

    switch(v21)
    {
      case 0:
        goto LABEL_5;
      case 1:
        v23 = *v18;
        break;
      case 2:
        v23 = *v18;
        break;
      case 3:
        v23 = *v18 | (v18[2] << 16);
        break;
      case 4:
        v23 = *v18;
        break;
    }

    v22 = a1;
    if (v19 < 4)
    {
      v23 |= (v20 - 2) << (8 * v19);
    }

    v20 = v23 + 2;
  }

  v24 = (v17 & v15);
  if (v20 == 1)
  {
    (*(v13 + 32))(v24, v18, v12);
    v24[v19] = 1;
  }

  else if (v20)
  {
    memcpy(v24, v18, v19 + 1);
  }

  else
  {
    (*(v13 + 32))(v24, v18, v12);
    v24[v19] = 0;
  }

  return v22;
}

uint64_t assignWithTake for InterspersedMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 40))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = (v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v7 + a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v8 + 8);
  *v8 = *v9;
  v10;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v11 + 8);
  *v11 = *v12;
  v13;
  v14 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = v16 + v11 + 16;
  v18 = v12 + v16 + 16;
  v19 = ~v16;
  v20 = (v19 & v17);
  v21 = (v18 & v19);
  if (v20 != v21)
  {
    v22 = *(v15 + 64);
    v23 = v20[v22];
    v24 = 4;
    if (v23 >= 2)
    {
      v25 = v22;
      if (v22 >= 4)
      {
        v25 = 4;
      }

      switch(v25)
      {
        case 0:
          break;
        case 1:
          v26 = *v20;
          goto LABEL_10;
        case 2:
          v26 = *v20;
          goto LABEL_10;
        case 3:
          v26 = *v20 | (v20[2] << 16);
          goto LABEL_10;
        case 4:
          v26 = *v20;
LABEL_10:
          if (v22 < 4)
          {
            v26 |= (v23 - 2) << (8 * v22);
          }

          v23 = v26 + 2;
          break;
      }
    }

    if (v23 <= 1)
    {
      v27 = v14;
      (*(v15 + 8))(v20, v14);
      v24 = 4;
      v14 = v27;
    }

    v28 = v21[v22];
    if (v28 >= 2)
    {
      if (v22 < 4)
      {
        v24 = v22;
      }

      switch(v24)
      {
        case 0:
          break;
        case 1:
          v29 = *v21;
          goto LABEL_23;
        case 2:
          v29 = *v21;
          goto LABEL_23;
        case 3:
          v29 = *v21 | (v21[2] << 16);
          goto LABEL_23;
        case 4:
          v29 = *v21;
LABEL_23:
          if (v22 < 4)
          {
            v29 |= (v28 - 2) << (8 * v22);
          }

          v28 = v29 + 2;
          break;
      }
    }

    if (v28 == 1)
    {
      (*(v15 + 32))(v20, v21, v14);
      v20[v22] = 1;
    }

    else if (v28)
    {
      memcpy(v20, v21, v22 + 1);
    }

    else
    {
      (*(v15 + 32))(v20, v21, v14);
      v20[v22] = 0;
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for InterspersedMapSequence.Iterator(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = 0x7FFFFFFF;
  v19 = *(v6 + 84);
  if (v19 >= 0x80000000)
  {
    v7 = *(v6 + 84);
  }

  v8 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  if (!a2)
  {
    return v5;
  }

  v9 = *(v6 + 64);
  if (a2 <= v7)
  {
    goto LABEL_21;
  }

  v10 = *(*(v8 - 8) + 64) + ((*(*(v8 - 8) + 80) + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(*(v8 - 8) + 80)) + 1;
  if (v10 > 3)
  {
LABEL_6:
    v11 = a1[v10];
    goto LABEL_13;
  }

  v12 = ((~(-1 << (8 * v10)) + a2 - v7) >> (8 * v10)) + 1;
  if (v12 > 0xFFFF)
  {
    v11 = *&a1[v10];
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }

    v11 = *&a1[v10];
  }

LABEL_13:
  if (v11)
  {
    v13 = (v11 - 1) << (8 * v10);
    v14 = 0;
    if (v10 >= 4)
    {
      v13 = 0;
    }

    if (v10)
    {
      v15 = 4;
      if (v10 < 4)
      {
        v15 = v10;
      }

      switch(v15)
      {
        case 1:
          v14 = *a1;
          break;
        case 2:
          v14 = *a1;
          break;
        case 3:
          v14 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v14 = *a1;
          break;
      }
    }

    return v7 + (v13 | v14) + 1;
  }

LABEL_21:
  if (v19 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v19, AssociatedTypeWitness);
  }

  LODWORD(v17) = -1;
  if (*(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
  {
    v17 = *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
  }

  return (v17 + 1);
}

unint64_t storeEnumTagSinglePayload for InterspersedMapSequence.Iterator(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(a4 + 32);
  v23 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v7 = *(AssociatedTypeWitness - 8);
  v8 = 0x7FFFFFFF;
  v22 = *(v7 + 84);
  if (v22 >= 0x80000000)
  {
    v8 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness(0, v6, v5, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element) - 8);
  result = *(v7 + 64);
  v11 = *(v9 + 64) + ((*(v9 + 80) + ((((result + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v9 + 80)) + 1;
  v12 = a3 <= v8;
  v13 = a3 - v8;
  if (!v12)
  {
    if (v11 > 3)
    {
      v20 = 1;
LABEL_11:
      v23 = v20;
      goto LABEL_12;
    }

    v14 = ((~(-1 << (8 * v11)) + v13) >> (8 * v11)) + 1;
    if (v14 > 0xFFFF)
    {
      v20 = 4;
      goto LABEL_11;
    }

    v15 = 0;
    if (v14 >= 2)
    {
      v15 = ((v14 | 0x200000000uLL) - 256) >> 32;
    }

    v23 = v15;
  }

LABEL_12:
  if (v8 < a2)
  {
    v16 = a2 + ~v8;
    if (v11 >= 4)
    {
      v17 = 1;
      v18 = a1;
      __bzero(a1, v11);
      *a1 = v16;
      result = v23;
      switch(v23)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_32;
        case 2u:
          goto LABEL_34;
        case 3u:
          goto LABEL_36;
        case 4u:
          goto LABEL_33;
      }
    }

    v17 = (v16 >> (8 * v11)) + 1;
    if (*(v9 + 64) + ((*(v9 + 80) + ((((result + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 16) & ~*(v9 + 80)) != -1)
    {
      v19 = v16 & ~(-1 << (8 * v11));
      __bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v19;
          v18 = a1;
          result = v23;
          switch(v23)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_32;
            case 2u:
              goto LABEL_34;
            case 3u:
              goto LABEL_36;
            case 4u:
              goto LABEL_33;
          }
        }

        v18 = a1;
        *a1 = v16;
        result = v23;
        switch(v23)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_32;
          case 2u:
            goto LABEL_34;
          case 3u:
            goto LABEL_36;
          case 4u:
            goto LABEL_33;
        }
      }

      *a1 = v19;
      *(a1 + 2) = BYTE2(v19);
      v18 = a1;
      result = v23;
      switch(v23)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_32;
        case 2u:
          goto LABEL_34;
        case 3u:
          goto LABEL_36;
        case 4u:
          goto LABEL_33;
      }
    }

    result = v23;
    v18 = a1;
    switch(v23)
    {
      case 0u:
        return result;
      case 1u:
LABEL_32:
        *(v18 + v11) = v17;
        return result;
      case 2u:
LABEL_34:
        *(v18 + v11) = v17;
        return result;
      case 3u:
        goto LABEL_36;
      case 4u:
LABEL_33:
        *(v18 + v11) = v17;
        return result;
    }
  }

  switch(v23)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v11) = 0;
      break;
    case 2u:
      *(a1 + v11) = 0;
      break;
    case 3u:
LABEL_36:
      BUG();
    case 4u:
      *(a1 + v11) = 0;
      break;
  }

  if (a2)
  {
    if (v22 < 0x7FFFFFFF)
    {
      result = (a1 + result + 7) & 0xFFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        *result = a2 & 0x7FFFFFFF;
        *(result + 8) = 0;
      }

      else
      {
        *result = (a2 - 1);
      }
    }

    else
    {
      return __swift_storeEnumTagSinglePayload(a1, a2, v22, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t type metadata completion function for InterspersedMapSequence.Iterator.State(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, *(a1 + 32), *(a1 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v4 = AssociatedTypeWitness;
  if (v5 <= 0x3F)
  {
    v7[0] = *(AssociatedTypeWitness - 8) + 64;
    v7[1] = v7[0];
    v4 = 0;
    swift_initEnumMetadataMultiPayload(a1, 0, 2, v7, v2, v3);
  }

  return v4;
}

_BYTE *initializeBufferWithCopyOfBuffer for InterspersedMapSequence.Iterator.State(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  if (v7 > 7u || (v9 = *(v6 + 64), (v9 + 1) > 0x18) || (v7 & 0x100000) != 0)
  {
    v13 = *__src;
    *__dst = *__src;
    v13;
    return (v13 + ((v8 + 16) & ~v8));
  }

  v10 = __src[v9];
  if (v10 >= 2)
  {
    v11 = 4;
    if (v9 < 4)
    {
      v11 = v9;
    }

    switch(v11)
    {
      case 0:
        break;
      case 1:
        v12 = *__src;
        goto LABEL_13;
      case 2:
        v12 = *__src;
        goto LABEL_13;
      case 3:
        v12 = *__src | (__src[2] << 16);
        goto LABEL_13;
      case 4:
        v12 = *__src;
LABEL_13:
        if (v9 < 4)
        {
          v12 |= (v10 - 2) << (8 * v9);
        }

        v10 = v12 + 2;
        break;
    }
  }

  if (v10 == 1)
  {
    (*(v6 + 16))(__dst, __src, AssociatedTypeWitness);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v10)
  {
    (*(v6 + 16))(__dst, __src, AssociatedTypeWitness);
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

uint64_t destroy for InterspersedMapSequence.Iterator.State(unsigned __int8 *a1, uint64_t a2)
{
  result = swift_getAssociatedTypeWitness(0, *(a2 + 32), *(a2 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v4 = *(result - 8);
  v5 = *(v4 + 64);
  v6 = a1[v5];
  if (v6 >= 2)
  {
    v7 = 4;
    if (v5 < 4)
    {
      v7 = v5;
    }

    switch(v7)
    {
      case 0:
        break;
      case 1:
        v8 = *a1;
        goto LABEL_9;
      case 2:
        v8 = *a1;
        goto LABEL_9;
      case 3:
        v8 = *a1 | (a1[2] << 16);
        goto LABEL_9;
      case 4:
        v8 = *a1;
LABEL_9:
        if (v5 < 4)
        {
          v8 |= (v6 - 2) << (8 * v5);
        }

        v6 = v8 + 2;
        break;
    }
  }

  if (v6 <= 1)
  {
    return (*(v4 + 8))(a1, result);
  }

  return result;
}

_BYTE *initializeWithCopy for InterspersedMapSequence.Iterator.State(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = __src[v6];
  if (v7 >= 2)
  {
    v8 = 4;
    if (v6 < 4)
    {
      v8 = v6;
    }

    switch(v8)
    {
      case 0:
        break;
      case 1:
        v9 = *__src;
        goto LABEL_9;
      case 2:
        v9 = *__src;
        goto LABEL_9;
      case 3:
        v9 = *__src | (__src[2] << 16);
        goto LABEL_9;
      case 4:
        v9 = *__src;
LABEL_9:
        if (v6 < 4)
        {
          v9 |= (v7 - 2) << (8 * v6);
        }

        v7 = v9 + 2;
        break;
    }
  }

  if (v7 == 1)
  {
    (*(v5 + 16))(__dst, __src, AssociatedTypeWitness);
    __dst[v6] = 1;
    return __dst;
  }

  if (!v7)
  {
    (*(v5 + 16))(__dst, __src, AssociatedTypeWitness);
    __dst[v6] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v6 + 1);
}

unsigned __int8 *assignWithCopy for InterspersedMapSequence.Iterator.State(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v6 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = __dst[v8];
  v10 = 4;
  if (v9 >= 2)
  {
    v11 = v8;
    if (v8 >= 4)
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 0:
        break;
      case 1:
        v12 = *__dst;
        goto LABEL_10;
      case 2:
        v12 = *__dst;
        goto LABEL_10;
      case 3:
        v12 = *__dst | (__dst[2] << 16);
        goto LABEL_10;
      case 4:
        v12 = *__dst;
LABEL_10:
        if (v8 < 4)
        {
          v12 |= (v9 - 2) << (8 * v8);
        }

        v9 = v12 + 2;
        break;
    }
  }

  if (v9 <= 1)
  {
    (*(v7 + 8))(__dst, AssociatedTypeWitness);
    v10 = 4;
  }

  v13 = __src[v8];
  if (v13 >= 2)
  {
    if (v8 < 4)
    {
      v10 = v8;
    }

    switch(v10)
    {
      case 0:
        break;
      case 1:
        v14 = *__src;
        goto LABEL_23;
      case 2:
        v14 = *__src;
        goto LABEL_23;
      case 3:
        v14 = *__src | (__src[2] << 16);
        goto LABEL_23;
      case 4:
        v14 = *__src;
LABEL_23:
        if (v8 < 4)
        {
          v14 |= (v13 - 2) << (8 * v8);
        }

        v13 = v14 + 2;
        break;
    }
  }

  if (v13 == 1)
  {
    (*(v7 + 16))(__dst, __src, v6);
    __dst[v8] = 1;
    return __dst;
  }

  if (!v13)
  {
    (*(v7 + 16))(__dst, __src, v6);
    __dst[v8] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v8 + 1);
}

_BYTE *initializeWithTake for InterspersedMapSequence.Iterator.State(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = __src[v6];
  if (v7 >= 2)
  {
    v8 = 4;
    if (v6 < 4)
    {
      v8 = v6;
    }

    switch(v8)
    {
      case 0:
        break;
      case 1:
        v9 = *__src;
        goto LABEL_9;
      case 2:
        v9 = *__src;
        goto LABEL_9;
      case 3:
        v9 = *__src | (__src[2] << 16);
        goto LABEL_9;
      case 4:
        v9 = *__src;
LABEL_9:
        if (v6 < 4)
        {
          v9 |= (v7 - 2) << (8 * v6);
        }

        v7 = v9 + 2;
        break;
    }
  }

  if (v7 == 1)
  {
    (*(v5 + 32))(__dst, __src, AssociatedTypeWitness);
    __dst[v6] = 1;
    return __dst;
  }

  if (!v7)
  {
    (*(v5 + 32))(__dst, __src, AssociatedTypeWitness);
    __dst[v6] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v6 + 1);
}

unsigned __int8 *assignWithTake for InterspersedMapSequence.Iterator.State(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v6 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = __dst[v8];
  v10 = 4;
  if (v9 >= 2)
  {
    v11 = v8;
    if (v8 >= 4)
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 0:
        break;
      case 1:
        v12 = *__dst;
        goto LABEL_10;
      case 2:
        v12 = *__dst;
        goto LABEL_10;
      case 3:
        v12 = *__dst | (__dst[2] << 16);
        goto LABEL_10;
      case 4:
        v12 = *__dst;
LABEL_10:
        if (v8 < 4)
        {
          v12 |= (v9 - 2) << (8 * v8);
        }

        v9 = v12 + 2;
        break;
    }
  }

  if (v9 <= 1)
  {
    (*(v7 + 8))(__dst, AssociatedTypeWitness);
    v10 = 4;
  }

  v13 = __src[v8];
  if (v13 >= 2)
  {
    if (v8 < 4)
    {
      v10 = v8;
    }

    switch(v10)
    {
      case 0:
        break;
      case 1:
        v14 = *__src;
        goto LABEL_23;
      case 2:
        v14 = *__src;
        goto LABEL_23;
      case 3:
        v14 = *__src | (__src[2] << 16);
        goto LABEL_23;
      case 4:
        v14 = *__src;
LABEL_23:
        if (v8 < 4)
        {
          v14 |= (v13 - 2) << (8 * v8);
        }

        v13 = v14 + 2;
        break;
    }
  }

  if (v13 == 1)
  {
    (*(v7 + 32))(__dst, __src, v6);
    __dst[v8] = 1;
    return __dst;
  }

  if (!v13)
  {
    (*(v7 + 32))(__dst, __src, v6);
    __dst[v8] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v8 + 1);
}

uint64_t getEnumTagSinglePayload for InterspersedMapSequence.Iterator.State(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  if (!a2)
  {
    return v4;
  }

  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  if (a2 < 0xFE)
  {
    goto LABEL_19;
  }

  v7 = v6 + 1;
  if ((v6 + 1) > 3)
  {
LABEL_4:
    v8 = a1[v7];
    goto LABEL_11;
  }

  v9 = ((a2 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
  if (v9 > 0xFFFF)
  {
    v8 = *&a1[v7];
  }

  else
  {
    if (v9 <= 0xFF)
    {
      if (v9 < 2)
      {
        goto LABEL_19;
      }

      goto LABEL_4;
    }

    v8 = *&a1[v7];
  }

LABEL_11:
  if (v8)
  {
    v10 = (v8 - 1) << (8 * v7);
    v11 = 0;
    if (v7 >= 4)
    {
      v10 = 0;
    }

    if (v6 != -1)
    {
      v12 = 4;
      if (v7 < 4)
      {
        v12 = v6 + 1;
      }

      switch(v12)
      {
        case 1:
          v11 = *a1;
          break;
        case 2:
          v11 = *a1;
          break;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v11 = *a1;
          break;
      }
    }

    return (v10 | v11) + 254;
  }

LABEL_19:
  v4 = 0;
  if (a1[v6] >= 3u)
  {
    return (a1[v6] ^ 0xFFu) + 1;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for InterspersedMapSequence.Iterator.State(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  result = *(*(swift_getAssociatedTypeWitness(0, *(a4 + 32), *(a4 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element) - 8) + 64);
  v7 = result + 1;
  if (a3 >= 0xFE)
  {
    if (v7 > 3)
    {
      v13 = 1;
LABEL_9:
      v5 = v13;
      goto LABEL_10;
    }

    v8 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (v8 > 0xFFFF)
    {
      v13 = 4;
      goto LABEL_9;
    }

    v5 = 0;
    if (v8 >= 2)
    {
      v5 = ((v8 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_10:
  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      v10 = 1;
      v11 = a1;
      __bzero(a1, result + 1);
      *a1 = v9;
      result = v5;
      switch(v5)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (result != -1)
    {
      v12 = v9 & ~(-1 << (8 * v7));
      result = __bzero(a1, result + 1);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          result = a1;
          *a1 = v12;
          v11 = a1;
          switch(v5)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_26;
            case 2u:
              goto LABEL_28;
            case 3u:
              goto LABEL_30;
            case 4u:
              goto LABEL_27;
          }
        }

        v11 = a1;
        *a1 = a2 + 2;
        switch(v5)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_26;
          case 2u:
            goto LABEL_28;
          case 3u:
            goto LABEL_30;
          case 4u:
            goto LABEL_27;
        }
      }

      result = a1;
      *a1 = v12;
      *(a1 + 2) = BYTE2(v12);
      v11 = a1;
      switch(v5)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v11 = a1;
    switch(v5)
    {
      case 0u:
        return result;
      case 1u:
LABEL_26:
        *(v11 + v7) = v10;
        break;
      case 2u:
LABEL_28:
        *(v11 + v7) = v10;
        break;
      case 3u:
LABEL_30:
        BUG();
      case 4u:
LABEL_27:
        *(v11 + v7) = v10;
        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0u:
        goto LABEL_21;
      case 1u:
        *(a1 + v7) = 0;
        goto LABEL_21;
      case 2u:
        *(a1 + v7) = 0;
        goto LABEL_21;
      case 3u:
        goto LABEL_30;
      case 4u:
        *(a1 + v7) = 0;
LABEL_21:
        if (a2)
        {
          *(a1 + result) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for InterspersedMapSequence.Iterator.State(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(swift_getAssociatedTypeWitness(0, *(a2 + 32), *(a2 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element) - 8) + 64);
  result = a1[v2];
  if (result >= 2)
  {
    v4 = 4;
    if (v2 < 4)
    {
      v4 = v2;
    }

    switch(v4)
    {
      case 0:
        return result;
      case 1:
        v5 = *a1;
        goto LABEL_9;
      case 2:
        v5 = *a1;
        goto LABEL_9;
      case 3:
        v5 = *a1 | (a1[2] << 16);
        goto LABEL_9;
      case 4:
        v5 = *a1;
LABEL_9:
        if (v2 < 4)
        {
          v5 |= (result - 2) << (8 * v2);
        }

        result = (v5 + 2);
        break;
      case 5:
        JUMPOUT(0x321844);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for InterspersedMapSequence.Iterator.State(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = *(swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element) - 8);
  v4 = *(result + 64);
  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      v6 = v5 & ~(-1 << (8 * v4));
      *(a1 + v4) = (v5 >> (8 * v4)) + 2;
      result = __bzero(a1, v4);
      if (v4 == 3)
      {
        *a1 = v6;
        *(a1 + 2) = BYTE2(v6);
      }

      else if (v4 == 2)
      {
        *a1 = v6;
      }

      else
      {
        *a1 = v6;
      }
    }

    else
    {
      *(a1 + v4) = 2;
      result = __bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    *(a1 + v4) = a2;
  }

  return result;
}

uint64_t type metadata completion function for InterspersedMapSequence<>.Index(uint64_t *a1)
{
  v1 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(319, a1[2], a1[3], a1[4]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v5[0] = *(v1 - 8) + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 1, v5, a1 + 5);
  }

  return v2;
}

uint64_t type metadata completion function for InterspersedMapSequence<>.Index.Representation(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, *(a1 + 32), *(a1 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v2 = AssociatedTypeWitness;
  if (v3 <= 0x3F)
  {
    v8[0] = *(AssociatedTypeWitness - 8) + 64;
    swift_getTupleTypeLayout2(v7, v8[0]);
    v8[1] = v7;
    v2 = 0;
    swift_initEnumMetadataMultiPayload(a1, 0, 2, v8, v4, v5);
  }

  return v2;
}

void *initializeBufferWithCopyOfBuffer for InterspersedMapSequence<>.Index(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = v7 + v8;
  v11 = v7 + (v9 & v10);
  if (v11 <= v7)
  {
    v11 = *(v6 + 64);
  }

  if (v8 > 7u || (v8 & 0x100000) != 0 || v11 + 1 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    v17 = v16 + ((v8 + 16) & v9);
    v16;
    return v17;
  }

  else
  {
    v12 = a2[v11];
    v22 = v10;
    if (v12 < 2)
    {
LABEL_10:
      v14 = a2;
      v15 = a1;
      v24 = v12;
    }

    else
    {
      v13 = 4;
      if (v11 < 4)
      {
        v13 = v11;
      }

      switch(v13)
      {
        case 0:
          goto LABEL_10;
        case 1:
          v14 = a2;
          v19 = *a2;
          break;
        case 2:
          v14 = a2;
          v19 = *a2;
          break;
        case 3:
          v14 = a2;
          v19 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v14 = a2;
          v19 = *a2;
          break;
      }

      v15 = a1;
      if (v11 < 4)
      {
        v19 |= (v12 - 2) << (8 * v11);
      }

      v24 = v19 + 2;
    }

    v20 = *(v6 + 16);
    v21 = v14;
    v23 = AssociatedTypeWitness;
    v20(v15, v14, AssociatedTypeWitness);
    if (v24 == 1)
    {
      v20((v9 & (v15 + v22)), (v9 & &v21[v22]), v23);
      *(v15 + v11) = 1;
    }

    else
    {
      *(v15 + v11) = 0;
    }

    return v15;
  }
}

{
  return initializeBufferWithCopyOfBuffer for InterspersedMapSequence<>.Index.Representation(a1, a2, a3);
}

uint64_t destroy for InterspersedMapSequence<>.Index(unsigned __int8 *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a2 + 32), *(a2 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v4 = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = ~v7;
  v10 = v6 + (v9 & v8);
  if (v10 <= v6)
  {
    v10 = *(v5 + 64);
  }

  v11 = a1[v10];
  v16 = v8;
  if (v11 >= 2)
  {
    v12 = 4;
    if (v10 < 4)
    {
      v12 = v10;
    }

    switch(v12)
    {
      case 0:
        break;
      case 1:
        v13 = *a1;
        goto LABEL_11;
      case 2:
        v13 = *a1;
        goto LABEL_11;
      case 3:
        v13 = *a1 | (a1[2] << 16);
        goto LABEL_11;
      case 4:
        v13 = *a1;
LABEL_11:
        if (v10 < 4)
        {
          v13 |= (v11 - 2) << (8 * v10);
        }

        v11 = v13 + 2;
        break;
    }
  }

  v14 = *(v5 + 8);
  result = v14(a1, AssociatedTypeWitness);
  if (v11 == 1)
  {
    return v14((v9 & &a1[v16]), v4);
  }

  return result;
}

{
  return destroy for InterspersedMapSequence<>.Index.Representation(a1, a2);
}

uint64_t initializeWithCopy for InterspersedMapSequence<>.Index(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = ~v7;
  v10 = v6 + (v9 & v8);
  if (v10 <= v6)
  {
    v10 = *(v5 + 64);
  }

  v11 = a2[v10];
  v18 = v9;
  if (v11 >= 2)
  {
    v12 = 4;
    if (v10 < 4)
    {
      v12 = v10;
    }

    switch(v12)
    {
      case 0:
        break;
      case 1:
        v13 = *a2;
        goto LABEL_11;
      case 2:
        v13 = *a2;
        goto LABEL_11;
      case 3:
        v13 = *a2 | (a2[2] << 16);
        goto LABEL_11;
      case 4:
        v13 = *a2;
LABEL_11:
        if (v10 < 4)
        {
          v13 |= (v11 - 2) << (8 * v10);
        }

        v11 = v13 + 2;
        break;
    }
  }

  v14 = *(v5 + 16);
  v19 = AssociatedTypeWitness;
  v14(a1, a2, AssociatedTypeWitness);
  if (v11 == 1)
  {
    v14(v18 & (v8 + a1), (v18 & &a2[v8]), v19);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + v10) = v15;
  return a1;
}

{
  return initializeWithCopy for InterspersedMapSequence<>.Index.Representation(a1, a2, a3);
}

unsigned __int8 *assignWithCopy for InterspersedMapSequence<>.Index(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    v25 = v7 + v8;
    v24 = ~v8;
    v9 = v7 + (~v8 & (v7 + v8));
    if (v9 <= v7)
    {
      v9 = *(v6 + 64);
    }

    v10 = a1[v9];
    v11 = 4;
    if (v10 >= 2)
    {
      v12 = v9;
      if (v9 >= 4)
      {
        v12 = 4;
      }

      switch(v12)
      {
        case 0:
          break;
        case 1:
          v13 = *a1;
          goto LABEL_12;
        case 2:
          v13 = *a1;
          goto LABEL_12;
        case 3:
          v11 = *a1;
          v13 = v11 | (a1[2] << 16);
          goto LABEL_12;
        case 4:
          v13 = *a1;
LABEL_12:
          if (v9 < 4)
          {
            v11 = (8 * v9);
            v13 |= (v10 - 2) << (8 * v9);
          }

          v10 = v13 + 2;
          break;
      }
    }

    v23 = *(AssociatedTypeWitness - 8);
    v14 = *(v6 + 8);
    v15 = AssociatedTypeWitness;
    v14(a1, AssociatedTypeWitness, v6, v11);
    if (v10 == 1)
    {
      (v14)(v24 & &a1[v25], AssociatedTypeWitness);
    }

    v16 = a2[v9];
    v17 = v15;
    if (v16 < 2)
    {
LABEL_21:
      v26 = a2[v9];
    }

    else
    {
      v18 = 4;
      if (v9 < 4)
      {
        v18 = v9;
      }

      switch(v18)
      {
        case 0:
          goto LABEL_21;
        case 1:
          v19 = *a2;
          break;
        case 2:
          v19 = *a2;
          break;
        case 3:
          v19 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v19 = *a2;
          break;
      }

      if (v9 < 4)
      {
        v19 |= (v16 - 2) << (8 * v9);
      }

      v26 = v19 + 2;
    }

    v20 = *(v23 + 16);
    v3 = a1;
    v20(a1, a2, v17);
    if (v26 == 1)
    {
      v20((v24 & &a1[v25]), (v24 & &a2[v25]), v17);
      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    a1[v9] = v21;
  }

  return v3;
}

{
  return assignWithCopy for InterspersedMapSequence<>.Index.Representation(a1, a2, a3);
}

uint64_t initializeWithTake for InterspersedMapSequence<>.Index(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = ~v7;
  v10 = v6 + (v9 & v8);
  if (v10 <= v6)
  {
    v10 = *(v5 + 64);
  }

  v11 = a2[v10];
  v18 = v9;
  if (v11 >= 2)
  {
    v12 = 4;
    if (v10 < 4)
    {
      v12 = v10;
    }

    switch(v12)
    {
      case 0:
        break;
      case 1:
        v13 = *a2;
        goto LABEL_11;
      case 2:
        v13 = *a2;
        goto LABEL_11;
      case 3:
        v13 = *a2 | (a2[2] << 16);
        goto LABEL_11;
      case 4:
        v13 = *a2;
LABEL_11:
        if (v10 < 4)
        {
          v13 |= (v11 - 2) << (8 * v10);
        }

        v11 = v13 + 2;
        break;
    }
  }

  v14 = *(v5 + 32);
  v19 = AssociatedTypeWitness;
  v14(a1, a2, AssociatedTypeWitness);
  if (v11 == 1)
  {
    v14(v18 & (v8 + a1), (v18 & &a2[v8]), v19);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + v10) = v15;
  return a1;
}

{
  return initializeWithTake for InterspersedMapSequence<>.Index.Representation(a1, a2, a3);
}

unsigned __int8 *assignWithTake for InterspersedMapSequence<>.Index(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    v25 = v7 + v8;
    v24 = ~v8;
    v9 = v7 + (~v8 & (v7 + v8));
    if (v9 <= v7)
    {
      v9 = *(v6 + 64);
    }

    v10 = a1[v9];
    v11 = 4;
    if (v10 >= 2)
    {
      v12 = v9;
      if (v9 >= 4)
      {
        v12 = 4;
      }

      switch(v12)
      {
        case 0:
          break;
        case 1:
          v13 = *a1;
          goto LABEL_12;
        case 2:
          v13 = *a1;
          goto LABEL_12;
        case 3:
          v11 = *a1;
          v13 = v11 | (a1[2] << 16);
          goto LABEL_12;
        case 4:
          v13 = *a1;
LABEL_12:
          if (v9 < 4)
          {
            v11 = (8 * v9);
            v13 |= (v10 - 2) << (8 * v9);
          }

          v10 = v13 + 2;
          break;
      }
    }

    v23 = *(AssociatedTypeWitness - 8);
    v14 = *(v6 + 8);
    v15 = AssociatedTypeWitness;
    v14(a1, AssociatedTypeWitness, v6, v11);
    if (v10 == 1)
    {
      (v14)(v24 & &a1[v25], AssociatedTypeWitness);
    }

    v16 = a2[v9];
    v17 = v15;
    if (v16 < 2)
    {
LABEL_21:
      v26 = a2[v9];
    }

    else
    {
      v18 = 4;
      if (v9 < 4)
      {
        v18 = v9;
      }

      switch(v18)
      {
        case 0:
          goto LABEL_21;
        case 1:
          v19 = *a2;
          break;
        case 2:
          v19 = *a2;
          break;
        case 3:
          v19 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v19 = *a2;
          break;
      }

      if (v9 < 4)
      {
        v19 |= (v16 - 2) << (8 * v9);
      }

      v26 = v19 + 2;
    }

    v20 = *(v23 + 32);
    v3 = a1;
    v20(a1, a2, v17);
    if (v26 == 1)
    {
      v20((v24 & &a1[v25]), (v24 & &a2[v25]), v17);
      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    a1[v9] = v21;
  }

  return v3;
}

{
  return assignWithTake for InterspersedMapSequence<>.Index.Representation(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for InterspersedMapSequence<>.Index(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index) - 8);
  v5 = *(v4 + 64);
  v6 = v5 + ((v5 + *(v4 + 80)) & ~*(v4 + 80));
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (a2)
  {
    if (a2 < 0xFF)
    {
      goto LABEL_21;
    }

    v7 = v6 + 1;
    if ((v6 + 1) > 3)
    {
LABEL_6:
      v8 = a1[v7];
      goto LABEL_13;
    }

    v9 = ((a2 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (v9 > 0xFFFF)
    {
      v8 = *&a1[v7];
    }

    else
    {
      if (v9 <= 0xFF)
      {
        if (v9 >= 2)
        {
          goto LABEL_6;
        }

LABEL_21:
        v13 = a1[v6];
        v3 = 0;
        if (v13 >= 2)
        {
          return (v13 ^ 0xFF) + 1;
        }

        return v3;
      }

      v8 = *&a1[v7];
    }

LABEL_13:
    if (v8)
    {
      v10 = (v8 - 1) << (8 * v7);
      v11 = 0;
      if (v7 >= 4)
      {
        v10 = 0;
      }

      if (v6 != -1)
      {
        v12 = 4;
        if (v7 < 4)
        {
          v12 = v7;
        }

        switch(v12)
        {
          case 1:
            v11 = *a1;
            break;
          case 2:
            v11 = *a1;
            break;
          case 3:
            v11 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v11 = *a1;
            break;
        }
      }

      return (v10 | v11) + 255;
    }

    goto LABEL_21;
  }

  return v3;
}

{
  return getEnumTagSinglePayload for InterspersedMapSequence<>.Index.Representation(a1, a2, a3);
}

unint64_t storeEnumTagSinglePayload for InterspersedMapSequence<>.Index(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(swift_getAssociatedTypeWitness(0, *(a4 + 32), *(a4 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index) - 8);
  v7 = *(v6 + 64);
  result = v7 + ((v7 + *(v6 + 80)) & ~*(v6 + 80));
  if (result <= v7)
  {
    result = v7;
  }

  v9 = result + 1;
  if (a3 >= 0xFF)
  {
    if (v9 > 3)
    {
      v15 = 1;
LABEL_11:
      v5 = v15;
      goto LABEL_12;
    }

    v10 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (v10 > 0xFFFF)
    {
      v15 = 4;
      goto LABEL_11;
    }

    v5 = 0;
    if (v10 >= 2)
    {
      v5 = ((v10 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_12:
  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      v12 = 1;
      v13 = a1;
      __bzero(a1, result + 1);
      *a1 = v11;
      result = v5;
      switch(v5)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_28;
        case 2u:
          goto LABEL_30;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_29;
      }
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (result != -1)
    {
      v14 = v11 & ~(-1 << (8 * v9));
      result = __bzero(a1, result + 1);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          result = a1;
          *a1 = v14;
          v13 = a1;
          switch(v5)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_28;
            case 2u:
              goto LABEL_30;
            case 3u:
              goto LABEL_32;
            case 4u:
              goto LABEL_29;
          }
        }

        v13 = a1;
        *a1 = a2 + 1;
        switch(v5)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_28;
          case 2u:
            goto LABEL_30;
          case 3u:
            goto LABEL_32;
          case 4u:
            goto LABEL_29;
        }
      }

      result = a1;
      *a1 = v14;
      *(a1 + 2) = BYTE2(v14);
      v13 = a1;
      switch(v5)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_28;
        case 2u:
          goto LABEL_30;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_29;
      }
    }

    v13 = a1;
    switch(v5)
    {
      case 0u:
        return result;
      case 1u:
LABEL_28:
        *(v13 + v9) = v12;
        break;
      case 2u:
LABEL_30:
        *(v13 + v9) = v12;
        break;
      case 3u:
LABEL_32:
        BUG();
      case 4u:
LABEL_29:
        *(v13 + v9) = v12;
        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0u:
        goto LABEL_23;
      case 1u:
        *(a1 + v9) = 0;
        goto LABEL_23;
      case 2u:
        *(a1 + v9) = 0;
        goto LABEL_23;
      case 3u:
        goto LABEL_32;
      case 4u:
        *(a1 + v9) = 0;
LABEL_23:
        if (a2)
        {
          *(a1 + result) = -a2;
        }

        break;
    }
  }

  return result;
}

{
  return storeEnumTagSinglePayload for InterspersedMapSequence<>.Index.Representation(a1, a2, a3, a4);
}

uint64_t getEnumTag for InterspersedMapSequence<>.Index.Representation(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(swift_getAssociatedTypeWitness(0, *(a2 + 32), *(a2 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index) - 8);
  v3 = *(v2 + 64);
  v4 = v3 + ((v3 + *(v2 + 80)) & ~*(v2 + 80));
  if (v4 <= v3)
  {
    v4 = *(v2 + 64);
  }

  result = a1[v4];
  if (result >= 2)
  {
    v6 = 4;
    if (v4 < 4)
    {
      v6 = v4;
    }

    switch(v6)
    {
      case 0:
        return result;
      case 1:
        v7 = *a1;
        goto LABEL_11;
      case 2:
        v7 = *a1;
        goto LABEL_11;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_11;
      case 4:
        v7 = *a1;
LABEL_11:
        if (v4 < 4)
        {
          v7 |= (result - 2) << (8 * v4);
        }

        result = (v7 + 2);
        break;
      case 5:
        JUMPOUT(0x322704);
    }
  }

  return result;
}

unint64_t destructiveInjectEnumTag for InterspersedMapSequence<>.Index.Representation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index) - 8);
  result = *(v3 + 64);
  v5 = result + ((result + *(v3 + 80)) & ~*(v3 + 80));
  if (a2 > 1)
  {
    if (v5 <= result)
    {
      v5 = *(v3 + 64);
    }

    v6 = a2 - 2;
    if (v5 < 4)
    {
      v7 = v6 & ~(-1 << (8 * v5));
      *(a1 + v5) = (v6 >> (8 * v5)) + 2;
      result = __bzero(a1, v5);
      if (v5 == 3)
      {
        *a1 = v7;
        *(a1 + 2) = BYTE2(v7);
      }

      else if (v5 == 2)
      {
        *a1 = v7;
      }

      else
      {
        *a1 = v7;
      }
    }

    else
    {
      *(a1 + v5) = 2;
      result = __bzero(a1, v5);
      *a1 = v6;
    }
  }

  else
  {
    if (v5 <= result)
    {
      v5 = *(v3 + 64);
    }

    *(a1 + v5) = a2;
  }

  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance <> InterspersedMapSequence<A, B>()
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance <> InterspersedSequence<A>();
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance <> InterspersedSequence<A>();
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance <> InterspersedSequence<A>();
}

uint64_t UniquedSequence.projection.getter(uint64_t a1)
{
  return UniquedSequence.projection.getter(a1);
}

{
  v2 = *(a1 + 52);
  v3 = *(v1 + v2);
  *(v1 + v2 + 8);
  return v3;
}

uint64_t UniquedSequence.init(base:projection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a3;
  v9 = v7;
  (*(*(a4 - 8) + 32))(v7, a1, a4);
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  result = *(type metadata accessor for UniquedSequence(0, v13) + 52);
  *(v9 + result) = a2;
  *(v9 + result + 8) = v14;
  return result;
}

uint64_t UniquedSequence.Iterator.base.getter(uint64_t a1)
{
  v3 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a1 + 32), *(a1 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  return (*(*(AssociatedTypeWitness - 8) + 16))(v3, v2, AssociatedTypeWitness);
}

uint64_t UniquedSequence.Iterator.seen.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  result = *(v2 + v3);
  *(v2 + v3) = a1;
  return result;
}

uint64_t UniquedSequence.Iterator.init(base:projection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a3;
  v9 = v7;
  v19 = a2;
  v20 = a1;
  v12 = static Array._allocateUninitialized(_:)(0, a5);
  if (Array._getCount()())
  {
    v13 = Set.init(_nonEmptyArrayLiteral:)(v12, a5, a7);
  }

  else
  {
    v12;
    v13 = &_swiftEmptySetSingleton;
  }

  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v14 = type metadata accessor for UniquedSequence.Iterator(0, v17);
  *(v9 + *(v14 + 56)) = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  (*(*(AssociatedTypeWitness - 8) + 32))(v9, v20, AssociatedTypeWitness);
  result = *(v14 + 52);
  *(v9 + result) = v19;
  *(v9 + result + 8) = v18;
  return result;
}

uint64_t UniquedSequence.Iterator.next()(void *a1)
{
  v49 = v1;
  v41 = a1[3];
  v42 = *(v41 - 8);
  v3 = *(v42 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v47 = &v37;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v43 = &v37;
  v8 = a1[2];
  v40 = a1;
  v9 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, v9, v8, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v45 = type metadata accessor for Optional(0, AssociatedTypeWitness);
  v46 = *(v45 - 8);
  v11 = *(v46 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v50 = &v37;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v51 = &v37;
  v18 = swift_getAssociatedTypeWitness(0, v9, v8, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v19 = v9;
  v20 = v14;
  v21 = AssociatedTypeWitness;
  v22 = v51;
  v38 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v19, v8, v18, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v44 = v2;
  v48 = v21;
  while (1)
  {
    v23 = v50;
    dispatch thunk of IteratorProtocol.next()(v38, AssociatedConformanceWitness);
    if (__swift_getEnumTagSinglePayload(v23, 1, v21) == 1)
    {
      (*(v46 + 8))(v50, v45);
      v34 = v49;
      v35 = 1;
      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v21);
    }

    v24 = v21;
    v25 = v2;
    v51 = *(v20 + 32);
    (v51)(v22, v50, v24);
    v26 = v40;
    v27 = *(v40 + 13);
    v28 = *(v2 + v27 + 8);
    (*(v25 + v27))(v22);
    v29 = v25 + *(v26 + 14);
    v30 = v26[5];
    v31 = v41;
    v32 = type metadata accessor for Set(0, v41, v30);
    v33 = v43;
    LOBYTE(v29) = Set.insert(_:)(v43, v47, v32);
    (*(v42 + 8))(v33, v31);
    if (v29)
    {
      break;
    }

    v21 = v48;
    (*(v20 + 8))(v22, v48);
    v2 = v44;
  }

  v34 = v49;
  v21 = v48;
  (v51)(v49, v22, v48);
  v35 = 0;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v21);
}

uint64_t UniquedSequence.makeIterator()(uint64_t a1)
{
  v3 = v2;
  v18[1] = v1;
  v4 = *(a1 + 16);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v19 = *(a1 + 32);
  v8 = *(*(swift_getAssociatedTypeWitness(0, v19, v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v20 = v18;
  (*(v21 + 16))(v18, v2, v4);
  v11 = v19;
  dispatch thunk of Sequence.makeIterator()(v4, v19);
  v12 = *(a1 + 52);
  v13 = *(v2 + v12);
  v14 = *(v3 + v12 + 8);
  v21 = *(a1 + 24);
  v15 = *(a1 + 40);

  UniquedSequence.Iterator.init(base:projection:)(v20, v13, v14, v4, v21, v11, v15);
  return v17;
}

uint64_t Sequence<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = v3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v6 + 16))(v14, v4, a1);
  v10 = swift_allocObject(&unk_3965F8, 40, 7);
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  UniquedSequence.init(base:projection:)(v14, partial apply for closure #1 in Sequence<>.uniqued(), v10, a1, AssociatedTypeWitness, a2, a3);
  return v13;
}

uint64_t closure #1 in Sequence<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  return (*(*(AssociatedTypeWitness - 8) + 16))(v4, a1, AssociatedTypeWitness);
}

uint64_t Sequence.uniqued<A>(on:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v55 = v7;
  v59 = a6;
  v58 = a4;
  v49 = a2;
  v50 = a1;
  v52 = *(a4 - 8);
  v11 = *(v52 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v51 = &v47;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v53 = &v47;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v64 = *(AssociatedTypeWitness - 8);
  v17 = *(v64 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v54 = &v47;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v65 = &v47;
  v22 = *(*(type metadata accessor for Optional(0, AssociatedTypeWitness) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v48 = &v47;
  v56 = *(a3 - 8);
  v25 = *(v56 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v57 = &v47;
  v66 = a5;
  AssociatedConformanceWitness = a3;
  v67 = swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v60 = *(v67 - 8);
  v28 = *(v60 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v68 = &v47;
  v31 = v58;
  v32 = static Array._allocateUninitialized(_:)(0, v58);
  if (Array._getCount()())
  {
    v33 = Set.init(_nonEmptyArrayLiteral:)(v32, v31, v59);
  }

  else
  {
    v32;
    v33 = &_swiftEmptySetSingleton;
  }

  v61 = v33;
  v62 = static Array._allocateUninitialized(_:)(0, AssociatedTypeWitness);
  v34 = AssociatedConformanceWitness;
  (*(v56 + 16))(v57, v55, AssociatedConformanceWitness);
  dispatch thunk of Sequence.makeIterator()(v34, v66);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v66, v34, v67, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  while (1)
  {
    v35 = v48;
    dispatch thunk of IteratorProtocol.next()(v67, AssociatedConformanceWitness);
    if (__swift_getEnumTagSinglePayload(v35, 1, AssociatedTypeWitness) == 1)
    {
      (*(v60 + 8))(v68, v67);
      v61;
      return v62;
    }

    v36 = v65;
    (*(v64 + 32))(v65, v35, AssociatedTypeWitness);
    v37 = v51;
    v50(v36);
    if (v8)
    {
      break;
    }

    v66 = 0;
    v38 = v37;
    v39 = v58;
    v40 = type metadata accessor for Set(0, v58, v59);
    v41 = AssociatedTypeWitness;
    v42 = v53;
    LOBYTE(v38) = Set.insert(_:)(v53, v38, v40);
    v43 = v42;
    AssociatedTypeWitness = v41;
    (*(v52 + 8))(v43, v39);
    if (v38)
    {
      v44 = v54;
      (*(v64 + 16))(v54, v65, AssociatedTypeWitness);
      v45 = type metadata accessor for Array(0, AssociatedTypeWitness);
      Array.append(_:)(v44, v45);
    }

    (*(v64 + 8))(v65, AssociatedTypeWitness);
    v8 = v66;
  }

  (*(v64 + 8))(v65, AssociatedTypeWitness);
  (*(v60 + 8))(v68, v67);
  v62;
  return v61;
}

uint64_t LazySequenceProtocol.uniqued<A>(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a4;
  v17 = v6;
  v16 = a6;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  (*(v10 + 16))(&v15, v7);
  UniquedSequence.init(base:projection:)(&v15, a1, a2, a3, v15, *(a5 + 8), v16);
}

uint64_t type metadata completion function for UniquedSequence(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v5[0] = *(v1 - 8) + 64;
    v5[1] = &value witness table for () + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 2, v5, a1 + 48);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for UniquedSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x1000F8) != 0 || (v6 = *(v4 + 64), ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18))
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v5 | 7) + 16) & ~(v5 | 7u)));
  }

  else
  {
    (*(v4 + 16))(a1, a2);
    v7 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = *(v7 + 8);
    *((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *v7;
  }

  v8;
  return v3;
}

uint64_t destroy for UniquedSequence(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  (*(v2 + 8))();
  return *(((a1 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t initializeWithCopy for UniquedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(a1);
  v5 = *(v4 + 64);
  v6 = ((v5 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 8);
  *v6 = *v7;
  v8;
  return a1;
}

uint64_t assignWithCopy for UniquedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))(a1);
  v5 = *(v4 + 64);
  v6 = (v5 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + 8);
  v9 = *(v7 + 8);
  *v6 = *v7;
  v9;
  v8;
  return a1;
}

uint64_t initializeWithTake for UniquedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(a1);
  *((*(v3 + 64) + a1 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for UniquedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(a1);
  v5 = *(v4 + 64);
  v6 = (v5 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v6 + 8);
  *v6 = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7;
  return a1;
}

uint64_t getEnumTagSinglePayload for UniquedSequence(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = 0x7FFFFFFF;
  if (v6 >= 0x80000000)
  {
    v7 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v5 + 64);
  if (v7 >= a2)
  {
LABEL_20:
    if (v6 < 0x7FFFFFFF)
    {
      LODWORD(v18) = -1;
      if (*((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
      {
        v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      return (v18 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(a1, v6, v4);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v7 + 1;
    v11 = 2;
    if ((v9 & 0xFFFFFFF8) == 0)
    {
      v11 = v10;
    }

    v12 = 1;
    if (v11 >= 0x100)
    {
      v12 = 2 * (v11 >= &loc_10000) + 2;
    }

    v13 = 0;
    if (v11 >= 2)
    {
      v13 = v12;
    }

    switch(v13)
    {
      case 0:
        goto LABEL_20;
      case 1:
        v14 = *(a1 + v9);
        goto LABEL_16;
      case 2:
        v14 = *(a1 + v9);
        goto LABEL_16;
      case 3:
        BUG();
      case 4:
        v14 = *(a1 + v9);
LABEL_16:
        if (!v14)
        {
          goto LABEL_20;
        }

        v16 = v14 - 1;
        v17 = 0;
        if ((v9 & 0xFFFFFFF8) != 0)
        {
          v16 = 0;
          v17 = *a1;
        }

        result = v7 + (v16 | v17) + 1;
        break;
    }
  }

  return result;
}

unint64_t storeEnumTagSinglePayload for UniquedSequence(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = 0x7FFFFFFF;
  if (v7 >= 0x80000000)
  {
    v8 = *(v6 + 84);
  }

  v10 = *(v6 + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = 0;
  v13 = 1;
  if (v8 < a3)
  {
    v14 = a3 - v8 + 1;
    v15 = 2;
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14;
    }

    v16 = 2 * (v15 >= &loc_10000) + 2;
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    v12 = 0;
    if (v15 >= 2)
    {
      v12 = v16;
    }
  }

  if (a2 > v8)
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = a2 - v8;
    }

    else
    {
      __bzero(a1, v11);
      *a1 = a2 + ~v8;
    }

    result = v12;
    switch(v12)
    {
      case 0u:
        return result;
      case 1u:
        *(a1 + v11) = v13;
        return result;
      case 2u:
        *(a1 + v11) = v13;
        return result;
      case 3u:
        goto LABEL_29;
      case 4u:
        *(a1 + v11) = v13;
        return result;
    }
  }

  result = v12;
  switch(v12)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v11) = 0;
      break;
    case 2u:
      *(a1 + v11) = 0;
      break;
    case 3u:
LABEL_29:
      BUG();
    case 4u:
      *(a1 + v11) = 0;
      break;
  }

  if (a2)
  {
    if (v7 < 0x7FFFFFFF)
    {
      result = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        *result = a2 & 0x7FFFFFFF;
        *(result + 8) = 0;
      }

      else
      {
        *result = (a2 - 1);
      }
    }

    else
    {
      return __swift_storeEnumTagSinglePayload(a1, a2, v7, v5);
    }
  }

  return result;
}

uint64_t type metadata completion function for UniquedSequence.Iterator(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, *(a1 + 32), *(a1 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v2 = AssociatedTypeWitness;
  if (v3 <= 0x3F)
  {
    v5[0] = *(AssociatedTypeWitness - 8) + 64;
    v5[1] = &value witness table for () + 64;
    v5[2] = &value witness table for Builtin.BridgeObject + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 3, v5, a1 + 48);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for UniquedSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if ((v6 & 0x1000F8) != 0 || (v7 = *(v5 + 64), ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18))
  {
    v13 = *a2;
    *v3 = *a2;
    v14 = v13 + (((v6 | 7) + 16) & ~(v6 | 7u));
    v13;
    return v14;
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v8 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v10 = *(v9 + 8);
    *v8 = *v9;
    v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = *v11;
    *((v8 + 23) & 0xFFFFFFFFFFFFFFF8) = *v11;
    v10;
    v12;
  }

  return v3;
}

uint64_t destroy for UniquedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a2 + 32), *(a2 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v3 = *(AssociatedTypeWitness - 8);
  (*(v3 + 8))(a1, AssociatedTypeWitness);
  v4 = (*(v3 + 64) + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v4 + 8);
  return *((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for UniquedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 64);
  v7 = ((v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *v10;
  v9;
  v11;
  return a1;
}

uint64_t assignWithCopy for UniquedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 24))(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 64);
  v7 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 8);
  v10 = *(v8 + 8);
  *v7 = *v8;
  v10;
  v9;
  v11 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *v11;
  *v11 = *v12;
  v13;
  v14;
  return a1;
}

uint64_t initializeWithTake for UniquedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v4 = *(AssociatedTypeWitness - 8);
  (*(v4 + 32))(a1, a2, AssociatedTypeWitness);
  v5 = *(v4 + 64);
  v6 = ((v5 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  *((v6 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for UniquedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 40))(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 64);
  v7 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v7 + 8);
  *v7 = *v8;
  v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  *v10 = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for UniquedSequence.Iterator(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 32), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 0x7FFFFFFF;
  if (v8 >= 0x80000000)
  {
    v9 = *(v7 + 84);
  }

  if (a2)
  {
    v10 = *(v7 + 64);
    if (v9 >= a2)
    {
LABEL_19:
      if (v8 >= 0x7FFFFFFF)
      {
        return __swift_getEnumTagSinglePayload(a1, v8, AssociatedTypeWitness);
      }

      LODWORD(v20) = -1;
      if (*((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
      {
        v20 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      return (v20 + 1);
    }

    else
    {
      v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
      v12 = a2 - v9 + 1;
      v13 = 2;
      if ((v11 & 0xFFFFFFF8) == 0)
      {
        v13 = v12;
      }

      v14 = 1;
      if (v13 >= 0x100)
      {
        v14 = 2 * (v13 >= &loc_10000) + 2;
      }

      v15 = 0;
      if (v13 >= 2)
      {
        v15 = v14;
      }

      switch(v15)
      {
        case 0:
          goto LABEL_19;
        case 1:
          v16 = *(a1 + v11);
          goto LABEL_15;
        case 2:
          v16 = *(a1 + v11);
          goto LABEL_15;
        case 3:
          BUG();
        case 4:
          v16 = *(a1 + v11);
LABEL_15:
          if (!v16)
          {
            goto LABEL_19;
          }

          v17 = v16 - 1;
          v18 = 0;
          if ((v11 & 0xFFFFFFF8) != 0)
          {
            v17 = 0;
            v18 = *a1;
          }

          v5 = v9 + (v17 | v18) + 1;
          break;
      }
    }
  }

  return v5;
}

unint64_t storeEnumTagSinglePayload for UniquedSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  result = swift_getAssociatedTypeWitness(0, *(a4 + 32), *(a4 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v7 = *(result - 8);
  v8 = *(v7 + 84);
  v9 = 0x7FFFFFFF;
  if (v8 >= 0x80000000)
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 64);
  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = 1;
  if (v9 < a3)
  {
    v13 = a3 - v9 + 1;
    v14 = 2;
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13;
    }

    v15 = 2 * (v14 >= &loc_10000) + 2;
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    v5 = 0;
    if (v14 >= 2)
    {
      v5 = v15;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a2 - v9;
    }

    else
    {
      __bzero(a1, ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = a2 + ~v9;
    }

    result = v5;
    switch(v5)
    {
      case 0u:
        return result;
      case 1u:
        *(a1 + v11) = v12;
        return result;
      case 2u:
        *(a1 + v11) = v12;
        return result;
      case 3u:
        goto LABEL_29;
      case 4u:
        *(a1 + v11) = v12;
        return result;
    }
  }

  switch(v5)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v11) = 0;
      break;
    case 2u:
      *(a1 + v11) = 0;
      break;
    case 3u:
LABEL_29:
      BUG();
    case 4u:
      *(a1 + v11) = 0;
      break;
  }

  if (a2)
  {
    if (v8 < 0x7FFFFFFF)
    {
      result = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        *result = a2 & 0x7FFFFFFF;
        *(result + 8) = 0;
      }

      else
      {
        *result = (a2 - 1);
      }
    }

    else
    {
      return __swift_storeEnumTagSinglePayload(a1, a2, v8, result);
    }
  }

  return result;
}

void *Heap._update<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = a4;
  v10[4] = a2;
  v10[3] = a1;
  v10[5] = v4;
  v6 = *(a3 + 16);
  type metadata accessor for ContiguousArray(0, v6);
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(*v5 + 16);
  v8 = *(*(v6 - 8) + 80);
  v10[0] = *v5 + ((v8 + 32) & ~v8);
  v10[1] = v7;
  a1(v10[0], v7);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v10, v10[0], v7, v5, v6);
  return &type metadata for Never;
}

void (*Heap._UnsafeHandle.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void (***a1)(void, void))
{
  v8 = malloc(0x28uLL);
  *a1 = v8;
  v8[4] = UnsafeMutableBufferPointer.subscript.modify(v8, a2, a4, a5, a6);
  return Heap._UnsafeHandle.subscript.modify;
}

void Heap._UnsafeHandle.subscript.modify(void (***a1)(void, void))
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t Heap._UnsafeHandle.ptr(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = UnsafeMutableBufferPointer.baseAddress.getter(a3, a4, a5);
  if (!v6)
  {
    BUG();
  }

  return *(*(a5 - 8) + 72) * a1 + v6;
}

uint64_t Heap._UnsafeHandle.extract(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = UnsafeMutableBufferPointer.baseAddress.getter(a3, a4, a5);
  if (!v6)
  {
    BUG();
  }

  return UnsafeMutablePointer.move()(*(*(a5 - 8) + 72) * a1 + v6, a5);
}

uint64_t Heap._UnsafeHandle.initialize(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a3;
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = UnsafeMutableBufferPointer.baseAddress.getter(a4, a5, a6);
  if (!v11)
  {
    BUG();
  }

  v12 = *(v7 + 72) * a1 + v11;
  v13 = v15[0];
  (*(v7 + 16))(v15, v15[0], a6);
  (*(v7 + 32))(v12, v15, a6);
  return (*(v7 + 8))(v13, a6);
}

uint64_t Heap._UnsafeHandle.minValue(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a4;
  v23 = a3;
  v21[1] = a2;
  v24 = a1;
  v9 = *(a7 - 8);
  v10 = v9[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v22 = v21;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v15 = v9[2];
  v16 = v9[9];
  v15(v21, a5 + a1 * v16, a7);
  v17 = a5 + v23 * v16;
  v18 = v22;
  v15(v22, v17, a7);
  LOBYTE(v17) = dispatch thunk of static Comparable.< infix(_:_:)(v21, v18, a7, a8);
  v19 = v9[1];
  v19(v18, a7);
  v19(v21, a7);
  result = v23;
  if (v17)
  {
    return v24;
  }

  return result;
}

uint64_t Heap._UnsafeHandle.maxValue(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a4;
  v23 = a3;
  v21[1] = a2;
  v24 = a1;
  v9 = *(a7 - 8);
  v10 = v9[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v22 = v21;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v15 = v9[2];
  v16 = v9[9];
  v15(v21, a5 + a1 * v16, a7);
  v17 = a5 + v23 * v16;
  v18 = v22;
  v15(v22, v17, a7);
  LOBYTE(v17) = dispatch thunk of static Comparable.< infix(_:_:)(v21, v18, a7, a8);
  v19 = v9[1];
  v19(v18, a7);
  v19(v21, a7);
  result = v24;
  if (v17)
  {
    return v23;
  }

  return result;
}

Swift::Int Heap._UnsafeHandle.bubbleUp(_:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v51 = a4;
  v8 = *(a5 - 8);
  v9 = *(v8 + 8);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v50 = &v47;
  v12 = alloca(v9);
  result = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = alloca(v9);
  v57 = &v47;
  if (a1)
  {
    v53 = a2;
    v15 = *(v8 + 2);
    v55 = v8;
    v16 = *(v8 + 9);
    v56 = a1;
    v15(v57, a3 + a1 * v16, a5);
    v49 = v16;
    v47 = (a1 - 1) / 2;
    v17 = a3 + v47 * v16;
    v18 = v50;
    v48 = v15;
    v15(v50, v17, a5);
    v19 = a3;
    v20 = v57;
    if (v53)
    {
      v21 = dispatch thunk of static Comparable.< infix(_:_:)(v57, v18, a5, v52);
    }

    else
    {
      v21 = dispatch thunk of static Comparable.> infix(_:_:)(v57, v18, a5, v52);
    }

    v22 = v18;
    v23 = v21;
    v24 = *(v55 + 1);
    v24(v22, a5);
    v55 = v24;
    v24(v20, a5);
    if (v23)
    {
      v25 = v53 - 1;
      v26 = v47;
      UnsafeMutableBufferPointer.swapAt(_:_:)(v56, v47);
      result = v26;
    }

    else
    {
      result = v56;
      v25 = v53;
    }

    v27 = v19;
    if (v25)
    {
      if (result >= 3)
      {
        v54 = v19;
        do
        {
          v56 = result;
          v38 = result - 3;
          v39 = (result - 3) >> 2;
          v40 = v49;
          v41 = v27 + result * v49;
          v42 = v48;
          v48(v57, v41, a5);
          v43 = v54 + v40 * v39;
          v44 = v50;
          v42(v50, v43, a5);
          LOBYTE(v42) = dispatch thunk of static Comparable.> infix(_:_:)(v57, v44, a5, v52);
          v45 = v44;
          v46 = v55;
          v55(v45, a5);
          result = v46(v57, a5);
          v37 = (v42 & 1) == 0;
          v27 = v54;
          if (v37)
          {
            break;
          }

          UnsafeMutableBufferPointer.swapAt(_:_:)(v56, v39);
          result = v39;
        }

        while (v38 > 0xB);
      }
    }

    else if (result >= 3)
    {
      v54 = v19;
      do
      {
        v56 = result;
        v28 = result - 3;
        v29 = (result - 3) >> 2;
        v30 = v49;
        v31 = v27 + result * v49;
        v32 = v48;
        v48(v57, v31, a5);
        v33 = v54 + v30 * v29;
        v34 = v50;
        v32(v50, v33, a5);
        LOBYTE(v32) = dispatch thunk of static Comparable.< infix(_:_:)(v57, v34, a5, v52);
        v35 = v34;
        v36 = v55;
        v55(v35, a5);
        result = v36(v57, a5);
        v37 = (v32 & 1) == 0;
        v27 = v54;
        if (v37)
        {
          break;
        }

        UnsafeMutableBufferPointer.swapAt(_:_:)(v56, v29);
        result = v29;
      }

      while (v28 > 0xB);
    }
  }

  return result;
}

uint64_t Heap._UnsafeHandle.trickleDownMin(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v138 = a6;
  v6 = a5;
  v132 = a2;
  v7 = a1;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v133 = &v129;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v141 = &v129;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v131 = &v129;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v130 = &v129;
  v18 = alloca(v9);
  v19 = alloca(v9);
  v136 = &v129;
  v20 = alloca(v9);
  v21 = alloca(v9);
  v144 = &v129;
  v22 = alloca(v9);
  v23 = alloca(v9);
  v148 = a3;
  v25 = UnsafeMutableBufferPointer.baseAddress.getter(a3, a4, a5);
  if (!v25)
  {
    BUG();
  }

  v142 = *(v8 + 72);
  v146 = &v129;
  UnsafeMutablePointer.move()(a1 * v142 + v25, v6);
  v26 = 4 * a1 + 3;
  v27 = v8;
  v28 = 4 * a1 + 6;
  v134 = a4;
  v149 = v6;
  v137 = v27;
  if (v28 < a4)
  {
    v143 = a1;
    v147 = *(v27 + 16);
    while (1)
    {
      v139 = v26;
      v29 = v26 + 1;
      v30 = v142;
      v31 = v148;
      v32 = v148 + v142 * v26;
      v33 = v6;
      v34 = v147;
      v147(v144, v32, v33);
      v135 = v29;
      v35 = v31 + v30 * v29;
      v36 = v136;
      v34(v136, v35, v149);
      v37 = v144;
      v38 = dispatch thunk of static Comparable.< infix(_:_:)(v144, v36, v149, v138);
      v39 = v149;
      LOBYTE(v145) = v38;
      v40 = *(v137 + 8);
      v40(v36, v149);
      v140 = v40;
      v40(v37, v39);
      v41 = v139;
      v42 = v139;
      if ((v145 & 1) == 0)
      {
        v42 = v135;
      }

      v145 = v42;
      v139 += 2;
      v43 = v142;
      v44 = v148;
      v45 = v144;
      v46 = v39;
      v47 = v147;
      v147(v144, v148 + v142 * (v41 + 2), v46);
      v48 = v44 + v43 * v28;
      v49 = v136;
      v47(v136, v48, v149);
      v50 = dispatch thunk of static Comparable.< infix(_:_:)(v45, v49, v149, v138);
      v51 = v149;
      LOBYTE(v135) = v50;
      v52 = v49;
      v53 = v140;
      v140(v52, v149);
      v53(v45, v51);
      if ((v135 & 1) == 0)
      {
        v139 = v28;
      }

      v54 = v148;
      v55 = v144;
      v56 = v147;
      v147(v144, v148 + v43 * v145, v51);
      v57 = v54 + v43 * v139;
      v58 = v136;
      v56(v136, v57, v51);
      v59 = dispatch thunk of static Comparable.< infix(_:_:)(v55, v58, v149, v138);
      v60 = v149;
      LOBYTE(v56) = v59;
      v61 = v58;
      v62 = v145;
      v63 = v140;
      v140(v61, v149);
      v63(v55, v60);
      if ((v56 & 1) == 0)
      {
        v62 = v139;
      }

      v145 = v62;
      v64 = v142 * v62;
      v65 = v148;
      v66 = v144;
      v147(v144, v148 + v64, v60);
      v67 = dispatch thunk of static Comparable.< infix(_:_:)(v66, v146, v149, v138);
      v6 = v149;
      v68 = v67;
      v140(v66, v149);
      if ((v68 & 1) == 0)
      {
        break;
      }

      v70 = v134;
      v71 = UnsafeMutableBufferPointer.baseAddress.getter(v65, v134, v6);
      v72 = v143;
      if (!v71)
      {
        BUG();
      }

      v73 = v64 + v71;
      v74 = v130;
      UnsafeMutablePointer.move()(v73, v6);
      v75 = UnsafeMutableBufferPointer.baseAddress.getter(v65, v70, v6);
      if (!v75)
      {
        BUG();
      }

      v76 = v65;
      v77 = v142 * v72 + v75;
      v78 = v144;
      v79 = v6;
      v80 = v147;
      v147(v144, v74, v79);
      (*(v137 + 32))(v77, v78, v149);
      v81 = v74;
      v82 = v140;
      v140(v81, v149);
      v83 = v142 * ((v145 - 1) / 2);
      v80(v78, v76 + v83, v149);
      v84 = dispatch thunk of static Comparable.< infix(_:_:)(v78, v146, v149, v138);
      v6 = v149;
      LOBYTE(v76) = v84;
      v82(v78, v149);
      v85 = v134;
      if (v76)
      {
        v86 = UnsafeMutableBufferPointer.baseAddress.getter(v148, v134, v6);
        swap<A>(_:_:)(v86 + v83, v146, v6);
      }

      v26 = 4 * v145 + 3;
      v28 = 4 * v145 + 6;
      v132 += 2;
      v143 = v145;
      if (v28 >= v85)
      {
        v87 = v132;
        v88 = (v132 + 2);
        v7 = v145;
        goto LABEL_18;
      }
    }

    v109 = v141;
    goto LABEL_27;
  }

  v87 = v132;
  v88 = (v132 + 2);
LABEL_18:
  v89 = 2 * v7 + 1;
  v90 = v134;
  if (v89 >= v134)
  {
    v108 = *(v137 + 16);
    v65 = v148;
    v108(v141, v146, v6, v88);
    goto LABEL_36;
  }

  v143 = v7;
  v139 = v26;
  v91 = v148;
  v92 = v138;
  v93 = Heap._UnsafeHandle._minDescendant(c0:gc0:)(v89, (v87 + 1), v26, v88, v148, v134, v6, v138);
  v94 = v137;
  v140 = v93;
  v145 = v142 * v93;
  v95 = v91 + v142 * v93;
  v96 = v144;
  v147 = *(v137 + 16);
  v147(v144, v95, v6);
  v97 = dispatch thunk of static Comparable.< infix(_:_:)(v96, v146, v149, v92);
  v6 = v149;
  LOBYTE(v92) = v97;
  v98 = *(v94 + 8);
  v98(v96, v149);
  if ((v92 & 1) == 0)
  {
    v109 = v141;
    v65 = v148;
LABEL_27:
    v110 = v146;
    v7 = v143;
    goto LABEL_34;
  }

  v136 = v98;
  v99 = v148;
  v100 = UnsafeMutableBufferPointer.baseAddress.getter(v148, v90, v6);
  if (!v100)
  {
    BUG();
  }

  v101 = v131;
  UnsafeMutablePointer.move()(v145 + v100, v6);
  v102 = UnsafeMutableBufferPointer.baseAddress.getter(v99, v90, v6);
  v103 = v144;
  v104 = v142;
  if (!v102)
  {
    BUG();
  }

  v105 = v142 * v143 + v102;
  v147(v144, v101, v6);
  v135 = *(v137 + 32);
  v135(v105, v103, v6);
  v106 = v101;
  v107 = v136;
  (v136)(v106, v6);
  if (v140 < v139)
  {
    v7 = v140;
LABEL_33:
    v109 = v141;
    v65 = v148;
    v110 = v146;
LABEL_34:
    v108 = v147;
    (v147)(v109, v110, v6, v69);
    goto LABEL_36;
  }

  v143 = (v140 - 1) / 2;
  v111 = v104 * v143;
  v147(v103, v148 + v104 * v143, v6);
  v112 = dispatch thunk of static Comparable.< infix(_:_:)(v103, v146, v149, v138);
  v6 = v149;
  v113 = v112;
  (v107)(v103, v149);
  if ((v113 & 1) == 0)
  {
    v7 = v140;
    goto LABEL_33;
  }

  v114 = v148;
  v115 = v134;
  v116 = UnsafeMutableBufferPointer.baseAddress.getter(v148, v134, v6);
  if (!v116)
  {
    BUG();
  }

  UnsafeMutablePointer.move()(v111 + v116, v6);
  v117 = UnsafeMutableBufferPointer.baseAddress.getter(v114, v115, v6);
  if (!v117)
  {
    BUG();
  }

  v65 = v114;
  v118 = v145 + v117;
  v108 = v147;
  v147(v103, v133, v6);
  v135(v118, v103, v6);
  (v136)(v133, v6);
  v7 = v143;
  v108(v141, v146, v6, v119);
LABEL_36:
  v120 = UnsafeMutableBufferPointer.baseAddress.getter(v65, v134, v6);
  if (!v120)
  {
    BUG();
  }

  v121 = v120;
  v122 = v108;
  v123 = v142 * v7 + v121;
  v124 = v144;
  v125 = v141;
  v122(v144, v141, v6);
  v126 = v137;
  (*(v137 + 32))(v123, v124, v6);
  v127 = *(v126 + 8);
  v127(v125, v6);
  return (v127)(v146, v6);
}

uint64_t Heap._UnsafeHandle._trickleDownMin(node:value:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = a6;
  v6 = a5;
  v130 = a3;
  v126 = a2;
  v8 = *(a5 - 8);
  v9 = v8[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v121 = &v118;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v120 = &v118;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v16 = &v118;
  v17 = alloca(v9);
  v18 = alloca(v9);
  v125 = &v118;
  v19 = alloca(v9);
  v20 = alloca(v9);
  v137 = &v118;
  v21 = *a1;
  v124 = a1;
  result = a1[1];
  v23 = 4 * v21 + 3;
  v24 = 4 * v21 + 6;
  v127 = a4;
  v138 = v6;
  v128 = v8;
  v133 = result;
  if (v24 >= a4)
  {
    v80 = (result + 2);
LABEL_17:
    v122 = v21;
    v81 = 2 * v21 + 1;
    v82 = v130;
    if (v81 < a4)
    {
      v83 = v129;
      v84 = Heap._UnsafeHandle._minDescendant(c0:gc0:)(v81, v133 + 1, v23, v80, v130, v127, v6, v129);
      v131 = v85;
      v86 = v6;
      v87 = v128;
      v88 = v128[2];
      v89 = v128[9];
      v125 = v84;
      v132 = v89;
      v134 = v89 * v84;
      v135 = v23;
      v90 = v137;
      v136 = v88;
      v88(v137, (v82 + v89 * v84), v86);
      v91 = dispatch thunk of static Comparable.< infix(_:_:)(v90, v126, v138, v83);
      v92 = v138;
      LOBYTE(v83) = v91;
      v93 = v90;
      v94 = v87[1];
      result = (v94)(v93, v138);
      if (v83)
      {
        v95 = v127;
        v96 = UnsafeMutableBufferPointer.baseAddress.getter(v82, v127, v92);
        if (!v96)
        {
          BUG();
        }

        v133 = v94;
        v97 = v120;
        UnsafeMutablePointer.move()(v134 + v96, v92);
        v98 = UnsafeMutableBufferPointer.baseAddress.getter(v82, v95, v92);
        if (!v98)
        {
          BUG();
        }

        v99 = v132;
        v100 = v132 * v122 + v98;
        v101 = v137;
        v136(v137, v97, v92);
        v128 = v128[4];
        (v128)(v100, v101, v92);
        (v133)(v97, v92);
        v102 = v124;
        result = v125;
        *v124 = v125;
        v102[1] = v131;
        v103 = v130;
        if (result >= v135)
        {
          v135 = (result - 1) / 2;
          v104 = v135 * v99;
          v105 = v137;
          v136(v137, (v130 + v104), v92);
          v106 = dispatch thunk of static Comparable.< infix(_:_:)(v105, v126, v138, v129);
          v107 = v138;
          v108 = v106;
          result = (v133)(v105, v138);
          if (v108)
          {
            v109 = v104;
            v110 = v127;
            v111 = UnsafeMutableBufferPointer.baseAddress.getter(v103, v127, v107);
            if (!v111)
            {
              BUG();
            }

            v112 = v109 + v111;
            v113 = v121;
            UnsafeMutablePointer.move()(v112, v107);
            v114 = UnsafeMutableBufferPointer.baseAddress.getter(v103, v110, v107);
            if (!v114)
            {
              BUG();
            }

            v115 = v131 - 1;
            v116 = v134 + v114;
            v117 = v137;
            v136(v137, v113, v107);
            (v128)(v116, v117, v107);
            (v133)(v113, v107);
            result = v124;
            *v124 = v135;
            *(result + 8) = v115;
          }
        }
      }
    }
  }

  else
  {
    v119 = &v118;
    v136 = v8[2];
    v134 = v8[9];
    while (1)
    {
      v135 = v23;
      v122 = v21;
      v25 = v23 + 1;
      v26 = v134;
      v27 = v23 * v134;
      v28 = v130;
      v29 = v6;
      v30 = v136;
      (v136)(v137, v130 + v27, v29, v9, v16);
      v123 = v25;
      v31 = v28 + v25 * v26;
      v32 = v125;
      v30(v125, v31, v138);
      v33 = v137;
      v34 = dispatch thunk of static Comparable.< infix(_:_:)(v137, v32, v138, v129);
      v35 = v138;
      LOBYTE(v132) = v34;
      v36 = v128[1];
      v37 = v32;
      v38 = v135;
      v36(v37, v138);
      v131 = v36;
      v36(v33, v35);
      v39 = v38;
      if ((v132 & 1) == 0)
      {
        v39 = v123;
      }

      v132 = v39;
      v135 = v38 + 2;
      v40 = v134;
      v41 = (v38 + 2) * v134;
      v42 = v130;
      v43 = v136;
      v136(v137, (v130 + v41), v35);
      v44 = v42 + v24 * v40;
      v45 = v125;
      v43(v125, v44, v35);
      v46 = v137;
      v47 = dispatch thunk of static Comparable.< infix(_:_:)(v137, v45, v138, v129);
      v48 = v138;
      LOBYTE(v43) = v47;
      v49 = v45;
      v50 = v131;
      (v131)(v49, v138);
      v50(v46, v48);
      if ((v43 & 1) == 0)
      {
        v135 = v24;
      }

      v51 = v134;
      v52 = v130;
      v53 = v137;
      v54 = v136;
      v136(v137, (v130 + v134 * v132), v48);
      v55 = v52 + v51 * v135;
      v56 = v125;
      v54(v125, v55, v48);
      v57 = dispatch thunk of static Comparable.< infix(_:_:)(v53, v56, v138, v129);
      v58 = v138;
      LOBYTE(v123) = v57;
      v59 = v56;
      v60 = v132;
      v61 = v131;
      (v131)(v59, v138);
      v61(v53, v58);
      if ((v123 & 1) == 0)
      {
        v60 = v135;
      }

      v132 = v60;
      v62 = v134 * v60;
      v63 = v137;
      v136(v137, (v52 + v62), v58);
      v64 = dispatch thunk of static Comparable.< infix(_:_:)(v63, v126, v138, v129);
      v65 = v138;
      v66 = v64;
      result = (v131)(v63, v138);
      if ((v66 & 1) == 0)
      {
        break;
      }

      v67 = v127;
      v68 = UnsafeMutableBufferPointer.baseAddress.getter(v52, v127, v65);
      if (!v68)
      {
        BUG();
      }

      v69 = v62 + v68;
      v70 = v119;
      UnsafeMutablePointer.move()(v69, v65);
      v71 = UnsafeMutableBufferPointer.baseAddress.getter(v52, v67, v65);
      if (!v71)
      {
        BUG();
      }

      v72 = (v133 + 2);
      v73 = v134 * v122 + v71;
      v74 = v137;
      v136(v137, v70, v65);
      (v128[4])(v73, v74, v65);
      (v131)(v70, v65);
      v75 = v124;
      v76 = v132;
      *v124 = v132;
      v133 = v72;
      v75[1] = v72;
      v77 = v134 * ((v76 - 1) / 2);
      v136(v74, (v130 + v77), v65);
      LOBYTE(v72) = dispatch thunk of static Comparable.< infix(_:_:)(v74, v126, v65, v129);
      (v131)(v74, v65);
      v78 = (v72 & 1) == 0;
      v6 = v65;
      a4 = v127;
      if (!v78)
      {
        v79 = UnsafeMutableBufferPointer.baseAddress.getter(v130, v127, v6);
        swap<A>(_:_:)(v79 + v77, v126, v6);
      }

      v23 = 4 * v76 + 3;
      v24 = 4 * v76 + 6;
      v21 = v76;
      if (v24 >= a4)
      {
        result = v133;
        v80 = v133 + 2;
        v21 = v76;
        goto LABEL_17;
      }
    }
  }

  return result;
}

char *Heap._UnsafeHandle._minDescendant(c0:gc0:)(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v11 = *(a7 - 8);
  v12 = v11[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  if (a3 >= a6)
  {
    if (a1 + 1 < a6)
    {
      v33 = v11[2];
      v34 = v11[9];
      v64 = a1;
      v62 = &v55;
      v63 = a2;
      v60 = a5;
      v33(&v55, a5 + a1 * v34);
      (v33)(&v55, v60 + (a1 + 1) * v34, a7);
      v35 = v62;
      LOBYTE(v33) = dispatch thunk of static Comparable.< infix(_:_:)(v62, &v55, a7, a8);
      v36 = v11[1];
      v36(&v55, a7);
      v36(v35, a7);
      v10 = v64;
      if ((v33 & 1) == 0)
      {
        return (a1 + 1);
      }
    }
  }

  else
  {
    v59 = &v55;
    v58 = a4;
    v17 = v11[2];
    v18 = v11[9];
    v57 = v17;
    v60 = a5;
    v62 = &v55;
    if (a3 + 2 >= a6)
    {
      v64 = a1 + 1;
      v63 = a2;
      v61 = a3;
      v38 = v17;
      v17(&v55, a5 + (a1 + 1) * v18);
      v56 = v18;
      v39 = a5 + v61 * v18;
      v40 = v61;
      v41 = v59;
      v38(v59, v39, a7);
      v65 = dispatch thunk of static Comparable.< infix(_:_:)(v62, v41, a7, a8);
      v42 = v11[1];
      v42(v41, a7);
      v43 = v62;
      v42(v62, a7);
      v44 = v63;
      v10 = v64;
      if ((v65 & 1) == 0)
      {
        v10 = v40;
        v44 = v58;
      }

      v45 = (v40 + 1);
      if (v45 < a6)
      {
        v46 = v56;
        v47 = v45;
        v61 = v45;
        v48 = v60;
        v64 = v10;
        v49 = v43;
        v63 = v44;
        v50 = v57;
        v57(v49, v60 + v56 * v10, a7);
        v51 = v48 + v47 * v46;
        v52 = v59;
        v50(v59, v51, a7);
        v53 = v62;
        LOBYTE(v50) = dispatch thunk of static Comparable.< infix(_:_:)(v62, v52, a7, a8);
        v42(v52, a7);
        v42(v53, a7);
        v10 = v64;
        if ((v50 & 1) == 0)
        {
          return v61;
        }
      }
    }

    else
    {
      v64 = a3 + 1;
      v20 = v17;
      v63 = (a3 + 2);
      v17(&v55, a5 + a3 * v18);
      v21 = a5 + v64 * v18;
      v22 = v59;
      v20(v59, v21, a7);
      v23 = v22;
      v65 = dispatch thunk of static Comparable.< infix(_:_:)(v62, v22, a7, a8);
      v24 = v11[1];
      v61 = v24;
      v24(v22, a7);
      v25 = v62;
      v24(v62, a7);
      v26 = v64;
      if (v65)
      {
        v26 = a3;
      }

      v64 = v26;
      v27 = v60;
      v28 = v25;
      v29 = v25;
      v30 = v57;
      v57(v29, v60 + v18 * v26, a7);
      v30(v23, v27 + v63 * v18, a7);
      v31 = v28;
      LOBYTE(v28) = dispatch thunk of static Comparable.< infix(_:_:)(v28, v23, a7, a8);
      v32 = v61;
      (v61)(v23, a7);
      v32(v31, a7);
      v10 = v64;
      if ((v28 & 1) == 0)
      {
        return v63;
      }
    }
  }

  return v10;
}

uint64_t Heap._UnsafeHandle.trickleDownMax(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v133 = a6;
  v6 = a5;
  v128 = a2;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v129 = &v124;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v132 = &v124;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v126 = &v124;
  v15 = alloca(v8);
  v16 = alloca(v8);
  v125 = &v124;
  v17 = alloca(v8);
  v18 = alloca(v8);
  v131 = &v124;
  v19 = alloca(v8);
  v20 = alloca(v8);
  v140 = &v124;
  v21 = alloca(v8);
  v22 = alloca(v8);
  v142 = a3;
  v136 = a4;
  v23 = UnsafeMutableBufferPointer.baseAddress.getter(a3, a4, a5);
  if (!v23)
  {
    BUG();
  }

  v24 = *(v7 + 72);
  v135 = &v124;
  UnsafeMutablePointer.move()(a1 * v24 + v23, v6);
  v25 = 4 * a1 + 3;
  v26 = 4 * a1 + 6;
  v139 = v7;
  v143 = v24;
  v27 = a1;
  v144 = v6;
  if (v26 < v136)
  {
    v141 = *(v7 + 16);
    v28 = v140;
    while (1)
    {
      v138 = v25;
      v137 = v27;
      v29 = v25 + 1;
      v30 = v142;
      v31 = v142 + v24 * v25;
      v32 = v6;
      v33 = v141;
      v141(v28, v31, v32);
      v130 = v29;
      v34 = v30 + v24 * v29;
      v35 = v131;
      v33(v131, v34, v144);
      v36 = v140;
      v37 = dispatch thunk of static Comparable.< infix(_:_:)(v140, v35, v144, v133);
      v38 = v144;
      LOBYTE(v127) = v37;
      v39 = *(v139 + 8);
      v39(v35, v144);
      v134 = v39;
      v39(v36, v38);
      v40 = v138;
      if ((v127 & 1) == 0)
      {
        v130 = v138;
      }

      v138 += 2;
      v41 = v143;
      v42 = v142;
      v43 = v140;
      v44 = v38;
      v45 = v141;
      v141(v140, v142 + v143 * (v40 + 2), v44);
      v46 = v42 + v41 * v26;
      v47 = v131;
      v45(v131, v46, v144);
      v48 = dispatch thunk of static Comparable.< infix(_:_:)(v43, v47, v144, v133);
      v49 = v144;
      LOBYTE(v41) = v48;
      v50 = v47;
      v51 = v134;
      (v134)(v50, v144);
      v51(v43, v49);
      if ((v41 & 1) == 0)
      {
        v26 = v138;
      }

      v52 = v143;
      v53 = v142;
      v54 = v140;
      v55 = v49;
      v56 = v141;
      v141(v140, v142 + v143 * v130, v55);
      v57 = v53 + v52 * v26;
      v58 = v131;
      v56(v131, v57, v144);
      v59 = dispatch thunk of static Comparable.< infix(_:_:)(v54, v58, v144, v133);
      v60 = v144;
      LOBYTE(v52) = v59;
      v61 = v58;
      v62 = v134;
      (v134)(v61, v144);
      v62(v54, v60);
      v63 = v26;
      if ((v52 & 1) == 0)
      {
        v63 = v130;
      }

      v64 = v143 * v63;
      v65 = v140;
      v141(v140, v142 + v143 * v63, v60);
      v66 = dispatch thunk of static Comparable.< infix(_:_:)(v135, v65, v144, v133);
      v6 = v144;
      v67 = v66;
      (v134)(v65, v144);
      if ((v67 & 1) == 0)
      {
        goto LABEL_30;
      }

      v138 = v63;
      v68 = v136;
      v69 = UnsafeMutableBufferPointer.baseAddress.getter(v142, v136, v6);
      if (!v69)
      {
        BUG();
      }

      v70 = v125;
      UnsafeMutablePointer.move()(v64 + v69, v6);
      v71 = UnsafeMutableBufferPointer.baseAddress.getter(v142, v68, v6);
      if (!v71)
      {
        BUG();
      }

      v72 = v143 * v137 + v71;
      v73 = v140;
      v74 = v141;
      v141(v140, v70, v6);
      (*(v139 + 32))(v72, v73, v144);
      v75 = v70;
      v76 = v134;
      (v134)(v75, v144);
      v77 = v143 * ((v138 - 1) / 2);
      v74(v73, v142 + v77, v144);
      v78 = dispatch thunk of static Comparable.< infix(_:_:)(v135, v73, v144, v133);
      v6 = v144;
      LOBYTE(v74) = v78;
      v76(v73, v144);
      v79 = v136;
      if (v74)
      {
        v80 = UnsafeMutableBufferPointer.baseAddress.getter(v142, v136, v6);
        swap<A>(_:_:)(v80 + v77, v135, v6);
      }

      v25 = 4 * v138 + 3;
      v26 = 4 * v138 + 6;
      v128 += 2;
      v27 = v138;
      v28 = v140;
      v24 = v143;
      if (v26 >= v79)
      {
        v81 = v128;
        v82 = (v128 + 2);
        v27 = v138;
        v7 = v139;
        goto LABEL_18;
      }
    }
  }

  v81 = v128;
  v82 = (v128 + 2);
  v28 = v140;
LABEL_18:
  v137 = v27;
  v83 = 2 * v27 + 1;
  if (v83 >= v136)
  {
    v104 = *(v7 + 16);
    v103 = v143;
    v102 = v132;
    goto LABEL_31;
  }

  v138 = v25;
  v84 = v142;
  v85 = v28;
  v86 = v133;
  v131 = Heap._UnsafeHandle._maxDescendant(c0:gc0:)(v83, (v81 + 1), v25, v82, v142, v136, v6, v133);
  v134 = v143 * v131;
  v141 = *(v7 + 16);
  v141(v85, v84 + v143 * v131, v6);
  v87 = dispatch thunk of static Comparable.< infix(_:_:)(v135, v85, v144, v86);
  v6 = v144;
  v88 = v85;
  LOBYTE(v85) = v87;
  v89 = *(v7 + 8);
  v89(v88, v144);
  if ((v85 & 1) == 0)
  {
    goto LABEL_30;
  }

  v130 = v89;
  v90 = v142;
  v91 = v136;
  v92 = UnsafeMutableBufferPointer.baseAddress.getter(v142, v136, v6);
  if (!v92)
  {
    BUG();
  }

  v93 = v126;
  UnsafeMutablePointer.move()(v134 + v92, v6);
  v94 = UnsafeMutableBufferPointer.baseAddress.getter(v90, v91, v6);
  if (!v94)
  {
    BUG();
  }

  v95 = v143 * v137 + v94;
  v96 = v140;
  v97 = v141;
  v141(v140, v93, v6);
  v98 = v95;
  v99 = v96;
  v127 = *(v139 + 32);
  v127(v98, v96, v6);
  v100 = v93;
  v101 = v130;
  (v130)(v100, v6);
  if (v131 < v138)
  {
    v137 = v131;
    v7 = v139;
    v102 = v132;
    v103 = v143;
    v104 = v97;
    goto LABEL_31;
  }

  v137 = (v131 - 1) / 2;
  v105 = v143 * v137;
  v97(v99, v142 + v143 * v137, v6);
  v106 = dispatch thunk of static Comparable.< infix(_:_:)(v135, v99, v144, v133);
  v6 = v144;
  v107 = v99;
  v108 = v106;
  v101(v107, v144);
  if ((v108 & 1) == 0)
  {
    v137 = v131;
LABEL_30:
    v7 = v139;
    v102 = v132;
    v103 = v143;
    v104 = v141;
    goto LABEL_31;
  }

  v109 = v142;
  v110 = v136;
  v111 = UnsafeMutableBufferPointer.baseAddress.getter(v142, v136, v6);
  if (!v111)
  {
    BUG();
  }

  UnsafeMutablePointer.move()(v105 + v111, v6);
  v112 = UnsafeMutableBufferPointer.baseAddress.getter(v109, v110, v6);
  if (!v112)
  {
    BUG();
  }

  v113 = (v134 + v112);
  v114 = v140;
  v115 = v141;
  v141(v140, v129, v6);
  v116 = v113;
  v104 = v115;
  v127(v116, v114, v6);
  v101(v129, v6);
  v7 = v139;
  v102 = v132;
  v103 = v143;
LABEL_31:
  v117 = v102;
  v104(v102, v135, v6);
  v118 = UnsafeMutableBufferPointer.baseAddress.getter(v142, v136, v6);
  if (!v118)
  {
    BUG();
  }

  v119 = v104;
  v120 = v103 * v137 + v118;
  v121 = v140;
  v119(v140, v117, v6);
  (*(v7 + 32))(v120, v121, v6);
  v122 = *(v7 + 8);
  v122(v117, v6);
  return (v122)(v135, v6);
}

uint64_t Heap._UnsafeHandle._trickleDownMax(node:value:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a6;
  v6 = a5;
  v135 = a3;
  v125 = a2;
  v8 = *(a5 - 8);
  v9 = v8[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v119 = &v116;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v118 = &v116;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v16 = alloca(v9);
  v17 = alloca(v9);
  v127 = &v116;
  v18 = alloca(v9);
  v19 = alloca(v9);
  v133 = &v116;
  result = *a1;
  v121 = a1;
  v21 = a1[1];
  v22 = 4 * result + 3;
  v23 = 4 * result + 6;
  v126 = a4;
  v122 = v8;
  v136 = v6;
  if (v23 >= a4)
  {
    v75 = v21;
    v76 = (v21 + 2);
LABEL_17:
    v120 = result;
    v77 = 2 * result + 1;
    v78 = v77 < a4;
    v79 = v135;
    if (v78)
    {
      v80 = v22;
      v81 = v128;
      v82 = Heap._UnsafeHandle._maxDescendant(c0:gc0:)(v77, (v75 + 1), v22, v76, v135, v126, v6, v128);
      v129 = v83;
      v123 = v80;
      v84 = v122;
      v85 = v122[2];
      v86 = v122[9];
      v130 = v82;
      v132 = v86;
      v131 = v86 * v82;
      v87 = v133;
      v134 = v85;
      v85(v133, (v79 + v86 * v82), v6);
      v88 = dispatch thunk of static Comparable.< infix(_:_:)(v125, v87, v136, v81);
      v89 = v136;
      LOBYTE(v81) = v88;
      v90 = v84[1];
      result = v90(v87, v136);
      if (v81)
      {
        v91 = v132;
        v127 = v90;
        v92 = v126;
        v93 = UnsafeMutableBufferPointer.baseAddress.getter(v79, v126, v89);
        if (!v93)
        {
          BUG();
        }

        v94 = v118;
        UnsafeMutablePointer.move()(v131 + v93, v89);
        v95 = UnsafeMutableBufferPointer.baseAddress.getter(v79, v92, v89);
        if (!v95)
        {
          BUG();
        }

        v96 = v91 * v120 + v95;
        v97 = v91;
        v98 = v133;
        v134(v133, v94, v89);
        v124 = v122[4];
        (v124)(v96, v98, v89);
        v99 = v94;
        v100 = v127;
        (v127)(v99, v89);
        v101 = v121;
        result = v130;
        *v121 = v130;
        v101[1] = v129;
        if (result >= v123)
        {
          v130 = (result - 1) / 2;
          v102 = v130 * v97;
          v103 = (v135 + v102);
          v104 = v102;
          v105 = v133;
          v134(v133, v103, v89);
          v106 = dispatch thunk of static Comparable.< infix(_:_:)(v125, v105, v136, v128);
          v107 = v136;
          v108 = v106;
          result = (v100)(v105, v136);
          if (v108)
          {
            v109 = v126;
            v110 = UnsafeMutableBufferPointer.baseAddress.getter(v135, v126, v107);
            if (!v110)
            {
              BUG();
            }

            v111 = v119;
            UnsafeMutablePointer.move()(v104 + v110, v107);
            v112 = UnsafeMutableBufferPointer.baseAddress.getter(v135, v109, v107);
            if (!v112)
            {
              BUG();
            }

            v113 = v129 - 1;
            v114 = v131 + v112;
            v115 = v133;
            v134(v133, v111, v107);
            (v124)(v114, v115, v107);
            (v127)(v111, v107);
            result = v121;
            *v121 = v130;
            *(result + 8) = v113;
          }
        }
      }
    }
  }

  else
  {
    v117 = &v116;
    v134 = v8[2];
    v131 = v8[9];
    while (1)
    {
      v123 = v22;
      v132 = v23;
      v120 = result;
      v130 = v21;
      v24 = v22 + 1;
      v25 = v6;
      v26 = v131;
      v27 = v135;
      v28 = v134;
      v134(v133, (v135 + v22 * v131), v25);
      v124 = v24;
      v29 = v27 + v24 * v26;
      v30 = v127;
      v28(v127, v29, v25);
      v31 = v133;
      v32 = dispatch thunk of static Comparable.< infix(_:_:)(v133, v30, v136, v128);
      v33 = v136;
      LOBYTE(v24) = v32;
      v34 = v122[1];
      v34(v30, v136);
      v129 = v34;
      v34(v31, v33);
      if ((v24 & 1) == 0)
      {
        v124 = v123;
      }

      v35 = v131;
      v123 += 2;
      v36 = v135;
      v37 = v133;
      v38 = v134;
      v134(v133, (v135 + v123 * v131), v33);
      v39 = v36 + v132 * v35;
      v40 = v127;
      v38(v127, v39, v33);
      v41 = dispatch thunk of static Comparable.< infix(_:_:)(v37, v40, v136, v128);
      v42 = v136;
      LOBYTE(v38) = v41;
      v43 = v129;
      (v129)(v40, v136);
      v43(v37, v42);
      if ((v38 & 1) == 0)
      {
        v132 = v123;
      }

      v44 = v131;
      v45 = v135;
      v46 = v133;
      v47 = v134;
      v134(v133, (v135 + v131 * v124), v42);
      v48 = v45 + v44 * v132;
      v49 = v127;
      v47(v127, v48, v42);
      v50 = dispatch thunk of static Comparable.< infix(_:_:)(v46, v49, v136, v128);
      v51 = v136;
      LOBYTE(v47) = v50;
      v52 = v129;
      (v129)(v49, v136);
      v52(v46, v51);
      v53 = v132;
      if ((v47 & 1) == 0)
      {
        v53 = v124;
      }

      v132 = v53;
      v54 = v131 * v53;
      v55 = v135;
      v56 = v133;
      v134(v133, (v135 + v54), v51);
      v57 = dispatch thunk of static Comparable.< infix(_:_:)(v125, v56, v136, v128);
      v6 = v136;
      v58 = v57;
      result = (v129)(v56, v136);
      if ((v58 & 1) == 0)
      {
        break;
      }

      v59 = v126;
      v60 = UnsafeMutableBufferPointer.baseAddress.getter(v55, v126, v6);
      if (!v60)
      {
        BUG();
      }

      v61 = v54 + v60;
      v62 = v117;
      UnsafeMutablePointer.move()(v61, v6);
      v63 = UnsafeMutableBufferPointer.baseAddress.getter(v55, v59, v6);
      if (!v63)
      {
        BUG();
      }

      v64 = v130 + 2;
      v65 = v131 * v120 + v63;
      v66 = v133;
      v134(v133, v62, v6);
      (v122[4])(v65, v66, v6);
      v67 = v62;
      v68 = v129;
      (v129)(v67, v6);
      v69 = v121;
      v70 = v132;
      *v121 = v132;
      v130 = v64;
      v69[1] = v64;
      v71 = v131 * ((v70 - 1) / 2);
      v72 = v66;
      v134(v66, (v135 + v71), v6);
      LOBYTE(v66) = dispatch thunk of static Comparable.< infix(_:_:)(v125, v66, v6, v128);
      v68(v72, v6);
      v73 = (v66 & 1) == 0;
      a4 = v126;
      if (!v73)
      {
        v74 = UnsafeMutableBufferPointer.baseAddress.getter(v135, v126, v6);
        swap<A>(_:_:)(v74 + v71, v125, v6);
      }

      v22 = 4 * v132 + 3;
      v23 = 4 * v132 + 6;
      result = v132;
      v21 = v130;
      if (v23 >= a4)
      {
        v75 = v130;
        v76 = (v130 + 2);
        result = v132;
        goto LABEL_17;
      }
    }
  }

  return result;
}

char *Heap._UnsafeHandle._maxDescendant(c0:gc0:)(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a1;
  v11 = *(a7 - 8);
  v12 = v11[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  if (a3 >= a6)
  {
    if (a1 + 1 < a6)
    {
      v29 = v11[2];
      v30 = v11[9];
      v56 = &v49;
      v57 = a1;
      v58 = a2;
      v54 = a5;
      v29(&v49, a5 + a1 * v30);
      (v29)(&v49, v54 + (a1 + 1) * v30, a7);
      v31 = v56;
      LOBYTE(v29) = dispatch thunk of static Comparable.< infix(_:_:)(v56, &v49, a7, a8);
      v32 = v11[1];
      v32(&v49, a7);
      v32(v31, a7);
      v10 = v57;
      if (v29)
      {
        return (a1 + 1);
      }
    }
  }

  else
  {
    v52 = &v49;
    v51 = a4;
    v17 = v11[2];
    v18 = v11[9];
    v53 = v17;
    v54 = a5;
    v56 = &v49;
    if (a3 + 2 >= a6)
    {
      v57 = a1 + 1;
      v58 = a2;
      v55 = a3;
      v34 = v17;
      v17(&v49, a5 + (a1 + 1) * v18);
      v50 = v18;
      v35 = a5 + v55 * v18;
      v36 = v52;
      v34(v52, v35, a7);
      v37 = v56;
      v59 = dispatch thunk of static Comparable.< infix(_:_:)(v56, v36, a7, a8);
      v38 = v11[1];
      v38(v36, a7);
      v39 = v37;
      v40 = v55;
      v38(v39, a7);
      v41 = v58;
      v10 = v57;
      if (v59)
      {
        v10 = v40;
        v41 = v51;
      }

      v42 = (v40 + 1);
      if (v42 < a6)
      {
        v43 = v50;
        v44 = v54;
        v57 = v10;
        v58 = v41;
        v45 = v53;
        v53(v39, v54 + v50 * v10, a7);
        v46 = v44 + v42 * v43;
        v47 = v52;
        v45(v52, v46, a7);
        LOBYTE(v45) = dispatch thunk of static Comparable.< infix(_:_:)(v56, v47, a7, a8);
        v38(v47, a7);
        v38(v56, a7);
        v10 = v57;
        if (v45)
        {
          return v42;
        }
      }
    }

    else
    {
      v58 = a3 + 1;
      v57 = a3 + 2;
      (v17)(&v49, a5 + a3 * v18, a7, v17, a5, a1);
      v20 = a5 + v58 * v18;
      v21 = v52;
      v53(v52, v20, a7);
      v59 = dispatch thunk of static Comparable.< infix(_:_:)(&v49, v21, a7, a8);
      v22 = v11[1];
      v55 = v22;
      v22(v21, a7);
      v23 = v56;
      v22(v56, a7);
      if (v59)
      {
        v9 = v58;
      }

      v24 = v54;
      v25 = v23;
      v26 = v53;
      v53(v25, v54 + v18 * v9, a7);
      v26(v21, v24 + v57 * v18, a7);
      v27 = v56;
      LOBYTE(v26) = dispatch thunk of static Comparable.< infix(_:_:)(v56, v21, a7, a8);
      v28 = v55;
      (v55)(v21, a7);
      v28(v27, a7);
      if (v26)
      {
        return v57;
      }

      return v9;
    }
  }

  return v10;
}

Swift::Void __swiftcall Heap._UnsafeHandle.heapify()()
{
  v4 = v1;
  v5 = v3 / 2;
  if (v3 < 2)
  {
    BUG();
  }

  v6 = v3;
  v7 = v2;
  if (v5)
  {
    _BitScanReverse64(&v8, v5);
    v9 = v8 ^ 0x3F;
  }

  else
  {
    v9 = 64;
  }

  v19 = v5 - 1;
  v10 = 63 - v9;
  v20 = v4;
  v21 = v0;
  v11 = v6;
  v18 = v5;
  do
  {
    v12 = ~(-1 << v10);
    if (v5 > v12)
    {
      v15 = (1 << (v10 + 1)) - 2;
      if (v15 >= v5)
      {
        v15 = v19;
      }

      v13 = ~(-1 << v10);
      v14 = v10;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    v16 = v5 <= v12 || v15 < v13;
    v17 = v10;
    if (v10)
    {
      if (!v16)
      {
        do
        {
          Heap._UnsafeHandle.trickleDownMax(_:)(v13, v14, v7, v6, v21, v20);
          v7 = v2;
          v6 = v11;
          ++v13;
        }

        while (v15 >= v13);
      }
    }

    else if (!v16)
    {
      do
      {
        Heap._UnsafeHandle.trickleDownMin(_:)(v13, v14, v7, v6, v21, v20);
        v7 = v2;
        v6 = v11;
        ++v13;
      }

      while (v15 >= v13);
    }

    --v10;
    v5 = v18;
  }

  while (v17 > 0);
}

uint64_t _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a1)
  {
    BUG();
  }

  if (*a1 != a2)
  {
    BUG();
  }

  if (a1[1] != a3)
  {
    BUG();
  }

  return type metadata accessor for ContiguousArray(0, a5);
}

uint64_t Heap._storage.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

uint64_t Heap.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ContiguousArray(0, a2);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v2);
  return Collection.isEmpty.getter(v2, WitnessTable);
}

uint64_t Heap.unordered.getter(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v2 = type metadata accessor for ContiguousArray(0, a2);
  a1;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v2);
  return Array.init<A>(_:)(v5, a2, v2, WitnessTable);
}

void *Heap.insert(_:)(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  (*(v4 + 16))(&v12, a1, v3);
  v8 = type metadata accessor for ContiguousArray(0, v3);
  ContiguousArray.append(_:)(&v12, v8);
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(*v2 + 16);
  v10 = *v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v13[0] = v10;
  v13[1] = v9;
  closure #1 in Heap.insert(_:)(v10, v9, v3, *(v14 + 24));
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v13, v10, v9, v2, v3);
  return &type metadata for Never;
}

Swift::Int closure #1 in Heap.insert(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    BUG();
  }

  if (v6 > 0x7FFFFFFFFFFFFFFELL)
  {
    BUG();
  }

  v8 = a2;
  _BitScanReverse64(&a2, a2);
  return Heap._UnsafeHandle.bubbleUp(_:)(v6, a2, a1, v8, a3, a4);
}

uint64_t Heap.min()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ContiguousArray(0, a2);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v2);
  return Collection.first.getter(v2, WitnessTable);
}

uint64_t Heap.max()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  v8 = a3;
  v3 = type metadata accessor for Optional(0, a2);
  return _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Heap.max(), v6, a1, a2, v3, &type metadata for Never, &protocol witness table for Never, v5);
}

uint64_t closure #1 in Heap.max()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = v6;
  v8 = *(a3 - 8);
  v9 = v8[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = alloca(v9);
  v13 = alloca(v9);
  if (a2 < 3)
  {
    v21 = type metadata accessor for UnsafeBufferPointer(0, a3, v9, a4, v23, a6, a1, a2);
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeBufferPointer<A>, v21);
    return BidirectionalCollection.last.getter(v21, WitnessTable);
  }

  else
  {
    v14 = v8[2];
    v15 = v8[9];
    v26 = v23;
    v25 = v23;
    v27 = a1;
    v24 = a4;
    v14(v23, a1 + v15, a3);
    v16 = v27 + 2 * v15;
    v17 = v26;
    v14(v26, v16, a3);
    v18 = v25;
    max<A>(_:_:)(v25, v17, a3, v24);
    v19 = v8[1];
    v19(v17, a3);
    v19(v18, a3);
    return __swift_storeEnumTagSinglePayload(v28, 0, 1, a3);
  }
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(uint64_t, void, _BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = *(*(a4 - 8) + 80);
  result = a1(a3 + ((v15 + 32) & ~v15), *(a3 + 16), v17);
  if (v8)
  {
    return (*(v11 + 32))(a8, v17, a6);
  }

  return result;
}

uint64_t Heap.popMin()(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v21 = &v17;
  if (ContiguousArray.count.getter(*v2, v4) <= 0)
  {
    return __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  }

  v20 = a1;
  v19 = v3;
  v9 = type metadata accessor for ContiguousArray(0, v4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v9);
  v11 = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v9);
  RangeReplaceableCollection<>.removeLast()(v9, WitnessTable, v11);
  if (ContiguousArray.count.getter(*v2, v4) > 0)
  {
    ContiguousArray._makeMutableAndUnique()();
    v12 = *(*v2 + 16);
    v13 = *v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18[0] = v13;
    v18[1] = v12;
    closure #1 in Heap.popMin()(v13, v12, v21, v4, *(v20 + 24));
    _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v18, v13, v12, v2, v4);
  }

  v14 = v19;
  v15 = v21;
  (*(v5 + 16))(v19, v21, v4);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
  return (*(v5 + 8))(v15, v4);
}

uint64_t closure #1 in Heap.popMin()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = UnsafeMutableBufferPointer.baseAddress.getter(a1, a2, a4);
  swap<A>(_:_:)(v8, a3, a4);
  return Heap._UnsafeHandle.trickleDownMin(_:)(0, 0, a1, a2, a4, a5);
}

uint64_t Heap.popMax()(uint64_t a1)
{
  v21 = v1;
  v19 = a1;
  v3 = *(a1 + 16);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v18 = v17;
  v7 = ContiguousArray.count.getter(*v2, v3);
  v8 = type metadata accessor for ContiguousArray(0, v3);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v8);
  v10 = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v8);
  if (v7 < 3)
  {
    return RangeReplaceableCollection<>.popLast()(v8, WitnessTable, v10);
  }

  v11 = v18;
  RangeReplaceableCollection<>.removeLast()(v8, WitnessTable, v10);
  ContiguousArray._makeMutableAndUnique()();
  v12 = *(*v2 + 16);
  v13 = *v2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v17[0] = v13;
  v17[1] = v12;
  closure #1 in Heap.popMax()(v13, v12, v11, v3, *(v19 + 24));
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v17, v13, v12, v2, v3);
  v14 = v21;
  v15 = v20;
  (*(v20 + 16))(v21, v11, v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  return (*(v15 + 8))(v11, v3);
}

uint64_t closure #1 in Heap.popMax()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a3;
  v6 = *(a4 - 8);
  v7 = v6[8];
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = v6[9];
  v29 = a1;
  if (a2 == 2)
  {
    v30 = v12;
    v13 = a1 + v12;
    v14 = v6[2];
    v14(&v25, v13, a4);
    v14(&v25, v28, a4);
    LOBYTE(v14) = dispatch thunk of static Comparable.> infix(_:_:)(&v25, &v25, a4, v27);
    v15 = v6[1];
    v15(&v25, a4);
    result = (v15)(&v25, a4);
    if (v14)
    {
      v17 = UnsafeMutableBufferPointer.baseAddress.getter(v29, 2, a4);
      return swap<A>(_:_:)(v17 + v30, v28, a4);
    }
  }

  else
  {
    v30 = a2;
    v26 = &v25;
    v18 = v6[2];
    v25 = &v25;
    v18(&v25, a1 + 2 * v12, a4);
    v19 = v26;
    v18(v26, a1 + v12, a4);
    v20 = v25;
    v31 = dispatch thunk of static Comparable.< infix(_:_:)(v25, v19, a4, v27);
    v21 = v6[1];
    v21(v19, a4);
    v21(v20, a4);
    LOBYTE(v21) = v31;
    v22 = 2 - (v31 & 1);
    v23 = v30;
    v24 = UnsafeMutableBufferPointer.baseAddress.getter(v29, v30, a4);
    swap<A>(_:_:)(v24 + (v12 << ((v21 & 1) == 0)), v28, a4);
    return Heap._UnsafeHandle.trickleDownMax(_:)(v22, 1, v29, v23, a4, v27);
  }

  return result;
}

uint64_t Heap.removeMin()(uint64_t a1, void (*a2)(uint64_t))
{
  v9 = v2;
  v3 = *(a1 + 16);
  v4 = *(*(type metadata accessor for Optional(0, v3) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  a2(a1);
  if (__swift_getEnumTagSinglePayload(&v8, 1, v3) == 1)
  {
    BUG();
  }

  return (*(*(v3 - 8) + 32))(v9, &v8, v3);
}

uint64_t Heap.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[2] = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = a1;
  (*(v7 + 16))(v17);
  v11 = ContiguousArray.init<A>(_:)(v17, a2, a3, a5);
  v18 = v11;

  v12 = ContiguousArray.count.getter(v11, a2);

  if (v12 < 2)
  {
    (*(v7 + 8))(v19, a3);
  }

  else
  {
    type metadata accessor for ContiguousArray(0, a2);
    ContiguousArray._makeMutableAndUnique()();
    v13 = *(v18 + 16);
    v14 = *(*(a2 - 8) + 80);
    v15 = v18 + ((v14 + 32) & ~v14);
    v17[0] = v15;
    v17[1] = v13;
    Heap._UnsafeHandle.heapify()();
    _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v17, v15, v13, &v18, a2);
    (*(v7 + 8))(v19, a3);
    return v18;
  }

  return v11;
}

uint64_t Heap.insert<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = v4;
  AssociatedConformanceWitness = a1;
  v39 = a2;
  v7 = *(a2 + 16);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v34 = &v32;
  v11 = *(*(type metadata accessor for Optional(0, v7) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v40 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v35 = *(AssociatedTypeWitness - 8);
  v14 = *(v35 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v43 = &v32;
  v41 = a3;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = *v44;
  v22 = *v44;
  v45 = v7;
  if (ContiguousArray.count.getter(v22, v7))
  {
    v38 = &v32;
    v37 = v17;
    v36 = ContiguousArray.count.getter(v21, v45);
    v23 = v41;
    v24 = v40;
    v25 = dispatch thunk of Sequence.underestimatedCount.getter(v41, v40);
    v26 = v36 + v25;
    if (__OFADD__(v36, v25))
    {
      BUG();
    }

    type metadata accessor for ContiguousArray(0, v45);
    ContiguousArray.reserveCapacity(_:)(v26);
    (*(v37 + 16))(v38, AssociatedConformanceWitness, v23);
    dispatch thunk of Sequence.makeIterator()(v23, v24);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v24, v23, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v27 = v34;
    v28 = v45;
    for (i = v33; ; (*(i + 8))(v27, v28))
    {
      dispatch thunk of IteratorProtocol.next()(AssociatedTypeWitness, AssociatedConformanceWitness);
      if (__swift_getEnumTagSinglePayload(&v32, 1, v45) == 1)
      {
        break;
      }

      (*(i + 32))(v27, &v32, v28);
      Heap.insert(_:)(v27, v39);
    }

    return (*(v35 + 8))(v43, AssociatedTypeWitness);
  }

  else
  {

    v31 = v41;
    (*(v17 + 16))(&v32, AssociatedConformanceWitness, v41);
    result = Heap.init<A>(_:)(&v32, v45, v31, *(v39 + 24), v40);
    *v44 = result;
  }

  return result;
}

unint64_t UnsafeMutableMatrixPointer.count.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 * a2;
  if (!is_mul_ok(a3, a2))
  {
    BUG();
  }

  return v3;
}

uint64_t static UnsafeMutableMatrixPointer.allocate(rowCount:columnCount:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  return static UnsafeMutablePointer.allocate(capacity:)(v3, a3);
}

unint64_t UnsafeMutableMatrixPointer.initialize(repeating:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a6 - 8) + 64);
  v9 = alloca(v8);
  result = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = alloca(result);
  v12 = a4 * a3;
  if (!is_mul_ok(a4, a3))
  {
    BUG();
  }

  if (v12 < 0)
  {
    BUG();
  }

  v15 = *(a6 - 8);
  if (v12)
  {
    v13 = *(v15 + 16);
    v14 = *(v15 + 72);
    do
    {
      v13(&v13, a1, a6);
      result = (*(v15 + 32))(a2, &v13, a6);
      a2 += v14;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t UnsafeMutableMatrixPointer.assign(repeating:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 * a3;
  if (!is_mul_ok(a4, a3))
  {
    BUG();
  }

  if (v6 < 0)
  {
    BUG();
  }

  if (v6)
  {
    v9 = *(a6 - 8);
    v12 = *(v9 + 24);
    v10 = *(v9 + 72);
    do
    {
      result = v12(a2, a1, a6);
      a2 += v10;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t UnsafeMutableMatrixPointer.subscript.getter(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  if (a6)
  {
    v8 = a4 * a2;
    if (!is_mul_ok(a4, a2))
    {
      BUG();
    }

    v10 = __OFADD__(v8, a1);
    v11 = v8 + a1;
    if (v10)
    {
      BUG();
    }
  }

  else
  {
    v12 = a5 * a1;
    if (!is_mul_ok(a5, a1))
    {
      BUG();
    }

    v10 = __OFADD__(a2, v12);
    v11 = a2 + v12;
    if (v10)
    {
      BUG();
    }
  }

  return (*(*(a7 - 8) + 16))(v7, *(*(a7 - 8) + 72) * v11 + a3, a7);
}

void (*UnsafeMutableMatrixPointer.subscript.modify(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8))()
{
  if (a7)
  {
    v8 = a5 * a3;
    if (!is_mul_ok(a5, a3))
    {
      BUG();
    }

    v10 = __OFADD__(v8, a2);
    v11 = v8 + a2;
    if (v10)
    {
      BUG();
    }
  }

  else
  {
    v12 = a6 * a2;
    if (!is_mul_ok(a6, a2))
    {
      BUG();
    }

    v10 = __OFADD__(a3, v12);
    v11 = a3 + v12;
    if (v10)
    {
      BUG();
    }
  }

  v14 = *(*(a8 - 8) + 72) * v11;
  return MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
}

uint64_t UnsafeMutableMatrixPointer.subscript.setter(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8)
{
  v8 = UnsafeMutableMatrixPointer.subscript.modify(v12, a2, a3, a4, a5, a6, a7 & 1, a8);
  v9 = *(a8 - 8);
  (*(v9 + 24))(v10, a1, a8);
  (v8)(v12, 0);
  return (*(v9 + 8))(a1, a8);
}

uint64_t UnsafeMutableMatrixPointer.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if ((a5 & 1) == 0)
  {
    v6 = a1;
    a1 *= a4;
    if (!is_mul_ok(a4, v6))
    {
      BUG();
    }
  }

  return UnsafeMutableVectorPointer.init(start:count:stride:)(*(*(a6 - 8) + 72) * a1 + a2);
}

uint64_t UnsafeMutableMatrixPointer.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a1;
    a1 *= a3;
    if (!is_mul_ok(a3, v6))
    {
      BUG();
    }
  }

  return UnsafeMutableVectorPointer.init(start:count:stride:)(*(*(a6 - 8) + 72) * a1 + a2);
}

uint64_t UnsafeMutableMatrixPointer.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v19 = a4;
  v17 = a3;
  v16[0] = 0;
  v18 = a2;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  v7._object = "bounds" + 0x8000000000000000;
  v7._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v7);
  v20[0] = a1;
  v8 = type metadata accessor for UnsafeMutablePointer(0, a5);
  DefaultStringInterpolation.appendInterpolation<A>(_:)(v20, v8);
  v7._countAndFlagsBits = 0x203A73776F72202CLL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v20[0] = v18;
  v9 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v11 = v10;
  v7._countAndFlagsBits = v9;
  v7._object = v10;
  String.append(_:)(v7);
  v11;
  v7._countAndFlagsBits = 0x6E6D756C6F63202CLL;
  v7._object = 0xEB00000000203A73;
  String.append(_:)(v7);
  v20[0] = v17;
  v12 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v14 = v13;
  v7._countAndFlagsBits = v12;
  v7._object = v13;
  String.append(_:)(v7);
  v14;
  v7._countAndFlagsBits = 0x74756F79616C202CLL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  LOBYTE(v20[0]) = v19 & 1;
  _print_unlocked<A, B>(_:_:)(v20, v16, &type metadata for MatrixLayout, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v16[0];
}

uint64_t getEnumTagSinglePayload for UnsafeMutableMatrixPointer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 - 2;
      v5 = v3 < 2;
      v2 = -1;
      if (!v5)
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for UnsafeMutableMatrixPointer(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
    *(a1 + 24) = 0;
    if (a3 >= 0xFF)
    {
      *(a1 + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 25) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = a2 + 1;
    }
  }
}

uint64_t SparseMatrix.indexed()()
{
  v2 = v0;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v10 = *(v1 + 40);
  v7 = v4;
  v8 = v5;
  v9 = v10;
  outlined retain of [Int](&v7);
  outlined retain of [Int](&v8);
  outlined retain of ContiguousArray<Double>(&v9);
  *v2 = *v1;
  *(v2 + 16) = v3 & 1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  result = v10;
  *(v2 + 40) = v10;
  return result;
}

uint64_t SparseMatrix.IndexedSequence.init(base:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *result = *a1;
  *(result + 16) = v2 & 1;
  *(result + 24) = *(a1 + 24);
  *(result + 40) = v3;
  return result;
}

uint64_t SparseMatrix.Transpose.indexed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for SparseMatrix(0, *(a1 + 16), *(a1 + 24), a4);
  result = SparseMatrix.indexed()();
  v5[2] = v9;
  v5[1] = v8;
  *v5 = v7;
  return result;
}

uint64_t SparseMatrix.IndexedSequence.base.getter()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *v0 = *v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  v3;
  v4;
  return v5;
}

uint64_t SparseMatrix.IndexedSequence.makeIterator()(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = v2[2];
  v13 = v2[1];
  v14 = v5;
  v12 = v4;
  v17[0] = *(&v13 + 1);
  v15 = *(&v5 + 1);
  v16 = v5;
  outlined retain of [Int](v17);
  outlined retain of [Int](&v16);
  outlined retain of ContiguousArray<Double>(&v15);
  result = SparseMatrix.IndexedSequence.Iterator.init(base:)(&v12, *(a1 + 16), *(a1 + 24), v6);
  v3[3] = v11;
  v3[2] = v10;
  v3[1] = v9;
  *v3 = v8;
  return result;
}

uint64_t SparseMatrix.IndexedSequence.Iterator.init(base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v28 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v29 = *(a1 + 24);
  _mm_storel_ps(&v30, v29);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v25 = _mm_loadu_si128(a1);
  v26 = v9;
  v27 = v10;
  v11 = 0;
  v12 = type metadata accessor for SparseMatrix(0, a2, a3, a4);
  v13 = SparseMatrix.majorCount.getter(v12);
  if (v13 > 0)
  {
    v14 = _mm_load_si128(&v29).u64[0];
    v15 = *(v14 + 16);
    if (v15 < 2)
    {
      BUG();
    }

    if (*(v14 + 40) <= 0)
    {
      v16 = v15 - 2;
      a2 = v13 - 1;
      v17 = 0;
      while (a2 != v17)
      {
        if (v16 == v17)
        {
          BUG();
        }

        v11 = v17 + 1;
        if (*(v14 + 8 * v17++ + 48) > 0)
        {
          goto LABEL_11;
        }
      }

      v11 = v13;
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_11:
  v19 = *(a1 + 32);
  v32 = v8;
  v24 = v19;
  v31 = *(a1 + 40);
  v21[0] = v25;
  v21[1] = v26;
  v21[2] = v27;
  v22 = v11;
  v23 = 0;
  outlined retain of [Int](&v30);
  outlined retain of [Int](&v24);
  outlined retain of ContiguousArray<Double>(&v31);
  outlined release of SparseMatrix<Double>.MajorCollection(v21, a2);
  *v6 = v28;
  *(v6 + 16) = v7 & 1;
  *(v6 + 24) = v29;
  result = v32;
  *(v6 + 40) = v32;
  *(v6 + 48) = v11;
  *(v6 + 56) = 0;
  return result;
}

void *protocol witness for Sequence.makeIterator() in conformance SparseMatrix<A>.IndexedSequence(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = v3[3];
  v6 = v3[4];
  v15 = v3[5];
  SparseMatrix.IndexedSequence.makeIterator()(a1);
  v12 = v5;
  outlined release of [Int?](&v12, a2);
  v13 = v6;
  outlined release of [Int?](&v13, a2);
  v14 = v15;
  result = outlined release of _NativeDictionary<String?, Int>.Iterator(&v14);
  *v4 = v8;
  v4[1] = v9;
  v4[2] = v10;
  v4[3] = v11;
  return result;
}

uint64_t SparseMatrix.IndexedSequence.Iterator.base.getter()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *v0 = *v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  v3;
  v4;
  return v5;
}

uint64_t SparseMatrix.IndexedSequence.Iterator.next()(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, &type metadata for Int, &type metadata for Int, v5, "row column element ", 0);
  v7 = *(TupleTypeMetadata3 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  v13 = *(v3 + 48);
  if (!*(v3 + 16))
  {
    v27 = *v3;
    if (v13 < *v3)
    {
      v50 = a1;
      v28 = *(v3 + 56);
      if (v28 < 0)
      {
        BUG();
      }

      v29 = *(v3 + 32);
      if (v28 >= *(v29 + 16))
      {
        BUG();
      }

      v53 = v7;
      v57 = v27;
      v30 = *(v29 + 4 * v28 + 32);
      v51 = v4;
      v52 = TupleTypeMetadata3;
      v31 = &v43 + *(TupleTypeMetadata3 + 64);
      v43 = v13;
      v55 = &v43;
      v44 = v30;
      v56 = v5;
      v32 = *(v3 + 40);
      v54 = v29;

      ContiguousArray.subscript.getter(v28, v32, v56);

      v33 = v28 + 1;
      *(v3 + 56) = v33;
      v34 = *(v3 + 8);
      v35 = *(v3 + 24);
      v44 = v57;
      v45 = v34;
      v46 = 0;
      v57 = v35;
      v47 = v35;
      v48 = v54;
      v49 = v32;
      v36 = type metadata accessor for SparseMatrix(0, v56, *(v50 + 24), v35);
      v37 = v51;
      v38 = SparseMatrix.majorCount.getter(v36);
      if (v13 < v38)
      {
        if (v13 < -1)
        {
          BUG();
        }

        v39 = *(v57 + 16);
        if (v13 + 1 >= v39)
        {
          BUG();
        }

        if (v33 >= *(v57 + 8 * v13 + 40))
        {
          while (1)
          {
            v40 = v13 + 1;
            if (v13 + 1 >= v38)
            {
              break;
            }

            if (v13 + 2 >= v39)
            {
              BUG();
            }

            v26 = v33 < *(v57 + 8 * v13++ + 48);
            if (v26)
            {
              goto LABEL_30;
            }
          }

          v40 = v38;
LABEL_30:
          *(v3 + 48) = v40;
        }
      }

      goto LABEL_28;
    }

    return __swift_storeEnumTagSinglePayload(v4, 1, 1, TupleTypeMetadata3);
  }

  v14 = *(v3 + 8);
  if (v13 >= v14)
  {
    return __swift_storeEnumTagSinglePayload(v4, 1, 1, TupleTypeMetadata3);
  }

  v51 = v4;
  v15 = *(v3 + 56);
  if (v15 < 0)
  {
    BUG();
  }

  v16 = *(v3 + 32);
  if (v15 >= *(v16 + 16))
  {
    BUG();
  }

  v53 = v7;
  v57 = v14;
  v17 = *(v16 + 4 * v15 + 32);
  v52 = TupleTypeMetadata3;
  v50 = a1;
  v18 = &v43 + *(TupleTypeMetadata3 + 64);
  v43 = v17;
  v55 = &v43;
  v44 = v13;
  v56 = v5;
  v19 = *(v3 + 40);
  v54 = v16;

  ContiguousArray.subscript.getter(v15, v19, v56);

  v20 = v15 + 1;
  *(v3 + 56) = v20;
  v21 = *(v3 + 24);
  v44 = *v3;
  v45 = v57;
  v46 = 1;
  v57 = v21;
  v47 = v21;
  v48 = v54;
  v49 = v19;
  v22 = type metadata accessor for SparseMatrix(0, v56, *(v50 + 24), v21);
  v23 = SparseMatrix.majorCount.getter(v22);
  if (v13 < v23)
  {
    if (v13 < -1)
    {
      BUG();
    }

    v24 = *(v57 + 16);
    if (v13 + 1 >= v24)
    {
      BUG();
    }

    if (v20 >= *(v57 + 8 * v13 + 40))
    {
      while (1)
      {
        v25 = v13 + 1;
        if (v13 + 1 >= v23)
        {
          break;
        }

        if (v13 + 2 >= v24)
        {
          BUG();
        }

        v26 = v20 < *(v57 + 8 * v13++ + 48);
        if (v26)
        {
          goto LABEL_26;
        }
      }

      v25 = v23;
LABEL_26:
      *(v3 + 48) = v25;
    }
  }

  v37 = v51;
LABEL_28:
  v42 = v52;
  (*(v53 + 32))(v37, v55, v52);
  return __swift_storeEnumTagSinglePayload(v37, 0, 1, v42);
}

uint64_t initializeWithCopy for SparseMatrix.IndexedSequence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v3;
  v4;
  v5;
  return a1;
}

uint64_t assignWithCopy for SparseMatrix.IndexedSequence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  v3;
  v4;
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  v5;
  v6;
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v7;
  v8;
  return a1;
}

uint64_t assignWithTake for SparseMatrix.IndexedSequence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24);
  v3 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  v3;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for SparseMatrix.IndexedSequence(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 24) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for SparseMatrix.IndexedSequence(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 48) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * (a2 - 1);
    }
  }
}

uint64_t destroy for SparseMatrix.IndexedSequence(void *a1)
{
  a1[3];
  a1[4];
  return a1[5];
}

{
  return destroy for SparseMatrix.IndexedSequence.Iterator(a1);
}

uint64_t initializeWithCopy for SparseMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v3;
  v4;
  v5;
  return a1;
}

uint64_t assignWithCopy for SparseMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  v3;
  v4;
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  v5;
  v6;
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v7;
  v8;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for SparseMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24);
  v3 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  v3;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for SparseMatrix.IndexedSequence.Iterator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 24) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for SparseMatrix.IndexedSequence.Iterator(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 64) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * (a2 - 1);
    }
  }
}

uint64_t protocol witness for Matrix.indexed() in conformance SparseMatrix<A>.Transpose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = SparseMatrix.Transpose.indexed()(a1, a2, a3, a4);
  v5[2] = v9;
  v5[1] = v8;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for Matrix.indexed() in conformance SparseMatrix<A>()
{
  v1 = v0;
  result = SparseMatrix.indexed()();
  v1[2] = v5;
  v1[1] = v4;
  *v1 = v3;
  return result;
}

uint64_t DenseMatrix.storage.setter(uint64_t a1)
{
  result = *(v1 + 24);
  *(v1 + 24) = a1;
  return result;
}

unint64_t DenseMatrix.count.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  return v2;
}

unint64_t DenseMatrix.init(rowCount:columnCount:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a1;
  v5 = *(*(a3 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(*(*(*(a4 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = v20;
  v15 = v8;
  v16 = v19;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v18, a3, v15);
  if (!is_mul_ok(v16, v14))
  {
    BUG();
  }

  ContiguousArray.init(repeating:count:)(&v18, v16 * v14, a3);
  return v14;
}

void *_ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSf_Tt1gq5(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static ContiguousArray._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Float);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(770);
  v6 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v8 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v9 = _mm_shuffle_epi32(v4, 68);
    v10 = _mm_xor_si128(_mm_or_si128(v9, v6), si128);
    v11 = _mm_cmpgt_epi32(v10, v8);
    v12 = _mm_or_si128(_mm_shuffle_epi32(v11, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v10, v8), 245), v11));
    if (~_mm_cvtsi128_si32(v12))
    {
      *&result[v4 / 2 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v12, -1), 8))
    {
      *(&result[v4 / 2 + 4] + 1) = a2;
    }

    v13 = _mm_xor_si128(_mm_or_si128(v9, v5), si128);
    v14 = _mm_cmpgt_epi32(v13, v8);
    v15 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v14, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v13, v8), 245), v14)), -1);
    if (_mm_extract_epi8(v15, 0))
    {
      *&result[v4 / 2 + 5] = a2;
    }

    if (_mm_extract_epi8(v15, 8))
    {
      *(&result[v4 / 2 + 5] + 1) = a2;
    }

    v4 += 4;
  }

  while (((a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  return result;
}

void *_ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSd_Tt1gq5(uint64_t a1, double a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static ContiguousArray._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Double);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v7 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v8 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v4, 68), v5), si128);
    v9 = _mm_cmpgt_epi32(v8, v7);
    v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v7), 245), v9));
    if (~_mm_cvtsi128_si32(v10))
    {
      *&result[v4 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
    {
      *&result[v4 + 5] = a2;
    }

    v4 += 2;
  }

  while (((a1 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  return result;
}

unint64_t DenseMatrix.init<A>(rowCount:columnCount:layout:scalars:)(unint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v35 = a3;
  v30 = a2;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v32 = a4;
  (*(v10 + 16))(&v27, a4, a6);
  v14 = ContiguousArray.init<A>(_:)(&v27, a5, a6, a8);
  v14;
  v34 = v14;
  v33 = a5;
  v15 = ContiguousArray.count.getter(v14, a5);
  v31 = a1;
  v16 = v30 * a1;
  if (!is_mul_ok(v30, a1))
  {
    BUG();
  }

  if (v15 != v16)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v18._object = "LinearAlgebra/DenseMatrix.swift" + 0x8000000000000000;
    v18._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v18);
    v29 = v16;
    v19 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v21 = v20;
    v18._countAndFlagsBits = v19;
    v18._object = v20;
    String.append(_:)(v18);
    v21;
    v18._countAndFlagsBits = 0x746F672074756220;
    v18._object = 0xE900000000000020;
    String.append(_:)(v18);
    v22 = v34;
    v23 = ContiguousArray.count.getter(v34, v33);
    v22;
    v29 = v23;
    v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v26 = v25;
    v18._countAndFlagsBits = v24;
    v18._object = v25;
    String.append(_:)(v18);
    v26;
    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v27, v28, "LinearAlgebra/DenseMatrix.swift", 31, 2, 59, 0);
    BUG();
  }

  (*(v10 + 8))(v32, a6);
  v34;
  return v31;
}

unint64_t DenseMatrix.init(rowCount:columnCount:layout:repeating:)(unint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v13 = a4;
  (*(v6 + 16))(v11, a4, a5);
  v12 = a1;
  v11[1] = a2;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  ContiguousArray.init(repeating:count:)(v11, a2 * a1, a5);
  (*(v6 + 8))(v13, a5);
  return v12;
}

unint64_t DenseMatrix.init(rowCount:columnCount:layout:initializingWith:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  v10 = alloca(64);
  v11 = alloca(64);
  v13[2] = a6;
  v13[3] = a7;
  savedregs = a4;
  ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(v8, partial apply for closure #1 in DenseMatrix.init(rowCount:columnCount:layout:initializingWith:), v13, a6);
  return a1;
}

uint64_t partial apply for closure #1 in DenseMatrix.init(rowCount:columnCount:layout:initializingWith:)(uint64_t a1, unint64_t *a2)
{
  v4 = v3;
  v5 = *(v3 + 40);
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  result = (*(v4 + 32))();
  if (!v2)
  {
    v10 = v6;
    v9 = v7 * v6;
    if (!is_mul_ok(v7, v10))
    {
      BUG();
    }

    *a2 = v9;
  }

  return result;
}

uint64_t ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Array.init(_unsafeUninitializedCapacity:initializingWith:)();
  if (!v4)
  {
    v8 = v7;
    v7;
    v5 = _ArrayBuffer.requestNativeBuffer()(v8, a4);
    v8;
    if (!v5)
    {
      v12[0] = v8;
      v9 = type metadata accessor for Array(0, a4);
      WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v9);
      v5 = _copyCollectionToContiguousArray<A>(_:)(v12, v9, WitnessTable);
    }

    v8;
  }

  return v5;
}

void *DenseMatrix.subscript.read(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *a1 = a8;
  v9 = *(a8 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  a1[2] = malloc(v10);
  a1[3] = malloc(v10);
  if (a6)
  {
    v12 = a3;
    v11 = a4 * a3;
    if (!is_mul_ok(a4, v12))
    {
      BUG();
    }

    v13 = v11 + a2;
    if (__OFADD__(v11, a2))
    {
      BUG();
    }

    v14 = DenseMatrix.subscript.read;
  }

  else
  {
    v15 = a5 * a2;
    if (!is_mul_ok(a5, a2))
    {
      BUG();
    }

    v16 = __OFADD__(a3, v15);
    v13 = a3 + v15;
    if (v16)
    {
      BUG();
    }

    v14 = DenseMatrix.subscript.read;
  }

  ContiguousArray.subscript.getter(v13, a7, a8);
  return v14;
}

void DenseMatrix.subscript.read(void *a1)
{
  v1 = a1[3];
  (*(a1[1] + 8))(v1, *a1);
  v2 = a1[2];
  free(v1);
  free(v2);
}

void DenseMatrix.subscript.read(uint64_t a1)
{
  v1 = *(a1 + 16);
  (*(*(a1 + 8) + 8))(v1, *a1);
  free(*(a1 + 24));
  free(v1);
}

void (*DenseMatrix.subscript.modify(void *a1, unint64_t a2, unint64_t a3, uint64_t a4))(void (***a1)(void, void))
{
  v6 = malloc(0x30uLL);
  *a1 = v6;
  if (*(v4 + 16))
  {
    v8 = a3;
    v7 = *v4 * a3;
    if (!is_mul_ok(*v4, v8))
    {
      BUG();
    }

    v9 = v7 + a2;
    if (__OFADD__(v7, a2))
    {
      BUG();
    }

    v10 = DenseMatrix.subscript.modify;
    v15 = 40;
  }

  else
  {
    v11 = *(v4 + 8) * a2;
    if (!is_mul_ok(*(v4 + 8), a2))
    {
      BUG();
    }

    v12 = __OFADD__(a3, v11);
    v9 = a3 + v11;
    if (v12)
    {
      BUG();
    }

    v10 = Heap._UnsafeHandle.subscript.modify;
    v15 = 32;
  }

  v13 = type metadata accessor for ContiguousArray(0, *(a4 + 16));
  *&v6[v15] = ContiguousArray.subscript.modify(v6, v9, v13);
  return v10;
}

void DenseMatrix.subscript.modify(void (***a1)(void, void))
{
  v1 = *a1;
  v1[5](v1, 0);
  free(v1);
}

uint64_t DenseMatrix.subscript.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = DenseMatrix.subscript.read(v12, a1, a2, a3, a4, a5 & 1, a6, a7);
  (*(*(a7 - 8) + 16))(v8, v10, a7);
  return (v9)(v12, 0);
}

uint64_t DenseMatrix.subscript.setter(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = DenseMatrix.subscript.modify(v10, a2, a3, a4);
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v8, a1, v6);
  (v5)(v10, 0);
  return (*(v7 + 8))(a1, v6);
}

Swift::Void __swiftcall DenseMatrix.transpose()()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*v1 == v3)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      v20 = v0;
      v22 = 0;
      v4 = 0;
      while (1)
      {
        v5 = __OFADD__(1, v4);
        v6 = v4 + 1;
        if (v5)
        {
          BUG();
        }

        if (v2 < v6)
        {
          BUG();
        }

        if (v2 == v6)
        {
          break;
        }

        v7 = v2 * v22;
        if (!is_mul_ok(v2, v22))
        {
          BUG();
        }

        if (v6 >= v2)
        {
          BUG();
        }

        v21 = v6;
        do
        {
          if (__OFADD__(v6, v7))
          {
            BUG();
          }

          v18 = v6 + v7;
          v8 = v2 * v6;
          if (!is_mul_ok(v2, v6))
          {
            BUG();
          }

          v5 = __OFADD__(v22, v8);
          v9 = v22 + v8;
          if (v5)
          {
            BUG();
          }

          ++v6;
          v19 = v9;
          v10 = type metadata accessor for ContiguousArray(0, *(v20 + 16));
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v10);
          MutableCollection.swapAt(_:_:)(&v18, &v19, v10, WitnessTable);
        }

        while (v2 != v6);
        v4 = v21;
        v22 = v21;
      }
    }
  }

  else
  {
    v12 = DenseMatrix._transposed()(*v1, v3, *(v1 + 16), *(v1 + 24), *(v0 + 16), *(v0 + 24));
    v14 = v13;
    v16 = v15;
    v22 = v17;

    *v1 = v12;
    *(v1 + 8) = v14;
    *(v1 + 16) = v16 & 1;
    *(v1 + 24) = v22;
  }
}

unint64_t DenseMatrix._transposed()(unint64_t a1, int64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a4;
  LODWORD(v49) = a3;
  v50 = a2;
  v48 = a1;
  v45 = *(a5 - 8);
  v7 = *(v45 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v39 = a6;
  v10 = *(*(*(*(a6 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v10, a5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a5, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v36, a5, v10);
  v16 = v49 & 1;
  v17 = v48;
  result = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v50, v48, v16, &v36, a5);
  v41 = result;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  if (v17 < 0)
  {
    BUG();
  }

  if (v17)
  {
    v22 = v50;
    if (v50 < 0)
    {
      BUG();
    }

    v23 = v17;
    v51 = v16;
    v46 = &v36;
    v40 = a5;
    v24 = 0;
    v25 = a5;
    do
    {
      v26 = v47;
      v27 = v51;
      v28 = v24;
      if (v22)
      {
        v29 = 0;
        v49 = v24;
        do
        {
          v38 = v29 + 1;
          v30 = DenseMatrix.subscript.read(v37, v28, v29, v23, v50, v27, v26, v25);
          (*(v45 + 16))(v46, v31, v25);
          (v30)(v37, 0);
          v33 = type metadata accessor for DenseMatrix(0, v25, v39, v32);
          v34 = DenseMatrix.subscript.modify(v37, v29, v49, v33);
          (*(v45 + 40))(v35, v46, v25);
          (v34)(v37, 0);
          v27 = v51;
          v26 = v47;
          v28 = v49;
          v23 = v48;
          v22 = v50;
          v29 = v38;
        }

        while (v50 != v38);
      }

      v24 = v28 + 1;
    }

    while (v28 + 1 != v23);
    return v41;
  }

  return result;
}

uint64_t DenseMatrix.transposed()(uint64_t a1)
{
  v1 = DenseMatrix.Transpose.init(base:)(a1);

  return v1;
}

unint64_t static DenseMatrix.identity(rowCount:columnCount:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = a2;
  return DenseMatrix.init(rowCount:columnCount:layout:initializingWith:)(a1, a2, 0, partial apply for closure #1 in static DenseMatrix.identity(rowCount:columnCount:), v5, a3, a4);
}

unint64_t closure #1 in static DenseMatrix.identity(rowCount:columnCount:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v20 = a1;
  v21 = *(a4 - 8);
  v5 = *(v21 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v24 = &v18;
  v26 = *(a5 + 8);
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v26, a4, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = alloca(v8);
  result = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = alloca(result);
  v22 = &v18;
  v23 = a2;
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    if (v30 < 0)
    {
      BUG();
    }

    v29 = 0;
    v28 = 0;
    v12 = v22;
    do
    {
      if (v30)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v26, v25, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
        v13 = 0;
        do
        {
          v14 = v29 + v13;
          v18 = *v20;
          dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)(AssociatedTypeWitness, AssociatedConformanceWitness);
          v15 = v25;
          dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)(v12, v25, v26);
          result = (*(v21 + 40))(v18 + v14 * *(v21 + 72), v24, v15);
          v16 = __OFADD__(1, v14);
          v17 = v14 + 1;
          if (v16)
          {
            BUG();
          }

          ++v13;
        }

        while (v30 != v13);
      }

      else
      {
        v17 = v29;
      }

      v29 = v17;
      ++v28;
    }

    while (v28 != v23);
  }

  return result;
}

uint64_t static DenseMatrix.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (((a5 ^ a1 | a6 ^ a2) != 0) | (a7 ^ a3) & 1)
  {
    return 0;
  }

  else
  {
    return static ContiguousArray<A>.== infix(_:_:)(a4, a8, a9, *(*(*(a10 + 16) + 8) + 8));
  }
}

unint64_t protocol witness for Matrix.init(rowCount:columnCount:) in conformance DenseMatrix<A>(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = DenseMatrix.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), *(a3 + 24));
  *v4 = result;
  *(v4 + 8) = v6;
  *(v4 + 16) = 0;
  *(v4 + 24) = v7;
  return result;
}

uint64_t protocol witness for Matrix.transposed() in conformance DenseMatrix<A>(uint64_t a1)
{
  v3 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  result = DenseMatrix.transposed()(*v2);
  *v3 = result;
  *(v3 + 8) = v10;
  *(v3 + 16) = v11 & 1;
  *(v3 + 24) = v12;
  return result;
}

uint64_t protocol witness for Matrix.subscript.getter in conformance DenseMatrix<A>(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(a3 + 16);
  v7 = DenseMatrix.subscript.read(v10, a1, a2, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), v6);
  (*(*(v6 - 8) + 16))(v5, v8, v6);
  return (v7)(v10, 0);
}

uint64_t protocol witness for Matrix.subscript.setter in conformance DenseMatrix<A>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = DenseMatrix.subscript.modify(v10, a2, a3, a4);
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v8, a1, v6);
  (v5)(v10, 0);
  return (*(v7 + 8))(a1, v6);
}

void (*protocol witness for Matrix.subscript.modify in conformance DenseMatrix<A>(void *a1, unint64_t a2, unint64_t a3, uint64_t a4))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = DenseMatrix.subscript.modify(v5, a2, a3, a4);
  return protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>;
}

uint64_t DenseMatrix.withUnsafeMatrixPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a3;
  v18 = a4;
  v19 = a5 & 1;
  v20 = a6;
  v21 = a1;
  v22 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DenseMatrix.withUnsafeMatrixPointer<A>(_:), v13, a6, a7, a8, v10, &protocol self-conformance witness table for Error, v23);
  return v12;
}

void *closure #1 in DenseMatrix.withUnsafeMatrixPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void), uint64_t a8, uint64_t a9, int a10, int a11, void *a12)
{
  v13 = UnsafeBufferPointer.baseAddress.getter(a1, a2, a9);
  if (!v13)
  {
    BUG();
  }

  v14 = UnsafeMatrixPointer.init(start:rowCount:columnCount:layout:)(v13);
  result = a7(v14, v16, v17, v15 & 1);
  if (v12)
  {
    result = a12;
    *a12 = v12;
  }

  return result;
}

uint64_t DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v17 = a3;
  v18 = v4;
  v16[1] = a2;
  v16[2] = v5;
  v7 = v6;
  v19 = a1;
  v8 = *(a3 + 16);
  type metadata accessor for ContiguousArray(0, v8);
  v20 = v6 + 3;
  ContiguousArray._makeMutableAndUnique()();
  v9 = v6[3];
  v10 = *(v9 + 16);
  v11 = *(*(v8 - 8) + 80);
  v12 = v9 + ((v11 + 32) & ~v11);
  v15[0] = v12;
  v15[1] = v10;
  closure #1 in DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(v15, v7, a1, a2, v8, v21, *(v17 + 24), v16);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v15, v12, v10, v20, v8);
  return v14;
}

void *closure #1 in DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(void *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v10 = UnsafeMutableBufferPointer.baseAddress.getter(*a1, a1[1], a5);
  if (!v10)
  {
    BUG();
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = UnsafeMutableMatrixPointer.init(start:rowCount:columnCount:layout:)(v10);
  result = a3(v14, v16, v17, v15 & 1);
  if (v8)
  {
    result = a8;
    *a8 = v8;
  }

  return result;
}

void *closure #1 in DenseMatrix.withUnsafeVectorPointer<A>(row:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10, int a11, int a12, void *a13)
{
  v16 = a7;
  v17 = UnsafeBufferPointer.baseAddress.getter(a1, a2, a10);
  if (a5)
  {
    if (!v17)
    {
      BUG();
    }
  }

  else
  {
    if (!v17)
    {
      BUG();
    }

    v16 = a4 * a7;
    if (!is_mul_ok(a4, a7))
    {
      BUG();
    }
  }

  v18 = UnsafeVectorPointer.init(start:count:stride:)(*(*(a10 - 8) + 72) * v16 + v17);
  result = a8(v18, v19, v20);
  if (v13)
  {
    result = a13;
    *a13 = v13;
  }

  return result;
}

void *closure #1 in DenseMatrix.withUnsafeMutableVectorPointer<A>(row:_:)(void *a1, uint64_t *a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, int a7, int a8, void *a9)
{
  v12 = *(a2 + 16);
  v13 = UnsafeMutableBufferPointer.baseAddress.getter(*a1, a1[1], a6);
  if (v12)
  {
    if (!v13)
    {
      BUG();
    }

    v14 = *(*(a6 - 8) + 72) * a3 + v13;
    v15 = *a2;
    v16 = a2[1];
  }

  else
  {
    if (!v13)
    {
      BUG();
    }

    v17 = a2[1];
    v19 = a3;
    v18 = v17 * a3;
    if (!is_mul_ok(v17, v19))
    {
      BUG();
    }

    v14 = *(*(a6 - 8) + 72) * v18 + v13;
  }

  v20 = UnsafeMutableVectorPointer.init(start:count:stride:)(v14);
  result = a4(v20, v21, v22);
  if (v9)
  {
    result = a9;
    *a9 = v9;
  }

  return result;
}

uint64_t DenseMatrix.withUnsafeVectorPointer<A>(row:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, void, _BYTE *))
{
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v18 = a4;
  v19 = a5;
  v20 = a6 & 1;
  v21 = a7;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a11, v14, a7, a8, a9, v11, &protocol self-conformance witness table for Error, v25);
  return v13;
}

void *closure #1 in DenseMatrix.withUnsafeVectorPointer<A>(column:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10, int a11, int a12, void *a13)
{
  v16 = a7;
  v17 = UnsafeBufferPointer.baseAddress.getter(a1, a2, a10);
  if (a5)
  {
    if (!v17)
    {
      BUG();
    }

    v16 = a3 * a7;
    if (!is_mul_ok(a3, a7))
    {
      BUG();
    }
  }

  else if (!v17)
  {
    BUG();
  }

  v18 = UnsafeVectorPointer.init(start:count:stride:)(*(*(a10 - 8) + 72) * v16 + v17);
  result = a8(v18, v19, v20);
  if (v13)
  {
    result = a13;
    *a13 = v13;
  }

  return result;
}

uint64_t DenseMatrix.withUnsafeMutableVectorPointer<A>(row:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t *))
{
  v23 = a4;
  v20 = a3;
  v24 = v6;
  v21 = a2;
  v19 = a6;
  v22 = v7;
  v9 = v8;
  v27 = a5;
  v25 = a1;
  v10 = *(a4 + 16);
  type metadata accessor for ContiguousArray(0, v10);
  v26 = v8 + 24;
  ContiguousArray._makeMutableAndUnique()();
  v11 = *(v8 + 24);
  v12 = *(v11 + 16);
  v13 = *(*(v10 - 8) + 80);
  v14 = v11 + ((v13 + 32) & ~v13);
  v17[0] = v14;
  v17[1] = v12;
  v19(v17, v9, a1, a2, v20, v10, v27, *(v23 + 24), &v18);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v17, v14, v12, v26, v10);
  return v16;
}

void *closure #1 in DenseMatrix.withUnsafeMutableVectorPointer<A>(column:_:)(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, int a7, int a8, void *a9)
{
  v13 = *(a2 + 16);
  v14 = UnsafeMutableBufferPointer.baseAddress.getter(*a1, a1[1], a6);
  if (v13)
  {
    if (!v14)
    {
      BUG();
    }

    v16 = a3;
    v15 = *a2 * a3;
    if (!is_mul_ok(*a2, v16))
    {
      BUG();
    }

    v17 = *(*(a6 - 8) + 72) * v15 + v14;
  }

  else
  {
    if (!v14)
    {
      BUG();
    }

    v17 = *(*(a6 - 8) + 72) * a3 + v14;
    v18 = *a2;
    v19 = *(a2 + 8);
  }

  v20 = UnsafeMutableVectorPointer.init(start:count:stride:)(v17);
  result = a4(v20, v21, v22);
  if (v9)
  {
    result = a9;
    *a9 = v9;
  }

  return result;
}

char static DenseMatrix.+= infix(_:_:)(uint64_t a1, int64_t a2, int64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2;
  v10 = a1;
  v58 = a6;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  if (*a1 != a2 || *(a1 + 8) != a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, " of scalars, expected " + 0x8000000000000000, "LinearAlgebra/DenseMatrix.swift", 31, 2, 304, 0);
    BUG();
  }

  v15 = a4 & 1;
  result = *(a1 + 16);
  v57 = a5;
  v62 = v11;
  v64 = v54;
  if (result == v15)
  {
    v32 = a3 * a2;
    if (!is_mul_ok(a3, a2))
    {
      BUG();
    }

    v33 = (a1 + 24);
    if (v32 < 0)
    {
      BUG();
    }

    if (v32)
    {
      v34 = 0;
      v63 = a3 * a2;
      v35 = v58;
      v36 = v62;
      do
      {
        v67 = (v34 + 1);
        ContiguousArray.subscript.getter(v34, a5, v35);
        type metadata accessor for ContiguousArray(0, v35);
        v37 = v33;
        ContiguousArray._makeMutableAndUnique()();
        v38 = *v33;
        ContiguousArray._checkSubscript_mutating(_:)(v34);
        v39 = v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
        v33 = v37;
        v40 = v39 + *(v36 + 72) * v34;
        v41 = v64;
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v40, v64, v35, *(*(*(*(a7 + 16) + 16) + 8) + 8));
        (*(v36 + 8))(v41, v35);
        a5 = v57;
        result = v67;
        v34 = v67;
      }

      while (v63 != v67);
    }
  }

  else
  {
    v63 = a2;
    v56 = a3;
    if (result)
    {
      if (a3 < 0)
      {
        BUG();
      }

      if (a3)
      {
        v17 = 0;
        v18 = v54;
        v67 = a1;
        LODWORD(v61) = v15;
        v19 = v58;
        do
        {
          v20 = *v10;
          v21 = *v10 == 0;
          if (*v10 < 0)
          {
            BUG();
          }

          v55 = v17 + 1;
          v22 = v64;
          if (!v21)
          {
            v23 = 0;
            v60 = v20;
            v65 = v17;
            do
            {
              v59 = (v23 + 1);
              v66 = DenseMatrix.subscript.read(v18, v23, v65, v9, a3, v61, a5, v19);
              v24 = v22;
              v25 = v18;
              v26 = v22;
              v27 = v62;
              (*(v62 + 16))(v24, v28, v19);
              (v66)(v25, 0);
              v30 = type metadata accessor for DenseMatrix(0, v19, a7, v29);
              v66 = DenseMatrix.subscript.modify(v25, v23, v65, v30);
              dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v31, v26, v19, *(*(*(*(a7 + 16) + 16) + 8) + 8));
              (*(v27 + 8))(v26, v19);
              v22 = v26;
              v18 = v25;
              (v66)(v25, 0);
              a3 = v56;
              v9 = v63;
              a5 = v57;
              v23 = v59;
            }

            while (v60 != v59);
          }

          result = v55;
          v17 = v55;
          v10 = v67;
        }

        while (v55 != a3);
      }
    }

    else
    {
      if (a2 < 0)
      {
        BUG();
      }

      if (a2)
      {
        v42 = 0;
        v43 = v15;
        LODWORD(v60) = v15;
        v67 = a1;
        v44 = v64;
        v45 = v58;
        do
        {
          v46 = v10[1];
          if (v46 < 0)
          {
            BUG();
          }

          v61 = v42 + 1;
          if (v46)
          {
            v47 = 0;
            v66 = v46;
            v65 = v42;
            do
            {
              v59 = (v47 + 1);
              v48 = DenseMatrix.subscript.read(v54, v65, v47, v9, a3, v43, a5, v45);
              (*(v62 + 16))(v44, v49, v45);
              (v48)(v54, 0);
              v51 = type metadata accessor for DenseMatrix(0, v45, a7, v50);
              v52 = DenseMatrix.subscript.modify(v54, v65, v47, v51);
              dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v53, v44, v45, *(*(*(*(a7 + 16) + 16) + 8) + 8));
              (*(v62 + 8))(v44, v45);
              (v52)(v54, 0);
              v43 = v60;
              a3 = v56;
              v9 = v63;
              a5 = v57;
              v47 = v59;
            }

            while (v66 != v59);
          }

          result = v61;
          v42 = v61;
          v10 = v67;
        }

        while (v61 != v9);
      }
    }
  }

  return result;
}

uint64_t static DenseMatrix.+ infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int64_t a5, int64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13[0] = a1;
  v13[1] = a2;
  v14 = a3;
  v15 = a4;

  static DenseMatrix.+= infix(_:_:)(v13, a5, a6, a7 & 1, a8, a9, a10);
  return v13[0];
}

unint64_t static DenseMatrix.-= infix(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  result = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = alloca(result);
  v13 = &v21;
  if (*(a1 + 16) != (a4 & 1) || *a1 != a2 || *(a1 + 8) != a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002DLL, "ve the same shape." + 0x8000000000000000, "LinearAlgebra/DenseMatrix.swift", 31, 2, 338, 0);
    BUG();
  }

  v14 = a3 * a2;
  if (!is_mul_ok(a3, a2))
  {
    BUG();
  }

  v16 = (a1 + 24);
  if (v14 < 0)
  {
    BUG();
  }

  v23 = v16;
  if (v14)
  {
    v17 = 0;
    v24 = v14;
    v25 = a5;
    do
    {
      v22 = v17 + 1;
      ContiguousArray.subscript.getter(v17, a5, a6);
      type metadata accessor for ContiguousArray(0, a6);
      v18 = v13;
      v19 = v23;
      ContiguousArray._makeMutableAndUnique()();
      v20 = *v19;
      ContiguousArray._checkSubscript_mutating(_:)(v17);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v18, a6, *(*(*(*(a7 + 16) + 16) + 8) + 8));
      v13 = v18;
      (*(v8 + 8))(v18, a6);
      a5 = v25;
      result = v22;
      v17 = v22;
    }

    while (v24 != v22);
  }

  return result;
}

uint64_t static DenseMatrix.- infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13[0] = a1;
  v13[1] = a2;
  v14 = a3;
  v15 = a4;

  static DenseMatrix.-= infix(_:_:)(v13, a5, a6, a7 & 1, a8, a9, a10);
  return v13[0];
}

uint64_t static DenseMatrix<>.*= infix(_:_:)(unint64_t *a1)
{
  v2 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
  a1[3] = v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    a1[3] = v2;
  }

  v4 = a1[1] * *a1;
  if (!is_mul_ok(a1[1], *a1))
  {
    BUG();
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v4 > 0x7FFFFFFF)
  {
    BUG();
  }

  result = cblas_sscal_NEWLAPACK(v4, v2 + 4);
  a1[3] = v2;
  return result;
}

{
  v2 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
  a1[3] = v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    a1[3] = v2;
  }

  v4 = a1[1] * *a1;
  if (!is_mul_ok(a1[1], *a1))
  {
    BUG();
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v4 > 0x7FFFFFFF)
  {
    BUG();
  }

  result = cblas_dscal_NEWLAPACK(v4, v2 + 4);
  a1[3] = v2;
  return result;
}

unint64_t static DenseMatrix<>.* infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{

  if (!swift_isUniquelyReferenced_nonNull_native(a4))
  {
    a4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a4);
  }

  v6 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v6 > 0x7FFFFFFF)
  {
    BUG();
  }

  cblas_sscal_NEWLAPACK(v6, a4 + 4);
  return a1;
}

{

  if (!swift_isUniquelyReferenced_nonNull_native(a4))
  {
    a4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a4);
  }

  v6 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v6 > 0x7FFFFFFF)
  {
    BUG();
  }

  cblas_sscal_NEWLAPACK(v6, a4 + 4);
  return a1;
}

{

  if (!swift_isUniquelyReferenced_nonNull_native(a4))
  {
    a4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a4);
  }

  v6 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v6 > 0x7FFFFFFF)
  {
    BUG();
  }

  cblas_dscal_NEWLAPACK(v6, a4 + 4);
  return a1;
}

{

  if (!swift_isUniquelyReferenced_nonNull_native(a4))
  {
    a4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a4);
  }

  v6 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v6 > 0x7FFFFFFF)
  {
    BUG();
  }

  cblas_dscal_NEWLAPACK(v6, a4 + 4);
  return a1;
}

unint64_t static DenseMatrix<>./ infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{

  if (!swift_isUniquelyReferenced_nonNull_native(a4))
  {
    a4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a4);
  }

  v6 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v6 > 0x7FFFFFFF)
  {
    BUG();
  }

  cblas_sscal_NEWLAPACK(v6, a4 + 4);
  return a1;
}

{

  if (!swift_isUniquelyReferenced_nonNull_native(a4))
  {
    a4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a4);
  }

  v6 = a2 * a1;
  if (!is_mul_ok(a2, a1))
  {
    BUG();
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v6 > 0x7FFFFFFF)
  {
    BUG();
  }

  cblas_dscal_NEWLAPACK(v6, a4 + 4);
  return a1;
}

uint64_t static DenseMatrix<>.* infix(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8)
{
  v9 = a6 * a1;
  if (!is_mul_ok(a6, a1))
  {
    BUG();
  }

  v19 = a5;
  v18 = a2;
  v22 = a1;
  v14 = _ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSf_Tt1gq5(v9, 0.0);
  if (!swift_isUniquelyReferenced_nonNull_native(v14))
  {
    v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
  }

  v20 = v14;
  v21 = &v17;
  v25 = v14 + 4;
  v24 = a4 + 32;
  v23 = a8 + 32;

  v15 = v22;
  UnsafeMutableMatrixPointer<A>.addProduct(_:transposed:_:transposed:scaledBy:)(v24, v22, v18, a3 & 1, 0, v23, COERCE_DOUBLE(1065353216), v19, a6, a7 & 1, 0, v25, v22, a6, a3 & 1);

  return v15;
}

{
  v9 = a6 * a1;
  if (!is_mul_ok(a6, a1))
  {
    BUG();
  }

  v19 = a5;
  v18 = a2;
  v22 = a1;
  v14 = _ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSd_Tt1gq5(v9, 0.0);
  if (!swift_isUniquelyReferenced_nonNull_native(v14))
  {
    v14 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v14);
  }

  v20 = v14;
  v21 = &v17;
  v25 = v14 + 32;
  v24 = a4 + 32;
  v23 = a8 + 32;

  v15 = v22;
  UnsafeMutableMatrixPointer<A>.addProduct(_:transposed:_:transposed:scaledBy:)(v24, v22, v18, a3 & 1, 0, v23, 1.0, v19, a6, a7 & 1, 0, v25, v22, a6, a3 & 1);

  return v15;
}

uint64_t static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return static DenseMatrix<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSf_Tt1gq504_s13a9Algebra11c27MatrixVAASfRszrlE1moiyAA0C6d8VySfGACyv13G_AGtFZyAA013jk2E7luV7GzXEfU_ACySfGAA0cO0VySfGTf1nc_n);
}

{
  return static DenseMatrix<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSd_Tt1gq504_s13a9Algebra11c27MatrixVAASdRszrlE1moiyAA0C6d8VySdGACyv13G_AGtFZyAA013jk2E7luV7GzXEfU_ACySdGAA0cO0VySdGTf1nc_n);
}

uint64_t static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  return static DenseMatrix<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSf_Tt1gq504_s13a9Algebra11c27MatrixVAASfRszrlE1moiyAA0C6d11VySfGAG_ACyv10GtFZyAA013jk2E7luV7GzXEfU_ACySfGAA0cO0VySfGTf1nc_n);
}

{
  return static DenseMatrix<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSd_Tt1gq504_s13a9Algebra11c27MatrixVAASdRszrlE1moiyAA0C6d11VySdGAG_ACyv10GtFZyAA013jk2E7luV7GzXEfU_ACySdGAA0cO0VySdGTf1nc_n);
}

uint64_t static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v8 = a3 & 1;
  a5;
  a4;
  return a6(a1, a5, a1, a2, v8, a4);
}

uint64_t static DenseMatrix<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v8 = a4 & 1;
  a1;
  a5;
  return a6(a3, a1, a2, a3, v8, a5);
}

void static DenseMatrix.*= infix(_:_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1] * *a1;
  if (!is_mul_ok(a1[1], *a1))
  {
    BUG();
  }

  v5 = (a1 + 3);
  if (v4 < 0)
  {
    BUG();
  }

  if (v4)
  {
    v7 = 0;
    type metadata accessor for ContiguousArray(0, a3);
    ContiguousArray._makeMutableAndUnique()();
    ContiguousArray._makeMutableAndUnique()();
    do
    {
      ContiguousArray._makeMutableAndUnique()();
      v8 = *v5;
      ContiguousArray._checkSubscript_mutating(_:)(v7);
      dispatch thunk of static Numeric.*= infix(_:_:)(v8 + ((*(*(a3 - 8) + 80) + 32) & ~*(*(a3 - 8) + 80)) + *(*(a3 - 8) + 72) * v7++, a2, a3, *(*(*(a4 + 16) + 16) + 8));
    }

    while (v4 != v7);
  }
}

unint64_t static DenseMatrix.* infix(_:_:)(unint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v12 = a4;

  static DenseMatrix.*= infix(_:_:)(v10, a5, a6, a7);
  return v10[0];
}

unint64_t static DenseMatrix.* infix(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v11 = a5;

  static DenseMatrix.*= infix(_:_:)(v9, a1, a6, a7);
  return v9[0];
}

unint64_t static DenseMatrix./ infix(_:_:)(unint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v26 = a4;
  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v23 = a4;
  v28 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v28, a6, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v25 = *(a6 - 8);
  v12 = *(v25 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  v27 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, a6, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);

  dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)(AssociatedTypeWitness, AssociatedConformanceWitness);
  dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)(v21, a6, v28);
  v18 = v27;
  dispatch thunk of static FloatingPoint./ infix(_:_:)(v21, v24, a6, *(a7 + 16));
  v19 = *(v25 + 8);
  v19(v21, a6);
  static DenseMatrix.*= infix(_:_:)(v21, v18, a6, a7);
  v19(v18, a6);
  return v21[0];
}

unint64_t static DenseMatrix.* infix(_:_:)(unint64_t a1, os_log_s *a2, int a3, uint64_t a4, os_log_s *a5, os_log_s *a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v88 = a6;
  log = a5;
  v81 = a4;
  LODWORD(v95) = a3;
  v90 = a1;
  v86 = *(a9 - 8);
  v10 = *(v86 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v80 = v74;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v85 = v74;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v89 = v74;
  v17 = alloca(v10);
  v18 = alloca(v10);
  v87 = v74;
  v75 = *(*(*(a10 + 16) + 16) + 8);
  v82 = *(v75 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v82, a9, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v84 = v74;
  v22 = type metadata accessor for Logger(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v93 = a2;
  if (a2 != log)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000040, "ve the same shape and layout." + 0x8000000000000000, "LinearAlgebra/DenseMatrix.swift", 31, 2, 546, 0);
    BUG();
  }

  if (one-time initialization token for linearAlgebra != -1)
  {
    swift_once(&one-time initialization token for linearAlgebra, one-time initialization function for linearAlgebra);
  }

  v27 = __swift_project_value_buffer(v22, static Logger.linearAlgebra);
  (*(v23 + 16))(v74, v27, v22);
  v28 = Logger.logObject.getter();
  v94 = v23;
  v29 = v28;
  v30 = static os_log_type_t.error.getter();
  log = v29;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc(12, -1);
    v91 = v22;
    v32 = v31;
    v33 = swift_slowAlloc(32, -1);
    v77[0] = v33;
    *v32 = 136315138;
    v34 = _typeName(_:qualified:)(a9, 0);
    v92 = v74;
    v36 = v35;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v77);
    v36;
    v37 = log;
    _os_log_impl(&dword_0, log, v30, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v33, -1, -1;
    v32, -1, -1;

    v38 = v92;
    v39 = v91;
  }

  else
  {

    v38 = v74;
    v39 = v22;
  }

  (*(v94 + 8))(v38, v39);
  v40 = v82;
  v41 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v82, a9, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v43 = v84;
  v76 = AssociatedConformanceWitness;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, v41, AssociatedConformanceWitness);
  v44 = v87;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v43, a9, v40);
  v45 = v90;
  v46 = v88;
  result = DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v90, v88, 0, v44, a9);
  v77[0] = result;
  v77[1] = v48;
  v78 = v49;
  v79 = v50;
  v51 = v93;
  if (v45 < 0)
  {
    BUG();
  }

  if (v45)
  {
    if (v46 < 0)
    {
      BUG();
    }

    v52 = 0;
    LODWORD(v91) = v95 & 1;
    LODWORD(v92) = a7 & 1;
    do
    {
      v95 = v52;
      if (v46)
      {
        if (v51 < 0)
        {
          BUG();
        }

        v53 = 0;
        do
        {
          v94 = v53;
          v54 = v84;
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, v76);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v54, a9, v82);
          v56 = v81;
          if (v51)
          {
            v57 = 0;
            do
            {
              log = (v57 + 1);
              v58 = DenseMatrix.subscript.read(v74, v95, v57, v90, v51, v91, v56, a9);
              v59 = *(v86 + 16);
              v59(v85, v60, a9);
              (v58)(v74, 0);
              v61 = DenseMatrix.subscript.read(v74, v57, v94, v93, v88, v92, a8, a9);
              v59(v80, v62, a9);
              v63 = v80;
              (v61)(v74, 0);
              v64 = v75;
              dispatch thunk of static Numeric.* infix(_:_:)(v85, v63, a9, v75);
              v65 = *(v86 + 8);
              v65(v63, a9);
              v65(v85, a9);
              v66 = *(v64 + 8);
              v67 = v87;
              dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v89, v87, a9, v66);
              v65(v67, a9);
              v56 = v81;
              v51 = v93;
              v57 = log;
            }

            while (v93 != log);
          }

          v68 = v94;
          log = (v94 + 1);
          v69 = type metadata accessor for DenseMatrix(0, a9, a10, v55);
          v70 = DenseMatrix.subscript.modify(v74, v95, v68, v69);
          v71 = v89;
          v72 = v86;
          (*(v86 + 24))(v73, v89, a9);
          (v70)(v74, 0);
          (*(v72 + 8))(v71, a9);
          v53 = log;
          v51 = v93;
          v46 = v88;
        }

        while (log != v88);
      }

      v52 = v95 + 1;
    }

    while (v95 + 1 != v90);
    return v77[0];
  }

  return result;
}

uint64_t static DenseMatrix.* infix(_:_:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v62 = a4;
  LODWORD(v81) = a3;
  v68 = a2;
  v69 = a1;
  v72 = *(a6 - 8);
  v9 = *(v72 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v63 = v61;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v66 = v61;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v71 = v61;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v79 = v61;
  v64 = *(*(*(a7 + 16) + 16) + 8);
  v76 = *(v64 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v76, a6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v77 = v61;
  v21 = type metadata accessor for Logger(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = DenseVector.count.getter(a5, v7);
  if (v26 != v68)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000052, "right row count." + 0x8000000000000000, "LinearAlgebra/DenseMatrix.swift", 31, 2, 568, 0);
    BUG();
  }

  if (one-time initialization token for linearAlgebra != -1)
  {
    swift_once(&one-time initialization token for linearAlgebra, one-time initialization function for linearAlgebra);
  }

  v27 = __swift_project_value_buffer(v21, static Logger.linearAlgebra);
  v80 = v21;
  (*(v22 + 16))(v61, v27, v21);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  log = v28;
  *type = v29;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc(12, -1);
    AssociatedConformanceWitness = swift_slowAlloc(32, -1);
    v61[0] = AssociatedConformanceWitness;
    *v30 = 136315138;
    v31 = _typeName(_:qualified:)(v7, 0);
    v75 = v61;
    v74 = v22;
    v33 = v32;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v61);
    v33;
    v34 = log;
    _os_log_impl(&dword_0, log, type[0], "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v30, 0xCu);
    v35 = AssociatedConformanceWitness;
    __swift_destroy_boxed_opaque_existential_1Tm(AssociatedConformanceWitness);
    v35, -1, -1;
    v30, -1, -1;

    (*(v74 + 8))(v75, v80);
  }

  else
  {

    (*(v22 + 8))(v61, v80);
  }

  v36 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v76, v7, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, v36, AssociatedConformanceWitness);
  v37 = v79;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v77, v7, v76);
  v38 = v37;
  v39 = v69;
  result = DenseVector.init(repeating:count:)(v38, v69, v7);
  v65 = result;
  if (v39 < 0)
  {
    BUG();
  }

  if (v39)
  {
    v41 = 0;
    LODWORD(v74) = v81 & 1;
    v67 = a5;
    do
    {
      log = v41;
      v75 = (v41 + 1);
      v42 = v7;
      v43 = a5;
      v44 = v77;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v44, v42, v76);
      v45 = DenseVector.count.getter(v43, v42);
      if (v45 < 0)
      {
        BUG();
      }

      if (v45)
      {
        v46 = 0;
        v7 = v42;
        *type = v45;
        do
        {
          v80 = v46 + 1;
          v47 = DenseMatrix.subscript.read(v61, log, v46, v39, v68, v74, v62, v7);
          v48 = v72;
          v49 = v66;
          v81 = *(v72 + 16);
          v81(v66, v50, v7);
          v47(v61, 0);
          v51 = v63;
          DenseVector.subscript.getter();
          v52 = v49;
          v53 = v64;
          dispatch thunk of static Numeric.* infix(_:_:)(v52, v51, v7, v64);
          v54 = *(v48 + 8);
          v54(v51, v7);
          v54(v66, v7);
          v55 = *(v53 + 8);
          v56 = v79;
          dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v71, v79, v7, v55);
          v54(v56, v7);
          v39 = v69;
          v46 = v80;
        }

        while (*type != v80);
      }

      else
      {
        v81 = *(v72 + 16);
        v7 = v42;
      }

      v57 = v79;
      v58 = v71;
      v81(v79, v71, v7);
      v60 = type metadata accessor for DenseVector(0, v7, a7, v59);
      DenseVector.subscript.setter(v57, log, v60);
      (*(v72 + 8))(v58, v7);
      v41 = v75;
      a5 = v67;
    }

    while (v75 != v39);
    return v65;
  }

  return result;
}

uint64_t static DenseMatrix.* infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a5;
  LODWORD(v79) = a4;
  v68 = a2;
  v71 = *(a6 - 8);
  v9 = *(v71 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v62 = &v59;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v70 = &v59;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v78 = &v59;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v77 = &v59;
  v63 = *(*(*(a7 + 16) + 16) + 8);
  v75 = *(v63 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v75, a6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v76 = &v59;
  v21 = type metadata accessor for Logger(0);
  v81 = *(v21 - 8);
  v22 = *(v81 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v73 = a1;
  v25 = DenseVector.count.getter(a1, a6);
  if (v25 != v68)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004FLL, "tor element count." + 0x8000000000000000, "LinearAlgebra/DenseMatrix.swift", 31, 2, 588, 0);
    BUG();
  }

  v80 = a6;
  if (one-time initialization token for linearAlgebra != -1)
  {
    swift_once(&one-time initialization token for linearAlgebra, one-time initialization function for linearAlgebra);
  }

  v26 = v21;
  v27 = __swift_project_value_buffer(v21, static Logger.linearAlgebra);
  (*(v81 + 16))(&v59, v27, v21);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc(12, -1);
    log = v28;
    v31 = v30;
    v74 = swift_slowAlloc(32, -1);
    v60[0] = v74;
    *v31 = 136315138;
    v32 = _typeName(_:qualified:)(v80, 0);
    v72 = v26;
    v33 = a3;
    v35 = v34;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v60);
    v36 = v35;
    a3 = v33;
    v36;
    _os_log_impl(&dword_0, log, v29, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v31, 0xCu);
    v37 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v37, -1, -1;
    v31, -1, -1;

    v38 = v72;
  }

  else
  {

    v38 = v26;
  }

  (*(v81 + 8))(&v59, v38);
  v39 = v73;
  v40 = v80;
  v41 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v75, v80, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, v41, AssociatedConformanceWitness);
  v42 = v77;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v76, v40, v75);
  result = DenseVector.init(repeating:count:)(v42, a3, v40);
  v67 = result;
  if (a3 < 0)
  {
    BUG();
  }

  if (a3)
  {
    v44 = v40;
    v45 = 0;
    LODWORD(v74) = v79 & 1;
    v64 = a3;
    do
    {
      v79 = v45;
      v65 = v45 + 1;
      v46 = v76;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v46, v44, v75);
      v47 = DenseVector.count.getter(v39, v44);
      if (v47 < 0)
      {
        BUG();
      }

      if (v47)
      {
        v48 = 0;
        v44 = v80;
        v72 = v47;
        do
        {
          v81 = v48 + 1;
          DenseVector.subscript.getter();
          v49 = DenseMatrix.subscript.read(v60, v48, v79, v68, a3, v74, v61, v44);
          v50 = v71;
          v51 = v62;
          log = *(v71 + 16);
          (log)(v62, v52, v44);
          v49(v60, 0);
          v53 = v63;
          dispatch thunk of static Numeric.* infix(_:_:)(v70, v51, v44, v63);
          v54 = *(v50 + 8);
          v54(v51, v44);
          v54(v70, v44);
          v55 = v77;
          dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v78, v77, v44, *(v53 + 8));
          v54(v55, v44);
          a3 = v64;
          v39 = v73;
          v48 = v81;
        }

        while (v72 != v81);
      }

      else
      {
        log = *(v71 + 16);
        v44 = v80;
      }

      v56 = v77;
      (log)(v77, v78, v44);
      v58 = type metadata accessor for DenseVector(0, v44, a7, v57);
      DenseVector.subscript.setter(v56, v79, v58);
      (*(v71 + 8))(v78, v44);
      v45 = v65;
    }

    while (v65 != a3);
    return v67;
  }

  return result;
}

Swift::Void __swiftcall ContiguousArray._checkSubscript_mutating(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (*(v1 + 16) <= a1)
  {
    BUG();
  }
}

uint64_t initializeWithCopy for DenseMatrix(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  v3;
  return a1;
}

uint64_t assignWithCopy for DenseMatrix(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  v3;
  v4;
  return a1;
}

uint64_t assignWithTake for DenseMatrix(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for DenseMatrix(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 24) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for DenseMatrix(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 32) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 32) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * (a2 - 1);
    }
  }
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4, void (*a5)(void *, int64_t, void *))
{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Float>);
    v12 = swift_allocObject(v11, 4 * v7 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    v12[2] = v10;
    v12[3] = 2 * (v13 / 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a5(a4 + 4, v10, v12 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v12 + 4, a4 + 4, 4 * v10);
  }

  return v12;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v12 = swift_allocObject(v11, 8 * v7 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    v12[2] = v10;
    v12[3] = 2 * (v13 / 8);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a5(a4 + 4, v10, v12 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v12 + 4, a4 + 4, 8 * v10);
  }

  return v12;
}

uint64_t __swift_instantiateGenericMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  return swift_getGenericMetadata(a1, v6, a5);
}

uint64_t UpperStrictlyTriangularMatrix.storage.setter(uint64_t a1)
{
  result = *(v1 + 16);
  *(v1 + 16) = a1;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.rowStartIndices.setter(uint64_t a1)
{
  result = *(v1 + 24);
  *(v1 + 24) = a1;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.unordered.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v7 = type metadata accessor for ContiguousArray(0, a5);
  a3;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v7);
  return Array.init<A>(_:)(v10, a5, v7, WitnessTable);
}

unint64_t UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v31 = a2;
  v32 = a1;
  v5 = *(*(a3 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v26[1] = a4;
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v8, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v24, a3, v8);
  v14 = v32;
  v15 = static UpperStrictlyTriangularMatrix.dataSize(_:_:)(v32, v31);
  v29 = a3;
  v27 = ContiguousArray.init(repeating:count:)(v24, v15, a3);
  if (v14 < 0)
  {
    BUG();
  }

  if (v14)
  {
    v30 = _swiftEmptyArrayStorage;
    v16 = 0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v17 = v30;
    do
    {
      v26[0] = v16;
      closure #1 in UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)(v26, v31);
      v18 = v25;
      v30 = v17;
      v19 = v17[2];
      v20 = v17[3];
      if (v20 >> 1 <= v19)
      {
        v28 = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v19 + 1, 1);
        v18 = v28;
        v17 = v30;
      }

      ++v16;
      v17[2] = v19 + 1;
      v17[v19 + 4] = v18;
    }

    while (v32 != v16);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v21 = ContiguousArray.count.getter(v27, v29);
  if (!swift_isUniquelyReferenced_nonNull_native(v17))
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  }

  v22 = v17[2];
  if (v17[3] >> 1 <= v22)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17[3] >= 2uLL, v22 + 1, 1, v17, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  }

  v17[2] = v22 + 1;
  v17[v22 + 4] = v21;
  return v32;
}

unint64_t static UpperStrictlyTriangularMatrix.dataSize(_:_:)(unint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a2, 1);
  v3 = a2 - 1;
  if (v2)
  {
    BUG();
  }

  v5 = v3;
  v4 = a1 * v3;
  if (!is_mul_ok(a1, v5))
  {
    BUG();
  }

  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v7 = v6 * a1;
  if (!is_mul_ok(v6, a1))
  {
    BUG();
  }

  v2 = __OFSUB__(v4, v7 / 2);
  v9 = v4 - v7 / 2;
  if (v2)
  {
    BUG();
  }

  return v9;
}

unint64_t closure #1 in UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = static UpperStrictlyTriangularMatrix.dataSize(_:_:)(*a1, a2);
  v6 = __OFSUB__(v5, v4);
  result = v5 - v4;
  if (v6)
  {
    BUG();
  }

  *v3 = result;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.subscript.getter(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[1] = a4;
  v18[2] = a3;
  v22 = v8;
  v20 = a6;
  v19 = a5;
  v9 = *(a8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v9, a7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v21 = v18;
  UpperStrictlyTriangularMatrix.checkBounds(row:column:)(a1, a2);
  if (a1 >= a2)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a7, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v17 = v21;
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v17, a7, v9);
  }

  else
  {
    v14 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(a1, a2);
    return ContiguousArray.subscript.getter(v14, v19, a7);
  }
}

Swift::Void __swiftcall UpperStrictlyTriangularMatrix.checkBounds(row:column:)(Swift::Int row, Swift::Int column)
{
  if (row < 0 || row >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, "gularMatrix.swift" + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 61, 0);
    goto LABEL_8;
  }

  if (column < 0 || column >= v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, "Row out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, 2, 64, 0);
LABEL_8:
    BUG();
  }
}

Swift::Int __swiftcall UpperStrictlyTriangularMatrix.dataIndex(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (*(v2 + 16) <= a1)
  {
    BUG();
  }

  v3 = __OFSUB__(a2, 1);
  v4 = a2 - 1;
  if (v3)
  {
    BUG();
  }

  v3 = __OFADD__(*(v2 + 8 * a1 + 32), v4);
  v5 = *(v2 + 8 * a1 + 32) + v4;
  if (v3)
  {
    BUG();
  }

  return v5;
}

uint64_t UpperStrictlyTriangularMatrix.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v15 = v4[3];
  v8 = *(a4 + 16);
  UpperStrictlyTriangularMatrix.checkBounds(row:column:)(a2, a3);
  if (a2 >= a3)
  {
    v14 = 0;
    v13 = 2;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003BLL, "Column out of bounds." + 0x8000000000000000, "LinearAlgebra/UpperStrictlyTriangularMatrix.swift", 49, v13, 52, v14);
    BUG();
  }

  v9 = UpperStrictlyTriangularMatrix.dataIndex(_:_:)(a2, a3);
  type metadata accessor for ContiguousArray(0, v8);
  ContiguousArray._makeMutableAndUnique()();
  v10 = v4[2];
  ContiguousArray._checkSubscript_mutating(_:)(v9);
  v11 = *(v8 - 8);
  (*(v11 + 24))(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, a1, v8);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  return (*(v11 + 8))(a1, v8);
}

void (*UpperStrictlyTriangularMatrix.subscript.modify(void *a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v6 = malloc(0x40uLL);
  *a1 = v6;
  v6[3] = v4;
  v6[2] = a4;
  v6[1] = a3;
  *v6 = a2;
  v7 = *(a4 + 16);
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64);
  v6[6] = malloc(v9);
  v6[7] = malloc(v9);
  UpperStrictlyTriangularMatrix.subscript.getter(a2, a3, *v4, v4[1], v4[2], v4[3], v7, *(a4 + 24));
  return UpperStrictlyTriangularMatrix.subscript.modify;
}

void UpperStrictlyTriangularMatrix.subscript.modify(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v10 = v2[5];
    v5 = v2[4];
    v8 = v2[3];
    v9 = v2[2];
    v6 = *v2;
    v11 = v2[1];
    (*(v10 + 16))(v3, v4, v5);
    UpperStrictlyTriangularMatrix.subscript.setter(v3, v6, v11, v9);
    (*(v10 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[3];
    UpperStrictlyTriangularMatrix.subscript.setter((*a1)[7], *v2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t UpperStrictlyTriangularMatrix.transposed()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = LowerStrictlyTriangularMatrix.init(base:)(a1);

  a4;
  return v5;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  result = 1;
  if (!v2 || a1 == a2)
  {
    return result;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (v2 != 1)
  {
    v4 = 0;
    do
    {
      if (v4 + 1 >= v2)
      {
        BUG();
      }

      result = *(a1 + 4 * v4 + 36) == *(a2 + 4 * v4 + 36);
      if (*(a1 + 4 * v4 + 36) != *(a2 + 4 * v4 + 36))
      {
        break;
      }
    }

    while (v2 - 2 != v4++);
  }

  return result;
}

unint64_t protocol witness for Matrix.init(rowCount:columnCount:) in conformance UpperStrictlyTriangularMatrix<A>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = UpperStrictlyTriangularMatrix.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), *(a3 + 24));
  *v4 = result;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return result;
}

uint64_t protocol witness for Matrix.transposed() in conformance UpperStrictlyTriangularMatrix<A>(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = UpperStrictlyTriangularMatrix.transposed()(*v2, v2[1], v2[2], v2[3]);
  *v3 = result;
  v3[1] = v7;
  v3[2] = v8;
  v3[3] = v9;
  return result;
}

void (*protocol witness for Matrix.subscript.modify in conformance UpperStrictlyTriangularMatrix<A>(void *a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v6 = malloc(0x40uLL);
  *a1 = v6;
  v6[3] = a4;
  v6[2] = v4;
  v6[1] = a3;
  *v6 = a2;
  v7 = *(a4 + 16);
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64);
  v6[6] = malloc(v9);
  v6[7] = malloc(v9);
  UpperStrictlyTriangularMatrix.subscript.getter(a2, a3, *v4, v4[1], v4[2], v4[3], v7, *(a4 + 24));
  return protocol witness for Matrix.subscript.modify in conformance UpperStrictlyTriangularMatrix<A>;
}

void protocol witness for Matrix.subscript.modify in conformance UpperStrictlyTriangularMatrix<A>(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v10 = v2[5];
    v5 = v2[4];
    v8 = v2[3];
    v9 = v2[2];
    v6 = *v2;
    v11 = v2[1];
    (*(v10 + 16))(v3, v4, v5);
    UpperStrictlyTriangularMatrix.subscript.setter(v3, v6, v11, v8);
    (*(v10 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[2];
    UpperStrictlyTriangularMatrix.subscript.setter((*a1)[7], *v2, v2[1], v2[3]);
  }

  free(v4);
  free(v3);
  free(v2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UpperStrictlyTriangularMatrix<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + 1);
  v4 = *(a3 + 16);
  return static UpperStrictlyTriangularMatrix.__derived_struct_equals(_:_:)(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3], *(a3 + 16), *(a3 + 24));
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4, void (*a5)(void *, int64_t, void *))
{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v12 = swift_allocObject(v11, 8 * v7 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    v12[2] = v10;
    v12[3] = 2 * (v13 / 8);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a5(a4 + 4, v10, v12 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v12 + 4, a4 + 4, 8 * v10);
  }

  a4;
  return v12;
}

{
  v7 = a2;
  if (a3)
  {
    v8 = a4[3];
    if ((v8 >> 1) >= a2)
    {
      v7 = a4[3] >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v7 = v9;
      }
    }
  }

  v10 = a4[2];
  if (v7 <= v10)
  {
    v7 = a4[2];
  }

  if (v7)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int32>);
    v12 = swift_allocObject(v11, 4 * v7 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    v12[2] = v10;
    v12[3] = 2 * (v13 / 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a5(a4 + 4, v10, v12 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v12 + 4, a4 + 4, 4 * v10);
  }

  a4;
  return v12;
}

uint64_t initializeWithCopy for UpperStrictlyTriangularMatrix(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  v3;
  v4;
  return a1;
}

void *assignWithCopy for UpperStrictlyTriangularMatrix(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];
  v4 = a1[2];
  a1[2] = v3;
  v3;
  v4;
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;
  v5;
  v6;
  return a1;
}

uint64_t assignWithTake for UpperStrictlyTriangularMatrix(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 16) = a2[1];
  v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for UpperStrictlyTriangularMatrix(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 16) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for UpperStrictlyTriangularMatrix(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 32) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 32) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 2 * (a2 - 1);
    }
  }
}

_BOOL8 UnsafeMutableVectorPointer.initialize(repeating:)(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v16 = a2;
  v17 = a1;
  v15 = a5;
  v18 = *(a5 - 8);
  v6 = *(v18 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  if (!a4)
  {
    BUG();
  }

  v9 = 0;
  v10 = v15;
  while (1)
  {
    result = v9 <= v14;
    if (a4 > 0)
    {
      result = v9 >= v14;
    }

    if (result)
    {
      break;
    }

    v12 = a4 + v9;
    if (__OFADD__(a4, v9))
    {
      v12 = ((v9 + a4) >> 63) ^ 0x8000000000000000;
    }

    v13 = v16 + *(v18 + 72) * v9;
    (*(v18 + 16))(&v14, v17, v10);
    _sSpsRi_zrlE10initialize2toyxn_tF(&v14, v13, v10);
    v9 = v12;
  }

  return result;
}

uint64_t UnsafeMutableVectorPointer.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a1);
  if (!result)
  {
    BUG();
  }

  return result;
}

uint64_t UnsafeMutableVectorPointer.makeIterator()(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 * a2;
  if (!is_mul_ok(a3, a2))
  {
    BUG();
  }

  v6 = a1 + *(*(a4 - 8) + 72) * v4;
  return UnsafeVectorPointer.Iterator.init(baseAddress:end:stride:)(a1);
}

uint64_t UnsafeMutableVectorPointer._copyContents(initializing:)(uint64_t a1, Swift::Int a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  v47 = a2;
  v49 = a1;
  v45 = *(a6 - 8);
  v10 = *(v45 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v42 = &v39;
  v13 = *(*(type metadata accessor for Optional(0, a6) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v44 = &v39;
  v48 = a3;
  v39 = a3;
  v16 = a4;
  v40 = a4;
  v17 = a5;
  v41 = a5;
  v20 = type metadata accessor for UnsafeMutableVectorPointer(0, v6, v18, v19);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutableVectorPointer<A>, v20);
  if (Collection.isEmpty.getter(v20, WitnessTable))
  {
    v22 = UnsafeMutableVectorPointer.makeIterator()(v48, v16, v17, v6);
    UnsafeMutableBufferPointer.startIndex.getter(v49, v47, v6);
  }

  else
  {
    v46 = v17;
    offsetBy = v16;
    v23 = v49;
    v24 = v47;
    v25 = UnsafeMutableBufferPointer.baseAddress.getter(v49, v47, v6);
    if (!v25)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000030, "safeMutableVectorPointer.swift" + 0x8000000000000000, "LinearAlgebra/UnsafeMutableVectorPointer.swift", 46, 2, 109, 0);
      BUG();
    }

    v26 = v24;
    v27 = offsetBy;
    v28 = v46;
    if (v26 < offsetBy)
    {
      BUG();
    }

    if (v46 == 1)
    {
      UnsafeMutablePointer.initialize(from:count:)(v48, offsetBy, v25, v6);
    }

    else
    {
      v51 = v25;
      v39 = UnsafeMutableVectorPointer.makeIterator()(v48, offsetBy, v46, v6);
      v40 = v29;
      v41 = v30;
      v43 = type metadata accessor for UnsafeVectorPointer.Iterator(0, v6, v29, v30);
      v31 = v44;
      for (i = v45; ; v51 = *(i + 72) + v36)
      {
        UnsafeVectorPointer.Iterator.next()(v43);
        if (__swift_getEnumTagSinglePayload(v31, 1, v6) == 1)
        {
          break;
        }

        v33 = v6;
        v34 = v42;
        (*(i + 32))(v42, v31, v33);
        v35 = v34;
        v6 = v33;
        v36 = v51;
        _sSpsRi_zrlE10initialize2toyxn_tF(v35, v51, v6);
      }

      v23 = v49;
      v27 = offsetBy;
      v28 = v46;
    }

    if (!is_mul_ok(v28, v27))
    {
      BUG();
    }

    v51 = UnsafeVectorPointer.Iterator.init(baseAddress:end:stride:)(*(v45 + 72) * v28 * v27 + v48);
    v37 = UnsafeMutableBufferPointer.startIndex.getter(v23, v47, v6);
    v22 = v51;
    UnsafeMutableBufferPointer.index(_:offsetBy:)(v37, offsetBy);
  }

  return v22;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UnsafeMutableVectorPointer<A>(uint64_t a1)
{
  v3 = v1;
  result = UnsafeMutableVectorPointer.makeIterator()(*v2, *(v2 + 8), *(v2 + 16), *(a1 + 16));
  *v3 = result;
  v3[1] = v5;
  v3[2] = v6;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeMutableVectorPointer<A>(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 1);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutableVectorPointer<A>, a1);
  return Collection._copyToContiguousArray()(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance UnsafeMutableVectorPointer<A>(uint64_t *a1, uint64_t a2, Swift::Int a3, uint64_t a4)
{
  *a1 = UnsafeMutableVectorPointer._copyContents(initializing:)(a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(a4 + 16));
  a1[1] = v5;
  a1[2] = v6;
  return v7;
}

uint64_t UnsafeMutableVectorPointer.withContiguousStorageIfAvailable<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  if (a5 == 1)
  {
    v10 = UnsafeBufferPointer.init(start:count:)(a3, a4, a6);
    result = a1(v10, v11);
    if (v8)
    {
      return result;
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v13, 1, a7);
}

Swift::Int_optional __swiftcall UnsafeMutableVectorPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (offsetBy <= 0)
  {
    v4 = v3 <= 0;
    v5 = v3 > offsetBy;
  }

  else
  {
    v4 = v3 >= 0;
    v5 = v3 < offsetBy;
  }

  if (v5 && v4)
  {
    v6.is_nil = 1;
    v6.value = 0;
  }

  else
  {
    v6.value = _ + offsetBy;
    v6.is_nil = 0;
  }

  return v6;
}

void UnsafeMutableVectorPointer._failEarlyRangeCheck(_:bounds:)()
{
  ;
}

{
  ;
}

void (*UnsafeMutableVectorPointer.subscript.modify(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6))()
{
  v6 = a5 * a2;
  if (!is_mul_ok(a5, a2))
  {
    BUG();
  }

  v8 = *(*(a6 - 8) + 72) * v6;
  return MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
}

{
  v6 = a5 * a2;
  if (!is_mul_ok(a5, a2))
  {
    BUG();
  }

  v8 = *(*(a6 - 8) + 72) * v6;
  return MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
}

uint64_t UnsafeMutableVectorPointer.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  return UnsafeMutableVectorPointer.subscript.getter(a1, a2, a3, a4, a5);
}

{
  v6 = a4 * a1;
  if (!is_mul_ok(a4, a1))
  {
    BUG();
  }

  return (*(*(a5 - 8) + 16))(v5, *(*(a5 - 8) + 72) * v6 + a2, a5);
}

{
  return UnsafeMutableVectorPointer.subscript.getter(a1, a2, a3, a4, a5);
}

uint64_t UnsafeMutableVectorPointer.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  return UnsafeMutableVectorPointer.subscript.setter(a1, a2, a3, a4, a5, a6);
}

{
  v6 = a5 * a2;
  if (!is_mul_ok(a5, a2))
  {
    BUG();
  }

  return (*(*(a6 - 8) + 40))(*(*(a6 - 8) + 72) * v6 + a3, a1, a6);
}

{
  return UnsafeMutableVectorPointer.subscript.setter(a1, a2, a3, a4, a5, a6);
}

uint64_t UnsafeMutableVectorPointer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v15[0] = a1;
  v15[1] = a2;
  v8 = type metadata accessor for UnsafeMutableVectorPointer(0, a6, a3, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutableVectorPointer<A>, v8);
  Slice.init(base:bounds:)(v14, v15, v8, WitnessTable);
  result = v12;
  *v7 = v11;
  *(v7 + 16) = v12;
  *(v7 + 24) = v13;
  return result;
}

uint64_t UnsafeMutableVectorPointer.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v36 = a6;
  v39 = a4;
  v40 = *(a7 - 8);
  v7 = *(v40 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  *&v31[0] = a2;
  *(&v31[0] + 1) = a3;
  v30 = *(a1 + 4);
  v10 = *a1;
  v29 = a1[1];
  v28 = v10;
  v11 = type metadata accessor for UnsafeMutableVectorPointer(255, a7, a3, a7);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutableVectorPointer<A>, v11);
  v37 = v11;
  v13 = v11;
  v14 = type metadata accessor for Slice(0, v11, WitnessTable);
  Slice.startIndex.getter(v14);
  v30 = *(a1 + 4);
  v15 = *a1;
  v29 = a1[1];
  v38 = v14;
  Slice.endIndex.getter(v14, v13, v16, v17, v18, v19, v15, *(&v15 + 1), v29, *(&v29 + 1), v30);
  if (v35 < v32)
  {
    BUG();
  }

  *&v28 = v32;
  *(&v28 + 1) = v35;
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v21 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  zip<A, B>(_:_:)(v31, &v28, v20, v20, v21, v21);
  v31[0] = v32;
  v31[1] = v33;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Range<Int>, Range<Int>>);
  Zip2Sequence.makeIterator()(v22);
  while (1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Range<Int>, Range<Int>>.Iterator);
    result = Zip2Sequence.Iterator.next()(v23);
    if (v33)
    {
      break;
    }

    v25 = v32;
    v34 = *(a1 + 4);
    v26 = *a1;
    v33 = a1[1];
    v32 = v26;
    *&v31[0] = *(&v25 + 1);
    v27 = swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutableVectorPointer<A>, v37);
    Slice<>.subscript.getter(v31, v38, v27);
    if (!is_mul_ok(v36, v25))
    {
      BUG();
    }

    (*(v40 + 40))(v39 + *(v40 + 72) * v36 * v25, &v28, a7);
  }

  return result;
}

void (*UnsafeMutableVectorPointer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *a1, char a2)
{
  v10 = malloc(0xA8uLL);
  *a1 = v10;
  v10[20] = a7;
  v10[19] = a6;
  v10[18] = a5;
  v10[17] = a4;
  v10[16] = a3;
  v10[15] = a2;
  UnsafeMutableVectorPointer.subscript.getter(a2, a3, a4, a5, a6, a7);
  return UnsafeMutableVectorPointer.subscript.modify;
}

void UnsafeMutableVectorPointer.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 40;
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  v8 = *(v2 + 120);
  if (a2)
  {
    v3 = v2;
  }

  *(v3 + 32) = *(v2 + 112);
  v9 = *(v2 + 80);
  *(v3 + 16) = *(v2 + 96);
  *v3 = v9;
  UnsafeMutableVectorPointer.subscript.setter(v3, v8, v7, v6, v4, v5, v4);
  free(v2);
}

Swift::Void __swiftcall UnsafeMutableVectorPointer.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v17[0] = v2;
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  if (a1 != a2)
  {
    if (!is_mul_ok(v4, a1))
    {
      BUG();
    }

    if (!is_mul_ok(v4, a2))
    {
      BUG();
    }

    v13 = *(v7 + 72);
    v14 = v3 + v13 * v4 * a1;
    v15 = v3 + v13 * v4 * a2;
    v17[0] = v17;
    UnsafeMutablePointer.move()(v14);
    UnsafeMutablePointer.moveInitialize(from:count:)(v15, 1, v14, v6);
    v16 = v17[0];
    (*(v7 + 16))(v17, v17[0], v6);
    _sSpsRi_zrlE10initialize2toyxn_tF(v17, v15, v6);
    (*(v7 + 8))(v16, v6);
  }
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance UnsafeMutableVectorPointer<A>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  v6 = UnsafeMutableVectorPointer.subscript.modify(v10, *a2, *v4, a4, *(v4 + 16), v5);
  v7 = *(v5 - 8);
  (*(v7 + 24))(v8, a1, v5);
  (v6)(v10, 0);
  return (*(v7 + 8))(a1, v5);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableVectorPointer<A>(void *a1, unint64_t *a2, uint64_t a3))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = UnsafeMutableVectorPointer.subscript.modify(v5, *a2, *v3, v6, *(v3 + 16), *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableVectorPointer<A>(void *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v5 = malloc(0xA8uLL);
  *a1 = v5;
  v6 = *a2;
  v5[15] = *a2;
  v7 = a2[1];
  v5[16] = v7;
  v8 = *v3;
  v5[17] = *v3;
  v9 = v3[1];
  v5[18] = v9;
  v10 = v3[2];
  v5[19] = v10;
  v11 = *(a3 + 16);
  v5[20] = v11;
  UnsafeMutableVectorPointer.subscript.getter(v6, v7, v8, v9, v10, v11);
  return UnsafeMutableVectorPointer.subscript.modify;
}

void protocol witness for MutableCollection.swapAt(_:_:) in conformance UnsafeMutableVectorPointer<A>(Swift::Int *a1, Swift::Int *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[2];
  v6 = *(a3 + 16);
  UnsafeMutableVectorPointer.swapAt(_:_:)(*a1, *a2);
}

uint64_t UnsafeMutableVectorPointer.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = *(*(a4 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  if (v6[2] != 1)
  {
    return __swift_storeEnumTagSinglePayload(v7, 1, 1, a4);
  }

  v40 = *(a4 - 8);
  v39 = v7;
  v38 = a4;
  v33 = a1;
  v12 = *v6;
  v13 = v6[1];
  v14 = *(a3 + 16);
  v34 = a2;
  v15 = UnsafeMutableBufferPointer.init(start:count:)(v12, v13, v14);
  v35 = v5;
  v17 = v16;
  v28 = v15;
  v29 = v16;
  v36 = v14;
  v37 = UnsafeMutableBufferPointer.baseAddress.getter(v15, v16, v14);
  v41 = v27;
  v18 = v35;
  result = v33(&v28);
  if (!v18)
  {
    v30 = v37;
    v31 = v17;
    v20 = v29;
    v21 = v36;
    v32 = UnsafeMutableBufferPointer.baseAddress.getter(v28, v29, v36);
    v27[0] = v20;
    v22 = type metadata accessor for UnsafeMutablePointer(255, v21);
    v23 = type metadata accessor for Optional(0, v22);
    v27[1] = swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutablePointer<A>, v22);
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v23);
    if ((== infix<A, B>(_:_:)(&v30, &v31, &v32, v27, v23, &type metadata for Int, WitnessTable) & 1) == 0)
    {
      BUG();
    }

    v25 = v39;
    v26 = v38;
    (*(v40 + 32))(v39, v41, v38);
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance UnsafeMutableVectorPointer<A>(uint64_t **a1, unint64_t *a2, uint64_t a3))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = UnsafeMutableVectorPointer.subscript.read(v5, *a2, *v3, *(v3 + 8), *(v3 + 16), *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance <> InterspersedMapSequence<A, B>;
}

void (*UnsafeMutableVectorPointer.subscript.read(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6))(void *a1)
{
  *a1 = a6;
  v8 = *(a6 - 8);
  a1[1] = v8;
  a1[2] = malloc(*(v8 + 64));
  UnsafeMutableVectorPointer.subscript.getter(a2, a3, v9, a5, a6);
  return InterspersedSequence<>.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeMutableVectorPointer<A>(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  UnsafeMutableVectorPointer.subscript.getter(*a1, a1[1], *v3, v3[1], v3[2], *(a2 + 16));
  result = v8;
  *(v4 + 32) = v8;
  *(v4 + 16) = v7;
  *v4 = v6;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance UnsafeMutableVectorPointer<A>()
{
  v2 = v0;
  v3 = *(v1 + 8);
  result = UnsafeMutableVectorPointer.indices.getter();
  *v2 = 0;
  v2[1] = v5;
  return result;
}

Swift::Int protocol witness for Collection.index(after:) in conformance UnsafeMutableVectorPointer<A>(Swift::Int *a1)
{
  v2 = v1;
  result = UnsafeMutableVectorPointer.index(after:)(*a1);
  *v2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeMutableVectorPointer<A>(Swift::Int *a1)
{
  v2 = v1;
  result = UnsafeMutableVectorPointer.index(before:)(*a1);
  *v2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance UnsafeMutableVectorPointer<A>(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  result = UnsafeMutableVectorPointer.index(_:offsetBy:)(*a1, a2);
  *v3 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance UnsafeMutableVectorPointer<A>(Swift::Int *a1, Swift::Int a2, Swift::Int *a3)
{
  v4 = v3;
  v5 = UnsafeMutableVectorPointer.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v4 = v5.value;
  *(v4 + 8) = v5.is_nil;
  return v5.value;
}

uint64_t UnsafeMutableVectorPointer.init(rebasing:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *(a1 + 4);
  v22 = a1[1];
  v17 = *a1;
  v4 = type metadata accessor for UnsafeMutableVectorPointer(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutableVectorPointer<A>, v4);
  v6 = v4;
  v7 = type metadata accessor for Slice(0, v4, WitnessTable);
  Slice.base.getter(v7);
  v29 = *(a1 + 4);
  v23 = a1[1];
  v18 = *a1;
  Slice.startIndex.getter(v7);
  v30 = *(a1 + 4);
  v24 = a1[1];
  v19 = *a1;
  Slice.base.getter(v7);
  if (!is_mul_ok(v14, v16))
  {
    BUG();
  }

  v35 = *(*(a2 - 8) + 72) * v14 * v16 + v15;
  v31 = *(a1 + 4);
  v25 = a1[1];
  v20 = *a1;
  Slice.endIndex.getter(v7, v6, v8, v9, v10, v11);
  v32 = *(a1 + 4);
  v26 = a1[1];
  v21 = *a1;
  Slice.startIndex.getter(v7);
  v33 = *(a1 + 4);
  v12 = *a1;
  v27 = a1[1];
  Slice.base.getter(v7);
  return v35;
}

_BOOL8 UnsafeMutableVectorPointer.assign(repeating:)(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    BUG();
  }

  for (i = 0; ; i = v11)
  {
    result = i <= a3;
    if (a4 > 0)
    {
      result = i >= a3;
    }

    if (result)
    {
      break;
    }

    v11 = a4 + i;
    if (__OFADD__(a4, i))
    {
      v11 = ((i + a4) >> 63) ^ 0x8000000000000000;
    }

    (*(*(a5 - 8) + 24))(a2 + *(*(a5 - 8) + 72) * i, a1, a5);
  }

  return result;
}

uint64_t UnsafeMutableVectorPointer.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(60);
  v6._object = "l buffer pointer" + 0x8000000000000000;
  v6._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v6);
  v17[0] = a1;
  v7 = type metadata accessor for UnsafeMutablePointer(0, a4);
  DefaultStringInterpolation.appendInterpolation<A>(_:)(v17, v7);
  v6._countAndFlagsBits = 0x3A746E756F63202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v17[0] = a2;
  v8 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v10 = v9;
  v6._countAndFlagsBits = v8;
  v6._object = v9;
  String.append(_:)(v6);
  v10;
  v6._countAndFlagsBits = 0x656469727473202CLL;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v17[0] = a3;
  v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v13 = v12;
  v6._countAndFlagsBits = v11;
  v6._object = v12;
  String.append(_:)(v6);
  v13;
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t base witness table accessor for Collection in UnsafeMutableVectorPointer<A>(uint64_t a1)
{
  return swift_getWitnessTable(&protocol conformance descriptor for UnsafeMutableVectorPointer<A>, a1);
}

{
  return base witness table accessor for Collection in UnsafeMutableVectorPointer<A>(a1);
}

uint64_t getEnumTagSinglePayload for UnsafeMutableVectorPointer(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      v2 = -(*a1 != 0);
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for UnsafeMutableVectorPointer(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 2;
    if (a3 >= 2)
    {
      *(a1 + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *a1 = 0;
    }
  }
}

uint64_t DenseMatrix.IndexedSequence.makeIterator()(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  *(v4 + 32) = 0;
  *(v4 + 48) = 0;
  return a4;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.init(base:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = a3 & 1;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance DenseMatrix<A>.IndexedSequence()
{
  v2 = v0;
  DenseMatrix.IndexedSequence.makeIterator()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));

  result = v7;
  *(v2 + 48) = v7;
  *(v2 + 32) = v6;
  *(v2 + 16) = v5;
  *v2 = v4;
  return result;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v0[3];
  return v1;
}

uint64_t DenseMatrix.IndexedSequence.Iterator.next()(uint64_t a1)
{
  v33 = v1;
  v3 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, &type metadata for Int, &type metadata for Int, v3, "row column element ", 0);
  v5 = *(TupleTypeMetadata3 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v2[1];
  v14 = v2[5];
  if (v14 >= v13)
  {
    return __swift_storeEnumTagSinglePayload(v33, 1, 1, TupleTypeMetadata3);
  }

  v15 = v2[4];
  if (v15 >= *v2)
  {
    return __swift_storeEnumTagSinglePayload(v33, 1, 1, TupleTypeMetadata3);
  }

  v32 = *v2;
  v31 = v13;
  v29 = v5;
  v35 = v2 + 5;
  v36 = v2 + 4;
  v37 = v15;
  v16 = v2[3];
  v27 = v2[6];
  v34 = TupleTypeMetadata3;
  v28 = &v26;
  ContiguousArray.subscript.getter(v27, v16, v3);
  v17 = &v26 + *(v34 + 64);
  v26 = v37;
  v30 = &v26;
  v27 = v14;
  (*(v9 + 32))(v17, v28, v3);
  if (*(v2 + 16))
  {
    v18 = v37 + 1;
    v19 = v36;
    *v36 = v37 + 1;
    v20 = v35;
    if (v18 != v32)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v22 = v14 + 1;
  v19 = v35;
  *v35 = v22;
  v20 = v36;
  v23 = v22 == v31;
  v14 = v37;
  if (v23)
  {
LABEL_8:
    *v20 = v14 + 1;
    *v19 = 0;
  }

LABEL_9:
  v24 = v34;
  if (__OFADD__(1, v27))
  {
    BUG();
  }

  v2[6] = v27 + 1;
  v25 = v33;
  (*(v29 + 32))(v33, v30, v24);
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t initializeWithCopy for DenseMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v3;
  return a1;
}

uint64_t assignWithCopy for DenseMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  v3;
  v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for DenseMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for DenseMatrix.IndexedSequence.Iterator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 24) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for DenseMatrix.IndexedSequence.Iterator(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 56) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * (a2 - 1);
    }
  }
}

uint64_t protocol witness for Matrix.indexed() in conformance DenseMatrix<A>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void))
{
  v5 = v3;
  result = a3(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  *v5 = result;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8 & 1;
  *(v5 + 24) = v9;
  return result;
}

uint64_t LowerStrictlyTriangularMatrix.indexed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a3;
  a4;
  return a1;
}

{
  return LowerStrictlyTriangularMatrix.IndexedSequence.base.getter(a1, a2, a3, a4);
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 32) = 1;
  *(v4 + 40) = 0;
  a3;
  return a4;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.init(base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = 1;
  *(result + 40) = 0;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance LowerStrictlyTriangularMatrix<A>.IndexedSequence()
{
  v2 = v0;
  v3 = v1[3];
  LowerStrictlyTriangularMatrix.IndexedSequence.makeIterator()(*v1, v1[1], v1[2], v3);
  v3;

  result = v8;
  *(v2 + 48) = v8;
  *(v2 + 32) = v7;
  *(v2 + 16) = v6;
  *v2 = v5;
  return result;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v0[2];
  v3;
  return v1;
}

uint64_t LowerStrictlyTriangularMatrix.IndexedSequence.Iterator.next()(uint64_t a1)
{
  v25 = v1;
  v3 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, &type metadata for Int, &type metadata for Int, v3, "row column element ", 0);
  v5 = *(*(TupleTypeMetadata3 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v2[5];
  if (v12 >= v2[1])
  {
    return __swift_storeEnumTagSinglePayload(v25, 1, 1, TupleTypeMetadata3);
  }

  v13 = *v2;
  v14 = v2[4];
  if (v14 >= *v2)
  {
    return __swift_storeEnumTagSinglePayload(v25, 1, 1, TupleTypeMetadata3);
  }

  v24 = *(TupleTypeMetadata3 - 8);
  v27 = v2[2];
  v28 = v2[6];
  v23 = v13;
  v29 = TupleTypeMetadata3;
  v30 = &v23;
  v26 = &v23;

  ContiguousArray.subscript.getter(v28, v27, v3);

  v15 = v30;
  v16 = v30 + *(v29 + 64);
  *v30 = v14;
  v15[1] = v12;
  (*(v8 + 32))(v16, v26, v3);
  v17 = v14 + 1;
  v2[4] = v17;
  if (v17 == v23)
  {
    v2[5] = v12 + 1;
    v18 = __OFADD__(2, v12);
    v19 = v12 + 2;
    if (v18)
    {
      BUG();
    }

    v2[4] = v19;
  }

  if (__OFADD__(1, v28))
  {
    BUG();
  }

  v2[6] = v28 + 1;
  v20 = v25;
  v21 = v29;
  (*(v24 + 32))(v25, v30, v29);
  return __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
}

uint64_t initializeWithCopy for LowerStrictlyTriangularMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v3;
  v4;
  return a1;
}

void *assignWithCopy for LowerStrictlyTriangularMatrix.IndexedSequence.Iterator(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];
  v4 = a1[2];
  a1[2] = v3;
  v3;
  v4;
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;
  v5;
  v6;
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  return a1;
}

uint64_t assignWithTake for LowerStrictlyTriangularMatrix.IndexedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for LowerStrictlyTriangularMatrix.IndexedSequence.Iterator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 16) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for LowerStrictlyTriangularMatrix.IndexedSequence.Iterator(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 56) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 2 * (a2 - 1);
    }
  }
}

uint64_t protocol witness for Matrix.indexed() in conformance LowerStrictlyTriangularMatrix<A>()
{
  v2 = v0;
  result = LowerStrictlyTriangularMatrix.IndexedSequence.base.getter(*v1, v1[1], v1[2], v1[3]);
  *v2 = result;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  return result;
}

uint64_t DenseMatrix.Transpose.base.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = *(v4 + 24);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

void (*DenseMatrix.Transpose.subscript.read(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, char a6, __int128 a7))(void (***a1)(void, void))
{
  v9 = malloc(0x28uLL);
  *a1 = v9;
  v9[4] = DenseMatrix.subscript.read(v9, a3, a2, a4, a5, a6 & 1, a7, *(&a7 + 1));
  return DenseMatrix.Transpose.subscript.read;
}

void (*DenseMatrix.Transpose.subscript.modify(void *a1, unint64_t a2, unint64_t a3, uint64_t a4))(void (***a1)(void, void))
{
  v6 = malloc(0x28uLL);
  *a1 = v6;
  v8 = type metadata accessor for DenseMatrix(0, *(a4 + 16), *(a4 + 24), v7);
  v6[4] = DenseMatrix.subscript.modify(v6, a3, a2, v8);
  return DenseMatrix.Transpose.subscript.modify;
}

uint64_t DenseMatrix.Transpose.subscript.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = DenseMatrix.subscript.read(v12, a2, a1, a3, a4, a5 & 1, a6, a7);
  (*(*(a7 - 8) + 16))(v8, v10, a7);
  return (v9)(v12, 0);
}

uint64_t DenseMatrix.Transpose.subscript.setter(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = type metadata accessor for DenseMatrix(0, v5, *(a4 + 24), a4);
  v7 = DenseMatrix.subscript.modify(v11, a3, a2, v6);
  v8 = *(v5 - 8);
  (*(v8 + 24))(v9, a1, v5);
  (v7)(v11, 0);
  return (*(v8 + 8))(a1, v5);
}

unint64_t protocol witness for Matrix.init(rowCount:columnCount:) in conformance DenseMatrix<A>.Transpose(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = DenseMatrix.Transpose.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), *(a3 + 24));
  *v4 = result;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7 & 1;
  *(v4 + 24) = v8;
  return result;
}

uint64_t protocol witness for Matrix.transposed() in conformance DenseMatrix<A>.Transpose()
{
  v2 = v0;
  result = DenseMatrix.Transpose.transposed()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  *v2 = result;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5 & 1;
  *(v2 + 24) = v6;
  return result;
}

uint64_t protocol witness for Matrix.subscript.getter in conformance DenseMatrix<A>.Transpose(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(a3 + 16);
  v11 = *(a3 + 24);
  *(&v10 + 1) = v6;
  *&v10 = *(v4 + 24);
  v7 = DenseMatrix.Transpose.subscript.read(v12, a1, a2, *v4, *(v4 + 8), *(v4 + 16), v10);
  (*(*(v6 - 8) + 16))(v5, v8, v6);
  return (v7)(v12, 0);
}

uint64_t protocol witness for Matrix.subscript.setter in conformance DenseMatrix<A>.Transpose(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = DenseMatrix.Transpose.subscript.modify(v10, a2, a3, a4);
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v8, a1, v6);
  (v5)(v10, 0);
  return (*(v7 + 8))(a1, v6);
}

void (*protocol witness for Matrix.subscript.modify in conformance DenseMatrix<A>.Transpose(void *a1, unint64_t a2, unint64_t a3, uint64_t a4))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = DenseMatrix.Transpose.subscript.modify(v5, a2, a3, a4);
  return protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DenseMatrix<A>.Transpose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v4[8] = *(a3 + 16);
  *v4 = *(a2 + 24);
  return static DenseMatrix.Transpose.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *v4, *(a3 + 24));
}

uint64_t static DenseMatrix.Transpose.* infix(_:_:)(os_log_s *a1, os_log_s *a2, char a3, uint64_t a4, unint64_t a5, os_log_s *a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = static DenseMatrix.* infix(_:_:)(a5, a6, a7 & 1, a8, a1, a2, a3 & 1, a4, a9, a10);
  v11 = DenseMatrix.transposed()(v10);

  return v11;
}

uint64_t static DenseMatrix.Transpose.* infix(_:_:)(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a4;
  LODWORD(v83) = a3;
  v76 = a2;
  v71 = a1;
  v74 = *(a6 - 8);
  v9 = *(v74 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v65 = &v62;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v69 = &v62;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v73 = &v62;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v82 = &v62;
  v66 = *(*(*(a7 + 16) + 16) + 8);
  v79 = *(v66 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v79, a6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v80 = &v62;
  v21 = type metadata accessor for Logger(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = DenseVector.count.getter(a5, a6);
  if (v26 != v71)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000052, "right row count." + 0x8000000000000000, "LinearAlgebra/DenseMatrix+Transpose.swift", 41, 2, 123, 0);
    BUG();
  }

  if (one-time initialization token for linearAlgebra != -1)
  {
    swift_once(&one-time initialization token for linearAlgebra, one-time initialization function for linearAlgebra);
  }

  v27 = __swift_project_value_buffer(v21, static Logger.linearAlgebra);
  v84 = v21;
  (*(v22 + 16))(&v62, v27, v21);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  log = v28;
  *type = v29;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc(12, -1);
    AssociatedConformanceWitness = swift_slowAlloc(32, -1);
    v63[0] = AssociatedConformanceWitness;
    *v30 = 136315138;
    v31 = _typeName(_:qualified:)(a6, 0);
    v78 = &v62;
    v77 = v22;
    v33 = v32;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v63);
    v33;
    v34 = log;
    _os_log_impl(&dword_0, log, type[0], "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v30, 0xCu);
    v35 = AssociatedConformanceWitness;
    __swift_destroy_boxed_opaque_existential_1Tm(AssociatedConformanceWitness);
    v35, -1, -1;
    v30, -1, -1;

    (*(v77 + 8))(v78, v84);
  }

  else
  {

    (*(v22 + 8))(&v62, v84);
  }

  v36 = v76;
  v37 = v83;
  LOBYTE(v37) = v83 & 1;
  LODWORD(v83) = v37;
  v38 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v79, a6, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, v38, AssociatedConformanceWitness);
  v39 = v82;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v80, a6, v79);
  result = DenseVector.init(repeating:count:)(v39, v36, a6);
  v68 = result;
  if (v36 < 0)
  {
    BUG();
  }

  if (v36)
  {
    v41 = 0;
    LODWORD(v77) = v83;
    v42 = v74;
    v67 = a6;
    v70 = a5;
    do
    {
      v84 = v41;
      v78 = (v41 + 1);
      v43 = a5;
      v44 = v80;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
      v45 = v67;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v44, v67, v79);
      v46 = DenseVector.count.getter(v43, v45);
      if (v46 < 0)
      {
        BUG();
      }

      v47 = v45;
      if (v46)
      {
        v48 = 0;
        *type = v46;
        do
        {
          v83 = v48 + 1;
          v49 = DenseMatrix.subscript.read(v63, v48, v84, v71, v36, v77, v64, v47);
          v50 = v74;
          v51 = v69;
          log = *(v74 + 16);
          (log)(v69, v52, v47);
          v49(v63, 0);
          v53 = v65;
          DenseVector.subscript.getter();
          v54 = v51;
          v55 = v66;
          dispatch thunk of static Numeric.* infix(_:_:)(v54, v53, v47, v66);
          v56 = *(v50 + 8);
          v56(v53, v47);
          v56(v69, v47);
          v57 = v82;
          dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v73, v82, v47, *(v55 + 8));
          v56(v57, v47);
          v36 = v76;
          v48 = v83;
        }

        while (*type != v83);
      }

      else
      {
        log = *(v42 + 16);
      }

      v58 = v82;
      v59 = v73;
      (log)(v82, v73, v47);
      v61 = type metadata accessor for DenseVector(0, v47, a7, v60);
      DenseVector.subscript.setter(v58, v84, v61);
      v42 = v74;
      (*(v74 + 8))(v59, v47);
      v41 = v78;
      a5 = v70;
    }

    while (v78 != v36);
    return v68;
  }

  return result;
}

uint64_t static DenseMatrix.Transpose.* infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a5;
  LODWORD(v80) = a4;
  v68 = a3;
  v69 = a2;
  v74 = *(a6 - 8);
  v8 = *(v74 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v63 = v61;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v72 = v61;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v73 = v61;
  v15 = alloca(v8);
  v16 = alloca(v8);
  v78 = v61;
  v64 = *(*(*(a7 + 16) + 16) + 8);
  v77 = *(v64 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v77, a6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v71 = v61;
  v20 = type metadata accessor for Logger(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v82 = a6;
  v25 = DenseVector.count.getter(a1, a6);
  if (v25 != v68)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004FLL, "tor element count." + 0x8000000000000000, "LinearAlgebra/DenseMatrix+Transpose.swift", 41, 2, 143, 0);
    BUG();
  }

  v67 = a1;
  if (one-time initialization token for linearAlgebra != -1)
  {
    swift_once(&one-time initialization token for linearAlgebra, one-time initialization function for linearAlgebra);
  }

  v26 = __swift_project_value_buffer(v20, static Logger.linearAlgebra);
  v81 = v20;
  (*(v21 + 16))(v61, v26, v20);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc(12, -1);
    v76 = swift_slowAlloc(32, -1);
    v61[0] = v76;
    *v29 = 136315138;
    log = v27;
    v30 = v82;
    v31 = _typeName(_:qualified:)(v82, 0);
    v75 = v21;
    v33 = v32;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v61);
    v33;
    _os_log_impl(&dword_0, log, v28, "Using a slow implementation of matrix multiplication for %s. Prefer using Float or Double.", v29, 0xCu);
    v34 = v76;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v34, -1, -1;
    v29, -1, -1;

    (*(v75 + 8))(v61, v81);
  }

  else
  {

    (*(v21 + 8))(v61, v81);
    v30 = v82;
  }

  v35 = v80;
  LOBYTE(v35) = v80 & 1;
  LODWORD(v80) = v35;
  v36 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v77, v30, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v38 = v71;
  v65 = AssociatedConformanceWitness;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, v36, AssociatedConformanceWitness);
  v39 = v78;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v38, v30, v77);
  v40 = v39;
  v41 = v69;
  result = DenseVector.init(repeating:count:)(v40, v69, v30);
  v66 = result;
  if (v41 < 0)
  {
    BUG();
  }

  if (v41)
  {
    v43 = 0;
    LODWORD(v75) = v80;
    v44 = v82;
    do
    {
      v45 = v43;
      v76 = (v43 + 1);
      v46 = v71;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, v65);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(v46, v44, v77);
      v47 = DenseVector.count.getter(v67, v44);
      if (v47 < 0)
      {
        BUG();
      }

      v82 = v45;
      if (v47)
      {
        v48 = 0;
        log = v47;
        do
        {
          v80 = (v48 + 1);
          DenseVector.subscript.getter();
          v49 = DenseMatrix.subscript.read(v61, v82, v48, v41, v68, v75, v62, v44);
          v50 = v74;
          v51 = v63;
          v81 = *(v74 + 16);
          v81(v63, v52, v44);
          v49(v61, 0);
          v53 = v64;
          dispatch thunk of static Numeric.* infix(_:_:)(v72, v51, v44, v64);
          v54 = *(v50 + 8);
          v54(v51, v44);
          v54(v72, v44);
          v55 = *(v53 + 8);
          v56 = v78;
          dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v73, v78, v44, v55);
          v54(v56, v44);
          v41 = v69;
          v48 = v80;
        }

        while (log != v80);
      }

      else
      {
        v81 = *(v74 + 16);
      }

      v57 = v78;
      v58 = v73;
      v81(v78, v73, v44);
      v60 = type metadata accessor for DenseVector(0, v44, a7, v59);
      DenseVector.subscript.setter(v57, v82, v60);
      (*(v74 + 8))(v58, v44);
      v43 = v76;
    }

    while (v76 != v41);
    return v66;
  }

  return result;
}

uint64_t static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (!is_mul_ok(a2, a5))
  {
    BUG();
  }

  v15 = a1;
  v14 = a6;
  v16 = a5;
  v10 = _ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSf_Tt1gq5(a2 * a5, 0.0);
  if (!swift_isUniquelyReferenced_nonNull_native(v10))
  {
    v10 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v10);
  }

  v18 = v10;
  v17 = &v13;
  v21 = v10 + 4;
  v20 = a8 + 32;
  v19 = a4 + 32;

  v11 = v16;
  UnsafeMutableMatrixPointer<A>.addProduct(_:transposed:_:transposed:scaledBy:)(v20, v16, v14, a7 & 1, 0, v19, COERCE_DOUBLE(1065353216), v15, a2, a3 & 1, 0, v21, v16, a2, a7 & 1);

  return v11;
}

{
  if (!is_mul_ok(a2, a5))
  {
    BUG();
  }

  v15 = a1;
  v14 = a6;
  v16 = a5;
  v10 = _ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSd_Tt1gq5(a2 * a5, 0.0);
  if (!swift_isUniquelyReferenced_nonNull_native(v10))
  {
    v10 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v10);
  }

  v18 = v10;
  v17 = &v13;
  v21 = v10 + 32;
  v20 = a8 + 32;
  v19 = a4 + 32;

  v11 = v16;
  UnsafeMutableMatrixPointer<A>.addProduct(_:transposed:_:transposed:scaledBy:)(v20, v16, v14, a7 & 1, 0, v19, 1.0, v15, a2, a3 & 1, 0, v21, v16, a2, a7 & 1);

  return v11;
}

uint64_t static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return static DenseMatrix.Transpose<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSf_Tt1gq504_s13a9Algebra11c38MatrixV9TransposeVAASfRszrlE1moiyAA0C6d8VySfGAEyx14_G_AItFZyAA013jk2F7lwX7GzXEfU_ACySfGAA0cO0V0Q0VySf_GTf1nc_n);
}

{
  return static DenseMatrix.Transpose<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSd_Tt1gq504_s13a9Algebra11c38MatrixV9TransposeVAASdRszrlE1moiyAA0C6d8VySdGAEyx14_G_AItFZyAA013jk2F7lwX7GzXEfU_ACySdGAA0cO0V0Q0VySd_GTf1nc_n);
}

uint64_t static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  return static DenseMatrix.Transpose<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSf_Tt1gq504_s13a9Algebra11c38MatrixV9TransposeVAASfRszrlE1moiyAA0C6d11VySfGAI_AEyx11_GtFZyAA013jk2F7lwX7GzXEfU_ACySfGAA0cO0V0Q0VySf_GTf1nc_n);
}

{
  return static DenseMatrix.Transpose<>.* infix(_:_:)(a1, a2, a3, a4, a5, _s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSd_Tt1gq504_s13a9Algebra11c38MatrixV9TransposeVAASdRszrlE1moiyAA0C6d11VySdGAI_AEyx11_GtFZyAA013jk2F7lwX7GzXEfU_ACySdGAA0cO0V0Q0VySd_GTf1nc_n);
}

uint64_t static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v8 = a3 & 1;
  a5;
  a4;
  return a6(a2, a5, a1, a2, v8, a4);
}

uint64_t static DenseMatrix.Transpose<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v8 = a4 & 1;
  a1;
  a5;
  return a6(a2, a1, a2, a3, v8, a5);
}

uint64_t MatrixLayout.debugDescription.getter(char a1)
{
  result = 0x6F6A616D2D776F72;
  if (a1)
  {
    return 0x6D2D6E6D756C6F63;
  }

  return result;
}

char MatrixLayout.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x726F6A614D776F72 | a2 ^ 0xE800000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x726F6A614D776F72, 0xE800000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x614D6E6D756C6F63 | a2 ^ 0xEB00000000726F6ALL)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x614D6E6D756C6F63, 0xEB00000000726F6ALL, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

uint64_t MatrixLayout.CodingKeys.stringValue.getter(char a1)
{
  result = 0x726F6A614D776F72;
  if (a1)
  {
    return 0x614D6E6D756C6F63;
  }

  return result;
}

char protocol witness for CodingKey.init(stringValue:) in conformance MatrixLayout.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MatrixLayout.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(stringValue:) in conformance MatrixLayout.RowMajorCodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MatrixLayout.RowMajorCodingKeys.init(stringValue:)(a1, a2) & 1;
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(intValue:) in conformance MatrixLayout.RowMajorCodingKeys()
{
  v1 = v0;
  result = protocol witness for static Equatable.== infix(_:_:) in conformance MLHandActionClassifier.ModelParameters.ModelAlgorithmType() & 1;
  *v1 = result;
  return result;
}

uint64_t MatrixLayout.encode(to:)(void *a1, int a2)
{
  v32 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MatrixLayout.ColumnMajorCodingKeys>);
  v24 = *(v25 - 8);
  v2 = *(v24 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v26 = &v23;
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MatrixLayout.RowMajorCodingKeys>);
  v28 = *(v27 - 8);
  v5 = *(v28 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v23;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MatrixLayout.CodingKeys>);
  v31 = *(v30 - 8);
  v8 = *(v31 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v11);
  v13 = lazy protocol witness table accessor for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_396C98, &unk_396C98, v13, v11, v12);
  if (v32)
  {
    v33 = 1;
    v14 = lazy protocol witness table accessor for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys();
    v15 = v26;
    v16 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(&unk_396CD8, &v33, v30, &unk_396CD8, v14);
    v17 = v15;
    v18 = v25;
    v19 = v24;
  }

  else
  {
    v34[0] = 0;
    v20 = lazy protocol witness table accessor for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys();
    v21 = v29;
    v16 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(&unk_396CB8, v34, v30, &unk_396CB8, v20);
    v17 = v21;
    v18 = v27;
    v19 = v28;
  }

  (*(v19 + 8))(v17, v18);
  return (*(v31 + 8))(&v23, v16);
}

uint64_t lazy protocol witness table accessor for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.CodingKeys, &unk_396C98);
    lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.CodingKeys, &unk_396C98);
    lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.CodingKeys, &unk_396C98);
    lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.CodingKeys, &unk_396C98);
    lazy protocol witness table cache variable for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys()
{
  result = lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.ColumnMajorCodingKeys, &unk_396CD8);
    lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.ColumnMajorCodingKeys, &unk_396CD8);
    lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.ColumnMajorCodingKeys, &unk_396CD8);
    lazy protocol witness table cache variable for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys()
{
  result = lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.RowMajorCodingKeys, &unk_396CB8);
    lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.RowMajorCodingKeys, &unk_396CB8);
    lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys;
  if (!lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout.RowMajorCodingKeys, &unk_396CB8);
    lazy protocol witness table cache variable for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys = result;
  }

  return result;
}

char MatrixLayout.init(from:)(void *a1)
{
  v50 = v1;
  v2 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MatrixLayout.ColumnMajorCodingKeys>);
  v43 = *(v44 - 8);
  v3 = *(v43 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v48 = &v42;
  v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MatrixLayout.RowMajorCodingKeys>);
  v45 = *(v46 - 8);
  v6 = *(v45 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v42 = &v42;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MatrixLayout.CodingKeys>);
  v47 = *(v55 - 8);
  v9 = *(v47 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v12);
  v13 = lazy protocol witness table accessor for type MatrixLayout.CodingKeys and conformance MatrixLayout.CodingKeys();
  v49 = &v42;
  v14 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_396C98, &unk_396C98, v13, v12, v51);
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  v51 = a1;
  v15 = KeyedDecodingContainer.allKeys.getter(v55);
  v16 = *(v15 + 16);
  if (!v16)
  {
    v52 = v15;
    goto LABEL_8;
  }

  v50 = 0;
  v56 = *(v15 + 32);
  v17 = v15;
  v18 = specialized ArraySlice.subscript.getter(1, v16, v15, v15 + 32, 0, 2 * v16 + 1);
  v20 = v19;
  v22 = v21;
  v17;
  v23 = v47;
  v52 = v18;
  if (v20 != v22 >> 1)
  {
LABEL_8:
    v48 = type metadata accessor for DecodingError(0);
    v50 = swift_allocError(v48, &protocol witness table for DecodingError, 0, 0);
    v32 = v31;
    v33 = v31 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (@thick Any.Type, DecodingError.Context)) + 48);
    *v32 = &type metadata for MatrixLayout;
    v34 = v55;
    v35 = v49;
    v36 = KeyedDecodingContainer.codingPath.getter(v55);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)(v36, 0xD00000000000002BLL, "nseMatrix+Transpose.swift" + 0x8000000000000000, 0);
    v37 = enum case for DecodingError.typeMismatch(_:);
    (*(*(v48 - 1) + 104))(v32, enum case for DecodingError.typeMismatch(_:));
    swift_willThrow(v32, v37);
    swift_unknownObjectRelease(v52);
    (*(v47 + 8))(v35, v34);
LABEL_11:
    v2 = v51;
    return __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  if (!v56)
  {
    v54 = 0;
    v38 = lazy protocol witness table accessor for type MatrixLayout.RowMajorCodingKeys and conformance MatrixLayout.RowMajorCodingKeys();
    v39 = v42;
    v26 = v49;
    v40 = v50;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(&unk_396CB8, &v54, v55, &unk_396CB8, v38);
    if (!v40)
    {
      v28 = v39;
      v29 = v46;
      v30 = v45;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v53 = 1;
  v24 = lazy protocol witness table accessor for type MatrixLayout.ColumnMajorCodingKeys and conformance MatrixLayout.ColumnMajorCodingKeys();
  v25 = v48;
  v26 = v49;
  v27 = v50;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(&unk_396CD8, &v53, v55, &unk_396CD8, v24);
  if (v27)
  {
LABEL_10:
    swift_unknownObjectRelease(v52);
    (*(v23 + 8))(v26, v55);
    goto LABEL_11;
  }

  v28 = v25;
  v29 = v44;
  v30 = v43;
LABEL_14:
  (*(v30 + 8))(v28, v29);
  swift_unknownObjectRelease(v52);
  (*(v23 + 8))(v26, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  return v56;
}

char protocol witness for Decodable.init(from:) in conformance MatrixLayout(void *a1)
{
  v3 = v1;
  result = MatrixLayout.init(from:)(a1);
  if (!v2)
  {
    result &= 1u;
    *v3 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MatrixLayout and conformance MatrixLayout()
{
  result = lazy protocol witness table cache variable for type MatrixLayout and conformance MatrixLayout;
  if (!lazy protocol witness table cache variable for type MatrixLayout and conformance MatrixLayout)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MatrixLayout, &type metadata for MatrixLayout);
    lazy protocol witness table cache variable for type MatrixLayout and conformance MatrixLayout = result;
  }

  return result;
}

uint64_t SparseMatrix.Transpose.base.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *(v1 + 24);
  *(v1 + 32);
  result = *(v1 + 40);
  *v1 = *a1;
  *(v1 + 16) = v2 & 1;
  *(v1 + 24) = *(a1 + 24);
  *(v1 + 40) = v3;
  return result;
}

unint64_t SparseMatrix.Transpose.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v8 = v4[2];
  v7 = v4[1];
  type metadata accessor for SparseMatrix(0, *(a1 + 16), *(a1 + 24), a4);
  return SparseMatrix.count.getter();
}

uint64_t SparseMatrix.Transpose.init(base:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *result = *a1;
  *(result + 16) = v2 & 1;
  *(result + 24) = *(a1 + 24);
  *(result + 40) = v3;
  return result;
}

char SparseMatrix.Transpose.init(rowCount:columnCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  SparseMatrix.init(rowCount:columnCount:)(a2, a1, a3);
  result = v7;
  *v4 = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  return result;
}

void (*SparseMatrix.Transpose.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v6 = malloc(0x48uLL);
  *a1 = v6;
  v7 = *(a4 + 16);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = malloc(*(v8 + 64));
  v9 = v4[1];
  v10 = v4[2];
  *v6 = *v4;
  *(v6 + 1) = v9;
  *(v6 + 2) = v10;
  v12 = type metadata accessor for SparseMatrix(0, v7, *(a4 + 24), v11);
  SparseMatrix.subscript.getter(a3, a2, v12);
  return SparseMatrix.Transpose.subscript.read;
}

void SparseMatrix.Transpose.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*(*a1 + 56) + 8))(v2, *(*a1 + 48));
  free(v2);
  free(v1);
}

void (*SparseMatrix.Transpose.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v6 = malloc(0x70uLL);
  *a1 = v6;
  v6[8] = v4;
  v6[7] = a3;
  v6[6] = a2;
  v7 = *(a4 + 16);
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64);
  v6[11] = malloc(v9);
  v6[12] = malloc(v9);
  v10 = v4[1];
  v11 = v4[2];
  *v6 = *v4;
  *(v6 + 1) = v10;
  *(v6 + 2) = v11;
  v13 = type metadata accessor for SparseMatrix(0, v7, *(a4 + 24), v12);
  v6[13] = v13;
  SparseMatrix.subscript.getter(a3, a2, v13);
  return SparseMatrix.Transpose.subscript.modify;
}

void SparseMatrix.Transpose.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[13];
  v4 = (*a1)[11];
  v5 = (*a1)[12];
  if (a2)
  {
    v9 = v2[10];
    v10 = v2[9];
    v8 = v2[8];
    v6 = v2[6];
    v11 = v2[7];
    (*(v9 + 16))(v4, v5);
    SparseMatrix.subscript.setter(v4, v11, v6, v3);
    (*(v9 + 8))(v5, v10);
  }

  else
  {
    v7 = v2[8];
    SparseMatrix.subscript.setter((*a1)[12], v2[7], v2[6], v3);
  }

  free(v5);
  free(v4);
  free(v2);
}

uint64_t SparseMatrix.Transpose.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v9 = v4[2];
  v8 = v4[1];
  v6 = type metadata accessor for SparseMatrix(0, *(a3 + 16), *(a3 + 24), a4);
  return SparseMatrix.subscript.getter(a2, a1, v6);
}

uint64_t SparseMatrix.Transpose.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v21 = a2;
  v18 = a1;
  v5 = *(a4 + 16);
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v20 = v4;
  v9 = *v4;
  v10 = v4[1];
  v17[2] = v4[2];
  v17[1] = v10;
  v17[0] = v9;
  v11 = *(a4 + 24);
  v22 = v5;
  v12 = type metadata accessor for SparseMatrix(0, v5, v11, a4);
  SparseMatrix.subscript.getter(v23, a2, v12);
  v13 = v18;
  v14 = v5;
  v15 = v19;
  (*(v19 + 24))(v17, v18, v14);
  SparseMatrix.subscript.setter(v17, v23, v21, v12);
  return (*(v15 + 8))(v13, v22);
}

uint64_t SparseMatrix.Transpose.base.getter()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *v0 = *v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  v3;
  v4;
  return v5;
}

{
  return SparseMatrix.Transpose.transposed()();
}

uint64_t static SparseMatrix.Transpose.__derived_struct_equals(_:_:)(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[2];
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = v5;
  v6 = a2[1];
  v7 = a2[2];
  v10[0] = *a2;
  v10[1] = v6;
  v10[2] = v7;
  return static SparseMatrix.__derived_struct_equals(_:_:)(v9, v10, a3, a4);
}

char protocol witness for Matrix.init(rowCount:columnCount:) in conformance SparseMatrix<A>.Transpose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 24);
  result = SparseMatrix.Transpose.init(rowCount:columnCount:)(a1, a2, *(a3 + 16));
  v4[2] = v9;
  v4[1] = v8;
  *v4 = v7;
  return result;
}

uint64_t protocol witness for Matrix.transposed() in conformance SparseMatrix<A>.Transpose()
{
  v1 = v0;
  result = SparseMatrix.Transpose.transposed()();
  v1[2] = v5;
  v1[1] = v4;
  *v1 = v3;
  return result;
}

uint64_t protocol witness for Matrix.subscript.getter in conformance SparseMatrix<A>.Transpose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = SparseMatrix.Transpose.subscript.read(v9, a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 16))(v5, v7, *(a3 + 16));
  return (v6)(v9, 0);
}

uint64_t protocol witness for Matrix.subscript.setter in conformance SparseMatrix<A>.Transpose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = SparseMatrix.Transpose.subscript.modify(v10, a2, a3, a4);
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v8, a1, v6);
  v5(v10, 0);
  return (*(v7 + 8))(a1, v6);
}

void (*protocol witness for Matrix.subscript.modify in conformance SparseMatrix<A>.Transpose(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = SparseMatrix.Transpose.subscript.modify(v5, a2, a3, a4);
  return protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>;
}

uint64_t LowerStrictlyTriangularMatrix.base.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2];
  result = v4[3];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void (*LowerStrictlyTriangularMatrix.subscript.read(uint64_t *a1, Swift::Int a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(void *a1)
{
  *a1 = a8;
  v10 = *(a8 - 8);
  a1[1] = v10;
  a1[2] = malloc(*(v10 + 64));
  UpperStrictlyTriangularMatrix.subscript.getter(a3, a2, a4, a5, a6, a7, a8, a9);
  return InterspersedSequence<>.subscript.read;
}

void (*LowerStrictlyTriangularMatrix.subscript.modify(void *a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(Swift::Int **a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc(0x40uLL);
  *a1 = v6;
  v6[2] = v4;
  v6[1] = a3;
  *v6 = a2;
  v7 = *(a4 + 16);
  v6[3] = v7;
  v8 = *(v7 - 8);
  v6[4] = v8;
  v9 = *(v8 + 64);
  v6[5] = malloc(v9);
  v6[6] = malloc(v9);
  v10 = *v4;
  v11 = v4[1];
  v12 = v4[2];
  v13 = v4[3];
  v14 = *(a4 + 24);
  v6[7] = v14;
  UpperStrictlyTriangularMatrix.subscript.getter(a3, a2, v10, v11, v12, v13, v7, v14);
  return LowerStrictlyTriangularMatrix.subscript.modify;
}

void LowerStrictlyTriangularMatrix.subscript.modify(Swift::Int **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  if (a2)
  {
    v14 = v4[4];
    v7 = v4[3];
    v17 = v4[2];
    v8 = *v4;
    v15 = v4[1];
    v16 = (*a1)[7];
    (*(v14 + 16))(v5, v6, v7);
    v10 = type metadata accessor for UpperStrictlyTriangularMatrix(0, v7, v16, v9);
    UpperStrictlyTriangularMatrix.subscript.setter(v5, v15, v8, v10);
    (*(v14 + 8))(v6, v7);
  }

  else
  {
    v11 = v4[2];
    v18 = *v4;
    v12 = v4[1];
    v13 = type metadata accessor for UpperStrictlyTriangularMatrix(0, v4[3], (*a1)[7], a4);
    UpperStrictlyTriangularMatrix.subscript.setter(v6, v12, v18, v13);
  }

  free(v6);
  free(v5);
  free(v4);
}

uint64_t LowerStrictlyTriangularMatrix.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v16 = a3;
  v15 = a2;
  v17 = a1;
  v5 = *(a4 + 16);
  v14 = *(v5 - 8);
  v6 = *(v14 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a4 + 24);
  UpperStrictlyTriangularMatrix.subscript.getter(a3, a2, *v4, v4[1], v4[2], v4[3], v5, v9);
  v10 = v14;
  (*(v14 + 24))(&v14, a1, v5);
  v12 = type metadata accessor for UpperStrictlyTriangularMatrix(0, v5, v9, v11);
  UpperStrictlyTriangularMatrix.subscript.setter(&v14, v16, v15, v12);
  return (*(v10 + 8))(v17, v5);
}

unint64_t protocol witness for Matrix.init(rowCount:columnCount:) in conformance LowerStrictlyTriangularMatrix<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = LowerStrictlyTriangularMatrix.init(rowCount:columnCount:)(a1, a2, *(a3 + 16), *(a3 + 24));
  *v4 = result;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return result;
}

uint64_t protocol witness for Matrix.transposed() in conformance LowerStrictlyTriangularMatrix<A>()
{
  v2 = v0;
  result = LowerStrictlyTriangularMatrix.transposed()(*v1, v1[1], v1[2], v1[3]);
  *v2 = result;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  return result;
}

uint64_t protocol witness for Matrix.subscript.getter in conformance LowerStrictlyTriangularMatrix<A>(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(a3 + 16);
  v7 = LowerStrictlyTriangularMatrix.subscript.read(v10, a1, a2, *v4, v4[1], v4[2], v4[3], v6, *(a3 + 24));
  (*(*(v6 - 8) + 16))(v5, v8, v6);
  return (v7)(v10, 0);
}

uint64_t protocol witness for Matrix.subscript.setter in conformance LowerStrictlyTriangularMatrix<A>(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v5 = LowerStrictlyTriangularMatrix.subscript.modify(v10, a2, a3, a4);
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v8, a1, v6);
  (v5)(v10, 0);
  return (*(v7 + 8))(a1, v6);
}

void (*protocol witness for Matrix.subscript.modify in conformance LowerStrictlyTriangularMatrix<A>(void *a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = LowerStrictlyTriangularMatrix.subscript.modify(v5, a2, a3, a4);
  return protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LowerStrictlyTriangularMatrix<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + 1);
  v4 = *(a3 + 16);
  return static LowerStrictlyTriangularMatrix.__derived_struct_equals(_:_:)(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3], *(a3 + 16), *(a3 + 24));
}

uint64_t UnsafeVectorPointer.Iterator.next()(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  if (!*v2)
  {
    return __swift_storeEnumTagSinglePayload(v3, 1, 1, *(a1 + 16));
  }

  v5 = v2[1];
  if (!v5)
  {
    BUG();
  }

  if (v4 == v5)
  {
    return __swift_storeEnumTagSinglePayload(v3, 1, 1, *(a1 + 16));
  }

  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  *v2 = v4 + v2[2] * *(v8 + 72);
  (*(v8 + 16))(v3, v4, v7);
  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
}

uint64_t UnsafeVectorPointer.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = UnsafeMutableBufferPointer.baseAddress.getter(a1, a2, a3);
  if (!result)
  {
    BUG();
  }

  return result;
}

uint64_t UnsafeVectorPointer.makeIterator()(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 * a2;
  if (!is_mul_ok(a3, a2))
  {
    BUG();
  }

  v6 = *(*(a4 - 8) + 72) * v4;
  return a1;
}

uint64_t UnsafeVectorPointer._copyContents(initializing:)(uint64_t a1, Swift::Int a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  v47 = a2;
  v48 = a1;
  v45 = *(a6 - 8);
  v10 = *(v45 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v41 = &v38;
  v13 = *(*(type metadata accessor for Optional(0, a6) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v43 = &v38;
  v50 = a3;
  v38 = a3;
  v16 = a4;
  v39 = a4;
  v17 = a5;
  v40 = a5;
  v20 = type metadata accessor for UnsafeVectorPointer(0, v6, v18, v19);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeVectorPointer<A>, v20);
  if (Collection.isEmpty.getter(v20, WitnessTable))
  {
    v22 = UnsafeVectorPointer.makeIterator()(v50, v16, v17, v6);
    UnsafeMutableBufferPointer.startIndex.getter(v48, v47, v6);
  }

  else
  {
    offsetBy = v16;
    v49 = v17;
    v23 = v48;
    v24 = v47;
    v25 = UnsafeMutableBufferPointer.baseAddress.getter(v48, v47, v6);
    if (!v25)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000030, "safeMutableVectorPointer.swift" + 0x8000000000000000, "LinearAlgebra/UnsafeVectorPointer.swift", 39, 2, 126, 0);
      BUG();
    }

    v26 = offsetBy;
    if (v24 < offsetBy)
    {
      BUG();
    }

    if (v49 == 1)
    {
      v27 = v50;
      UnsafeMutablePointer.initialize(from:count:)(v50, offsetBy, v25, v6);
    }

    else
    {
      v44 = v25;
      v38 = UnsafeVectorPointer.makeIterator()(v50, offsetBy, v49, v6);
      v39 = v28;
      v40 = v29;
      v42 = type metadata accessor for UnsafeVectorPointer.Iterator(0, v6, v28, v29);
      v30 = v43;
      for (i = v45; ; v44 = *(i + 72) + v35)
      {
        UnsafeVectorPointer.Iterator.next()(v42);
        if (__swift_getEnumTagSinglePayload(v30, 1, v6) == 1)
        {
          break;
        }

        v32 = v6;
        v33 = v41;
        (*(i + 32))(v41, v30, v32);
        v34 = v33;
        v6 = v32;
        v35 = v44;
        _sSpsRi_zrlE10initialize2toyxn_tF(v34, v44, v6);
      }

      v27 = v50;
      v24 = v47;
      v23 = v48;
      v26 = offsetBy;
    }

    if (!is_mul_ok(v49, v26))
    {
      BUG();
    }

    v22 = *(v45 + 72) * v49 * v26 + v27;
    v36 = UnsafeMutableBufferPointer.startIndex.getter(v23, v24, v6);
    UnsafeMutableBufferPointer.index(_:offsetBy:)(v36, v26);
  }

  return v22;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UnsafeVectorPointer<A>(uint64_t a1)
{
  v3 = v1;
  result = UnsafeVectorPointer.makeIterator()(*v2, *(v2 + 8), *(v2 + 16), *(a1 + 16));
  *v3 = result;
  v3[1] = v5;
  v3[2] = v6;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeVectorPointer<A>(uint64_t a1)
{
  v5 = *v1;
  v2 = *(v1 + 1);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeVectorPointer<A>, a1);
  return Collection._copyToContiguousArray()(a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance UnsafeVectorPointer<A>(uint64_t *a1, uint64_t a2, Swift::Int a3, uint64_t a4)
{
  *a1 = UnsafeVectorPointer._copyContents(initializing:)(a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(a4 + 16));
  a1[1] = v5;
  a1[2] = v6;
  return v7;
}

Swift::Int_optional __swiftcall UnsafeVectorPointer.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (offsetBy <= 0)
  {
    v4 = v3 <= 0;
    v5 = v3 > offsetBy;
  }

  else
  {
    v4 = v3 >= 0;
    v5 = v3 < offsetBy;
  }

  if (v5 && v4)
  {
    v6.is_nil = 1;
    v6.value = 0;
  }

  else
  {
    v6.value = _ + offsetBy;
    v6.is_nil = 0;
  }

  return v6;
}

void UnsafeVectorPointer._failEarlyRangeCheck(_:bounds:)()
{
  ;
}

{
  ;
}

uint64_t UnsafeVectorPointer.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  return UnsafeMutableVectorPointer.subscript.getter(a1, a2, a3, a4, a5);
}

{
  return UnsafeVectorPointer.subscript.getter(a1, a2, a3, a4, a5);
}

uint64_t UnsafeVectorPointer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v15[0] = a1;
  v15[1] = a2;
  v8 = type metadata accessor for UnsafeVectorPointer(0, a6, a3, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeVectorPointer<A>, v8);
  Slice.init(base:bounds:)(v14, v15, v8, WitnessTable);
  result = v12;
  *v7 = v11;
  *(v7 + 16) = v12;
  *(v7 + 24) = v13;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance UnsafeVectorPointer<A>(uint64_t **a1, unint64_t *a2, uint64_t a3))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = UnsafeVectorPointer.subscript.read(v5, *a2, *v3, *(v3 + 8), *(v3 + 16), *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>;
}

void (*UnsafeVectorPointer.subscript.read(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6))(void *a1)
{
  *a1 = a6;
  v8 = *(a6 - 8);
  a1[1] = v8;
  a1[2] = malloc(*(v8 + 64));
  UnsafeVectorPointer.subscript.getter(a2, a3, v9, a5, a6);
  return InterspersedSequence<>.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeVectorPointer<A>(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  UnsafeVectorPointer.subscript.getter(*a1, a1[1], *v3, v3[1], v3[2], *(a2 + 16));
  result = v8;
  *(v4 + 32) = v8;
  *(v4 + 16) = v7;
  *v4 = v6;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance UnsafeVectorPointer<A>()
{
  v2 = v0;
  v3 = *(v1 + 8);
  result = UnsafeVectorPointer.indices.getter();
  *v2 = 0;
  v2[1] = v5;
  return result;
}

Swift::Int protocol witness for Collection.index(after:) in conformance UnsafeVectorPointer<A>(Swift::Int *a1)
{
  v2 = v1;
  result = UnsafeVectorPointer.index(after:)(*a1);
  *v2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeVectorPointer<A>(Swift::Int *a1)
{
  v2 = v1;
  result = UnsafeVectorPointer.index(before:)(*a1);
  *v2 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance UnsafeVectorPointer<A>(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  result = UnsafeVectorPointer.index(_:offsetBy:)(*a1, a2);
  *v3 = result;
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance UnsafeVectorPointer<A>(Swift::Int *a1, Swift::Int a2, Swift::Int *a3)
{
  v4 = v3;
  v5 = UnsafeVectorPointer.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v4 = v5.value;
  *(v4 + 8) = v5.is_nil;
  return v5.value;
}

uint64_t UnsafeVectorPointer.withContiguousStorageIfAvailable<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  if (a5 == 1)
  {
    result = a1(a3, a4, 1);
    if (v8)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v11, 1, a7);
}

uint64_t UnsafeVectorPointer.init(rebasing:)(__int128 *a1, uint64_t a2)
{
  return UnsafeVectorPointer.init(rebasing:)(a1, a2, type metadata accessor for UnsafeVectorPointer, &protocol conformance descriptor for UnsafeVectorPointer<A>);
}

{
  return UnsafeVectorPointer.init(rebasing:)(a1, a2, type metadata accessor for UnsafeMutableVectorPointer, &protocol conformance descriptor for UnsafeMutableVectorPointer<A>);
}

uint64_t UnsafeVectorPointer.init(rebasing:)(__int128 *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4), uint64_t a4)
{
  v28 = *(a1 + 4);
  v22 = a1[1];
  v17 = *a1;
  v5 = a3(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(a4, v5);
  v7 = type metadata accessor for Slice(0, v5, WitnessTable);
  Slice.base.getter(v7);
  v29 = *(a1 + 4);
  v23 = a1[1];
  v18 = *a1;
  Slice.startIndex.getter(v7);
  v30 = *(a1 + 4);
  v24 = a1[1];
  v19 = *a1;
  Slice.base.getter(v7);
  if (!is_mul_ok(v14, v16))
  {
    BUG();
  }

  v34 = *(*(a2 - 8) + 72) * v14 * v16 + v15;
  v31 = *(a1 + 4);
  v25 = a1[1];
  v20 = *a1;
  Slice.endIndex.getter(v7, v5, v8, v9, v10, v11);
  v32 = *(a1 + 4);
  v26 = a1[1];
  v21 = *a1;
  Slice.startIndex.getter(v7);
  v33 = *(a1 + 4);
  v12 = *a1;
  v27 = a1[1];
  Slice.base.getter(v7);
  return v34;
}

uint64_t UnsafeVectorPointer.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(53);
  v6._object = "safeVectorPointer.swift" + 0x8000000000000000;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v6);
  v17[0] = a1;
  v7 = type metadata accessor for UnsafePointer(0, a4);
  DefaultStringInterpolation.appendInterpolation<A>(_:)(v17, v7);
  v6._countAndFlagsBits = 0x3A746E756F63202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v17[0] = a2;
  v8 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v10 = v9;
  v6._countAndFlagsBits = v8;
  v6._object = v9;
  String.append(_:)(v6);
  v10;
  v6._countAndFlagsBits = 0x656469727473202CLL;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v17[0] = a3;
  v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v13 = v12;
  v6._countAndFlagsBits = v11;
  v6._object = v12;
  String.append(_:)(v6);
  v13;
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

unint64_t UnsafeMatrixPointer.count.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 * a2;
  if (!is_mul_ok(a3, a2))
  {
    BUG();
  }

  return v3;
}

uint64_t UnsafeMatrixPointer.subscript.getter(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  if (a6)
  {
    v8 = a4 * a2;
    if (!is_mul_ok(a4, a2))
    {
      BUG();
    }

    v10 = __OFADD__(v8, a1);
    v11 = v8 + a1;
    if (v10)
    {
      BUG();
    }
  }

  else
  {
    v12 = a5 * a1;
    if (!is_mul_ok(a5, a1))
    {
      BUG();
    }

    v10 = __OFADD__(a2, v12);
    v11 = a2 + v12;
    if (v10)
    {
      BUG();
    }
  }

  return (*(*(a7 - 8) + 16))(v7, *(*(a7 - 8) + 72) * v11 + a3, a7);
}

uint64_t UnsafeMatrixPointer.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if ((a5 & 1) == 0)
  {
    v6 = a1;
    a1 *= a4;
    if (!is_mul_ok(a4, v6))
    {
      BUG();
    }
  }

  return UnsafeVectorPointer.init(start:count:stride:)(*(*(a6 - 8) + 72) * a1 + a2);
}

uint64_t UnsafeMatrixPointer.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a1;
    a1 *= a3;
    if (!is_mul_ok(a3, v6))
    {
      BUG();
    }
  }

  return UnsafeVectorPointer.init(start:count:stride:)(*(*(a6 - 8) + 72) * a1 + a2);
}

uint64_t UnsafeMatrixPointer.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v19 = a4;
  v17 = a3;
  v16[0] = 0;
  v18 = a2;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v7._object = "UnsafeVectorPointer(start: " + 0x8000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v7);
  v20[0] = a1;
  v8 = type metadata accessor for UnsafePointer(0, a5);
  DefaultStringInterpolation.appendInterpolation<A>(_:)(v20, v8);
  v7._countAndFlagsBits = 0x203A73776F72202CLL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v20[0] = v18;
  v9 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v11 = v10;
  v7._countAndFlagsBits = v9;
  v7._object = v10;
  String.append(_:)(v7);
  v11;
  v7._countAndFlagsBits = 0x6E6D756C6F63202CLL;
  v7._object = 0xEB00000000203A73;
  String.append(_:)(v7);
  v20[0] = v17;
  v12 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v14 = v13;
  v7._countAndFlagsBits = v12;
  v7._object = v13;
  String.append(_:)(v7);
  v14;
  v7._countAndFlagsBits = 0x74756F79616C202CLL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  LOBYTE(v20[0]) = v19 & 1;
  _print_unlocked<A, B>(_:_:)(v20, v16, &type metadata for MatrixLayout, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v16[0];
}

unint64_t SparseMatrix.count.getter()
{
  result = v0[1] * *v0;
  if (!is_mul_ok(v0[1], *v0))
  {
    BUG();
  }

  return result;
}

uint64_t SparseMatrix.init(rowCount:columnCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = SparseMatrix.init(rowCount:columnCount:layout:)(a1, a2, 0, a3);
  v4[2] = v8;
  v4[1] = v7;
  *v4 = v6;
  return result;
}

uint64_t SparseMatrix.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = v3;
  v6 = *(a3 + 16);
  v24 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v24, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = a2;
  if (*(v4 + 16))
  {
    v11 = a1;
    a1 = a2;
  }

  if (a1 < 0)
  {
    BUG();
  }

  v12 = *(v4 + 24);
  v13 = *(v12 + 16);
  if (a1 >= v13)
  {
    BUG();
  }

  if (a1 + 1 >= v13)
  {
    BUG();
  }

  v14 = *(v12 + 8 * a1 + 32);
  v15 = *(v12 + 8 * a1 + 40);
  if (v14 != v15)
  {
    if (v14 > v15)
    {
      BUG();
    }

    if (v14 < 0)
    {
      BUG();
    }

    v16 = *(v4 + 32);
    v17 = *(v16 + 16);
    if (v17 < v14 || v17 < v15)
    {
      BUG();
    }

    if (v11 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    if (v11 > 0x7FFFFFFF)
    {
      BUG();
    }

    v18 = specialized Collection<>.firstIndex(of:)(v11, v16, v16 + 32, v14, 2 * v15 + 1);
    if ((v19 & 1) == 0)
    {
      return ContiguousArray.subscript.getter(v18, *(v4 + 40), v6);
    }
  }

  v20 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v24, v6, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v23, v6, v20);
}

uint64_t SparseMatrix.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v60 = a1;
  v8 = *(a4 + 16);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v51 = &v48;
  v52 = *(a4 + 24);
  v61 = *(v52 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v61, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = a3;
  if (*(v4 + 16))
  {
    v16 = a2;
    v7 = a3;
  }

  if (v7 < 0)
  {
    BUG();
  }

  v56 = a4;
  v58 = v4;
  v17 = *(v4 + 24);
  v18 = *(v17 + 16);
  if (v7 >= v18)
  {
    BUG();
  }

  if (v7 + 1 >= v18)
  {
    BUG();
  }

  v59 = v8;
  v19 = *(v17 + 8 * v7 + 32);
  major = v7;
  v20 = *(v17 + 8 * v7 + 40);
  v55 = v16;
  if (v19 != v20)
  {
    if (v19 > v20)
    {
      BUG();
    }

    if (v19 < 0)
    {
      BUG();
    }

    v28 = *(v58 + 32);
    v29 = *(v28 + 16);
    if (v29 < v19 || v29 < v20)
    {
      BUG();
    }

    if (v16 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    if (v16 > 0x7FFFFFFF)
    {
      BUG();
    }

    v48 = v20;
    v49 = v28;
    v50 = v28 + 32;
    v30 = AssociatedTypeWitness;
    index = specialized Collection<>.firstIndex(of:)(v16, v28, v28 + 32, v19, 2 * v20 + 1);
    v62 = v31;
    v32 = v59;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v61, v59, v30, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, v30, AssociatedConformanceWitness);
    v34 = v51;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v48, v32, v61);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)(v60, v34, v32, *(*(v52 + 8) + 8));
    v61 = *(v54 + 8);
    v61(v34, v32);
    if (v62)
    {
      if ((v35 & 1) == 0)
      {
        v36 = *(v49 + 16);
        v37 = v48;
        if (v36 < v19 || v36 < v48)
        {
          BUG();
        }

        v38 = v55;
        if (v19 >= v48)
        {
          BUG();
        }

        if (*(v50 + 4 * v19) <= v55)
        {
          if (v19 + 1 == v48)
          {
LABEL_26:
            v40 = major;
LABEL_35:
            v27 = v60;
            SparseMatrix.insert(index:major:minor:value:)(v37, v40, v38, v60, v56);
            v21 = v59;
            goto LABEL_36;
          }

          while (1)
          {
            if (v19 + 1 >= v48)
            {
              BUG();
            }

            if (*(v49 + 4 * v19 + 36) > v55)
            {
              break;
            }

            v39 = v19 + 2;
            if (__OFADD__(1, v19 + 1))
            {
              BUG();
            }

            ++v19;
            if (v39 == v48)
            {
              goto LABEL_26;
            }
          }

          ++v19;
        }

        v37 = v19;
        v40 = major;
        v38 = v55;
        goto LABEL_35;
      }
    }

    else
    {
      v44 = v58;
      if ((v35 & 1) == 0)
      {
        v21 = v59;
        type metadata accessor for ContiguousArray(0, v59);
        ContiguousArray._makeMutableAndUnique()();
        v45 = *(v44 + 40);
        v46 = index;
        ContiguousArray._checkSubscript_mutating(_:)(index);
        v47 = v45 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v46;
        v27 = v60;
        (*(v54 + 24))(v47, v60, v21);
        MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
        goto LABEL_36;
      }

      SparseMatrix.remove(index:major:)(index, major);
    }

    v21 = v59;
    v27 = v60;
LABEL_36:
    v26 = v61;
    return v26(v27, v21);
  }

  v21 = v59;
  v22 = AssociatedTypeWitness;
  v23 = swift_getAssociatedConformanceWitness(v61, v59, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, v22, v23);
  v24 = v51;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v48, v21, v61);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)(v60, v24, v21, *(*(v52 + 8) + 8));
  v26 = *(v54 + 8);
  v26(v24, v21);
  if (v25)
  {
    v27 = v60;
    return v26(v27, v21);
  }

  if (major >= *(v17 + 16))
  {
    BUG();
  }

  v41 = *(v17 + 8 * major + 32);
  v42 = v60;
  SparseMatrix.insert(index:major:minor:value:)(v41, major, v55, v60, v56);
  return v26(v42, v21);
}

uint64_t static SparseMatrix.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(*(a1 + 24), *(a2 + 24)) && _sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(*(a1 + 32), *(a2 + 32)))
  {
    return static ContiguousArray<A>.== infix(_:_:)(*(a1 + 40), *(a2 + 40), a3, *(*(a4 + 8) + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t SparseMatrix.majorStarts.setter(uint64_t a1)
{
  result = *(v1 + 24);
  *(v1 + 24) = a1;
  return result;
}

uint64_t SparseMatrix.minorIndices.setter(uint64_t a1)
{
  result = *(v1 + 32);
  *(v1 + 32) = a1;
  return result;
}

uint64_t SparseMatrix.storage.setter(uint64_t a1)
{
  result = *(v1 + 40);
  *(v1 + 40) = a1;
  return result;
}

uint64_t SparseMatrix.nonZeroValues.getter(uint64_t a1)
{
  v6[0] = *(v1 + 40);
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ContiguousArray(0, v2);
  v6[0];
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v3);
  return Array.init<A>(_:)(v6, v2, v3, WitnessTable);
}

uint64_t SparseMatrix.init(rowCount:columnCount:layout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = v4;
  if (a3)
  {
    v9 = a2 + 1;
    if (__OFADD__(1, a2))
    {
      BUG();
    }
  }

  else
  {
    v9 = a1 + 1;
    if (__OFADD__(1, a1))
    {
      BUG();
    }
  }

  v12 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1gq5(0, v9);
  v10 = static Array._allocateUninitialized(_:)(0, a4);
  result = ContiguousArray.init(arrayLiteral:)(v10, a4);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = v12;
  *(v8 + 32) = _swiftEmptyArrayStorage;
  *(v8 + 40) = result;
  return result;
}

uint64_t SparseMatrix.init(rowCount:columnCount:columnStarts:rowIndices:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (__OFADD__(1, a2))
  {
    BUG();
  }

  v15 = a1;
  v14 = a4;
  if (*(a3 + 16) != a2 + 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000043, "arseMatrix.swift" + 0x8000000000000000, "LinearAlgebra/SparseMatrix.swift", 32, 2, 102, 0);
    BUG();
  }

  v13 = a5;
  v10 = type metadata accessor for Array(0, a6);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v10);
  result = ContiguousArray.init<A>(_:)(&v13, a6, v10, WitnessTable);
  *v7 = v15;
  *(v7 + 8) = a2;
  *(v7 + 16) = 1;
  *(v7 + 24) = a3;
  *(v7 + 32) = v14;
  *(v7 + 40) = result;
  return result;
}

uint64_t SparseMatrix.init(rowCount:columnCount:rowStarts:columnIndices:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (__OFADD__(1, a1))
  {
    BUG();
  }

  v15 = a2;
  v14 = a4;
  if (*(a3 + 16) != a1 + 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003DLL, "plus and end index." + 0x8000000000000000, "LinearAlgebra/SparseMatrix.swift", 32, 2, 123, 0);
    BUG();
  }

  v13 = a5;
  v10 = type metadata accessor for Array(0, a6);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v10);
  result = ContiguousArray.init<A>(_:)(&v13, a6, v10, WitnessTable);
  *v7 = a1;
  *(v7 + 8) = v15;
  *(v7 + 16) = 0;
  *(v7 + 24) = a3;
  *(v7 + 32) = v14;
  *(v7 + 40) = result;
  return result;
}

Swift::Void __swiftcall SparseMatrix.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  specialized Array.removeAll(keepingCapacity:)(keepingCapacity);
  v3 = (v2 + 8);
  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = v2;
  }

  if (__OFADD__(1, *v3))
  {
    BUG();
  }

  if (*v3 + 1 < 0)
  {
    BUG();
  }

  specialized Array.append<A>(contentsOf:)(*v3 + 1, 0);
  specialized Array.removeAll(keepingCapacity:)(keepingCapacity);
  type metadata accessor for ContiguousArray(0, *(v1 + 16));
  ContiguousArray.removeAll(keepingCapacity:)(keepingCapacity);
}

char *specialized Array.removeAll(keepingCapacity:)(char a1)
{
  v3 = *v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16));
    }

    else
    {
      v7 = *(v5 + 24);
      if (v7 >= 2)
      {
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
        v8 = swift_allocObject(v9, 4 * (v7 & 0xFFFFFFFFFFFFFFFELL) + 32, 7);
        v10 = (_swift_stdlib_malloc_size(v8) - 32);
        v8[2] = 0;
        v8[3] = 2 * (v10 / 8);
      }

      else
      {
        v8 = _swiftEmptyArrayStorage;
      }

      result = v5;
      *v1 = v8;
    }
  }

  else
  {
    v3;
    result = _swiftEmptyArrayStorage;
    *v1 = _swiftEmptyArrayStorage;
  }

  return result;
}

void *specialized Array.removeAll(keepingCapacity:)(char a1)
{
  v3 = *v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
    v5 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v5 + 16));
    }

    else
    {
      v7 = *(v5 + 24);
      if (v7 >= 2)
      {
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int32>);
        v8 = swift_allocObject(v9, 2 * (v7 & 0xFFFFFFFFFFFFFFFELL) + 32, 7);
        v10 = (_swift_stdlib_malloc_size(v8) - 32);
        v8[2] = 0;
        v8[3] = 2 * (v10 / 4);
      }

      else
      {
        v8 = _swiftEmptyArrayStorage;
      }

      result = v5;
      *v1 = v8;
    }
  }

  else
  {
    v3;
    result = _swiftEmptyArrayStorage;
    *v1 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = a1 + v5;
  if (__OFADD__(a1, v5))
  {
    BUG();
  }

  v41 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
  v8 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 > v6)
    {
      v6 = v5;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 1, v4);
    v9 = *(v8 + 3) >> 1;
  }

  v10 = *(v8 + 2);
  v11 = v9 - v10;
  v12 = v8;
  result = specialized Sequence._copySequenceContents(initializing:)(&v35, &v8[8 * v10 + 32], v11, a1, v41);
  if (result < a1)
  {
    BUG();
  }

  i = v12;
  if (result > 0)
  {
    v15 = *(v12 + 2);
    v16 = __OFADD__(result, v15);
    v17 = result + v15;
    if (v16)
    {
      BUG();
    }

    *(v12 + 2) = v17;
  }

  if (result == v11)
  {
    result = v35;
    v18 = v37;
    if (v37 != v35)
    {
      v19 = *(v12 + 2);
      v41 = v35;
      v39 = v36;
      v20 = specialized Repeated.subscript.read(v34, v37, v35, v36);
      v22 = *v21;
      (v20)(v34, 0);
      v23 = v41;
      if (v18 < 0 || v18 >= v41)
      {
        BUG();
      }

      v24 = v18 + 1;
      for (i = v12; ; *(i + 2) = result)
      {
        result = *(i + 3);
        v25 = v19 + 1;
        v40 = result >> 1;
        if ((result >> 1) < v19 + 1)
        {
          v30 = v19;
          v31 = v22;
          v32 = v24;
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result >= 2, v25, 1, i);
          v24 = v32;
          v22 = v31;
          v19 = v30;
          v23 = v41;
          i = v33;
          result = *(v33 + 3) >> 1;
          v40 = result;
        }

        if (v19 >= v40)
        {
          result = v19;
        }

        else
        {
          *&i[8 * v19 + 32] = v22;
          if (v24 == v23)
          {
LABEL_33:
            *(i + 2) = v25;
            break;
          }

          v26 = v24;
          v38 = v24;
          while (1)
          {
            v27 = i;
            v28 = specialized Repeated.subscript.read(v34, v26, v41, v39);
            v22 = *v29;
            (v28)(v34, 0);
            v23 = v41;
            if (v38 < 0 || v26 >= v41)
            {
              BUG();
            }

            result = v19 + 1;
            i = v27;
            if (v19 + 1 >= v40)
            {
              break;
            }

            ++v26;
            *&v27[8 * v19++ + 40] = v22;
            if (v23 == v26)
            {
              v25 = v19 + 1;
              goto LABEL_33;
            }
          }

          v24 = v26 + 1;
          ++v19;
        }
      }
    }
  }

  *v2 = i;
  return result;
}

uint64_t SparseMatrix.insert(index:major:minor:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  if (a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (*(*(v5 + 32) + 16) < a1)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  v20 = *(v7 - 8);
  v18 = v7;
  v19 = a4;
  specialized Array.replaceSubrange<A>(_:with:)(a1, a1, a3);
  (*(v20 + 16))(&v18, v19, v7);
  v20 = v5 + 40;
  v11 = type metadata accessor for ContiguousArray(0, v7);
  ContiguousArray.insert(_:at:)(&v18, a1, v11);
  result = a2 + 1;
  if (__OFADD__(1, a2))
  {
    BUG();
  }

  v13 = *(v5 + 24);
  v14 = v13[2];
  if (v14 < result)
  {
    BUG();
  }

  if (result != v14)
  {
    if (result >= v14)
    {
      BUG();
    }

    if (result < 0)
    {
      BUG();
    }

    if (!v14)
    {
      BUG();
    }

    if (!swift_isUniquelyReferenced_nonNull_native(*(v5 + 24)))
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    }

    v15 = v14 - 1;
    do
    {
      v16 = v13[a2 + 5];
      v17 = __OFADD__(1, v16);
      result = v16 + 1;
      if (v17)
      {
        BUG();
      }

      v13[a2++ + 5] = result;
    }

    while (v15 != a2);
    *(v5 + 24) = v13;
  }

  return result;
}

Swift::Void __swiftcall SparseMatrix.remove(index:major:)(Swift::Int index, Swift::Int major)
{
  v4 = major;
  v19 = index;
  v5 = *(v2 + 16);
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  specialized Array.remove(at:)(index);
  v9 = type metadata accessor for ContiguousArray(0, v5);
  ContiguousArray.remove(at:)(v19, v9);
  (*(v18 + 8))(&v17, v5);
  v10 = major + 1;
  if (__OFADD__(1, major))
  {
    BUG();
  }

  v11 = *(v3 + 24);
  v12 = v11[2];
  if (v12 < v10)
  {
    BUG();
  }

  if (v10 != v12)
  {
    if (v10 >= v12)
    {
      BUG();
    }

    if (v10 < 0)
    {
      BUG();
    }

    if (!v12)
    {
      BUG();
    }

    if (!swift_isUniquelyReferenced_nonNull_native(*(v3 + 24)))
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    v13 = v12 - 1;
    do
    {
      v14 = v11[v4 + 5];
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        BUG();
      }

      v11[v4++ + 5] = v16;
    }

    while (v13 != v4);
    *(v3 + 24) = v11;
  }
}

void (*SparseMatrix.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v7 = malloc(0x70uLL);
  *a1 = v7;
  v7[9] = v4;
  v7[8] = a4;
  v7[7] = a3;
  v7[6] = a2;
  v8 = *(a4 + 16);
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64);
  v7[12] = malloc(v10);
  v7[13] = malloc(v10);
  v11 = v4[1];
  v12 = v4[2];
  *v7 = *v4;
  *(v7 + 1) = v11;
  *(v7 + 2) = v12;
  SparseMatrix.subscript.getter(a2, a3, a4);
  return SparseMatrix.subscript.modify;
}

void SparseMatrix.subscript.modify(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[12];
  v4 = (*a1)[13];
  if (a2)
  {
    v10 = v2[11];
    v5 = v2[10];
    v8 = v2[9];
    v9 = v2[8];
    v6 = v2[6];
    v11 = v2[7];
    (*(v10 + 16))(v3, v4, v5);
    SparseMatrix.subscript.setter(v3, v6, v11, v9);
    (*(v10 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[9];
    SparseMatrix.subscript.setter((*a1)[13], v2[6], v2[7], v2[8]);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v2 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native(*v1))
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  if (v3 <= a1)
  {
    BUG();
  }

  v4 = v3 - 1;
  v5 = *(v2 + a1 + 8);
  memmove(v2 + 4 * a1 + 32, v2 + 4 * a1 + 36, 4 * (v4 - a1));
  v2[2] = v4;
  *v1 = v2;
  return v5;
}

void *SparseMatrix.transposed()(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  SparseMatrix.Transpose.init(base:)(v2);
  v10 = v2[3];
  v11 = v2[4];
  v12[0] = v2[5];
  outlined retain of [Int](&v10);
  outlined retain of [Int](&v11);
  result = outlined retain of ContiguousArray<Double>(v12);
  *v3 = v7;
  v3[1] = v8;
  v3[2] = v9;
  return result;
}

uint64_t protocol witness for Matrix.init(rowCount:columnCount:) in conformance SparseMatrix<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 24);
  result = SparseMatrix.init(rowCount:columnCount:)(a1, a2, *(a3 + 16));
  v4[2] = v9;
  v4[1] = v8;
  *v4 = v7;
  return result;
}

void *protocol witness for Matrix.transposed() in conformance SparseMatrix<A>(uint64_t a1)
{
  v3 = v1;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  result = SparseMatrix.transposed()(a1);
  v3[2] = v7;
  v3[1] = v6;
  *v3 = v5;
  return result;
}

void (*protocol witness for Matrix.subscript.modify in conformance SparseMatrix<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v7 = malloc(0x70uLL);
  *a1 = v7;
  v7[9] = a4;
  v7[8] = v4;
  v7[7] = a3;
  v7[6] = a2;
  v8 = *(a4 + 16);
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64);
  v7[12] = malloc(v10);
  v7[13] = malloc(v10);
  v11 = v4[1];
  v12 = v4[2];
  *v7 = *v4;
  *(v7 + 1) = v11;
  *(v7 + 2) = v12;
  SparseMatrix.subscript.getter(a2, a3, a4);
  return protocol witness for Matrix.subscript.modify in conformance SparseMatrix<A>;
}

void protocol witness for Matrix.subscript.modify in conformance SparseMatrix<A>(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[12];
  v4 = (*a1)[13];
  if (a2)
  {
    v10 = v2[11];
    v5 = v2[10];
    v8 = v2[9];
    v9 = v2[8];
    v6 = v2[6];
    v11 = v2[7];
    (*(v10 + 16))(v3, v4, v5);
    SparseMatrix.subscript.setter(v3, v6, v11, v8);
    (*(v10 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[8];
    SparseMatrix.subscript.setter((*a1)[13], v2[6], v2[7], v2[9]);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    result = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  if (a3 < 0)
  {
    BUG();
  }

  result = a4;
  if (!a4)
  {
    goto LABEL_13;
  }

  if (a4 <= 0)
  {
    BUG();
  }

  *a2 = a5;
  if (a3 == 1)
  {
LABEL_11:
    result = a3;
    goto LABEL_13;
  }

  v6 = 1;
  v7 = 1;
  while (1)
  {
    if (__OFADD__(1, v7++))
    {
      BUG();
    }

    if (a4 == v6)
    {
      break;
    }

    a2[v6] = a5;
    v6 = v7;
    if (v7 == a3)
    {
      goto LABEL_11;
    }
  }

  result = a4;
LABEL_13:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = result;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, int64_t a2, int a3)
{
  if (a1 < 0)
  {
    BUG();
  }

  v4 = *v3;
  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
    BUG();
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v7 = 1 - v6;
  if (__OFSUB__(1, v6))
  {
    BUG();
  }

  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
  if (!isUniquelyReferenced_nonNull_native || v4[3] >> 1 < v8)
  {
    if (v5 > v8)
    {
      v8 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v4);
  }

  if (v7)
  {
    v10 = v4[2];
    v11 = v10 - a2;
    if (__OFSUB__(v10, a2))
    {
      BUG();
    }

    v12 = v4 + 4 * a1 + 36;
    v13 = v4 + 4 * a2 + 32;
    if (v12 != v13 || &v13[4 * v11] <= v12)
    {
      memmove(v12, v13, 4 * v11);
      v10 = v4[2];
    }

    v14 = __OFADD__(v7, v10);
    v15 = v7 + v10;
    if (v14)
    {
      BUG();
    }

    v4[2] = v15;
  }

  *(v4 + a1 + 8) = a3;
  result = v3;
  *v3 = v4;
  return result;
}

char *specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, int64_t a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  v3 = *v2;
  v4 = *(*v2 + 2);
  if (v4 < a2)
  {
    BUG();
  }

  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v5 = a1 - a2;
  if (__OFSUB__(a1 - a2, 1))
  {
    BUG();
  }

  v15 = v2;
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    BUG();
  }

  result = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!result || *(v3 + 3) >> 1 < v6)
  {
    if (v4 > v6)
    {
      v6 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v6, 1, v3);
    v3 = result;
  }

  if (v5)
  {
    v9 = *(v3 + 2);
    v10 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
      BUG();
    }

    v11 = &v3[8 * a2 + 32];
    v12 = &v3[8 * a1 + 32];
    if (a1 != a2 || &v11[8 * v10] <= v12)
    {
      memmove(v12, v11, 8 * v10);
      v9 = *(v3 + 2);
    }

    v13 = __OFADD__(v5, v9);
    result = (v5 + v9);
    if (v13)
    {
      BUG();
    }

    *(v3 + 2) = result;
  }

  *v15 = v3;
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSi_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, &type metadata for Int);
  result[2] = a2;
  for (i = 0; i != a2; ++i)
  {
    if (a2 == i)
    {
      BUG();
    }

    result[i + 4] = a1;
  }

  return result;
}

void (*specialized Repeated.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  *a1 = a4;
  if (a2 < 0 || a2 >= a3)
  {
    BUG();
  }

  return MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
}

uint64_t UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 != a2)
  {
    _StringGuts.grow(_:)(75);
    v7._object = "safeVectorOperations.swift" + 0x8000000000000000;
    v7._countAndFlagsBits = 0xD000000000000041;
    String.append(_:)(v7);
    v8 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v9;
    v7._countAndFlagsBits = v8;
    v7._object = v9;
    String.append(_:)(v7);
    v10;
    v7._countAndFlagsBits = 0x20646E6120;
    v7._object = 0xE500000000000000;
    String.append(_:)(v7);
    v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v13 = v12;
    v7._countAndFlagsBits = v11;
    v7._object = v12;
    String.append(_:)(v7);
    v13;
    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 122, 0);
    BUG();
  }

  if (a5 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a6 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_saxpy_NEWLAPACK(a5, a1, a3, a4, a6);
}

{
  if (a5 != a2)
  {
    _StringGuts.grow(_:)(75);
    v7._object = "safeVectorOperations.swift" + 0x8000000000000000;
    v7._countAndFlagsBits = 0xD000000000000041;
    String.append(_:)(v7);
    v8 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v9;
    v7._countAndFlagsBits = v8;
    v7._object = v9;
    String.append(_:)(v7);
    v10;
    v7._countAndFlagsBits = 0x20646E6120;
    v7._object = 0xE500000000000000;
    String.append(_:)(v7);
    v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v13 = v12;
    v7._countAndFlagsBits = v11;
    v7._object = v12;
    String.append(_:)(v7);
    v13;
    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 179, 0);
    BUG();
  }

  if (a5 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a6 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_daxpy_NEWLAPACK(a5, a1, a3, a4, a6);
}

uint64_t UnsafeMutableVectorPointer<A>.multiply(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_sscal_NEWLAPACK(a2, a1);
}

{
  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_dscal_NEWLAPACK(a2, a1);
}

_BOOL8 UnsafeVectorPointer<A>.squaredMagnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = v5;
  v43 = a2;
  v34 = a1;
  v35 = *(a4 - 8);
  v8 = v35[8];
  v9 = alloca(v8);
  v10 = alloca(v8);
  v36 = &v33;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v42 = &v33;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v40 = &v33;
  v38 = *(*(a5 + 16) + 8);
  v15 = *(v38 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v15, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v15, a4, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  v37 = a4;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v33, a4, v15);
  v21 = (a3 * v43) >> 64 != 0;
  v43 *= a3;
  if (v21)
  {
    BUG();
  }

  if (!a3)
  {
    BUG();
  }

  v22 = 0;
  v39 = a3;
  v23 = v35;
  v24 = v37;
  while (1)
  {
    result = v43 >= v22;
    if (a3 > 0)
    {
      result = v43 <= v22;
    }

    if (result)
    {
      break;
    }

    v26 = a3 + v22;
    if (__OFADD__(a3, v22))
    {
      v26 = ((v22 + a3) >> 63) ^ 0x8000000000000000;
    }

    v33 = v26;
    v27 = v34 + v23[9] * v22;
    v28 = v23[2];
    v28(v42, v27, v24);
    v29 = v36;
    v28(v36, v27, v24);
    v30 = v38;
    dispatch thunk of static Numeric.* infix(_:_:)(v42, v29, v24, v38);
    v31 = v23[1];
    v31(v29, v24);
    v31(v42, v24);
    v32 = v40;
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v41, v40, v24, *(v30 + 8));
    v31(v32, v24);
    a3 = v39;
    v22 = v33;
  }

  return result;
}

uint64_t UnsafeVectorPointer<A>.magnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = v5;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  UnsafeVectorPointer<A>.squaredMagnitude.getter(a1, a2, a3, a4, a5);
  dispatch thunk of FloatingPoint.squareRoot()(a4, a5);
  return (*(v8 + 8))(&v13, a4);
}

uint64_t UnsafeVectorPointer<A>.maximumAbsoluteValue.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a3;
  v7 = v5;
  v48 = a2;
  v37 = a1;
  v38 = *(*(a5 + 16) + 8);
  v47 = *(v38 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v47, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v39 = &v36;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v40 = &v36;
  v19 = alloca(v14);
  v20 = alloca(v14);
  if (a2 <= 0)
  {
    return dispatch thunk of static FloatingPoint.nan.getter(a4, a5);
  }

  v42 = v13;
  v45 = &v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v47, a4, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v36, a4, v47);
  v22 = v46;
  v23 = v46 * v48;
  if (!is_mul_ok(v46, v48))
  {
    BUG();
  }

  if (!v46)
  {
    BUG();
  }

  v43 = a4;
  v24 = 0;
  v44 = v7;
  v41 = a5;
  for (v48 *= v46; ; v23 = v48)
  {
    v25 = v23 >= v24;
    if (v22 > 0)
    {
      v25 = v23 <= v24;
    }

    if (v25)
    {
      break;
    }

    v26 = v22 + v24;
    if (__OFADD__(v22, v24))
    {
      v26 = ((v24 + v22) >> 63) ^ 0x8000000000000000;
    }

    v27 = v42;
    v28 = v39;
    v29 = v43;
    (*(v42 + 16))(v39, v37 + *(v42 + 72) * v24, v43);
    v30 = v40;
    dispatch thunk of Numeric.magnitude.getter(v29, v38);
    v47 = *(v27 + 8);
    v47(v28, v29);
    v31 = v29;
    v32 = v30;
    v33 = v30;
    v34 = v45;
    if (dispatch thunk of static Comparable.> infix(_:_:)(v33, v45, v31, *(*(v41 + 24) + 8)))
    {
      v47(v34, v31);
      (*(v27 + 32))(v34, v32, v31);
    }

    else
    {
      v47(v32, v31);
    }

    v24 = v26;
    v7 = v44;
    v22 = v46;
  }

  return (*(v42 + 32))(v7, v45, v43);
}

uint64_t UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a5;
  v43 = a4;
  v44 = a1;
  v45 = *(a8 - 8);
  v10 = *(v45 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v35;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v49 = &v35;
  v51 = a6;
  if (a6 != a2)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    v28._object = "safeVectorOperations.swift" + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD000000000000041;
    String.append(_:)(v28);
    v37 = v51;
    v29 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v31 = v30;
    v28._countAndFlagsBits = v29;
    v28._object = v30;
    String.append(_:)(v28);
    v31;
    v28._countAndFlagsBits = 0x20646E6120;
    v28._object = 0xE500000000000000;
    String.append(_:)(v28);
    v37 = a2;
    v32 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v34 = v33;
    v28._countAndFlagsBits = v32;
    v28._object = v33;
    String.append(_:)(v28);
    v34;
    v28._countAndFlagsBits = 46;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v35, v36, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 53, 0);
    BUG();
  }

  v15 = a7;
  v50 = a7 * v51;
  if (!is_mul_ok(a7, v51))
  {
    BUG();
  }

  v16 = (a3 * v51) >> 64 != 0;
  v51 *= a3;
  if (v16)
  {
    BUG();
  }

  if (!a3 || !a7)
  {
    BUG();
  }

  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (a7 < 0)
  {
    v17 = 0x8000000000000000;
  }

  v48 = v17;
  v18 = 0;
  v19 = v50;
  v20 = 0;
  v47 = a3;
  v21 = v46;
  while (1)
  {
    result = v19 >= v20;
    if (v15 > 0)
    {
      result = v20 >= v50;
      v19 = v50;
    }

    if (result)
    {
      break;
    }

    result = v15 + v20;
    if (__OFADD__(v15, v20))
    {
      result = v48;
    }

    if (a3 <= 0)
    {
      if (v51 >= v18)
      {
        return result;
      }
    }

    else if (v18 >= v51)
    {
      return result;
    }

    v39 = result;
    v23 = a3 + v18;
    if (__OFADD__(a3, v18))
    {
      v23 = ((v18 + a3) >> 63) ^ 0x8000000000000000;
    }

    v24 = v45;
    v40 = *(v45 + 72);
    v38 = v19;
    (*(v45 + 16))(v21, v44 + v40 * v18, a8);
    v41 = *(*(*(a9 + 16) + 16) + 8);
    dispatch thunk of static Numeric.* infix(_:_:)(v21, v43, a8, v41);
    v25 = *(v24 + 8);
    v25(v21, a8);
    v26 = v42 + v40 * v20;
    v27 = v49;
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v26, v49, a8, *(v41 + 8));
    v25(v27, a8);
    v19 = v38;
    v15 = a7;
    a3 = v47;
    v18 = v23;
    v20 = v39;
  }

  return result;
}

_BOOL8 UnsafeMutableVectorPointer<A>.multiply(by:)(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 * a3;
  if (!is_mul_ok(a4, a3))
  {
    BUG();
  }

  if (!a4)
  {
    BUG();
  }

  for (i = 0; ; i = v12)
  {
    result = v6 >= i;
    if (a4 > 0)
    {
      result = v6 <= i;
    }

    if (result)
    {
      break;
    }

    v12 = a4 + i;
    if (__OFADD__(a4, i))
    {
      v12 = ((i + a4) >> 63) ^ 0x8000000000000000;
    }

    dispatch thunk of static Numeric.*= infix(_:_:)(a2 + *(*(a5 - 8) + 72) * i, a1, a5, *(*(*(a6 + 16) + 16) + 8));
  }

  return result;
}

unint64_t dot<A>(_:_:)(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4, unint64_t a5, int64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a4;
  v61 = v8;
  v65 = a6;
  v52 = a1;
  v53 = *(a7 - 8);
  v12 = v53[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v54 = &v47;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v62 = &v47;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v55 = &v47;
  v56 = *(*(a8 + 16) + 8);
  v64 = *(v56 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v64, a7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v63 = a5;
  if (a2 != a5)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(90);
    v40._object = "s, but they have " + 0x8000000000000000;
    v40._countAndFlagsBits = 0xD000000000000050;
    String.append(_:)(v40);
    v49 = a2;
    v41 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v43 = v42;
    v40._countAndFlagsBits = v41;
    v40._object = v42;
    String.append(_:)(v40);
    v43;
    v40._countAndFlagsBits = 0x20646E6120;
    v40._object = 0xE500000000000000;
    String.append(_:)(v40);
    v49 = v63;
    v44 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v46 = v45;
    v40._countAndFlagsBits = v44;
    v40._object = v45;
    String.append(_:)(v40);
    v46;
    v40._countAndFlagsBits = 46;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v47, v48, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 78, 0);
    BUG();
  }

  v60 = a3 * a2;
  if (!is_mul_ok(a3, a2))
  {
    BUG();
  }

  v23 = v65 * a2;
  if (!is_mul_ok(v65, a2))
  {
    BUG();
  }

  if (!a3 || !v65)
  {
    BUG();
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v64, a7, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v47, a7, v64);
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 < 0)
  {
    v25 = 0x8000000000000000;
  }

  v59 = v25;
  v26 = 0;
  v27 = v60;
  v28 = 0;
  v57 = v23;
  v58 = a3;
  while (1)
  {
    result = v27 >= v28;
    if (a3 > 0)
    {
      result = v28 >= v60;
      v27 = v60;
    }

    if (result)
    {
      break;
    }

    result = a3 + v28;
    if (__OFADD__(a3, v28))
    {
      result = v59;
    }

    if (v65 <= 0)
    {
      if (v23 >= v26)
      {
        return result;
      }
    }

    else if (v26 >= v23)
    {
      return result;
    }

    v63 = result;
    v30 = v65 + v26;
    if (__OFADD__(v65, v26))
    {
      v30 = ((v26 + v65) >> 63) ^ 0x8000000000000000;
    }

    v50 = v30;
    v31 = v53;
    v32 = v53[2];
    v33 = v53[9];
    v64 = v27;
    v34 = v26;
    v32(v62, v52 + v33 * v28, a7);
    v35 = v51 + v34 * v33;
    v36 = v54;
    v32(v54, v35, a7);
    v37 = v55;
    v38 = v56;
    dispatch thunk of static Numeric.* infix(_:_:)(v62, v36, a7, v56);
    v39 = v31[1];
    v39(v36, a7);
    v39(v62, a7);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v61, v37, a7, *(v38 + 8));
    v39(v37, a7);
    v27 = v64;
    v23 = v57;
    v26 = v50;
    a3 = v58;
    v28 = v63;
  }

  return result;
}

uint64_t UnsafeVectorPointer<A>.magnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_snrm2_NEWLAPACK(a2, a1);
}

{
  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_dnrm2_NEWLAPACK(a2, a1);
}

float UnsafeVectorPointer<A>.maximumAbsoluteValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    return NAN;
  }

  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  return fabs(*(a1 + 4 * a3 * cblas_isamax_NEWLAPACK(a2, a1, a3)));
}

uint64_t dot(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a5)
  {
    _StringGuts.grow(_:)(90);
    v7._object = "s, but they have " + 0x8000000000000000;
    v7._countAndFlagsBits = 0xD000000000000050;
    String.append(_:)(v7);
    v8 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v9;
    v7._countAndFlagsBits = v8;
    v7._object = v9;
    String.append(_:)(v7);
    v10;
    v7._countAndFlagsBits = 0x20646E6120;
    v7._object = 0xE500000000000000;
    String.append(_:)(v7);
    v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v13 = v12;
    v7._countAndFlagsBits = v11;
    v7._object = v12;
    String.append(_:)(v7);
    v13;
    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 141, 0);
    BUG();
  }

  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a6 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_sdot_NEWLAPACK(a2, a1, a3, a4, a6);
}

{
  if (a2 != a5)
  {
    _StringGuts.grow(_:)(90);
    v7._object = "s, but they have " + 0x8000000000000000;
    v7._countAndFlagsBits = 0xD000000000000050;
    String.append(_:)(v7);
    v8 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v9;
    v7._countAndFlagsBits = v8;
    v7._object = v9;
    String.append(_:)(v7);
    v10;
    v7._countAndFlagsBits = 0x20646E6120;
    v7._object = 0xE500000000000000;
    String.append(_:)(v7);
    v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v13 = v12;
    v7._countAndFlagsBits = v11;
    v7._object = v12;
    String.append(_:)(v7);
    v13;
    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "LinearAlgebra/UnsafeVectorOperations.swift", 42, 2, 198, 0);
    BUG();
  }

  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a6 > 0x7FFFFFFF)
  {
    BUG();
  }

  return cblas_ddot_NEWLAPACK(a2, a1, a3, a4, a6);
}

double UnsafeVectorPointer<A>.maximumAbsoluteValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    return NAN;
  }

  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  return fabs(*(a1 + 8 * a3 * cblas_idamax_NEWLAPACK(a2, a1, a3)));
}

uint64_t protocol witness for Matrix.indexed() in conformance UpperStrictlyTriangularMatrix<A>()
{
  v2 = v0;
  result = UpperStrictlyTriangularMatrix.IndexedSequence.base.getter(*v1, v1[1], v1[2], v1[3]);
  *v2 = result;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = 0;
  v4[5] = 1;
  v4[6] = 0;
  a3;
  return a4;
}

void *UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.init(base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a1;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = 0;
  result[5] = 1;
  result[6] = 0;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UpperStrictlyTriangularMatrix<A>.IndexedSequence()
{
  v2 = v0;
  v3 = v1[3];
  UpperStrictlyTriangularMatrix.IndexedSequence.makeIterator()(*v1, v1[1], v1[2], v3);
  v3;

  result = v8;
  *(v2 + 48) = v8;
  *(v2 + 32) = v7;
  *(v2 + 16) = v6;
  *v2 = v5;
  return result;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.base.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v0[2];
  v3;
  return v1;
}

uint64_t UpperStrictlyTriangularMatrix.IndexedSequence.Iterator.next()(uint64_t a1)
{
  v25 = v1;
  v3 = *(a1 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, &type metadata for Int, &type metadata for Int, v3, "row column element ", 0);
  v5 = *(*(TupleTypeMetadata3 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v2[1];
  v13 = v2[5];
  if (v13 >= v12)
  {
    return __swift_storeEnumTagSinglePayload(v25, 1, 1, TupleTypeMetadata3);
  }

  v14 = v2[4];
  if (v14 >= *v2)
  {
    return __swift_storeEnumTagSinglePayload(v25, 1, 1, TupleTypeMetadata3);
  }

  v24 = *(TupleTypeMetadata3 - 8);
  v27 = v2[2];
  v28 = v2[6];
  v31 = v14;
  v26 = &v24;
  v29 = TupleTypeMetadata3;
  v30 = &v24;

  ContiguousArray.subscript.getter(v28, v27, v3);

  v15 = v30;
  v16 = v30 + *(v29 + 64);
  *v30 = v31;
  v15[1] = v13;
  (*(v8 + 32))(v16, v26, v3);
  v17 = v13 + 1;
  v2[5] = v17;
  if (v17 == v12)
  {
    v18 = v31;
    v2[4] = v31 + 1;
    v19 = __OFADD__(2, v18);
    v20 = v18 + 2;
    if (v19)
    {
      BUG();
    }

    v2[5] = v20;
  }

  if (__OFADD__(1, v28))
  {
    BUG();
  }

  v2[6] = v28 + 1;
  v21 = v25;
  v22 = v29;
  (*(v24 + 32))(v25, v30, v29);
  return __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
}

uint64_t UnsafeMutableMatrixPointer<A>.addProduct(_:transposed:_:transposed:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v26 = v15;
  v16 = a15 & 1;
  if ((a15 & 1) != (a4 & 1) || v16 != (a10 & 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, "safeMatrixOperations.swift" + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 35, 0);
    goto LABEL_46;
  }

  v18 = a3;
  v19 = a9;
  v20 = a3;
  if (a5)
  {
    v20 = a2;
  }

  v21 = a9;
  if (a11)
  {
    v21 = a8;
  }

  v22 = a8;
  if (a11)
  {
    v22 = a9;
  }

  if (v20 != v22)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000040, "ve the same shape and layout." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 43, 0);
    goto LABEL_46;
  }

  v23 = a2;
  if (a5)
  {
    v23 = a3;
  }

  if (v23 != a13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003ELL, "hould all be the same." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 46, 0);
    goto LABEL_46;
  }

  if (v21 != a14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000045, "he same as the left row count." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 49, 0);
LABEL_46:
    BUG();
  }

  if (a13 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a14 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (v20 < 0xFFFFFFFF80000000 || a13 < 0xFFFFFFFF80000000 || a14 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v20 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (v16)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    if (a2 > 0x7FFFFFFF)
    {
      BUG();
    }

    if (a8 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    v19 = a8;
    v18 = a2;
    v24 = a13;
    if (a8 > 0x7FFFFFFF)
    {
      BUG();
    }
  }

  else
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    if (a3 > 0x7FFFFFFF)
    {
      BUG();
    }

    if (a9 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    v24 = a14;
    if (a9 > 0x7FFFFFFF)
    {
      BUG();
    }
  }

  return cblas_sgemm_NEWLAPACK((a15 & 1u) + 101, (a5 & 1u) + 111, (a11 & 1u) + 111, a13, a14, v20, a7, 1.0, a1, v18, a6, v19, a12, v24, v26);
}

{
  v26 = v15;
  v16 = a15 & 1;
  if ((a15 & 1) != (a4 & 1) || v16 != (a10 & 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, "safeMatrixOperations.swift" + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 167, 0);
    goto LABEL_46;
  }

  v18 = a3;
  v19 = a9;
  v20 = a3;
  if (a5)
  {
    v20 = a2;
  }

  v21 = a9;
  if (a11)
  {
    v21 = a8;
  }

  v22 = a8;
  if (a11)
  {
    v22 = a9;
  }

  if (v20 != v22)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000040, "ve the same shape and layout." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 175, 0);
    goto LABEL_46;
  }

  v23 = a2;
  if (a5)
  {
    v23 = a3;
  }

  if (v23 != a13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003ELL, "hould all be the same." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 178, 0);
    goto LABEL_46;
  }

  if (v21 != a14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000045, "he same as the left row count." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 181, 0);
LABEL_46:
    BUG();
  }

  if (a13 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a14 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (v20 < 0xFFFFFFFF80000000 || a13 < 0xFFFFFFFF80000000 || a14 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (v20 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (v16)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    if (a2 > 0x7FFFFFFF)
    {
      BUG();
    }

    if (a8 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    v19 = a8;
    v18 = a2;
    v24 = a13;
    if (a8 > 0x7FFFFFFF)
    {
      BUG();
    }
  }

  else
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    if (a3 > 0x7FFFFFFF)
    {
      BUG();
    }

    if (a9 < 0xFFFFFFFF80000000)
    {
      BUG();
    }

    v24 = a14;
    if (a9 > 0x7FFFFFFF)
    {
      BUG();
    }
  }

  return cblas_dgemm_NEWLAPACK((a15 & 1u) + 101, (a5 & 1u) + 111, (a11 & 1u) + 111, a13, a14, v20, a7, 1.0, a1, v18, a6, v19, a12, v24, v26);
}

uint64_t UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, char a9, uint64_t a10, int a11, uint64_t a12)
{
  v18 = v12;
  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  v15 = a3;
  if (a9)
  {
    v15 = a2;
  }

  if (v15 != a6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000044, "e right column count." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 90, 0);
    BUG();
  }

  if (a8 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a8 < 0xFFFFFFFF80000000 || a12 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a12 > 0x7FFFFFFF)
  {
    BUG();
  }

  v16 = a2;
  if ((a4 & 1) == 0)
  {
    v16 = a3;
  }

  return cblas_sgemv_NEWLAPACK((a4 & 1u) + 101, (a9 & 1u) + 111, a2, a3, a1, v16, a7, 1.0, a5, a8, a10, a12, v18);
}

{
  v18 = v12;
  if (a2 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  v15 = a3;
  if (a9)
  {
    v15 = a2;
  }

  if (v15 != a6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000044, "e right column count." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 222, 0);
    BUG();
  }

  if (a8 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a8 < 0xFFFFFFFF80000000 || a12 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a12 > 0x7FFFFFFF)
  {
    BUG();
  }

  v16 = a2;
  if ((a4 & 1) == 0)
  {
    v16 = a3;
  }

  return cblas_dgemv_NEWLAPACK((a4 & 1u) + 101, (a9 & 1u) + 111, a2, a3, a1, v16, a7, 1.0, a5, a8, a10, a12, v18);
}

uint64_t UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, char a8, char a9, uint64_t a10, int a11, uint64_t a12)
{
  if (a5 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a6 > 0x7FFFFFFF)
  {
    BUG();
  }

  v13 = a5;
  if (a9)
  {
    v13 = a6;
  }

  if (v13 != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000044, "right element count." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 127, 0);
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 < 0xFFFFFFFF80000000 || a12 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a12 > 0x7FFFFFFF)
  {
    BUG();
  }

  v14 = a5;
  if ((a8 & 1) == 0)
  {
    v14 = a6;
  }

  return cblas_sgemv_NEWLAPACK((a8 & 1u) + 101, 112 - (a9 & 1u), a5, a6, a4, v14, a7, 1.0, a1, a3, a10, a12);
}

{
  if (a5 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a5 < 0xFFFFFFFF80000000 || a6 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a6 > 0x7FFFFFFF)
  {
    BUG();
  }

  v13 = a5;
  if (a9)
  {
    v13 = a6;
  }

  if (v13 != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000044, "right element count." + 0x8000000000000000, "LinearAlgebra/UnsafeMatrixOperations.swift", 42, 2, 259, 0);
    BUG();
  }

  if (a3 > 0x7FFFFFFF)
  {
    BUG();
  }

  if (a3 < 0xFFFFFFFF80000000 || a12 < 0xFFFFFFFF80000000)
  {
    BUG();
  }

  if (a12 > 0x7FFFFFFF)
  {
    BUG();
  }

  v14 = a5;
  if ((a8 & 1) == 0)
  {
    v14 = a6;
  }

  return cblas_dgemv_NEWLAPACK((a8 & 1u) + 101, 112 - (a9 & 1u), a5, a6, a4, v14, a7, 1.0, a1, a3, a10, a12);
}

float _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSf_SfsAE_pTg5038_s13LinearAlgebra11DenseVectorV010withd53D7Pointeryqd__qd__AA0fdG0VyxGKXEKlFqd__SRyxGKXEfU_Sf_X3TG50I7Algebra0dlF0VyxGq_sAE_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgyrzo_Tf1cn_n(uint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  v5 = *(&v2 + 1);
  a2(a1 + 32, *(a1 + 16), 1);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSd_SdsAE_pTg5038_s13LinearAlgebra11DenseVectorV010withd53D7Pointeryqd__qd__AA0fdG0VyxGKXEKlFqd__SRyxGKXEfU_Sd_X3TG50I7Algebra0dlF0VyxGq_sAE_pRi_zRi0_zRi__Ri0__r0_lyS2dIsgyrzo_Tf1cn_n(uint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  v5 = v2;
  a2(a1 + 32, *(a1 + 16), 1);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t DenseVector.withUnsafeVectorPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a1;
  v16 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DenseVector.withUnsafeVectorPointer<A>(_:), v11, v18, a4, a5, v8, &protocol self-conformance witness table for Error, &v17);
  return v10;
}

void *_s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSf_Tt1gq504_s13a9Algebra11c27MatrixVAASfRszrlE1moiyAA0C6d8VySfGACyv13G_AGtFZyAA013jk2E7luV7GzXEfU_ACySfGAA0cO0VySfGTf1nc_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1 < 0)
  {
    BUG();
  }

  v13 = a3;
  v12 = a4;
  v14 = a6;
  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Float);
    v8[2] = a1;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v15 = v8 + 4;
  for (i = 0; a1 != i; ++i)
  {
    *(v8 + i + 8) = 0;
  }

  v17 = &v11;
  v18 = a2 + 32;
  v19 = *(a2 + 16);
  v16 = a2;
  v20 = v14 + 32;

  UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(v20, v13, v12, a5 & 1, v18, v19, COERCE_DOUBLE(1065353216), 1, a7, v15, a1, 1);

  v8[2] = a1;

  return v8;
}

void *_s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSf_Tt1gq504_s13a9Algebra11c27MatrixVAASfRszrlE1moiyAA0C6d11VySfGAG_ACyv10GtFZyAA013jk2E7luV7GzXEfU_ACySfGAA0cO0VySfGTf1nc_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1 < 0)
  {
    BUG();
  }

  v14 = a3;
  v13 = a4;
  v12 = a6;
  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Float);
    v8[2] = a1;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v15 = v8 + 4;
  for (i = 0; a1 != i; ++i)
  {
    *(v8 + i + 8) = 0;
  }

  v17 = &v11;
  v19 = a2 + 32;
  v16 = a2;
  v20 = *(a2 + 16);
  v18 = v12 + 32;

  UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(v19, v20, 1, v18, v14, v13, COERCE_DOUBLE(1065353216), a5 & 1, a7, v15, a1, 1);

  v8[2] = a1;

  return v8;
}

void *_s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSd_Tt1gq504_s13a9Algebra11c27MatrixVAASdRszrlE1moiyAA0C6d8VySdGACyv13G_AGtFZyAA013jk2E7luV7GzXEfU_ACySdGAA0cO0VySdGTf1nc_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1 < 0)
  {
    BUG();
  }

  v13 = a3;
  v12 = a4;
  v14 = a6;
  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Double);
    v8[2] = a1;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v15 = v8 + 4;
  for (i = 0; a1 != i; ++i)
  {
    v8[i + 4] = 0;
  }

  v17 = &v11;
  v18 = a2 + 32;
  v19 = *(a2 + 16);
  v16 = a2;
  v20 = v14 + 32;

  UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(v20, v13, v12, a5 & 1, v18, v19, 1.0, 1, a7, v15, a1, 1);

  v8[2] = a1;

  return v8;
}

void *_s13LinearAlgebra11DenseVectorV27unsafeUninitializedCapacity16initializingWithACyxGSi_yAA013UnsafeMutableD7PointerVyxGzKXEtKcfCSd_Tt1gq504_s13a9Algebra11c27MatrixVAASdRszrlE1moiyAA0C6d11VySdGAG_ACyv10GtFZyAA013jk2E7luV7GzXEfU_ACySdGAA0cO0VySdGTf1nc_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1 < 0)
  {
    BUG();
  }

  v14 = a3;
  v13 = a4;
  v12 = a6;
  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Double);
    v8[2] = a1;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v15 = v8 + 4;
  for (i = 0; a1 != i; ++i)
  {
    v8[i + 4] = 0;
  }

  v17 = &v11;
  v19 = a2 + 32;
  v16 = a2;
  v20 = *(a2 + 16);
  v18 = v12 + 32;

  UnsafeMutableVectorPointer<A>.addProduct(_:_:transposed:scaledBy:)(v19, v20, 1, v18, v14, v13, 1.0, a5 & 1, a7, v15, a1, 1);

  v8[2] = a1;

  return v8;
}

uint64_t DenseVector.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v8 = a5;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  return ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(a1, partial apply for closure #1 in DenseVector.init(unsafeUninitializedCapacity:initializingWith:), v6, a4);
}

uint64_t DenseVector.count.getter(uint64_t a1, uint64_t a2)
{
  a1;
  v2 = ContiguousArray.count.getter(a1, a2);
  a1;
  return v2;
}

uint64_t DenseVector.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = v3;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  (*(v5 + 16))(v11, a1);
  v9 = ContiguousArray.init(repeating:count:)(v11, a2, a3);
  (*(v5 + 8))(a1, a3);
  return v9;
}

uint64_t DenseVector.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  type metadata accessor for ContiguousArray(0, v4);
  ContiguousArray._makeMutableAndUnique()();
  v5 = *v3;
  ContiguousArray._checkSubscript_mutating(_:)(a2);
  v6 = *(v4 - 8);
  (*(v6 + 24))(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a2, a1, v4);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  return (*(v6 + 8))(a1, v4);
}

void (*DenseVector.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(Swift::Int **a1, char a2)
{
  v5 = malloc(0x38uLL);
  *a1 = v5;
  v5[2] = v3;
  v5[1] = a3;
  *v5 = a2;
  v6 = *(a3 + 16);
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64);
  v5[5] = malloc(v8);
  v5[6] = malloc(v8);
  ContiguousArray.subscript.getter(a2, *v3, v6);
  return DenseVector.subscript.modify;
}

void DenseVector.subscript.modify(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v9 = v2[4];
    v5 = v2[3];
    v8 = v2[2];
    v6 = *v2;
    v10 = v2[1];
    (*(v9 + 16))(v3, v4, v5);
    DenseVector.subscript.setter(v3, v6, v10);
    (*(v9 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[2];
    DenseVector.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t default argument 1 of UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(uint64_t a1, uint64_t a2)
{
  v10[0] = v2;
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v3, a1, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, a1, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
  dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)(AssociatedTypeWitness, AssociatedConformanceWitness);
  return dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)(v10, a1, v3);
}

uint64_t DenseVector.storage.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

uint64_t DenseVector.init<A>(scalars:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v6 + 16))(v12, a1);
  v10 = ContiguousArray.init<A>(_:)(v12, a2, a3, v12[0]);
  (*(v6 + 8))(a1, a3);
  return v10;
}

uint64_t closure #1 in DenseVector.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  *a2 = a3;
  v11 = UnsafeMutableVectorPointer.init(_:)(*a1, a1[1], a6);
  v12 = v8;
  result = a4();
  if (!v6)
  {
    result = UnsafeMutableBufferPointer.init(start:count:)(v11, v12, a6);
    *a1 = result;
    a1[1] = v10;
  }

  return result;
}

uint64_t DenseVector.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v2 = type metadata accessor for Array(0, a2);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v2);
  return ContiguousArray.init<A>(_:)(v5, a2, v2, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance DenseVector<A>(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = DenseVector.init(arrayLiteral:)(a1, *(a2 + 16));
  *v3 = result;
  return result;
}

void *closure #1 in DenseVector.withUnsafeVectorPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v9 = UnsafeBufferPointer.baseAddress.getter(a1, a2, a5);
  if (!v9)
  {
    BUG();
  }

  v10 = UnsafeVectorPointer.init(start:count:stride:)(v9);
  result = a3(v10, v11, v12);
  if (v8)
  {
    result = a8;
    *a8 = v8;
  }

  return result;
}

uint64_t DenseVector.withUnsafeMutableVectorPointer<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v15[3] = v4;
  v15[2] = a2;
  v15[1] = v5;
  v15[4] = a1;
  v8 = *(a3 + 16);
  type metadata accessor for ContiguousArray(0, v8);
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(*v6 + 16);
  v10 = *(*(v8 - 8) + 80);
  v11 = *v6 + ((v10 + 32) & ~v10);
  v14[0] = v11;
  v16 = v9;
  v14[1] = v9;
  closure #1 in DenseVector.withUnsafeMutableVectorPointer<A>(_:)(v14, a1, a2, v8, v17, *(a3 + 24), v15);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v14, v11, v16, v6, v8);
  return v13;
}

void *closure #1 in DenseVector.withUnsafeMutableVectorPointer<A>(_:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = UnsafeMutableBufferPointer.baseAddress.getter(*a1, a1[1], a4);
  if (!v8)
  {
    BUG();
  }

  v9 = UnsafeMutableVectorPointer.init(start:count:stride:)(v8);
  result = a2(v9, v10, v11);
  if (v7)
  {
    result = a7;
    *a7 = v7;
  }

  return result;
}

uint64_t DenseVector.squaredMagnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = v5;
  v11 = a2;
  v12 = a3;
  v9 = a3;
  KeyPath = swift_getKeyPath(a4);
  DenseVector.withUnsafeVectorPointer<A>(_:)(a5, v8, a1, a2, a2, v9);
}

Swift::Void __swiftcall DenseVector.negate()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v20 = &v14;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(v0 + 24);
  v11 = DenseVector.count.getter(*v1, v3);
  if (v11 < 0)
  {
    BUG();
  }

  v17 = v10;
  if (v11)
  {
    v12 = 0;
    v19 = &v14;
    v18 = v11;
    do
    {
      v15 = v12 + 1;
      ContiguousArray.subscript.getter(v12, *v2, v3);
      dispatch thunk of static SignedNumeric.- prefix(_:)(v20, v3, *(*(v17 + 16) + 16));
      (*(v4 + 8))(v20, v3);
      v16 = type metadata accessor for ContiguousArray(0, v3);
      ContiguousArray._makeMutableAndUnique()();
      v13 = *v2;
      ContiguousArray._checkSubscript_mutating(_:)(v12);
      (*(v4 + 40))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v19, v3);
      MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
      v12 = v15;
    }

    while (v18 != v15);
  }
}

uint64_t static DenseVector.- prefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = DenseVector.count.getter(a1, a2);
  v7 = a2;
  v8 = a3;
  v9 = a1;
  return DenseVector.init(unsafeUninitializedCapacity:initializingWith:)(v4, partial apply for closure #1 in static DenseVector.- prefix(_:), v6, a2, a3);
}

uint64_t *closure #1 in static DenseVector.- prefix(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a2;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  result = &v15;
  v12 = a1[1];
  v18 = v12;
  if (v12 < 0)
  {
    BUG();
  }

  v21 = &v15;
  if (v12)
  {
    v20 = *a1;
    v19 = a1[2];
    v13 = 0;
    do
    {
      ContiguousArray.subscript.getter(v13, v17, a3);
      dispatch thunk of static SignedNumeric.- prefix(_:)(&v15, a3, *(*(v16 + 16) + 16));
      (*(v5 + 8))(&v15, a3);
      v14 = v19 * v13;
      if (!is_mul_ok(v19, v13))
      {
        BUG();
      }

      ++v13;
      result = (*(v5 + 40))(v20 + *(v5 + 72) * v14, v21, a3);
    }

    while (v18 != v13);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static DenseVector.+= infix(_:_:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = a2;
  v8 = *(a7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  default argument 1 of UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a7, a8);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, v18, v17, &v13, v16, v15, v14, a7, a8);
  return (*(v8 + 8))(&v13, a7);
}

uint64_t static DenseVector.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = a3;
  v10 = a4;
  v11 = a2;
  v6 = type metadata accessor for DenseVector(0, a3, a4, a4);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(a5, v8, v6, &type metadata for () + 8);
}

uint64_t closure #1 in static DenseVector.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v10 = a6;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(a7, v8, a4, a5, &type metadata for () + 8, a6);
}

uint64_t closure #1 in closure #1 in static DenseVector.-= infix(_:_:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = a2;
  v25 = a1;
  v20 = *(a7 - 8);
  v8 = *(v20 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v11, a7, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a7, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
  dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)(AssociatedTypeWitness, AssociatedConformanceWitness);
  dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)(&v18, a7, v11);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v25, v24, v23, &v18, v22, v21, v19, a7, a8);
  return (*(v20 + 8))(&v18, a7);
}

uint64_t static DenseVector.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  v9[0] = a1;
  a1;
  a5(v9, a2, a3, a4);
  return v9[0];
}

uint64_t static DenseVector.*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v4 = type metadata accessor for DenseVector(0, a3, a4, a4);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(partial apply for closure #1 in static DenseVector.*= infix(_:_:), v6, v4, &type metadata for () + 8);
}

uint64_t closure #1 in static DenseVector.*= infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = a3 * i;
      if (!is_mul_ok(a3, i))
      {
        BUG();
      }

      result = dispatch thunk of static Numeric.*= infix(_:_:)(a1 + *(*(a5 - 8) + 72) * v9, a4, a5, *(*(*(a6 + 16) + 16) + 8));
    }
  }

  return result;
}

uint64_t static DenseVector.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;

  static DenseVector.*= infix(_:_:)(v7, a2, a3, a4);
  return v7[0];
}

{
  v7[0] = a2;

  static DenseVector.*= infix(_:_:)(v7, a1, a3, a4);
  return v7[0];
}

uint64_t static DenseVector./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v20 = a2;
  v24 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v24, a3, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v22 = *(a3 - 8);
  v9 = *(v22 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v26 = &v20;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v23 = &v20;
  v25 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v24, a3, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByFloatLiteral, &associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);

  dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)(AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = v26;
  dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)(&v20, a3, v24);
  v16 = v21;
  v17 = v23;
  dispatch thunk of static FloatingPoint./ infix(_:_:)(v15, v20, a3, *(v21 + 16));
  v18 = *(v22 + 8);
  v18(v26, a3);
  static DenseVector.*= infix(_:_:)(&v25, v17, a3, v16);
  v18(v17, a3);
  return v25;
}

uint64_t static DenseVector<>.*= infix(_:_:)(void *a1)
{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  result = UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 4), v1[2], 1);
  *a1 = v1;
  return result;
}

void *static DenseVector<>.* infix(_:_:)(void *a1)
{
  v1 = a1;

  if (!swift_isUniquelyReferenced_nonNull_native(a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 4), v1[2], 1);
  return v1;
}

{
  v1 = a1;

  if (!swift_isUniquelyReferenced_nonNull_native(a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 4), v1[2], 1);
  return v1;
}

void *static DenseVector<>./ infix(_:_:)(void *a1)
{
  v1 = a1;

  if (!swift_isUniquelyReferenced_nonNull_native(a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 4), v1[2], 1);
  return v1;
}

uint64_t static DenseVector<>.*= infix(_:_:)(char **a1)
{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  result = UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 32), *(v1 + 2), 1);
  *a1 = v1;
  return result;
}

char *static DenseVector<>.* infix(_:_:)(uint64_t a1)
{
  v1 = a1;

  if (!swift_isUniquelyReferenced_nonNull_native(a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 32), *(v1 + 2), 1);
  return v1;
}

{
  v1 = a1;

  if (!swift_isUniquelyReferenced_nonNull_native(a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 32), *(v1 + 2), 1);
  return v1;
}

char *static DenseVector<>./ infix(_:_:)(uint64_t a1)
{
  v1 = a1;

  if (!swift_isUniquelyReferenced_nonNull_native(a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
  }

  UnsafeMutableVectorPointer<A>.multiply(by:)((v1 + 32), *(v1 + 2), 1);
  return v1;
}

uint64_t dot<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = a2;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(partial apply for closure #1 in dot<A>(_:_:), v5, a1, a3, a3, a4);
}

uint64_t closure #1 in dot<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  v9 = a6;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  return DenseVector.withUnsafeVectorPointer<A>(_:)(partial apply for closure #1 in closure #1 in dot<A>(_:_:), v7, a4, a5, a5, a6);
}

uint64_t closure #1 in closure #1 in dot<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a4;
  *&v64 = a3;
  v62 = v8;
  *(&v64 + 1) = a2;
  v57 = a6;
  v58 = a5;
  v56 = a1;
  v60 = *(a7 - 8);
  v9 = v60[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v52 = &v40;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v61 = &v40;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v63 = &v40;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(255, a7, a7, 0, 0);
  v17 = *(*(type metadata accessor for Optional(0, TupleTypeMetadata2) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v59 = &v40;
  v54 = *(*(*(a8 + 16) + 16) + 8);
  v20 = *(v54 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v20, a7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v22 = *(*(AssociatedTypeWitness - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v20, a7, AssociatedTypeWitness, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, &associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(&qword_33DFF0, 256, AssociatedTypeWitness, AssociatedConformanceWitness);
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(&v40, a7, v20);
  v44 = v55;
  v45 = v58;
  v46 = v57;
  v40 = v56;
  *&v41 = *(&v64 + 1);
  *(&v41 + 1) = v64;
  v27 = type metadata accessor for UnsafeVectorPointer(0, a7, v26, &v40);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for UnsafeVectorPointer<A>, v27);
  zip<A, B>(_:_:)(&v44, &v40, v27, v27, WitnessTable, WitnessTable);
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v44 = v27;
  *&v64 = v27;
  v45 = v27;
  v46 = WitnessTable;
  *(&v64 + 1) = WitnessTable;
  v47 = WitnessTable;
  v29 = type metadata accessor for Zip2Sequence(0, &v44);
  Zip2Sequence.makeIterator()(v29);
  v53 = TupleTypeMetadata2;
  v30 = v61;
  while (1)
  {
    v48 = v64;
    v49 = v64;
    v50 = *(&v64 + 1);
    v31 = type metadata accessor for Zip2Sequence.Iterator(0, &v48);
    v32 = v59;
    Zip2Sequence.Iterator.next()(v31);
    result = __swift_getEnumTagSinglePayload(v32, 1, TupleTypeMetadata2);
    if (result == 1)
    {
      break;
    }

    v34 = v59 + *(TupleTypeMetadata2 + 48);
    v35 = v60[4];
    v35(v63, v59, a7);
    v35(v30, v34, a7);
    v36 = v52;
    v37 = v54;
    dispatch thunk of static Numeric.* infix(_:_:)(v63, v30, a7, v54);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)(v62, v36, a7, *(v37 + 8));
    v38 = v60[1];
    v39 = v36;
    TupleTypeMetadata2 = v53;
    v38(v39, a7);
    v38(v61, a7);
    v38(v63, a7);
  }

  return result;
}

NSURL *closure #1 in dot(_:_:)(const float *a1, uint64_t a2, vDSP_Stride a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a4 + 16);
  __C = 0.0;
  if (a2 < 0)
  {
    BUG();
  }

  v7 = a2;
  if (v6 < a2)
  {
    v7 = v6;
  }

  vDSP_dotpr(a1, a3, (a4 + 32), 1, &__C, v7);
  *v5 = __C;
  return __stack_chk_guard;
}

NSURL *closure #1 in dot(_:_:)(const double *a1, uint64_t a2, vDSP_Stride a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a4 + 16);
  __C = 0.0;
  if (a2 < 0)
  {
    BUG();
  }

  v7 = a2;
  if (v6 < a2)
  {
    v7 = v6;
  }

  vDSP_dotprD(a1, a3, (a4 + 32), 1, &__C, v7);
  *v5 = __C;
  return __stack_chk_guard;
}

uint64_t partial apply for implicit closure #1 in DenseVector.squaredMagnitude.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return partial apply for implicit closure #1 in DenseVector.squaredMagnitude.getter(a1, a2, a3);
}

{
  v4 = *(v3 + 24);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return swift_getAtKeyPath(v6, v4);
}

uint64_t Logger.linearAlgebra.unsafeMutableAddressor()
{
  if (one-time initialization token for linearAlgebra != -1)
  {
    swift_once(&one-time initialization token for linearAlgebra, one-time initialization function for linearAlgebra);
  }

  v0 = type metadata accessor for Logger(0);
  return __swift_project_value_buffer(v0, static Logger.linearAlgebra);
}

uint64_t one-time initialization function for linearAlgebra()
{
  v0 = type metadata accessor for Logger(0);
  __swift_allocate_value_buffer(v0, static Logger.linearAlgebra);
  __swift_project_value_buffer(v0, static Logger.linearAlgebra);
  return Logger.init(subsystem:category:)(0xD000000000000012, "Target Frame Rate" + 0x8000000000000000, 0x612D7261656E696CLL, 0xEE0061726265676CLL);
}

uint64_t static Logger.linearAlgebra.getter()
{
  v1 = v0;
  if (one-time initialization token for linearAlgebra != -1)
  {
    swift_once(&one-time initialization token for linearAlgebra, one-time initialization function for linearAlgebra);
  }

  v2 = type metadata accessor for Logger(0);
  v3 = __swift_project_value_buffer(v2, static Logger.linearAlgebra);
  return (*(*(v2 - 8) + 16))(v1, v3, v2);
}