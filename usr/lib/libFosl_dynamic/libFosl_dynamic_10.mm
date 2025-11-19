void **sub_2978A5F78(uint64_t a1, _DWORD *a2)
{
  v4 = sub_297811C44(a2);
  sub_2978A6084(a1, v4);
  sub_2978885D4(a2);
  sub_297801F64(*a1, "uniform ");
  v5 = *a1;
  v6 = sub_29788709C(a2);
  sub_297801FA8(v5, v6, v7);
  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v8 = sub_297803A7C((a2 + 4));
  v9 = sub_2978885E0((a2 + 4));
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8++;
      sub_2978884C4(a1);
      sub_2978A49A4(a1, v11, 1);
    }

    while (v8 != v10);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v12 = *a1;

  return sub_297801F64(v12, "}");
}

void **sub_2978A6084(uint64_t *a1, int a2)
{
  v8 = a2;
  if (sub_297887D28(&v8) || (result = sub_297887D40(&v8), result))
  {
    sub_297801F64(*a1, "layout(");
    if (sub_297887D28(&v8))
    {
      if (sub_297887D4C(&v8))
      {
        v4 = sub_297887D70(&v8);
        sub_2978A6180(a1, v4);
        if (sub_297887D7C(&v8))
        {
          sub_297801F64(*a1, ", ");
LABEL_9:
          v7 = sub_297887D88(&v8);
          sub_2978A6180(a1, v7);
        }
      }

      else if (sub_297887D7C(&v8))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = sub_297801F64(*a1, "location = ");
      v6 = sub_29786AC48(&v8);
      sub_297801FA0(v5, v6);
    }

    return sub_297801F64(*a1, ") ");
  }

  return result;
}

void **sub_2978A6198(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "void main (");
  v4 = sub_297803A7C(a2 + 16);
  v5 = sub_297888A34(a2 + 16);
  if (v4 != v5)
  {
    v6 = v5;
    v7 = v5 - v4;
    do
    {
      sub_2978A5114(a1, *v4);
      if (v7 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v4;
      v7 -= 8;
    }

    while (v4 != v6);
  }

  sub_297801F64(*a1, ")");
  if (sub_297888A68(a2))
  {
    sub_297801F64(*a1, " ");
    v8 = sub_297888A68(a2);
    sub_2978A62D8(a1, v8);
    v9 = *a1;

    return sub_297801F64(v9, "\n");
  }

  else
  {

    return sub_297888A70(a1, 0);
  }
}

void **sub_2978A62D8(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_2978A62F0(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

uint64_t sub_2978A62F0(uint64_t *a1, unsigned __int8 *a2)
{
  result = sub_29786AC48(a2);
  switch(result)
  {
    case 0:

      result = sub_2978A6550(a1, a2);
      break;
    case 1:

      result = sub_297888F38(a1);
      break;
    case 2:

      result = sub_2978A6630(a1, a2);
      break;
    case 3:

      result = sub_2978A663C(a1, a2);
      break;
    case 4:

      result = sub_2978A6740(a1, a2);
      break;
    case 5:

      result = sub_2978A67B8(a1, a2);
      break;
    case 6:

      result = sub_297889134(a1);
      break;
    case 7:

      result = sub_2978A681C(a1, a2);
      break;
    case 8:

      result = sub_2978A6934(a1, a2);
      break;
    case 9:

      result = sub_2978A69C0(a1, a2);
      break;
    case 10:

      result = sub_297889390(a1);
      break;
    case 11:

      result = sub_2978893D8(a1);
      break;
    case 12:

      result = sub_297889420(a1);
      break;
    case 13:

      result = sub_2978A6A68(a1, a2);
      break;
    case 14:

      result = sub_2978A6AE4(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

void **sub_2978A6550(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "{\n");
  ++*(a1 + 8);
  v4 = sub_297803A7C(a2 + 8);
  v5 = sub_297889524(a2 + 8);
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      v7 = *v4++;
      sub_2978884C4(a1);
      sub_2978A62D8(a1, v7);
      sub_297889558(a1, v7);
      sub_297801F64(*a1, "\n");
    }

    while (v4 != v6);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v8 = *a1;

  return sub_297801F64(v8, "}");
}

void **sub_2978A663C(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "if (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978A5490(a1, v4);
  }

  sub_297801F64(*a1, ") ");
  if (sub_2977FD5B0(a2))
  {
    v5 = sub_2977FD5B0(a2);
    sub_2978A62D8(a1, v5);
    v6 = sub_2977FD5B0(a2);
    sub_297889558(a1, v6);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  result = sub_29783CFFC(a2);
  if (result)
  {
    sub_297801F64(*a1, " else ");
    v8 = sub_29783CFFC(a2);
    sub_2978A62D8(a1, v8);
    v9 = sub_29783CFFC(a2);

    return sub_297889558(a1, v9);
  }

  return result;
}

uint64_t sub_2978A6740(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "switch (");
  v4 = sub_2977FB7B8(a2);
  sub_2978A5490(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);

  return sub_2978A62D8(a1, v5);
}

void **sub_2978A67B8(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "case ");
  v4 = sub_29783CFFC(a2);
  sub_2978A5490(a1, v4);
  v5 = *a1;

  return sub_297801F64(v5, ": ");
}

void **sub_2978A681C(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "for (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978A62D8(a1, v4);
    v5 = sub_2977FB7B8(a2);
    sub_297889558(a1, v5);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  sub_297801F64(*a1, " ");
  if (sub_2977FD5B0(a2))
  {
    v6 = sub_2977FD5B0(a2);
    sub_2978A62D8(a1, v6);
  }

  sub_297888A70(a1, 1);
  if (sub_29783CFFC(a2))
  {
    v7 = sub_29783CFFC(a2);
    sub_2978A5490(a1, v7);
  }

  sub_297801F64(*a1, ") ");
  v8 = sub_297805510(a2);
  sub_2978A62D8(a1, v8);
  v9 = sub_297805510(a2);

  return sub_297889558(a1, v9);
}

void **sub_2978A6934(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "while (");
  v4 = sub_2977FB7B8(a2);
  sub_2978A62D8(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);
  sub_2978A62D8(a1, v5);
  v6 = sub_2977FD5B0(a2);

  return sub_297889558(a1, v6);
}

void **sub_2978A69C0(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "do ");
  v4 = sub_2977FB7B8(a2);
  sub_2978A62D8(a1, v4);
  v5 = sub_2977FB7B8(a2);
  sub_297889558(a1, v5);
  sub_297801F64(*a1, " while (");
  v6 = sub_2977FD5B0(a2);
  sub_2978A5490(a1, v6);
  sub_297801F64(*a1, ")");

  return sub_297888A70(a1, 0);
}

void **sub_2978A6A68(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "return");
  if (sub_2977FB7B8(a2))
  {
    sub_297801F64(*a1, " ");
    v4 = sub_2977FB7B8(a2);
    sub_2978A5490(a1, v4);
  }

  return sub_297888A70(a1, 0);
}

uint64_t sub_2978A6AE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);

  return sub_2978A5490(a1, v3);
}

void **sub_2978A6B24(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "struct");
  if (sub_297888470(a2))
  {
    v4 = sub_297801F64(*a1, " ");
    v5 = sub_29788709C(a2);
    sub_297801FA8(v4, v5, v6);
  }

  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v7 = sub_297803A7C(a2 + 16);
  v8 = sub_297888490(a2 + 16);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7++;
      sub_2978884C4(a1);
      sub_2978A49A4(a1, v10, 1);
    }

    while (v7 != v9);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v11 = *a1;

  return sub_297801F64(v11, "}");
}

void **sub_2978A6C30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_297888358(a3))
  {

    return sub_2978A6B24(a1, a2);
  }

  else
  {
    v6 = *a1;
    v8 = sub_29788709C(a2);

    return sub_297801FA8(v6, v8, v7);
  }
}

void **sub_2978A6CB4(uint64_t *a1, uint64_t a2)
{
  result = sub_29787E544(a2);
  switch(result)
  {
    case 0:

      return sub_2978899A4(a1, a2);
    case 1:

      return sub_2978A7044(a1, a2);
    case 2:

      return sub_297889A40(a1, a2);
    case 3:
      v7 = a1;
      v8 = a2;

      return sub_297889A94(v7, v8);
    case 4:
      v7 = a1;
      v8 = a2;

      return sub_297889A94(v7, v8);
    case 5:

      return sub_2978A7098(a1, a2);
    case 6:

      return sub_2978A7138(a1, a2);
    case 7:

      return sub_2978A71D4(a1, a2);
    case 8:

      return sub_2978A7260(a1, a2);
    case 9:

      return sub_297889DAC(a1, a2);
    case 10:

      return sub_297889DEC(a2);
    case 11:

      return sub_2978A7334(a1, a2);
    case 12:

      return sub_2978A73F0(a1, a2);
    case 13:
      v5 = a1;
      v6 = a2;

      goto LABEL_10;
    case 14:
      v5 = a1;
      v6 = a2;

      goto LABEL_10;
    case 15:
      v5 = a1;
      v6 = a2;

LABEL_10:
      result = sub_2978A753C(v5, v6);
      break;
    case 16:

      result = sub_2978A75B4(a1, a2);
      break;
    case 17:

      result = sub_2978A762C(a1, a2);
      break;
    case 18:

      result = sub_2978A767C(a1, a2);
      break;
    case 19:

      result = sub_2978A78C0(a1, a2);
      break;
    case 20:

      result = sub_2978A7990(a1, a2);
      break;
    case 21:

      result = sub_2978A6AE4(a1, a2);
      break;
    case 22:

      result = sub_2978A7AB4(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2978A7044(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_29788A390(a2, v5);
  v3 = sub_29788A35C(v2, v5);
  sub_297801F64(v3, "U");
  return sub_2977FAA04(v5);
}

uint64_t sub_2978A7098(uint64_t *a1, uint64_t a2)
{
  if (sub_29788A3A8(a2))
  {
    v4 = sub_2977FD5B0(a2);
    sub_2978A7B2C(a1, v4);
  }

  v5 = sub_29788A44C(a2);
  if (v5 <= 6)
  {
    sub_297801F64(*a1, (&off_29EE809B0)[v5]);
  }

  result = sub_29788A3A8(a2);
  if ((result & 1) == 0)
  {
    v7 = sub_2977FD5B0(a2);

    return sub_2978A7B2C(a1, v7);
  }

  return result;
}

void **sub_2978A7138(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A7B2C(a1, v4);
  sub_297801F64(*a1, " ");
  v5 = sub_29788A794(a2);
  if (v5 <= 0x14)
  {
    sub_297801F64(*a1, (&off_29EE809E8)[v5]);
  }

  sub_297801F64(*a1, " ");
  v6 = sub_29783CFFC(a2);

  return sub_2978A7B2C(a1, v6);
}

void **sub_2978A71D4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A7B2C(a1, v4);
  sub_297801F64(*a1, " ? ");
  v5 = sub_29783CFFC(a2);
  sub_2978A7B2C(a1, v5);
  sub_297801F64(*a1, " : ");
  v6 = sub_297805510(a2);

  return sub_2978A7B2C(a1, v6);
}

uint64_t sub_2978A7260(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a2);
  v5 = sub_2977FD5B0(a2);
  v6 = sub_2978A7BC4(v4);
  if (v6 && sub_29788A7AC(v6) - 1 < 2)
  {
    v7 = "gl_FragColor";
  }

  else
  {
    sub_2978A5490(a1, v4);
    v7 = " ";
  }

  sub_297801F64(*a1, v7);
  v8 = sub_29788A7A0(a2);
  if (v8 <= 0xB)
  {
    sub_297801F64(*a1, (&off_29EE80A90)[v8]);
  }

  sub_297801F64(*a1, " ");

  return sub_2978A5490(a1, v5);
}

void **sub_2978A7334(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);
  v12[0] = sub_29788C514(v3);
  v4 = sub_2977FB720(v12);
  v5 = sub_297888638(v4);
  if (sub_29788AB30(a1[73]))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || sub_297888648(v5))
  {
    v7 = *a1;
    v8 = sub_29788709C(v3);
  }

  else
  {
    v7 = *a1;
    v12[0] = sub_29788709C(v3);
    v12[1] = v11;
    v8 = sub_297805EA4(v12, 2uLL, 0xFFFFFFFFFFFFFFFFLL);
  }

  return sub_297801FA8(v7, v8, v9);
}

void **sub_2978A73F0(uint64_t *a1, uint64_t a2)
{
  v16 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v16);
  if (sub_2978877CC(v4) && (v5 = sub_297803A7C(a2 + 8), v6 = sub_29788A7C4(a2 + 8), sub_29780CCF4(v5, v6) == 1))
  {
    v7 = sub_297803A7C(a2 + 8);
    return sub_2978A5490(a1, *v7);
  }

  else
  {
    v9 = sub_2977FD5B0(a2);
    sub_2978A5CE4(a1, v9);
    v15 = 0;
    v10 = sub_2977FD5B0(a2);
    if (sub_2978881F0(v10, &v15))
    {
      sub_29788825C(a1, v15);
    }

    sub_297801F64(*a1, "(");
    v11 = sub_297803A7C(a2 + 8);
    v12 = sub_29788A7C4(a2 + 8);
    if (v11 != v12)
    {
      v13 = v12;
      v14 = v12 - v11;
      do
      {
        sub_2978A5490(a1, *v11);
        if (v14 >= 9)
        {
          sub_297801F64(*a1, ", ");
        }

        ++v11;
        v14 -= 8;
      }

      while (v11 != v13);
    }

    return sub_297801F64(*a1, ")");
  }
}

void **sub_2978A753C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A7B2C(a1, v4);
  v5 = sub_297801F64(*a1, ".");
  v7 = sub_29788A810(a2);

  return sub_297801FA8(v5, v7, v6);
}

void **sub_2978A75B4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A7B2C(a1, v4);
  sub_297801F64(*a1, "[");
  v5 = sub_29783CFFC(a2);
  sub_2978A5490(a1, v5);
  v6 = *a1;

  return sub_297801F64(v6, "]");
}

void **sub_2978A762C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FD5B0(a2);
  sub_2978A7B2C(a1, v3);
  v4 = *a1;

  return sub_297801F64(v4, ".length()");
}

void **sub_2978A767C(uint64_t *a1, uint64_t a2)
{
  v4 = *sub_297803A7C(a2 + 8);
  v5 = *(sub_297803A7C(a2 + 8) + 8);
  v6 = sub_29788A7AC(a2);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = ")";
      v8 = "samplerExtent(";
      goto LABEL_16;
    }

    if (v6 == 4)
    {
      v7 = ", _dc)";
      v8 = "samplerTransform(";
LABEL_16:
      sub_297801F64(*a1, v8);
      sub_2978A5490(a1, v4);
LABEL_17:
      v16 = *a1;

      return sub_297801F64(v16, v7);
    }

    v14 = *a1;
    v15 = "texture2D(";
LABEL_15:
    sub_297801F64(v14, v15);
    sub_2978A5490(a1, v4);
    v7 = ")";
    v4 = v5;
    v8 = ", ";
    goto LABEL_16;
  }

  if (v6 != 1)
  {
    v14 = *a1;
    v15 = "samplerTransform(";
    goto LABEL_15;
  }

  v9 = sub_2978A50DC(a1[74]);
  if (v9)
  {
    sub_297801F64(*a1, "_sampler_swizzle(");
  }

  v10 = sub_2978A50D4(a1[74]);
  if (v10)
  {
    sub_297801F64(*a1, "_sampler_srgb_to_linear(");
  }

  v11 = sub_2978A7C00(a1[74]);
  v12 = *a1;
  if (v11)
  {
    sub_297801F64(v12, "(");
    sub_297801F64(*a1, "sample(");
    sub_2978A5490(a1, v4);
    sub_297801F64(*a1, ", ");
    sub_2978A5490(a1, v5);
    sub_297801F64(*a1, ")");
    v13 = sub_297801F64(*a1, v11);
  }

  else
  {
    sub_297801F64(v12, "sample(");
    sub_2978A5490(a1, v4);
    sub_297801F64(*a1, ", ");
    sub_2978A5490(a1, v5);
    v13 = *a1;
  }

  result = sub_297801F64(v13, ")");
  if (v10)
  {
    result = sub_297801F64(*a1, ")");
  }

  if (v9)
  {
    v7 = ")";
    goto LABEL_17;
  }

  return result;
}

void **sub_2978A78C0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29788A888(a2);
  sub_297801F64(*a1, (&off_29EE80AF0)[v4 - 1]);
  v5 = sub_297803A7C(a2 + 8);
  v6 = sub_29788A894(a2 + 8);
  if (v5 != v6)
  {
    v7 = v6;
    v8 = v6 - v5;
    do
    {
      sub_2978A5490(a1, *v5);
      if (v8 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v5;
      v8 -= 8;
    }

    while (v5 != v7);
  }

  v9 = *a1;

  return sub_297801F64(v9, ")");
}

void **sub_2978A7990(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_29788709C(v4);
  v7 = v6;
  sub_2977FB7B4(v21, "destCoord");
  v8 = sub_297804D28(v5, v7, v21[0], v21[1]);
  v9 = *a1;
  if (v8)
  {
    v10 = "_dc";
    v11 = *a1;
  }

  else
  {
    v12 = sub_2977FD5B0(a2);
    v13 = sub_29788709C(v12);
    v15 = sub_297801FA8(v9, v13, v14);
    sub_297801F64(v15, "(");
    v16 = sub_297803A7C(a2 + 8);
    v17 = sub_29788A8E0(a2 + 8);
    if (v16 != v17)
    {
      v18 = v17;
      v19 = v17 - v16;
      do
      {
        sub_2978A5490(a1, *v16);
        if (v19 >= 9)
        {
          sub_297801F64(*a1, ", ");
        }

        ++v16;
        v19 -= 8;
      }

      while (v16 != v18);
    }

    v11 = *a1;
    v10 = ")";
  }

  return sub_297801F64(v11, v10);
}

void **sub_2978A7AB4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A5CE4(a1, v4);
  sub_297801F64(*a1, "(");
  v5 = sub_2977FB7B8(a2);
  sub_2978A5490(a1, v5);
  v6 = *a1;

  return sub_297801F64(v6, ")");
}

void **sub_2978A7B2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == 1 && sub_29788A458(a2))
  {
    sub_297801F64(*a1, "(");
  }

  result = sub_2978A5490(a1, a2);
  if (*(a1 + 12) == 1)
  {
    result = sub_29788A458(a2);
    if (result)
    {
      v5 = *a1;

      return sub_297801F64(v5, ")");
    }
  }

  return result;
}

uint64_t sub_2978A7BC4(uint64_t a1)
{
  v2 = a1;
  if (sub_29788F9B8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978A7C08(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978A7C44(a1, v2);
}

uint64_t sub_2978A7C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_297885F38(a1);
  sub_2978A7D34(v18, a2, v4);
  v18[3] = sub_2978A479C(a1);
  v18[4] = v5;
  sub_2978A7D38(v18);
  sub_2978A7EDC(v18);
  v16 = sub_297885F40(a1);
  v17 = v6;
  v7 = sub_2977FB720(&v16);
  v8 = sub_2978130B8(&v16);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7++;
      sub_2978A8054(v18, v10, 1);
    }

    while (v7 != v9);
  }

  v16 = sub_297886048(a1);
  v17 = v11;
  v12 = sub_2977FB720(&v16);
  result = sub_2978130B8(&v16);
  if (v12 != result)
  {
    v14 = result;
    do
    {
      v15 = *v12++;
      result = sub_2978A8054(v18, v15, 1);
    }

    while (v12 != v14);
  }

  return result;
}

void **sub_2978A7D38(uint64_t *a1)
{
  v2 = a1 + 3;
  sub_297801F64(*a1, "#include <metal_stdlib>\nusing namespace metal;\n\n");
  v3 = sub_2977FB720(v2);
  v4 = sub_2978130B8(v2);
  if (v3 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v15 = sub_2977FD5B0(*v3);
      v8 = sub_2977FB720(&v15);
      v9 = sub_297888638(v8);
      if (v9)
      {
        v10 = sub_297888648(v9);
        v6 |= v10 == 0;
        v7 |= v10 == 1;
      }

      if (v6 & 1) != 0 && (v7)
      {
        break;
      }

      if (++v3 == v5)
      {
        goto LABEL_11;
      }
    }

    v7 = 1;
    v6 = 1;
  }

LABEL_11:
  sub_297801F64(*a1, "template <typename T>\nstatic inline T mod(T x, T y) { return x - y * floor(x / y); }\n\n");
  result = sub_297801F64(*a1, "template <typename T, int V>\nstatic inline vec<T, V> mod(vec<T, V> x, T y) { return x - y * floor(x / y); }\n\n");
  if (v6 & 1) != 0 || (v7)
  {
    sub_297801F64(*a1, "namespace ci {\n\n");
    if (v6)
    {
      sub_297801F64(*a1, "template <typename T>\nstruct sampler {\n\ntexture2d<T, access::sample> texture; \nmetal::sampler sampler; \nfloat4x4 m; \n\nvec<T,4> sample(float2 p) {\n  return texture.sample(sampler, p);\n}\n\nfloat2 transform(float2 p) {\n  float x = dot(float3(p, 1), m[0].xyz);\n  float y = dot(float3(p, 1), m[1].xyz);\n  return float2(x,y);\n}\n\nfloat4 extent() {\n  return m[3]; \n}\n\n}; // struct sampler \n\n");
    }

    if (v7)
    {
      sub_297801F64(*a1, "template <typename T>\nstruct sampler2D {\n\ntexture2d<T, access::sample> texture; \nmetal::sampler sampler; \n\nvec<T,4> texture2D(float2 p) {\n  return texture.sample(sampler, p);\n}\n\n}; // struct sampler2D \n\n");
    }

    sub_297801F64(*a1, "}; // namespace ci \n\n");
    if (sub_2978A50D4(a1[6]))
    {
      sub_297801F64(*a1, "template <typename T>\nstatic inline vec<T,4> _sampler_srgb_to_linear(vec<T,4> s) {\n  s.rgb = sign(s.rgb) * mix(abs(s.rgb) * 0.077399380804954, pow(abs(s.rgb) * 0.947867298578199 + 0.052132701421801, vec<T,3>(2.4)), step(0.04045, abs(s.rgb)));\n  return s;\n}\n\n");
    }

    result = sub_2978A50DC(a1[6]);
    if (result)
    {
      v12 = sub_297801F64(*a1, "static inline vec<T,4> _sampler_swizzle(vec<T,4> s) {\n  return ");
      v13 = sub_2978A50DC(a1[6]);
      v14 = sub_297801F64(v12, v13);
      return sub_297801F64(v14, ";\n}\n\n");
    }
  }

  return result;
}

void **sub_2978A7EDC(uint64_t *a1)
{
  v2 = a1 + 3;
  sub_297801F64(*a1, "struct Params {\n\n  float4 outputRect;\n  float3x3 vertexTransform;\n\n");
  v3 = sub_2977FB720(v2);
  v4 = sub_2978130B8(v2);
  if (v3 != v4)
  {
    v5 = v4;
    while (1)
    {
      v6 = *v3;
      v19 = sub_2977FD5B0(*v3);
      v7 = sub_2977FB720(&v19);
      v8 = sub_297888638(v7);
      if (!v8)
      {
        goto LABEL_7;
      }

      v9 = sub_297888648(v8);
      if (v9 != 1)
      {
        break;
      }

LABEL_9:
      if (++v3 == v5)
      {
        return sub_297801F64(*a1, "};\n\n");
      }
    }

    if (v9)
    {
LABEL_7:
      sub_297801F64(*a1, "  ");
      sub_2978A86CC(a1, v19);
      v15 = sub_297801F64(*a1, " ");
      v16 = sub_29788709C(v6);
      v13 = sub_297801FA8(v15, v16, v17);
      v14 = ";\n";
    }

    else
    {
      sub_297801F64(*a1, "  float4x4 ");
      v10 = *a1;
      v11 = sub_29788709C(v6);
      v13 = sub_297801FA8(v10, v11, v12);
      v14 = "_m;\n";
    }

    sub_297801F64(v13, v14);
    goto LABEL_9;
  }

  return sub_297801F64(*a1, "};\n\n");
}

uint64_t sub_2978A8054(void *a1, uint64_t a2, char a3)
{
  v13[5] = *MEMORY[0x29EDCA608];
  sub_297864964(v13);
  v6 = sub_29788A970(a2);
  v7 = sub_29788A974(a2);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v12[0] = v9;
      sub_2978040A4(v13, v12);
    }

    while (v6 != v8);
  }

  if (!sub_297806904(v13))
  {
    sub_29780B1E8(v12, v13);
    sub_2978A835C(a1, v12[0], v12[1], a3);
  }

  result = sub_2977FD134(v13);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978A812C(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = sub_297885F38(a1);
  sub_2978A7D34(v26, a2, v4);
  v5 = sub_297886294(a1);
  v26[6] = sub_29788AA68(a1);
  v26[3] = sub_2978A479C(a1);
  v26[4] = v6;
  sub_2978A7D38(v26);
  sub_2978A7EDC(v26);
  v24 = sub_297885F40(a1);
  v25 = v7;
  v8 = sub_2977FB720(&v24);
  v9 = sub_2978130B8(&v24);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8;
      sub_29780B1B8(v27);
      v12 = sub_2978862BC(v11);
      for (i = sub_2978862C0(v11); v12 != i; ++v12)
      {
        v22 = *v12;
        if (sub_297886348(v5, v22))
        {
          sub_2978040A4(v27, &v22);
        }
      }

      if (sub_29780406C(v27))
      {
        sub_29780B1E8(&v22, v27);
        sub_2978A835C(v26, v22, v23, 1);
      }

      sub_2977FD134(v27);
      ++v8;
    }

    while (v8 != v10);
  }

  v24 = sub_297886048(a1);
  v25 = v14;
  v15 = sub_2977FB720(&v24);
  result = sub_2978130B8(&v24);
  if (v15 != result)
  {
    v17 = result;
    do
    {
      v18 = *v15;
      sub_29780B1B8(v27);
      v19 = sub_2978862BC(v18);
      for (j = sub_2978862C0(v18); v19 != j; ++v19)
      {
        v22 = *v19;
        if (sub_297886348(v5, v22))
        {
          sub_2978040A4(v27, &v22);
        }
      }

      if (sub_29780406C(v27))
      {
        sub_29780B1E8(&v22, v27);
        sub_2978A835C(v26, v22, v23, 1);
      }

      result = sub_2977FD134(v27);
      ++v15;
    }

    while (v15 != v17);
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2978A835C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v42[0] = a2;
  v42[1] = a3;
  v40 = a1;
  v41 = a4;
  if (*(a1 + 2))
  {
    v5 = sub_2977FB720(v42);
    if (sub_29788AE7C(v5))
    {
      v6 = sub_2977FB720(v42);
      v7 = sub_2978130B8(v42);
      if (v6 == v7)
      {
        return;
      }

      v8 = v7;
      v9 = 1;
      do
      {
        v39 = sub_29781BF50(*v6);
        v10 = a1[2];
        if (v10 && (v38[0] = sub_297886EF0(v10, &v39), v38[1] = v11, v37[0] = sub_297886F58(a1[2]), v37[1] = v12, sub_29782EE3C(v38, v37)))
        {
          v13 = v39;
          v14 = sub_2977FB720(v38);
          sub_2978A8A74(a1, v13, *(v14 + 8));
          sub_297888A70(a1, 0);
          sub_2978A8B34(&v40);
        }

        else
        {
          if (v9)
          {
            sub_2978A8B58(a1, v39);
            sub_2978A8BF4(a1, v39);
          }

          else
          {
            sub_297801F64(*a1, ",");
          }

          v15 = sub_297801F64(*a1, " ");
          v16 = sub_29788709C(v39);
          sub_297801FA8(v15, v16, v17);
          sub_297887314(a1, v39);
          if (sub_29783CFFC(v39))
          {
            sub_297801F64(*a1, " = ");
            v18 = sub_29783CFFC(v39);
            sub_2978A8CC8(a1, v18);
          }

          v9 = 0;
        }

        ++v6;
      }

      while (v6 != v8);
      if (v9)
      {
        return;
      }

LABEL_26:
      sub_297888A70(a1, 0);
      goto LABEL_40;
    }
  }

  v19 = sub_2977FB720(v42);
  v20 = sub_29788AE80(v19);
  v21 = sub_2977FB720(v42);
  v22 = sub_2978130B8(v42);
  v23 = v22;
  v24 = v21 == v22;
  if (v20)
  {
    if (v21 != v22)
    {
      v25 = 1;
      do
      {
        v26 = *v21;
        if ((v25 & 1) == 0)
        {
          sub_297801F64(*a1, ",");
        }

        sub_297801F64(*a1, " ");
        v27 = sub_29781BF50(v26);
        if (sub_2977FD5B0(v27))
        {
          v28 = *a1;
          v29 = sub_2977FD5B0(v27);
          v30 = sub_29788709C(v29);
          sub_297801FA8(v28, v30, v31);
        }

        else
        {
          sub_297888B98(v27);
        }

        v25 = 0;
        ++v21;
      }

      while (v21 != v23);
    }

    goto LABEL_26;
  }

  while (!v24)
  {
    v32 = *v21;
    v38[0] = *v21;
    if (!*(a1 + 2))
    {
      if (sub_29788AE7C(v38))
      {
        goto LABEL_32;
      }

      v32 = v38[0];
    }

    sub_2978A8CE0(a1, v32);
LABEL_32:
    v24 = ++v21 == v23;
  }

  if (*(a1 + 2))
  {
    v33 = sub_2977FB720(v42);
    if ((sub_29788AB2C(v33) & 1) == 0)
    {
      v34 = sub_2977FB720(v42);
      if ((sub_29788AB98(v34) & 1) == 0)
      {
        v35 = sub_2977FB720(v42);
        if ((sub_29788AB9C(v35) & 1) == 0)
        {
          sub_297888A70(a1, 0);
        }
      }
    }

    if (*(a1 + 2))
    {
      goto LABEL_40;
    }
  }

  v36 = sub_2977FB720(v42);
  if ((sub_29788AE7C(v36) & 1) == 0)
  {
LABEL_40:
    sub_2978A8B34(&v40);
  }
}

uint64_t sub_2978A8684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = a3;
  sub_297804560((a1 + 24));
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void **sub_2978A86CC(uint64_t *a1, uint64_t a2)
{
  v46 = a2;
  if (!sub_2977FB720(&v46))
  {
    v11 = *a1;
    v12 = " /* <> */ ";
    return sub_297801F64(v11, v12);
  }

  v3 = sub_2977FB720(&v46);
  v4 = sub_29788799C(v3);
  if (!v4)
  {
    v14 = sub_2977FB720(&v46);
    v15 = sub_2978877CC(v14);
    if (v15)
    {
      v16 = v15;
      v17 = sub_2977FB7B8(v15);
      v18 = sub_29788862C(v17);
      v19 = *a1;
      if (v18 == 3)
      {
        v20 = "float";
      }

      else
      {
        v20 = "half";
      }

      sub_297801F64(*a1, v20);
      v21 = sub_297887B08(v16);
      v22 = sub_297887A38(v16);
      v23 = sub_297801FA0(*a1, v22);
      v10 = sub_297801F64(v23, "x");
      v9 = v21;
      return sub_297801FA0(v10, v9);
    }

    v24 = sub_2977FB720(&v46);
    v25 = sub_297888638(v24);
    if (v25)
    {
      v26 = v25;
      v27 = sub_297888648(v25);
      if (v27)
      {
        if (v27 != 1)
        {
LABEL_21:
          v30 = sub_29788863C(v26);
          if (v30 <= 3)
          {
            sub_297801F64(*a1, (&off_29EE80D68)[v30]);
          }

          v11 = *a1;
          v12 = ">";
          return sub_297801F64(v11, v12);
        }

        v28 = "ci::sampler2D<";
      }

      else
      {
        v28 = "ci::sampler<";
      }

      sub_297801F64(*a1, v28);
      goto LABEL_21;
    }

    v29 = sub_2977FB720(&v46);
    if (sub_297888654(v29))
    {
      v11 = *a1;
      v12 = "void";
      return sub_297801F64(v11, v12);
    }

    v31 = sub_2977FB720(&v46);
    v32 = sub_297888658(v31);
    if (v32)
    {
      v33 = *a1;
      v34 = sub_2978B5B84(v32);
      return sub_297801FA8(v33, v34, v35);
    }

    v36 = sub_2977FB720(&v46);
    v37 = sub_29788865C(v36);
    if (v37)
    {
      v38 = sub_2977FB7B8(v37);
    }

    else
    {
      v39 = sub_2977FB720(&v46);
      v40 = sub_297887DB4(v39);
      if (v40)
      {
        v33 = *a1;
        v34 = sub_2978B5410(v40);
        return sub_297801FA8(v33, v34, v35);
      }

      v41 = sub_2977FB720(&v46);
      v42 = sub_297887E3C(v41);
      if (v42)
      {
        v43 = sub_2977FB7B8(v42);
        return sub_2978A8938(a1, v43);
      }

      v44 = sub_2977FB720(&v46);
      v45 = sub_297888660(v44);
      if (!v45)
      {
        v11 = *a1;
        v12 = " /* <unknown> */ ";
        return sub_297801F64(v11, v12);
      }

      v38 = sub_2977FD5B0(v45);
    }

    return sub_2978A86CC(a1, v38);
  }

  v5 = v4;
  v6 = sub_2977FB7B8(v4);
  v7 = sub_29788862C(v6);
  sub_297801F64(*a1, (&off_29EE80D40)[v7 - 3]);
  v8 = *a1;
  v9 = sub_297887A38(v5);
  v10 = v8;
  return sub_297801FA0(v10, v9);
}

void **sub_2978A8938(uint64_t a1, _DWORD *a2)
{
  v4 = sub_297811C44(a2);
  sub_2978A8A40(v4);
  sub_2978885D4(a2);
  sub_297801F64(*a1, "// uniform ");
  v5 = *a1;
  v6 = sub_29788709C(a2);
  sub_297801FA8(v5, v6, v7);
  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v8 = sub_297803A7C((a2 + 4));
  v9 = sub_2978885E0((a2 + 4));
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8++;
      sub_2978884C4(a1);
      sub_2978A8054(a1, v11, 1);
    }

    while (v8 != v10);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v12 = *a1;

  return sub_297801F64(v12, "}");
}

uint64_t sub_2978A8A40(int a1)
{
  v2 = a1;
  result = sub_297887D28(&v2);
  if ((result & 1) == 0)
  {
    return sub_297887D40(&v2);
  }

  return result;
}

void **sub_2978A8A74(uint64_t *a1, uint64_t a2, float *a3)
{
  sub_297801F64(*a1, "const ");
  sub_2978A8BF4(a1, a2);
  v6 = sub_297801F64(*a1, " ");
  v7 = sub_29788709C(a2);
  sub_297801FA8(v6, v7, v8);
  sub_297887314(a1, a2);
  sub_297801F64(*a1, " = ");
  v9 = sub_2977FD5B0(a2);
  v10 = *a1;

  return sub_297887564(a3, v9, v10);
}

void **sub_2978A8B34(void **result)
{
  if (*(result + 8) == 1)
  {
    return sub_297801F64(**result, "\n");
  }

  return result;
}

uint64_t sub_2978A8B58(uint64_t *a1, _DWORD *a2)
{
  v4 = sub_297816700(a2);
  sub_2978A8A40(v4);
  sub_297887CE0(a2);
  v5 = sub_297887CEC(a2) - 2;
  if (v5 <= 6 && ((0x69u >> v5) & 1) != 0)
  {
    sub_297801F64(*a1, (&off_29EE80D88)[v5]);
  }

  result = sub_29783C248(a2);
  if (result)
  {

    return sub_297887D1C(a2);
  }

  return result;
}

uint64_t sub_2978A8BF4(uint64_t *a1, uint64_t a2)
{
  v13 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v13);
  v5 = sub_297887DB4(v4);
  if (v5)
  {
    v6 = sub_2977FB7B8(v5);
    sub_2978A8CF8(a1, v6, a2);
  }

  else
  {
    v13 = sub_2977FD5B0(a2);
    v7 = sub_2977FB720(&v13);
    v8 = sub_297887E3C(v7);
    if (v8)
    {
      v9 = sub_2977FB7B8(v8);
      sub_2978A8938(a1, v9);
    }

    else
    {
      v10 = sub_2977FD5B0(a2);
      sub_2978A86CC(a1, v10);
    }
  }

  LODWORD(v13) = 0;
  v11 = sub_2977FD5B0(a2);
  result = sub_2978881F0(v11, &v13);
  if (result)
  {
    result = sub_297888250(a2);
    if ((result & 1) == 0)
    {
      return sub_29788825C(a1, v13);
    }
  }

  return result;
}

void sub_2978A8CC8(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    sub_2978A8E88(a1, a2);
  }

  else
  {
    sub_297801F64(*a1, " /* <none> */ ");
  }
}

void sub_2978A8CE0(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    sub_2978A9F1C(a1, a2);
  }

  else
  {
    sub_297801F64(*a1, " /* <none> */ ");
  }
}

void **sub_2978A8CF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_297888358(a3))
  {

    return sub_2978A8D7C(a1, a2);
  }

  else
  {
    v6 = *a1;
    v8 = sub_29788709C(a2);

    return sub_297801FA8(v6, v8, v7);
  }
}

void **sub_2978A8D7C(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "struct");
  if (sub_297888470(a2))
  {
    v4 = sub_297801F64(*a1, " ");
    v5 = sub_29788709C(a2);
    sub_297801FA8(v4, v5, v6);
  }

  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v7 = sub_297803A7C(a2 + 16);
  v8 = sub_297888490(a2 + 16);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7++;
      sub_2978884C4(a1);
      sub_2978A8054(a1, v10, 1);
    }

    while (v7 != v9);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v11 = *a1;

  return sub_297801F64(v11, "}");
}

void sub_2978A8E88(uint64_t *a1, uint64_t a2)
{
  switch(sub_29787E544(a2))
  {
    case 0u:

      sub_2978899A4(a1, a2);
      return;
    case 1u:

      sub_2978A7044(a1, a2);
      return;
    case 2u:

      sub_297889A40(a1, a2);
      return;
    case 3u:

      sub_2978A9214(a1, a2);
      return;
    case 4u:

      sub_297889AE8(a1, a2);
      return;
    case 5u:

      sub_2978A9274(a1, a2);
      return;
    case 6u:

      sub_2978A9314(a1, a2);
      return;
    case 7u:

      sub_2978A93B0(a1, a2);
      return;
    case 8u:

      sub_2978A943C(a1, a2);
      return;
    case 9u:

      sub_2978A954C(a2);
      return;
    case 0xAu:

      sub_297889DEC(a2);
      return;
    case 0xBu:

      sub_2978A9550(a1, a2);
      return;
    case 0xCu:

      sub_2978A9600(a1, a2);
      return;
    case 0xDu:
      v4 = a1;
      v5 = a2;

      goto LABEL_10;
    case 0xEu:
      v4 = a1;
      v5 = a2;

LABEL_10:
      sub_2978A96FC(v4, v5);
      return;
    case 0xFu:

      sub_2978A9774(a1, a2);
      return;
    case 0x10u:

      sub_2978A98A4(a1, a2);
      return;
    case 0x11u:

      sub_2978A991C(a1, a2);
      return;
    case 0x12u:

      sub_2978A996C(a1, a2);
      return;
    case 0x13u:

      sub_2978A9B9C(a1, a2);
      return;
    case 0x14u:

      sub_2978A9CF4(a1, a2);
      return;
    case 0x15u:
      v6 = a1;
      v7 = a2;

      goto LABEL_49;
    case 0x16u:
      v6 = a1;
      v7 = a2;

LABEL_49:
      sub_2978A9E44(v6, v7);
      break;
    default:
      return;
  }
}

uint64_t sub_2978A9214(uint64_t *a1, uint64_t a2)
{
  sub_29788A39C(a2, v7);
  v3 = *a1;
  v4 = sub_2977FBD9C(v7);
  v5 = sub_29781E750(v3, v4);
  sub_297801F64(v5, "f");
  return sub_2977FA598(v7);
}

uint64_t sub_2978A9274(uint64_t *a1, uint64_t a2)
{
  if (sub_29788A3A8(a2))
  {
    v4 = sub_2977FD5B0(a2);
    sub_2978A9E84(a1, v4);
  }

  v5 = sub_29788A44C(a2);
  if (v5 <= 6)
  {
    sub_297801F64(*a1, (&off_29EE80DC0)[v5]);
  }

  result = sub_29788A3A8(a2);
  if ((result & 1) == 0)
  {
    v7 = sub_2977FD5B0(a2);

    return sub_2978A9E84(a1, v7);
  }

  return result;
}

void **sub_2978A9314(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A9E84(a1, v4);
  sub_297801F64(*a1, " ");
  v5 = sub_29788A794(a2);
  if (v5 <= 0x14)
  {
    sub_297801F64(*a1, (&off_29EE80DF8)[v5]);
  }

  sub_297801F64(*a1, " ");
  v6 = sub_29783CFFC(a2);

  return sub_2978A9E84(a1, v6);
}

void **sub_2978A93B0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A9E84(a1, v4);
  sub_297801F64(*a1, " ? ");
  v5 = sub_29783CFFC(a2);
  sub_2978A9E84(a1, v5);
  sub_297801F64(*a1, " : ");
  v6 = sub_297805510(a2);

  return sub_2978A9E84(a1, v6);
}

void **sub_2978A943C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a2);
  v5 = sub_2977FD5B0(a2);
  v6 = sub_2978A7BC4(v4);
  if (v6 && sub_29788A7AC(v6) - 1 < 2)
  {
    sub_297801F64(*a1, "outputTexture.write(");
    sub_2978A8CC8(a1, v5);
    v7 = *a1;

    return sub_297801F64(v7, ", _wc)");
  }

  else
  {
    sub_2978A8CC8(a1, v4);
    sub_297801F64(*a1, " ");
    v9 = sub_29788A7A0(a2);
    if (v9 < 0xC)
    {
      sub_297801F64(*a1, (&off_29EE80EA0)[v9]);
    }

    sub_297801F64(*a1, " ");

    return sub_2978A8CC8(a1, v5);
  }
}

void **sub_2978A9550(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);
  if (sub_29788AB30(a1[5]))
  {
    v4 = sub_297892FD8(v3);
    v10 = sub_2977FD5B0(v4);
    v5 = sub_2977FB720(&v10);
    if (!sub_297888638(v5) && sub_297887CEC(v4) == 7)
    {
      sub_297801F64(*a1, "params.");
    }
  }

  v6 = *a1;
  v7 = sub_29788709C(v3);
  return sub_297801FA8(v6, v7, v8);
}

void **sub_2978A9600(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A86CC(a1, v4);
  v12 = 0;
  v5 = sub_2977FD5B0(a2);
  if (sub_2978881F0(v5, &v12))
  {
    sub_29788825C(a1, v12);
  }

  sub_297801F64(*a1, "(");
  v6 = sub_297803A7C(a2 + 8);
  v7 = sub_29788A7C4(a2 + 8);
  if (v6 != v7)
  {
    v8 = v7;
    v9 = v7 - v6;
    do
    {
      sub_2978A8CC8(a1, *v6);
      if (v9 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v6;
      v9 -= 8;
    }

    while (v6 != v8);
  }

  v10 = *a1;

  return sub_297801F64(v10, ")");
}

void **sub_2978A96FC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A9E84(a1, v4);
  v5 = sub_297801F64(*a1, ".");
  v7 = sub_29788A810(a2);

  return sub_297801FA8(v5, v7, v6);
}

void sub_2978A9774(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A9E84(a1, v4);
  v11[0] = sub_29788A810(a2);
  v11[1] = v5;
  if (sub_2977FB7B8(v11))
  {
    v6 = sub_2977FB7B8(v11);
    v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    if (v7 && sub_2977FB7B8(v11))
    {
      v8 = 0;
      do
      {
        v9 = sub_297803A20(v11, v8);
        if (v9 > 0x66u)
        {
          if (v9 == 114)
          {
            v9 = 120;
          }

          else if (v9 == 103)
          {
            v9 = 121;
          }
        }

        else if (v9 == 97)
        {
          v9 = 119;
        }

        else if (v9 == 98)
        {
          v9 = 122;
        }

        v7[v8++] = v9;
      }

      while (v8 < sub_2977FB7B8(v11));
    }

    v7[sub_2977FB7B8(v11)] = 0;
    v10 = sub_297801F64(*a1, ".");
    sub_297801F64(v10, v7);
    free(v7);
  }
}

void **sub_2978A98A4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978A9E84(a1, v4);
  sub_297801F64(*a1, "[");
  v5 = sub_29783CFFC(a2);
  sub_2978A8CC8(a1, v5);
  v6 = *a1;

  return sub_297801F64(v6, "]");
}

void **sub_2978A991C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FD5B0(a2);
  sub_2978A9E84(a1, v3);
  v4 = *a1;

  return sub_297801F64(v4, ".length()");
}

void **sub_2978A996C(uint64_t *a1, uint64_t a2)
{
  v4 = *sub_297803A7C(a2 + 8);
  v5 = *(sub_297803A7C(a2 + 8) + 8);
  v6 = sub_29788A7AC(a2);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      sub_2978A8CC8(a1, v4);
      v7 = *a1;
      v8 = ".extent()";
      goto LABEL_22;
    }

    if (v6 == 4)
    {
      sub_2978A8CC8(a1, v4);
      v7 = *a1;
      v8 = ".transform(_dc)";
LABEL_22:

      return sub_297801F64(v7, v8);
    }

    sub_2978A8CC8(a1, v4);
    v14 = *a1;
    v15 = ".texture2D(";
    goto LABEL_15;
  }

  if (v6 != 1)
  {
    sub_2978A8CC8(a1, v4);
    v14 = *a1;
    v15 = ".transform(";
LABEL_15:
    sub_297801F64(v14, v15);
    sub_2978A8CC8(a1, v5);
    v7 = *a1;
LABEL_21:
    v8 = ")";
    goto LABEL_22;
  }

  v9 = sub_2978A50DC(a1[6]);
  if (v9)
  {
    sub_297801F64(*a1, "_sampler_swizzle(");
  }

  v10 = sub_2978A50D4(a1[6]);
  if (v10)
  {
    sub_297801F64(*a1, "_sampler_srgb_to_linear(");
  }

  v11 = sub_2978A7C00(a1[6]);
  if (v11)
  {
    v12 = v11;
    sub_297801F64(*a1, "(");
    sub_2978A8CC8(a1, v4);
    sub_297801F64(*a1, ".sample(");
    sub_2978A8CC8(a1, v5);
    sub_297801F64(*a1, ")");
    v13 = sub_297801F64(*a1, v12);
  }

  else
  {
    sub_2978A8CC8(a1, v4);
    sub_297801F64(*a1, ".sample(");
    sub_2978A8CC8(a1, v5);
    v13 = *a1;
  }

  result = sub_297801F64(v13, ")");
  if (v10)
  {
    result = sub_297801F64(*a1, ")");
  }

  if (v9)
  {
    v7 = sub_297801F64(*a1, v9);
    goto LABEL_21;
  }

  return result;
}

void **sub_2978A9B9C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29788A888(a2) - 65;
  if (v4 >= 6)
  {
    v9 = sub_29788A888(a2);
    sub_297801F64(*a1, (&off_29EE80F30)[v9 - 1]);
    v10 = sub_297803A7C(a2 + 8);
    v11 = sub_29788A894(a2 + 8);
    if (v10 == v11)
    {
      v8 = ")";
    }

    else
    {
      v12 = v11;
      v13 = v11 - v10;
      v8 = ")";
      do
      {
        sub_2978A8CC8(a1, *v10);
        if (v13 >= 9)
        {
          sub_297801F64(*a1, ", ");
        }

        ++v10;
        v13 -= 8;
      }

      while (v10 != v12);
    }
  }

  else
  {
    v5 = (&off_29EE80F00)[v4];
    v6 = *sub_297803A7C(a2 + 8);
    v7 = *(sub_297803A7C(a2 + 8) + 8);
    sub_297801F64(*a1, "((");
    sub_2978A8CC8(a1, v6);
    sub_297801F64(*a1, v5);
    sub_2978A8CC8(a1, v7);
    v8 = "))";
  }

  v14 = *a1;

  return sub_297801F64(v14, v8);
}

void **sub_2978A9CF4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_29788709C(v4);
  v7 = v6;
  sub_2977FB7B4(v21, "destCoord");
  v8 = sub_297804D28(v5, v7, v21[0], v21[1]);
  v9 = *a1;
  if (v8)
  {
    v10 = "_dc";
    v11 = *a1;
  }

  else
  {
    v12 = sub_2977FD5B0(a2);
    v13 = sub_29788709C(v12);
    v15 = sub_297801FA8(v9, v13, v14);
    sub_297801F64(v15, "(");
    v16 = sub_297803A7C(a2 + 8);
    v17 = sub_29788A8E0(a2 + 8);
    if (v16 != v17)
    {
      v18 = v17;
      v19 = v17 - v16;
      do
      {
        sub_2978A8CC8(a1, *v16);
        if (v19 >= 9)
        {
          sub_297801F64(*a1, ", ");
        }

        ++v16;
        v19 -= 8;
      }

      while (v16 != v18);
    }

    if (sub_29788A914(a2 + 8))
    {
      sub_297801F64(*a1, ", ");
    }

    sub_297801F64(*a1, "_dc");
    v11 = *a1;
    v10 = ")";
  }

  return sub_297801F64(v11, v10);
}

uint64_t sub_2978A9E44(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);

  return sub_2978A8CC8(a1, v3);
}

void **sub_2978A9E84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == 1 && sub_29788A458(a2))
  {
    sub_297801F64(*a1, "(");
  }

  result = sub_2978A8CC8(a1, a2);
  if (*(a1 + 12) == 1)
  {
    result = sub_29788A458(a2);
    if (result)
    {
      v5 = *a1;

      return sub_297801F64(v5, ")");
    }
  }

  return result;
}

void sub_2978A9F1C(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = sub_29786AC48(a2);
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {

        sub_2978AA5A8(a1, a2);
      }

      else
      {

        sub_2978AA5AC(a1, a2);
      }
    }

    else if ((v4 - 7) >= 2)
    {

      sub_2978AA524(a1, a2);
    }
  }

  else if (v4 > 2)
  {
    if (v4 == 3)
    {

      sub_297886C88(a1, a2);
    }

    else if (v4 == 4)
    {

      sub_2978AA4F8(a2);
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {

      sub_2978AA1B0(a1, a2);
    }

    else
    {

      sub_2978AA2D4(a1, a2);
    }
  }

  else
  {

    sub_2978AA0AC(a1, a2);
  }
}

void sub_2978AA0AC(uint64_t *a1, _DWORD *a2)
{
  v14 = a2;
  v3 = a1[2];
  if (v3)
  {
    v13[0] = sub_297886EF0(v3, &v14);
    v13[1] = v4;
    v12[0] = sub_297886F58(a1[2]);
    v12[1] = v5;
    if (sub_29782EE3C(v13, v12))
    {
      v6 = v14;
      v7 = sub_2977FB720(v13);
      sub_2978A8A74(a1, v6, *(v7 + 8));
      return;
    }

    a2 = v14;
  }

  sub_2978A8B58(a1, a2);
  sub_2978A8BF4(a1, v14);
  v8 = sub_297801F64(*a1, " ");
  v9 = sub_29788709C(v14);
  sub_297801FA8(v8, v9, v10);
  sub_297887314(a1, v14);
  if (sub_29783CFFC(v14))
  {
    sub_297801F64(*a1, " = ");
    v11 = sub_29783CFFC(v14);
    sub_2978A8CC8(a1, v11);
  }
}

uint64_t sub_2978AA1B0(uint64_t *a1, _DWORD *a2)
{
  if (sub_297888998(a2))
  {
    sub_297801F64(*a1, "const ");
  }

  if (sub_297887CC8(a2))
  {
    sub_297888A04(a2);
  }

  v4 = sub_2977FD5B0(a2);
  sub_2978A86CC(a1, v4);
  v11 = -1;
  v5 = sub_2977FD5B0(a2);
  if (sub_2978881F0(v5, &v11) && (sub_297888250(a2) & 1) == 0)
  {
    sub_29788825C(a1, v11);
  }

  sub_297801F64(*a1, " ");
  result = sub_297888470(a2);
  if (result)
  {
    v7 = *a1;
    v8 = sub_29788709C(a2);
    sub_297801FA8(v7, v8, v9);
    result = sub_297888250(a2);
    if (result)
    {
      v10 = v11;

      return sub_29788825C(a1, v10);
    }
  }

  return result;
}

void **sub_2978AA2D4(uint64_t *a1, _DWORD *a2)
{
  a1[5] = a2;
  if (sub_29788AB30(a2))
  {

    return sub_2978AA5B0(a1, a2);
  }

  else
  {
    v5 = sub_29788709C(a2);
    v7 = v6;
    sub_2977FB7B4(v19, "destCoord");
    result = sub_297804D28(v5, v7, v19[0], v19[1]);
    if ((result & 1) == 0)
    {
      sub_297801F64(*a1, "static ");
      if (sub_297888A1C(a2))
      {
        sub_297888A28(a2);
      }

      v8 = sub_2978735BC(a2);
      sub_2978A86CC(a1, v8);
      LODWORD(v19[0]) = 0;
      v9 = sub_2978735BC(a2);
      if (sub_2978881F0(v9, v19))
      {
        sub_29788825C(a1, v19[0]);
      }

      v10 = sub_297801F64(*a1, " ");
      v11 = sub_29788709C(a2);
      v13 = sub_297801FA8(v10, v11, v12);
      sub_297801F64(v13, "(");
      v14 = sub_297803A7C((a2 + 4));
      v15 = sub_297888A34((a2 + 4));
      if (v14 != v15)
      {
        v16 = v15;
        v17 = v15 - v14;
        do
        {
          sub_2978A8CE0(a1, *v14);
          if (v17 >= 9)
          {
            sub_297801F64(*a1, ", ");
          }

          ++v14;
          v17 -= 8;
        }

        while (v14 != v16);
      }

      if (sub_297888A90(a2 + 4))
      {
        sub_297801F64(*a1, ", ");
      }

      sub_297801F64(*a1, "float2 _dc)");
      if (sub_297888A68(a2))
      {
        sub_297801F64(*a1, " ");
        v18 = sub_297888A68(a2);
        sub_2978AA8CC(a1, v18);
        return sub_297801F64(*a1, "\n");
      }

      else
      {
        return sub_297888A70(a1, 0);
      }
    }
  }

  return result;
}

uint64_t sub_2978AA4F8(uint64_t a1)
{
  v1 = sub_29782AFB0(a1);

  return sub_2978A8A40(v1);
}

void **sub_2978AA524(uint64_t *a1, unsigned __int16 *a2)
{
  if (sub_2977FD5B0(a2))
  {
    v4 = *a1;
    v5 = sub_2977FD5B0(a2);
    v7 = sub_29788709C(v5);

    return sub_297801FA8(v4, v7, v6);
  }

  else
  {

    return sub_297888B98(a2);
  }
}

void **sub_2978AA5B0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_297801F64(*a1, "kernel void ");
  v5 = sub_29788709C(a2);
  sub_297801FA8(v4, v5, v6);
  v34[0] = sub_29788709C(a2);
  v34[1] = v7;
  sub_2977FB7B4(v33, "main");
  if (sub_2977FB778(v34, v33[0], v33[1]))
  {
    sub_297801F64(*a1, "MetalEntryPoint");
  }

  sub_297801F64(*a1, "(texture2d<");
  v32 = a2;
  v8 = sub_2978483EC(a2);
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_8;
    }

    v9 = "half";
  }

  else
  {
    v9 = "float";
  }

  sub_297801F64(*a1, v9);
LABEL_8:
  sub_297801F64(*a1, ", access::write> outputTexture [[texture(0)]]");
  v10 = sub_2977FB720((a1 + 3));
  v11 = sub_2978130B8(a1 + 3);
  if (v10 != v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = *v10;
      v34[0] = sub_2977FD5B0(*v10);
      v16 = sub_2977FB720(v34);
      if (sub_297888638(v16))
      {
        break;
      }

LABEL_17:
      if (++v10 == v12)
      {
        goto LABEL_18;
      }
    }

    sub_297801F64(*a1, ", \n");
    v34[0] = sub_2977FD5B0(v15);
    v17 = sub_2977FB720(v34);
    v18 = sub_297888638(v17);
    v19 = sub_29788709C(v15);
    v21 = v20;
    sub_297801F64(*a1, "texture2d<");
    v22 = sub_29788863C(v18);
    if (v22)
    {
      if (v22 != 1)
      {
LABEL_16:
        sub_297801F64(*a1, ", access::sample> ");
        v24 = sub_297801FA8(*a1, v19, v21);
        sub_297801F64(v24, "_texture");
        v25 = sub_297801F64(*a1, " [[ texture(");
        v26 = sub_297801FA0(v25, v14);
        sub_297801F64(v26, ") ]]");
        sub_297801F64(*a1, ", sampler ");
        v27 = sub_297801FA8(*a1, v19, v21);
        sub_297801F64(v27, "_sampler");
        v28 = sub_297801F64(*a1, " [[ sampler(");
        v29 = sub_297801FA0(v28, v13);
        sub_297801F64(v29, ") ]]");
        ++v13;
        ++v14;
        goto LABEL_17;
      }

      v23 = "half";
    }

    else
    {
      v23 = "float";
    }

    sub_297801F64(*a1, v23);
    goto LABEL_16;
  }

LABEL_18:
  sub_297801F64(*a1, ",\n");
  sub_297801F64(*a1, "constant Params &params [[ buffer(0) ]], ");
  sub_297801F64(*a1, "uint2 gid [[ thread_position_in_grid ]])");
  if (!sub_297888A68(v32))
  {
    return sub_297888A70(a1, 0);
  }

  sub_297801F64(*a1, " ");
  v30 = sub_297888A68(v32);
  sub_2978AA8CC(a1, v30);
  return sub_297801F64(*a1, "\n");
}

void **sub_2978AA8CC(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_2978AA8E4(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

uint64_t sub_2978AA8E4(uint64_t *a1, unsigned __int8 *a2)
{
  result = sub_29786AC48(a2);
  switch(result)
  {
    case 0:

      result = sub_2978AAB24(a1, a2);
      break;
    case 1:

      result = sub_297888F38(a1);
      break;
    case 2:

      result = sub_2978AAE00(a1, a2);
      break;
    case 3:

      result = sub_2978AAE0C(a1, a2);
      break;
    case 4:

      result = sub_2978AAF10(a1, a2);
      break;
    case 5:

      result = sub_2978AAF88(a1, a2);
      break;
    case 6:

      result = sub_297889134(a1);
      break;
    case 7:

      result = sub_2978AAFEC(a1, a2);
      break;
    case 8:

      result = sub_2978AB104(a1, a2);
      break;
    case 9:

      result = sub_2978AB190(a1, a2);
      break;
    case 10:

      result = sub_297889390(a1);
      break;
    case 11:

      result = sub_2978893D8(a1);
      break;
    case 13:

      result = sub_2978AB238(a1, a2);
      break;
    case 14:

      result = sub_2978A9E44(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

void **sub_2978AAB24(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "{\n");
  if (sub_29788AB30(*(a1 + 40)) && (*(a1 + 56) & 1) == 0)
  {
    sub_297801F64(*a1, "\n");
    sub_297801F64(*a1, "  if (gid.x >= abs(params.outputRect.z) || gid.y >= abs(params.outputRect.w)) return;\n\n");
    sub_297801F64(*a1, "  float2 _dc = static_cast<float2>(gid) + params.outputRect.xy + float2(0.5,0.5);\n  _dc = (float3(_dc.xy,1.0) * params.vertexTransform).xy;\n\n");
    sub_297801F64(*a1, "  uint2 _wc = uint2(gid.x, gid.y + (params.outputRect.w < 0) * ((-params.outputRect.w-1)-2*gid.y));\n  _wc += static_cast<uint2>(params.outputRect.xy);\n\n");
    v4 = sub_2977FB720(a1 + 24);
    v5 = sub_2978130B8((a1 + 24));
    if (v4 != v5)
    {
      v6 = v5;
      do
      {
        v7 = *v4;
        v34 = sub_2977FD5B0(*v4);
        v8 = sub_2977FB720(&v34);
        v9 = sub_297888638(v8);
        v10 = sub_29788709C(v7);
        if (v9)
        {
          v12 = v10;
          v13 = v11;
          sub_297801F64(*a1, "  ");
          sub_2977FDEF4(&v34, v9);
          sub_2978A86CC(a1, v34);
          v14 = sub_297801F64(*a1, " ");
          v15 = sub_297801FA8(v14, v12, v13);
          sub_297801F64(v15, " = ");
          v16 = sub_297888648(v9);
          if (v16 == 1)
          {
            v25 = sub_297801F64(*a1, "{ ");
            v26 = sub_297801FA8(v25, v12, v13);
            v27 = sub_297801F64(v26, "_texture, ");
            v28 = sub_297801FA8(v27, v12, v13);
            v23 = sub_297801F64(v28, "_sampler");
            v24 = " };\n";
            goto LABEL_10;
          }

          if (!v16)
          {
            v17 = sub_297801F64(*a1, "{ ");
            v18 = sub_297801FA8(v17, v12, v13);
            v19 = sub_297801F64(v18, "_texture, ");
            v20 = sub_297801FA8(v19, v12, v13);
            v21 = sub_297801F64(v20, "_sampler, ");
            v22 = sub_297801F64(v21, "params.");
            v23 = sub_297801FA8(v22, v12, v13);
            v24 = "_m };\n";
LABEL_10:
            sub_297801F64(v23, v24);
          }
        }

        ++v4;
      }

      while (v4 != v6);
    }

    sub_297801F64(*a1, "\n");
    *(a1 + 56) = 1;
  }

  ++*(a1 + 8);
  v29 = sub_297803A7C(a2 + 8);
  v30 = sub_297889524(a2 + 8);
  if (v29 != v30)
  {
    v31 = v30;
    do
    {
      v32 = *v29++;
      sub_2978884C4(a1);
      sub_2978AA8CC(a1, v32);
      sub_297889558(a1, v32);
      sub_297801F64(*a1, "\n");
    }

    while (v29 != v31);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  return sub_297801F64(*a1, "}");
}

void **sub_2978AAE0C(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "if (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978A8CC8(a1, v4);
  }

  sub_297801F64(*a1, ") ");
  if (sub_2977FD5B0(a2))
  {
    v5 = sub_2977FD5B0(a2);
    sub_2978AA8CC(a1, v5);
    v6 = sub_2977FD5B0(a2);
    sub_297889558(a1, v6);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  result = sub_29783CFFC(a2);
  if (result)
  {
    sub_297801F64(*a1, " else ");
    v8 = sub_29783CFFC(a2);
    sub_2978AA8CC(a1, v8);
    v9 = sub_29783CFFC(a2);

    return sub_297889558(a1, v9);
  }

  return result;
}

uint64_t sub_2978AAF10(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "switch (");
  v4 = sub_2977FB7B8(a2);
  sub_2978A8CC8(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);

  return sub_2978AA8CC(a1, v5);
}

void **sub_2978AAF88(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "case ");
  v4 = sub_29783CFFC(a2);
  sub_2978A8CC8(a1, v4);
  v5 = *a1;

  return sub_297801F64(v5, ": ");
}

void **sub_2978AAFEC(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "for (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978AA8CC(a1, v4);
    v5 = sub_2977FB7B8(a2);
    sub_297889558(a1, v5);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  sub_297801F64(*a1, " ");
  if (sub_2977FD5B0(a2))
  {
    v6 = sub_2977FD5B0(a2);
    sub_2978AA8CC(a1, v6);
  }

  sub_297888A70(a1, 1);
  if (sub_29783CFFC(a2))
  {
    v7 = sub_29783CFFC(a2);
    sub_2978A8CC8(a1, v7);
  }

  sub_297801F64(*a1, ") ");
  v8 = sub_297805510(a2);
  sub_2978AA8CC(a1, v8);
  v9 = sub_297805510(a2);

  return sub_297889558(a1, v9);
}

void **sub_2978AB104(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "while (");
  v4 = sub_2977FB7B8(a2);
  sub_2978AA8CC(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);
  sub_2978AA8CC(a1, v5);
  v6 = sub_2977FD5B0(a2);

  return sub_297889558(a1, v6);
}

void **sub_2978AB190(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "do ");
  v4 = sub_2977FB7B8(a2);
  sub_2978AA8CC(a1, v4);
  v5 = sub_2977FB7B8(a2);
  sub_297889558(a1, v5);
  sub_297801F64(*a1, " while (");
  v6 = sub_2977FD5B0(a2);
  sub_2978A8CC8(a1, v6);
  sub_297801F64(*a1, ")");

  return sub_297888A70(a1, 0);
}

void **sub_2978AB238(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "return");
  if (sub_2977FB7B8(a2))
  {
    sub_297801F64(*a1, " ");
    v4 = sub_2977FB7B8(a2);
    sub_2978A8CC8(a1, v4);
  }

  return sub_297888A70(a1, 0);
}

uint64_t sub_2978AB2B4(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978AB2F0(a1, v2);
}

uint64_t sub_2978AB2F8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_297885F38(a1);
  sub_2978AB3F8(v21, a2, v6);
  v21[85] = sub_2978A479C(a1);
  v21[86] = v7;
  sub_2978AB3FC(v21);
  v22 = a3;
  v23 = (a3 & 0x10) != 0;
  v19 = sub_297885F40(a1);
  v20 = v8;
  v9 = sub_2977FB720(&v19);
  v10 = sub_2978130B8(&v19);
  if (v9 != v10)
  {
    v11 = v10;
    do
    {
      v12 = *v9++;
      sub_2978AB568(v21, v12, 1);
    }

    while (v9 != v11);
  }

  v19 = sub_297886048(a1);
  v20 = v13;
  v14 = sub_2977FB720(&v19);
  v15 = sub_2978130B8(&v19);
  if (v14 != v15)
  {
    v16 = v15;
    do
    {
      v17 = *v14++;
      sub_2978AB568(v21, v17, 1);
    }

    while (v14 != v16);
  }

  return sub_2978AB640(v21);
}

void **sub_2978AB3FC(uint64_t *a1)
{
  sub_297801F64(*a1, "#define _V3_TO_V3(a) (((float4)(((float3)((a))),_dc.x)).xyz) \n#define FRACT(A) (fmin((A) - floor(A), 0x1.fffffep-1f))\n\ninline float  __attribute__((overloadable)) lessThan(float  x,float  y) { return (1.0f             - step(y,x)); }\ninline float2 __attribute__((overloadable)) lessThan(float  x,float2 y) { return (((float2)(1.0f)) - step(y,(float2)(x))); }\ninline float3 __attribute__((overloadable)) lessThan(float  x,float3 y) { return (((float3)(1.0f)) - step(y,(float3)(x))); }\ninline float4 __attribute__((overloadable)) lessThan(float  x,float4 y) { return (((float4)(1.0f)) - step(y,(float4)(x))); }\ninline float2 __attribute__((overloadable)) lessThan(float2 x,float2 y) { return ((float2)(1.0f)   - step(y,x)); }\ninline float3 __attribute__((overloadable)) lessThan(float3 x,float3 y) { return ((float3)(1.0f)   - step(y,x)); }\ninline float4 __attribute__((overloadable)) lessThan(float4 x,float4 y) { return ((float4)(1.0f)   - step(y,x)); }\n\ninline float  __attribute__((overloadable)) foslMix(float  x,float  y,float  a) { return mix(x,y,a); }\ninline float2 __attribute__((overloadable)) foslMix(float2 x,float2 y,float  a) { return mix(x,y,(float2)(a)); }\ninline float3 __attribute__((overloadable)) foslMix(float3 x,float3 y,float  a) { return mix(x,y,(float3)(a)); }\ninline float4 __attribute__((overloadable)) foslMix(float4 x,float4 y,float  a) { return mix(x,y,(float4)(a)); }\ninline float2 __attribute__((overloadable)) foslMix(float2 x,float2 y,float2 a) { return mix(x,y,a); }\ninline float3 __attribute__((overloadable)) foslMix(float3 x,float3 y,float3 a) { return mix(x,y,a); }\ninline float4 __attribute__((overloadable)) foslMix(float4 x,float4 y,float4 a) { return mix(x,y,a); }\n\ninline float  __attribute__((overloadable)) mod(float  x,float  y) { return x - y * floor(x / y); }\ninline float2 __attribute__((overloadable)) mod(float2 x,float  y) { return x - y * floor(x / y); }\ninline float2 __attribute__((overloadable)) mod(float2 x,float2 y) { return x - y * floor(x / y); }\ninline float3 __attribute__((overloadable)) mod(float3 x,float  y) { return x - y * floor(x / y); }\ninline float3 __attribute__((overloadable)) mod(float3 x,float3 y) { return x - y * floor(x / y); }\ninline float4 __attribute__((overloadable)) mod(float4 x,float  y) { return x - y * floor(x / y); }\ninline float4 __attribute__((overloadable)) mod(float4 x,float4 y) { return x - y * floor(x / y); }\n\ninline float2 __attribute__((overloadable)) matMultiply(float2 v,float4 m) {\n  float x = dot(v, (float2)(m.s0,m.s1));\n  float y = dot(v, (float2)(m.s2,m.s3));\n  return (float2)(x,y);\n}\n\ninline float3 __attribute__((overloadable)) matMultiply(float3 v,float16 m) {\n  float x = dot(v, (float3)(m.s0,m.s1,m.s2));\n  float y = dot(v, (float3)(m.s4,m.s5,m.s6));\n  float z = dot(v, (float3)(m.s8,m.s9,m.sa));\n  return (float3)(x,y,z);\n}\n\ninline float4 __attribute__((overloadable)) matMultiply(float4 v,float16 m) {\n  float x = dot(v, (float4)(m.s0,m.s1,m.s2,m.s3));\n  float y = dot(v, (float4)(m.s4,m.s5,m.s6,m.s7));\n  float z = dot(v, (float4)(m.s8,m.s9,m.sa,m.sb));\n  float w = dot(v, (float4)(m.sc,m.sd,m.se,m.sf));\n  return (float4)(x,y,z,w);\n}\n\n");
  v2 = sub_2977FB720((a1 + 85));
  result = sub_2978130B8(a1 + 85);
  if (v2 == result)
  {
    v6 = 0;
    v5 = 0;
LABEL_11:
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      v11 = sub_2977FD5B0(*v2);
      v7 = sub_2977FB720(&v11);
      result = sub_297888638(v7);
      if (result)
      {
        result = sub_297888648(result);
        v5 |= result == 0;
        v6 |= result == 1;
      }

      if (v5 & 1) != 0 && (v6)
      {
        sub_297801F64(*a1, "inline float4 sample(read_only image2d_t image, sampler_t sampler, float2 p) {\n  return read_imagef(image, sampler, p);\n}\n\ninline float2 samplerTransform(float4 transform0, float4 transform1, float2 p) {\n  float x = dot((float4)(p, 1.0, 0.0), transform0);\n  float y = dot((float4)(p, 1.0, 0.0), transform1);\n  return (float2)(x,y);\n}\n\ninline float4 samplerExtent(float4 extent) {\n  return extent;\n}\n\n");
        goto LABEL_17;
      }

      ++v2;
    }

    while (v2 != v4);
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    sub_297801F64(*a1, "inline float4 sample(read_only image2d_t image, sampler_t sampler, float2 p) {\n  return read_imagef(image, sampler, p);\n}\n\ninline float2 samplerTransform(float4 transform0, float4 transform1, float2 p) {\n  float x = dot((float4)(p, 1.0, 0.0), transform0);\n  float y = dot((float4)(p, 1.0, 0.0), transform1);\n  return (float2)(x,y);\n}\n\ninline float4 samplerExtent(float4 extent) {\n  return extent;\n}\n\n");
  }

  if (v6)
  {
LABEL_17:
    sub_297801F64(*a1, "inline float4 texture2D(read_only image2d_t image, sampler_t sampler, float2 p) {\n  return read_imagef(image, sampler, p);\n}\n\n");
  }

  if (sub_2978A50D4(a1[88]))
  {
    sub_297801F64(*a1, "inline float4 __attribute__((overloadable)) _sampler_srgb_to_linear(float4 s, float2 _dc) {\n  s.xyz = _V3_TO_V3(_V3_TO_V3(_V3_TO_V3(sign(s.xyz)) * _V3_TO_V3(foslMix(_V3_TO_V3(_V3_TO_V3(fabs(s.xyz)) * 7.739938e-02f), _V3_TO_V3(__ci_gamma_scalar_SPI(_V3_TO_V3((_V3_TO_V3(_V3_TO_V3(fabs(s.xyz)) * 9.478673e-01f)) + 5.213270e-02f), 2.400000e+00f)), _V3_TO_V3(step(4.045000e-02f, _V3_TO_V3(fabs(s.xyz))))))));\n  return s;\n}\n\n");
  }

  result = sub_2978A50DC(a1[88]);
  if (result)
  {
    v8 = sub_297801F64(*a1, "inline float4 __attribute__((overloadable)) _sampler_swizzle(float4 s) {\n  return ");
    v9 = sub_2978A50DC(a1[88]);
    v10 = sub_297801F64(v8, v9);
    return sub_297801F64(v10, ";\n}\n\n");
  }

  return result;
}

uint64_t sub_2978AB568(void *a1, uint64_t a2, char a3)
{
  v13[5] = *MEMORY[0x29EDCA608];
  sub_297864964(v13);
  v6 = sub_29788A970(a2);
  v7 = sub_29788A974(a2);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v12[0] = v9;
      sub_2978040A4(v13, v12);
    }

    while (v6 != v8);
  }

  if (!sub_297806904(v13))
  {
    sub_29780B1E8(v12, v13);
    sub_2978AB890(a1, v12[0], v12[1], a3);
  }

  result = sub_2977FD134(v13);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978AB644(uint64_t a1, uint64_t a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = sub_297885F38(a1);
  sub_2978AB3F8(v29, a2, v6);
  v7 = sub_297886294(a1);
  v29[88] = sub_29788AA68(a1);
  v29[85] = sub_2978A479C(a1);
  v29[86] = v8;
  sub_2978AB3FC(v29);
  v30 = a3;
  v31 = (a3 & 0x10) != 0;
  v27 = sub_297885F40(a1);
  v28 = v9;
  v10 = sub_2977FB720(&v27);
  v11 = sub_2978130B8(&v27);
  if (v10 != v11)
  {
    v12 = v11;
    do
    {
      v13 = *v10;
      sub_29780B1B8(v32);
      v14 = sub_2978862BC(v13);
      for (i = sub_2978862C0(v13); v14 != i; ++v14)
      {
        v25 = *v14;
        if (sub_297886348(v7, v25))
        {
          sub_2978040A4(v32, &v25);
        }
      }

      if (sub_29780406C(v32))
      {
        sub_29780B1E8(&v25, v32);
        sub_2978AB890(v29, v25, v26, 1);
      }

      sub_2977FD134(v32);
      ++v10;
    }

    while (v10 != v12);
  }

  v27 = sub_297886048(a1);
  v28 = v16;
  v17 = sub_2977FB720(&v27);
  v18 = sub_2978130B8(&v27);
  if (v17 != v18)
  {
    v19 = v18;
    do
    {
      v20 = *v17;
      sub_29780B1B8(v32);
      v21 = sub_2978862BC(v20);
      for (j = sub_2978862C0(v20); v21 != j; ++v21)
      {
        v25 = *v21;
        if (sub_297886348(v7, v25))
        {
          sub_2978040A4(v32, &v25);
        }
      }

      if (sub_29780406C(v32))
      {
        sub_29780B1E8(&v25, v32);
        sub_2978AB890(v29, v25, v26, 1);
      }

      sub_2977FD134(v32);
      ++v17;
    }

    while (v17 != v19);
  }

  result = sub_2978AB640(v29);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2978AB890(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v63[0] = a2;
  v63[1] = a3;
  v61 = a1;
  v62 = a4;
  if (*(a1 + 2))
  {
    v5 = sub_2977FB720(v63);
    if (sub_29788AE7C(v5))
    {
      v6 = sub_2977FB720(v63);
      v7 = sub_2978130B8(v63);
      if (v6 == v7)
      {
        return;
      }

      v8 = v7;
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v60 = sub_29781BF50(*v6);
        v11 = a1[2];
        if (!v11)
        {
          break;
        }

        v59[0] = sub_297886EF0(v11, &v60);
        v59[1] = v12;
        v58[0] = sub_297886F58(a1[2]);
        v58[1] = v13;
        if (!sub_29782EE3C(v59, v58))
        {
          break;
        }

        v14 = v60;
        v15 = sub_2977FB720(v59);
        sub_2978ABE78(a1, v14, *(v15 + 8));
        sub_297888A70(a1, 0);
        sub_2978A8B34(&v61);
LABEL_22:
        if (++v6 == v8)
        {
          if ((v10 & 1) == 0)
          {
            sub_297888A70(a1, 0);
            sub_2978A8B34(&v61);
          }

          if (a1[90] & v9)
          {
            sub_297801F64(*a1, "\n");
            v23 = sub_2977FB720(v63);
            v24 = sub_2978130B8(v63);
            if (v23 != v24)
            {
              v25 = v24;
              do
              {
                v26 = sub_29781BF50(*v23);
                if (sub_29783CFFC(v26) && sub_2978ABF38(v26))
                {
                  sub_2978884C4(a1);
                  v27 = *a1;
                  v28 = sub_29788709C(v26);
                  v30 = sub_297801FA8(v27, v28, v29);
                  sub_297801F64(v30, " = ((float4)(");
                  v31 = sub_29783CFFC(v26);
                  v32 = sub_2978AC260(v31);
                  if (v32 && (v33 = v32, sub_29788A7F8(v32 + 8) == 3))
                  {
                    v34 = sub_297803A7C(v33 + 8);
                    v35 = sub_29788A7C4(v33 + 8);
                    while (v34 != v35)
                    {
                      v36 = *v34++;
                      sub_2978AC100(a1, v36);
                      sub_297801F64(*a1, ", ");
                    }

                    v37 = *sub_2978AC29C(v33 + 8);
                    v38 = "))";
                  }

                  else
                  {
                    v37 = sub_29783CFFC(v26);
                    v38 = ").xyzz)";
                  }

                  sub_2978AC100(a1, v37);
                  sub_297801F64(*a1, v38);
                  sub_297888A70(a1, 0);
                  sub_297801F64(*a1, "\n");
                }

                ++v23;
              }

              while (v23 != v25);
            }
          }

          return;
        }
      }

      if (*(a1 + 720) == 1 && sub_2978ABF38(v60))
      {
        sub_29783DAC8((a1 + 73), v60);
        v16 = 1;
        v9 = 1;
        if ((v10 & 1) == 0)
        {
LABEL_11:
          v17 = *a1;
          v18 = ",";
          goto LABEL_15;
        }
      }

      else
      {
        v16 = 0;
        if ((v10 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      sub_2978ABF90(a1, v60);
      if ((v16 & a1[90]) != 1)
      {
        sub_2978AC02C(a1, v60);
        goto LABEL_17;
      }

      v17 = *a1;
      v18 = "float4";
LABEL_15:
      sub_297801F64(v17, v18);
LABEL_17:
      v19 = sub_297801F64(*a1, " ");
      v20 = sub_29788709C(v60);
      sub_297801FA8(v19, v20, v21);
      sub_297887314(a1, v60);
      if (sub_29783CFFC(v60))
      {
        sub_297801F64(*a1, " = ");
        if (v16)
        {
          sub_297801F64(*a1, "(float4)(0.0f)");
        }

        else
        {
          v22 = sub_29783CFFC(v60);
          sub_2978AC100(a1, v22);
        }
      }

      v10 = 0;
      goto LABEL_22;
    }
  }

  v39 = sub_2977FB720(v63);
  v40 = sub_29788AE80(v39);
  v41 = sub_2977FB720(v63);
  v42 = sub_2978130B8(v63);
  v43 = v42;
  v44 = v41 == v42;
  if (v40)
  {
    if (v41 != v42)
    {
      v45 = 1;
      do
      {
        v46 = *v41;
        if ((v45 & 1) == 0)
        {
          sub_297801F64(*a1, ",");
        }

        sub_297801F64(*a1, " ");
        v47 = sub_29781BF50(v46);
        if (sub_2977FD5B0(v47))
        {
          v48 = *a1;
          v49 = sub_2977FD5B0(v47);
          v50 = sub_29788709C(v49);
          sub_297801FA8(v48, v50, v51);
        }

        else
        {
          v52 = sub_297888B98(v47);
          sub_297888B78(a1, v52);
        }

        v45 = 0;
        ++v41;
      }

      while (v41 != v43);
    }

    sub_297888A70(a1, 0);
LABEL_62:
    sub_2978A8B34(&v61);
    return;
  }

  while (!v44)
  {
    v53 = *v41;
    v59[0] = *v41;
    if (!*(a1 + 2))
    {
      if (sub_29788AE7C(v59))
      {
        goto LABEL_54;
      }

      v53 = v59[0];
    }

    sub_2978AC2B8(a1, v53);
LABEL_54:
    v44 = ++v41 == v43;
  }

  if (*(a1 + 2))
  {
    v54 = sub_2977FB720(v63);
    if ((sub_29788AB2C(v54) & 1) == 0)
    {
      v55 = sub_2977FB720(v63);
      if ((sub_29788AB98(v55) & 1) == 0)
      {
        v56 = sub_2977FB720(v63);
        if ((sub_29788AB9C(v56) & 1) == 0)
        {
          sub_297888A70(a1, 0);
        }
      }
    }

    if (*(a1 + 2))
    {
      goto LABEL_62;
    }
  }

  v57 = sub_2977FB720(v63);
  if ((sub_29788AE7C(v57) & 1) == 0)
  {
    goto LABEL_62;
  }
}

uint64_t sub_2978ABDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = a3;
  sub_2978A50C0(a1 + 24);
  *(a1 + 568) = 0u;
  sub_29788E120(a1 + 584);
  sub_297804560((a1 + 680));
  *(a1 + 716) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 721) = 16777217;
  return a1;
}

uint64_t sub_2978ABE44(uint64_t a1)
{
  sub_29787B7C8(a1 + 584);
  sub_2978A5110(a1 + 24);
  return a1;
}

void **sub_2978ABE78(uint64_t *a1, uint64_t a2, float *a3)
{
  sub_297801F64(*a1, "const ");
  sub_2978AC02C(a1, a2);
  v6 = sub_297801F64(*a1, " ");
  v7 = sub_29788709C(a2);
  sub_297801FA8(v6, v7, v8);
  sub_297887314(a1, a2);
  sub_297801F64(*a1, " = ");
  v9 = sub_2977FD5B0(a2);
  v10 = *a1;

  return sub_297887564(a3, v9, v10);
}

uint64_t sub_2978ABF38(unsigned __int8 *a1)
{
  result = sub_29788E754(a1);
  if (result)
  {
    v4 = sub_29788C514(a1);
    v3 = sub_2977FB720(&v4);
    result = sub_297888658(v3);
    if (result)
    {
      return sub_29788862C(result) == 9;
    }
  }

  return result;
}

uint64_t sub_2978ABF90(uint64_t *a1, _DWORD *a2)
{
  v4 = sub_297816700(a2);
  sub_2978A8A40(v4);
  sub_297887CE0(a2);
  v5 = sub_297887CEC(a2) - 2;
  if (v5 <= 6 && ((0x69u >> v5) & 1) != 0)
  {
    sub_297801F64(*a1, (&off_29EE81180)[v5]);
  }

  result = sub_29783C248(a2);
  if (result)
  {

    return sub_297887D1C(a2);
  }

  return result;
}

uint64_t sub_2978AC02C(uint64_t *a1, uint64_t a2)
{
  v13 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v13);
  v5 = sub_297887DB4(v4);
  if (v5)
  {
    v6 = sub_2977FB7B8(v5);
    sub_2978AC2D0(a1, v6, a2);
  }

  else
  {
    v13 = sub_2977FD5B0(a2);
    v7 = sub_2977FB720(&v13);
    v8 = sub_297887E3C(v7);
    if (v8)
    {
      v9 = sub_2977FB7B8(v8);
      sub_2978AC354(a1, v9);
    }

    else
    {
      v10 = sub_2977FD5B0(a2);
      sub_2978AC45C(a1, v10);
    }
  }

  LODWORD(v13) = 0;
  v11 = sub_2977FD5B0(a2);
  result = sub_2978881F0(v11, &v13);
  if (result)
  {
    result = sub_297888250(a2);
    if ((result & 1) == 0)
    {
      return sub_29788825C(a1, v13);
    }
  }

  return result;
}

void sub_2978AC100(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  if (a2)
  {
    if (*(a1 + 720) == 1)
    {
      v3 = sub_2978AC790(a2);
    }

    else
    {
      v3 = 0;
    }

    if ((sub_29788A560(&v8) & 1) != 0 || sub_29788BD30(v8) == 1)
    {
      v3 = 0;
    }

    if (sub_29788A560(&v8))
    {
      *(a1 + 721) = 0;
    }

    if (v3)
    {
      if (*(a1 + 721) == 1 && (*(a1 + 722) & 1) == 0)
      {
        if (*(a1 + 568) == v8 && !*(a1 + 723))
        {
          v5 = "((float4)(";
        }

        else
        {
          v5 = "_V3_TO_V3(";
        }

        sub_297801F64(*a1, v5);
      }

      sub_2978AC7D0(a1, v8);
      if (*(a1 + 721) == 1 && (*(a1 + 722) & 1) == 0)
      {
        if (*(a1 + 568) == v8 && (*(a1 + 723) & 1) == 0)
        {
          v6 = *a1;
          v7 = ").xyzz)";
        }

        else
        {
          v6 = *a1;
          v7 = ")";
        }

        sub_297801F64(v6, v7);
      }
    }

    else
    {
      sub_2978AC7D0(a1, v8);
    }
  }

  else
  {
    v4 = *a1;

    sub_297801F64(v4, " /* <none> */ ");
  }
}

uint64_t sub_2978AC260(uint64_t a1)
{
  v2 = a1;
  if (sub_29788C6B0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

void sub_2978AC2B8(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    sub_2978AE4D8(a1, a2);
  }

  else
  {
    sub_297801F64(*a1, " /* <none> */ ");
  }
}

void **sub_2978AC2D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_297888358(a3))
  {

    return sub_2978AC684(a1, a2);
  }

  else
  {
    v6 = *a1;
    v8 = sub_29788709C(a2);

    return sub_297801FA8(v6, v8, v7);
  }
}

void **sub_2978AC354(uint64_t a1, _DWORD *a2)
{
  v4 = sub_297811C44(a2);
  sub_2978A8A40(v4);
  sub_2978885D4(a2);
  sub_297801F64(*a1, "// uniform ");
  v5 = *a1;
  v6 = sub_29788709C(a2);
  sub_297801FA8(v5, v6, v7);
  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v8 = sub_297803A7C((a2 + 4));
  v9 = sub_2978885E0((a2 + 4));
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8++;
      sub_2978884C4(a1);
      sub_2978AB568(a1, v11, 1);
    }

    while (v8 != v10);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v12 = *a1;

  return sub_297801F64(v12, "}");
}

void **sub_2978AC45C(uint64_t *a1, uint64_t a2)
{
  v39 = a2;
  if (!sub_2977FB720(&v39))
  {
    v9 = *a1;
    v8 = " /* <> */ ";
    return sub_297801F64(v9, v8);
  }

  v3 = sub_2977FB720(&v39);
  v4 = sub_2978878F4(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_29788862C(v4);
    v7 = *a1;
    if (v6 == 4)
    {
      v8 = "float";
      v9 = v7;
      return sub_297801F64(v9, v8);
    }

    v18 = v5;
    goto LABEL_10;
  }

  v11 = sub_2977FB720(&v39);
  v12 = sub_2978876EC(v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_2977FB7B8(v12);
    v15 = sub_29788862C(v14);
    sub_297801F64(*a1, (&off_29EE811B8)[v15 - 3]);
    v16 = *a1;
    v17 = sub_297887A38(v13);
    return sub_297801FA0(v16, v17);
  }

  v21 = sub_2977FB720(&v39);
  v22 = sub_2978877CC(v21);
  if (v22)
  {
    v23 = v22;
    sub_297801F64(*a1, "float");
    result = sub_2978A1DA8(v23);
    if (result == 16 || result == 9)
    {
      v24 = *a1;
      v25 = 16;
      return sub_29780BBD0(v24, v25);
    }

    if (result == 4)
    {
      v24 = *a1;
      v25 = 4;
      return sub_29780BBD0(v24, v25);
    }
  }

  else
  {
    v26 = sub_2977FB720(&v39);
    result = sub_297888638(v26);
    if (!result)
    {
      v27 = sub_2977FB720(&v39);
      if (sub_297888654(v27))
      {
        v9 = *a1;
        v8 = "void";
        return sub_297801F64(v9, v8);
      }

      v28 = sub_2977FB720(&v39);
      v18 = sub_297888658(v28);
      if (!v18)
      {
        v29 = sub_2977FB720(&v39);
        v30 = sub_29788865C(v29);
        if (v30)
        {
          v31 = sub_2977FB7B8(v30);
        }

        else
        {
          v32 = sub_2977FB720(&v39);
          v33 = sub_297887DB4(v32);
          if (v33)
          {
            v7 = *a1;
            v19 = sub_2978B5410(v33);
            return sub_297801FA8(v7, v19, v20);
          }

          v34 = sub_2977FB720(&v39);
          v35 = sub_297887E3C(v34);
          if (v35)
          {
            v36 = sub_2977FB7B8(v35);
            return sub_2978AC354(a1, v36);
          }

          v37 = sub_2977FB720(&v39);
          v38 = sub_297888660(v37);
          if (!v38)
          {
            v9 = *a1;
            v8 = " /* <unknown> */ ";
            return sub_297801F64(v9, v8);
          }

          v31 = sub_2977FD5B0(v38);
        }

        return sub_2978AC45C(a1, v31);
      }

      v7 = *a1;
LABEL_10:
      v19 = sub_2978B5B84(v18);
      return sub_297801FA8(v7, v19, v20);
    }
  }

  return result;
}

void **sub_2978AC684(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "struct");
  if (sub_297888470(a2))
  {
    v4 = sub_297801F64(*a1, " ");
    v5 = sub_29788709C(a2);
    sub_297801FA8(v4, v5, v6);
  }

  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v7 = sub_297803A7C(a2 + 16);
  v8 = sub_297888490(a2 + 16);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7++;
      sub_2978884C4(a1);
      sub_2978AB568(a1, v10, 1);
    }

    while (v7 != v9);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v11 = *a1;

  return sub_297801F64(v11, "}");
}

uint64_t sub_2978AC790(uint64_t a1)
{
  v3 = sub_29788C170(a1);
  v1 = sub_2977FB720(&v3);
  result = sub_297888658(v1);
  if (result)
  {
    return sub_29788862C(result) == 9;
  }

  return result;
}

void sub_2978AC7D0(uint64_t *a1, uint64_t a2)
{
  switch(sub_29787E544(a2))
  {
    case 0u:

      sub_2978899A4(a1, a2);
      return;
    case 1u:

      sub_2978899EC(a1, a2);
      return;
    case 2u:

      sub_297889A40(a1, a2);
      return;
    case 3u:

      sub_2978A9214(a1, a2);
      return;
    case 4u:

      sub_297889A94(a1, a2);
      return;
    case 5u:

      sub_2978ACB60(a1, a2);
      return;
    case 6u:

      sub_2978ACC00(a1, a2);
      return;
    case 7u:

      sub_2978ACD98(a1, a2);
      return;
    case 8u:

      sub_2978ACEDC(a1, a2);
      return;
    case 9u:

      sub_297889DAC(a1, a2);
      return;
    case 0xAu:

      sub_297889DEC(a2);
      return;
    case 0xBu:

      sub_2978AD024(a1, a2);
      return;
    case 0xCu:

      sub_2978AD120(a1, a2);
      return;
    case 0xDu:
      v4 = a1;
      v5 = a2;

      goto LABEL_10;
    case 0xEu:
      v4 = a1;
      v5 = a2;

LABEL_10:
      sub_2978AD318(v4, v5);
      return;
    case 0xFu:

      sub_2978AD390(a1, a2);
      return;
    case 0x10u:

      sub_2978AD4D0(a1, a2);
      return;
    case 0x11u:

      sub_2978AD548(a1, a2);
      return;
    case 0x12u:

      sub_2978AD598(a1, a2);
      return;
    case 0x13u:

      sub_2978AD8C4(a1, a2);
      return;
    case 0x14u:

      sub_2978ADFDC(a1, a2);
      return;
    case 0x15u:
      v6 = a1;
      v7 = a2;

      goto LABEL_49;
    case 0x16u:
      v6 = a1;
      v7 = a2;

LABEL_49:
      sub_2978AE218(v6, v7);
      break;
    default:
      return;
  }
}

uint64_t sub_2978ACB60(uint64_t *a1, uint64_t a2)
{
  if (sub_29788A3A8(a2))
  {
    v4 = sub_2977FD5B0(a2);
    sub_2978AE258(a1, v4);
  }

  v5 = sub_29788A44C(a2);
  if (v5 <= 6)
  {
    sub_297801F64(*a1, (&off_29EE811E0)[v5]);
  }

  result = sub_29788A3A8(a2);
  if ((result & 1) == 0)
  {
    v7 = sub_2977FD5B0(a2);

    return sub_2978AE258(a1, v7);
  }

  return result;
}

void **sub_2978ACC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_29783CFFC(a2);
  if (sub_29788A794(a2) == 20 && (v17 = sub_29788C170(v4), v5 = sub_2977FB720(&v17), sub_2978877CC(v5)))
  {
    sub_297801F64(*a1, "matMultiply(");
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2977FD5B0(a2);
  sub_2978AE258(a1, v7);
  if ((v6 & 1) == 0)
  {
    sub_297801F64(*a1, " ");
  }

  v8 = sub_29788A794(a2);
  v9 = sub_29787E544(v4);
  if (v8 == 19)
  {
    v10 = v9 != 0;
    v11 = *(a1 + 716);
    v12 = v11 & v10;
    if ((v11 & v10) != 0)
    {
      v8 = 20;
    }

    else
    {
      v8 = 19;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v13 = ", ";
    goto LABEL_17;
  }

  v12 = 0;
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v8 <= 0x14)
  {
    sub_297801F64(*a1, (&off_29EE81218)[v8]);
  }

  v13 = " ";
LABEL_17:
  sub_297801F64(*a1, v13);
  if ((v12 & 1) == 0)
  {
    v16 = sub_29783CFFC(a2);
    result = sub_2978AE258(a1, v16);
    if (!v6)
    {
      return result;
    }

    return sub_297801F64(*a1, ")");
  }

  sub_297801F64(*a1, "half_recip(");
  v14 = sub_29783CFFC(a2);
  sub_2978AE258(a1, v14);
  result = sub_297801F64(*a1, ")");
  if (v6)
  {
    return sub_297801F64(*a1, ")");
  }

  return result;
}

void **sub_2978ACD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978AE258(a1, v4);
  sub_297801F64(*a1, " ? ");
  if (*(a1 + 720) == 1 && (v5 = sub_29783CFFC(a2), sub_2978AC790(v5)))
  {
    sub_297801F64(*a1, " (((float4)((");
    v6 = sub_29783CFFC(a2);
    sub_2978AE258(a1, v6);
    sub_297801F64(*a1, "), _dc.x)).xyz)");
    sub_297801F64(*a1, " : ");
    sub_297801F64(*a1, " (((float4)((");
    v7 = sub_297805510(a2);
    sub_2978AE258(a1, v7);
    v8 = *a1;

    return sub_297801F64(v8, "), _dc.y)).xyz)");
  }

  else
  {
    v10 = sub_29783CFFC(a2);
    sub_2978AE258(a1, v10);
    sub_297801F64(*a1, " : ");
    v11 = sub_297805510(a2);

    return sub_2978AE258(a1, v11);
  }
}

void **sub_2978ACEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a2);
  v5 = sub_2977FD5B0(a2);
  v6 = sub_2978A7BC4(v4);
  if (v6 && sub_29788A7AC(v6) - 1 < 2)
  {
    sub_297801F64(*a1, "write_imagef(out, _writeLoc, ");
    *(a1 + 721) = 1;
    sub_2978AC100(a1, v5);
    v7 = *a1;

    return sub_297801F64(v7, ")");
  }

  else
  {
    v9 = *(a1 + 720) != 1 || v4 == 0;
    if (!v9 && sub_2978AC790(v4))
    {
      *(a1 + 721) = 0;
    }

    sub_2978AC100(a1, v4);
    sub_297801F64(*a1, " ");
    *(a1 + 721) = 1;
    v10 = sub_29788A7A0(a2);
    if (v10 < 0xC)
    {
      sub_297801F64(*a1, (&off_29EE812C0)[v10]);
    }

    sub_297801F64(*a1, " ");

    return sub_2978AC100(a1, v5);
  }
}

void **sub_2978AD024(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a2);
  if (*(a1 + 720) == 1 && (v5 = v4, sub_29788AD38(a1 + 584, v4)) && *(a1 + 576) != a2 && *(a1 + 724) == 1)
  {
    v6 = sub_297801F64(*a1, "((");
    v7 = sub_29788709C(v5);
    v9 = sub_297801FA8(v6, v7, v8);

    return sub_297801F64(v9, ").xyz)");
  }

  else
  {
    v11 = *a1;
    v12 = sub_2977FB7B8(a2);
    v14 = sub_29788709C(v12);

    return sub_297801FA8(v11, v14, v13);
  }
}

void **sub_2978AD120(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "(");
  v4 = sub_2977FD5B0(a2);
  sub_2978AC45C(a1, v4);
  sub_297801F64(*a1, ")");
  v23 = 0;
  v5 = sub_2977FD5B0(a2);
  if (sub_2978881F0(v5, &v23))
  {
    sub_29788825C(a1, v23);
  }

  v22 = sub_2977FD5B0(a2);
  v6 = sub_2977FB720(&v22);
  v7 = sub_2978877CC(v6);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = sub_297803A7C(a2 + 8);
  v10 = sub_29788A7C4(a2 + 8);
  if (sub_29780CCF4(v9, v10) == 1)
  {
    v11 = sub_297803A7C(a2 + 8);
    return sub_2978AC100(a1, *v11);
  }

  if (sub_2978A1DA8(v8) == 9)
  {
    sub_297801F64(*a1, "(");
    v13 = sub_297803A7C(a2 + 8);
    for (i = 0; i != 3; ++i)
    {
      v15 = 3;
      do
      {
        v16 = *v13++;
        sub_2978AC100(a1, v16);
        sub_297801F64(*a1, ", ");
        --v15;
      }

      while (v15);
      sub_297801F64(*a1, "0.0, ");
    }

    v17 = *a1;
    v18 = "0.0, 0.0, 0.0, 0.0)";
  }

  else
  {
LABEL_12:
    sub_297801F64(*a1, "(");
    v19 = sub_297803A7C(a2 + 8);
    v20 = v19 + 1;
    sub_2978AC100(a1, *v19);
    while (v20 != sub_29788A7C4(a2 + 8))
    {
      sub_297801F64(*a1, ", ");
      v21 = *v20++;
      sub_2978AC100(a1, v21);
    }

    v17 = *a1;
    v18 = ")";
  }

  return sub_297801F64(v17, v18);
}

void **sub_2978AD318(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978AE258(a1, v4);
  v5 = sub_297801F64(*a1, ".");
  v7 = sub_29788A810(a2);

  return sub_297801FA8(v5, v7, v6);
}

void sub_2978AD390(uint64_t *a1, uint64_t a2)
{
  a1[72] = sub_2977FD5B0(a2);
  v4 = sub_2977FD5B0(a2);
  sub_2978AE258(a1, v4);
  a1[72] = 0;
  v11[0] = sub_29788A810(a2);
  v11[1] = v5;
  if (sub_2977FB7B8(v11))
  {
    v6 = sub_2977FB7B8(v11);
    v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
    if (v7 && sub_2977FB7B8(v11))
    {
      v8 = 0;
      do
      {
        v9 = sub_297803A20(v11, v8);
        if (v9 > 0x66u)
        {
          if (v9 == 114)
          {
            v9 = 120;
          }

          else if (v9 == 103)
          {
            v9 = 121;
          }
        }

        else if (v9 == 97)
        {
          v9 = 119;
        }

        else if (v9 == 98)
        {
          v9 = 122;
        }

        v7[v8++] = v9;
      }

      while (v8 < sub_2977FB7B8(v11));
    }

    v7[sub_2977FB7B8(v11)] = 0;
    v10 = sub_297801F64(*a1, ".");
    sub_297801F64(v10, v7);
    free(v7);
  }
}

void **sub_2978AD4D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_2978AE258(a1, v4);
  sub_297801F64(*a1, "[");
  v5 = sub_29783CFFC(a2);
  sub_2978AC100(a1, v5);
  v6 = *a1;

  return sub_297801F64(v6, "]");
}

void **sub_2978AD548(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FD5B0(a2);
  sub_2978AE258(a1, v3);
  v4 = *a1;

  return sub_297801F64(v4, ".length()");
}

void **sub_2978AD598(uint64_t *a1, uint64_t a2)
{
  v4 = *sub_297803A7C(a2 + 8);
  v5 = *(sub_297803A7C(a2 + 8) + 8);
  v6 = sub_29788A7AC(a2);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      sub_297801F64(*a1, "samplerExtent(");
      sub_2978AC100(a1, v4);
      sub_297801F64(*a1, "_extent");
LABEL_22:
      v7 = ")";
      goto LABEL_23;
    }

    if (v6 == 4)
    {
      sub_297801F64(*a1, "samplerTransform(");
      sub_2978AC100(a1, v4);
      sub_297801F64(*a1, "_transform0");
      sub_297801F64(*a1, ", ");
      sub_2978AC100(a1, v4);
      sub_297801F64(*a1, "_transform1");
      v7 = ", _dc)";
LABEL_23:
      v15 = *a1;

      return sub_297801F64(v15, v7);
    }

    sub_297801F64(*a1, "texture2D(");
    sub_2978AC100(a1, v4);
    sub_297801F64(*a1, "_image");
    sub_297801F64(*a1, ", ");
    sub_2978AC100(a1, v4);
    v13 = *a1;
    v14 = "_sampler";
LABEL_21:
    sub_297801F64(v13, v14);
    sub_297801F64(*a1, ", ");
    sub_2978AC100(a1, v5);
    goto LABEL_22;
  }

  if (v6 != 1)
  {
    sub_297801F64(*a1, "samplerTransform(");
    sub_2978AC100(a1, v4);
    sub_297801F64(*a1, "_transform0");
    sub_297801F64(*a1, ", ");
    sub_2978AC100(a1, v4);
    v13 = *a1;
    v14 = "_transform1";
    goto LABEL_21;
  }

  v8 = sub_2978A50DC(a1[88]);
  if (v8)
  {
    sub_297801F64(*a1, "_sampler_swizzle(");
  }

  v9 = sub_2978A50D4(a1[88]);
  if (v9)
  {
    sub_297801F64(*a1, "_sampler_srgb_to_linear(");
  }

  v10 = sub_2978A7C00(a1[88]);
  if (v10)
  {
    sub_297801F64(*a1, "(");
  }

  sub_297801F64(*a1, "sample(");
  sub_2978AC100(a1, v4);
  sub_297801F64(*a1, "_image");
  sub_297801F64(*a1, ", ");
  sub_2978AC100(a1, v4);
  sub_297801F64(*a1, "_sampler");
  sub_297801F64(*a1, ", ");
  sub_2978AC100(a1, v5);
  result = sub_297801F64(*a1, ")");
  if (v10)
  {
    v12 = sub_297801F64(*a1, v10);
    result = sub_297801F64(v12, ")");
  }

  if (v9)
  {
    result = sub_297801F64(*a1, ", _dc)");
  }

  if (v8)
  {
    goto LABEL_22;
  }

  return result;
}

void **sub_2978AD8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978AE2F0(a1, a2);
  v5 = *(a1 + 716);
  if (v4 && (v5 & 4) != 0)
  {
    v6 = *a1;
    v7 = "__ci_gamma_scalar_SPI(";
  }

  else
  {
    if (sub_29788A888(a2) == 16 && (v5 & 4) != 0)
    {
      v6 = *a1;
      v8 = "half_powr(";
      v9 = "native_powr(";
    }

    else if (sub_29788A888(a2) == 3)
    {
      v6 = *a1;
      v8 = "half_sin(";
      v9 = "native_sin(";
    }

    else if (sub_29788A888(a2) == 4)
    {
      v6 = *a1;
      v8 = "half_cos(";
      v9 = "native_cos(";
    }

    else
    {
      if (sub_29788A888(a2) != 5)
      {
        if (sub_29788A888(a2) == 36)
        {
          v6 = *a1;
          v7 = "foslMix(";
        }

        else if (sub_29788A888(a2) == 53)
        {
          v6 = *a1;
          v7 = "fast_distance(";
        }

        else if (sub_29788A888(a2) == 52)
        {
          v6 = *a1;
          v7 = "fast_length(";
        }

        else if (sub_29788A888(a2) == 56)
        {
          v6 = *a1;
          v7 = "fast_normalize(";
        }

        else
        {
          v27 = sub_29788A888(a2);
          v6 = *a1;
          switch(v27)
          {
            case 2:
              v7 = "degrees(";
              break;
            case 3:
              v7 = "sin(";
              break;
            case 4:
              v7 = "cos(";
              break;
            case 5:
              v7 = "tan(";
              break;
            case 6:
              v7 = "asin(";
              break;
            case 7:
              v7 = "acos(";
              break;
            case 8:
              v7 = "atan2(";
              break;
            case 9:
              v7 = "atan(";
              break;
            case 10:
              v7 = "sinh(";
              break;
            case 11:
              v7 = "cosh(";
              break;
            case 12:
              v7 = "tanh(";
              break;
            case 13:
              v7 = "asinh(";
              break;
            case 14:
              v7 = "acosh(";
              break;
            case 15:
              v7 = "atanh(";
              break;
            case 16:
              v7 = "half_powr(";
              break;
            case 17:
              v7 = "half_exp(";
              break;
            case 18:
              v7 = "half_log(";
              break;
            case 19:
              v7 = "half_exp2(";
              break;
            case 20:
              v7 = "half_log2(";
              break;
            case 21:
              v7 = "half_sqrt(";
              break;
            case 22:
              v7 = "half_rsqrt(";
              break;
            case 23:
              v7 = "fabs(";
              break;
            case 24:
              v7 = "sign(";
              break;
            case 25:
              v7 = "floor(";
              break;
            case 26:
              v7 = "trunc(";
              break;
            case 27:
              v7 = "round(";
              break;
            case 28:
              v7 = "roundEven(";
              break;
            case 29:
              v7 = "ceil(";
              break;
            case 30:
              v7 = "FRACT(";
              break;
            case 31:
              v7 = "mod(";
              break;
            case 32:
              v7 = "fmod(";
              break;
            case 33:
              v7 = "fmin(";
              break;
            case 34:
              v7 = "fmax(";
              break;
            case 35:
              v7 = "clamp(";
              break;
            case 36:
            case 37:
              v7 = "mix(";
              break;
            case 38:
              v7 = "step(";
              break;
            case 39:
              v7 = "smoothstep(";
              break;
            case 40:
              v7 = "isnan(";
              break;
            case 41:
              v7 = "isinf(";
              break;
            case 42:
              v7 = "floatBitsToInt(";
              break;
            case 43:
              v7 = "floatBitsToUint(";
              break;
            case 44:
              v7 = "intBitsToFloat(";
              break;
            case 45:
              v7 = "uintBitsToFloat(";
              break;
            case 46:
              v7 = "packSnorm2x16(";
              break;
            case 47:
              v7 = "unpackSnorm2x16(";
              break;
            case 48:
              v7 = "packUnorm2x16(";
              break;
            case 49:
              v7 = "unpackUnorm2x16(";
              break;
            case 50:
              v7 = "packHalf2x16(";
              break;
            case 51:
              v7 = "unpackHalf2x16(";
              break;
            case 52:
              v7 = "length(";
              break;
            case 53:
              v7 = "distance(";
              break;
            case 54:
              v7 = "dot(";
              break;
            case 55:
              v7 = "cross(";
              break;
            case 56:
              v7 = "normalize(";
              break;
            case 57:
              v7 = "faceforward(";
              break;
            case 58:
              v7 = "reflect(";
              break;
            case 59:
              v7 = "refract(";
              break;
            case 60:
              v7 = "matrixCompMult(";
              break;
            case 61:
              v7 = "outerProduct(";
              break;
            case 62:
              v7 = "transpose(";
              break;
            case 63:
              v7 = "determinant(";
              break;
            case 64:
              v7 = "inverse(";
              break;
            case 65:
              v7 = "lessThan(";
              break;
            case 66:
              v7 = "lessThanEqual(";
              break;
            case 67:
              v7 = "greaterThan(";
              break;
            case 68:
              v7 = "greaterThanEqual(";
              break;
            case 69:
              v7 = "equal(";
              break;
            case 70:
              v7 = "notEqual(";
              break;
            case 71:
              v7 = "any(";
              break;
            case 72:
              v7 = "all(";
              break;
            case 73:
              v7 = "not(";
              break;
            case 74:
              v7 = "$assert(";
              break;
            default:
              v7 = "radians(";
              break;
          }
        }

        goto LABEL_16;
      }

      v6 = *a1;
      v8 = "half_tan(";
      v9 = "native_tan(";
    }

    if (v5)
    {
      v7 = v8;
    }

    else
    {
      v7 = v9;
    }
  }

LABEL_16:
  sub_297801F64(v6, v7);
  if (*(a1 + 720) != 1)
  {
    goto LABEL_37;
  }

  if (sub_2978AE428(a2 + 8))
  {
    goto LABEL_37;
  }

  v10 = sub_29789056C(a2 + 8);
  if (!sub_2978AC790(*v10) || !sub_2978AE448(a2))
  {
    goto LABEL_37;
  }

  if (sub_2978AE428(a2 + 8))
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = sub_2978AE4BC(a2 + 8);
    v11 = sub_2978AE47C(*v12) ^ 1;
  }

  v13 = sub_297803A7C(a2 + 8);
  v14 = sub_29788A894(a2 + 8);
  if (v13 == v14)
  {
    v16 = 0;
  }

  else
  {
    v15 = v14;
    v16 = 0;
    do
    {
      v17 = sub_29788BFD0(*v13);
      if (v17)
      {
        v18 = v17;
        if (sub_2978AC790(v17) && (v19 = sub_2977FB7B8(v18), sub_29788AD38(a1 + 584, v19)))
        {
          ++v16;
        }

        else if (v4 != *sub_2978AE4BC(a2 + 8))
        {
          break;
        }
      }

      ++v13;
    }

    while (v13 != v15);
  }

  if (v16 == sub_29788A8C8(a2 + 8) || !((v16 != sub_29788A8C8(a2 + 8) - 1) | v11 & 1))
  {
    *(a1 + 724) = 0;
    v20 = 1;
  }

  else
  {
LABEL_37:
    v20 = 0;
  }

  v21 = sub_297803A7C(a2 + 8);
  v22 = sub_29788A894(a2 + 8);
  if (v21 != v22)
  {
    v23 = v22;
    v24 = v22 - v21;
    do
    {
      if (v4 && v24 == 8)
      {
        sub_2978AC100(a1, v4);
      }

      else
      {
        sub_2978AC100(a1, *v21);
        if (v24 >= 9)
        {
          sub_297801F64(*a1, ", ");
        }
      }

      ++v21;
      v24 -= 8;
    }

    while (v21 != v23);
  }

  *(a1 + 724) = 1;
  result = sub_297801F64(*a1, ")");
  if (v20)
  {
    v26 = *a1;

    return sub_297801F64(v26, ".xyz");
  }

  return result;
}

void **sub_2978ADFDC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_29788709C(v4);
  v7 = v6;
  sub_2977FB7B4(v28, "destCoord");
  v8 = sub_297804D28(v5, v7, v28[0], v28[1]);
  v9 = *a1;
  if (v8)
  {
    v10 = "_dc";
    v11 = *a1;
    return sub_297801F64(v11, v10);
  }

  v12 = sub_2977FD5B0(a2);
  v13 = sub_29788709C(v12);
  v15 = sub_297801FA8(v9, v13, v14);
  sub_297801F64(v15, "(");
  v16 = sub_297803A7C(a2 + 8);
  v17 = sub_29788A8E0(a2 + 8);
  if (v16 != v17)
  {
    v18 = v17;
    v19 = v17 - v16;
    while (1)
    {
      sub_2978AC100(a1, *v16);
      v20 = sub_29788BFD0(*v16);
      if (!v20)
      {
        goto LABEL_12;
      }

      v21 = sub_2977FB7B8(v20);
      v28[0] = sub_29788C514(v21);
      v22 = sub_2977FB720(v28);
      v23 = sub_297888638(v22);
      if (!v23)
      {
        goto LABEL_12;
      }

      v24 = v23;
      sub_297801F64(*a1, "_image, ");
      v25 = sub_297888648(v24);
      if (v25 == 1)
      {
        break;
      }

      if (!v25)
      {
        sub_2978AC100(a1, *v16);
        sub_297801F64(*a1, "_sampler, ");
        sub_2978AC100(a1, *v16);
        sub_297801F64(*a1, "_transform0, ");
        sub_2978AC100(a1, *v16);
        sub_297801F64(*a1, "_transform1, ");
        v26 = "_extent";
LABEL_11:
        sub_2978AC100(a1, *v16);
        sub_297801F64(*a1, v26);
      }

LABEL_12:
      if (v19 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v16;
      v19 -= 8;
      if (v16 == v18)
      {
        goto LABEL_15;
      }
    }

    v26 = "_sampler";
    goto LABEL_11;
  }

LABEL_15:
  if (sub_29788A914(a2 + 8))
  {
    sub_297801F64(*a1, ", ");
  }

  sub_297801F64(*a1, "_dc");
  v11 = *a1;
  v10 = ")";
  return sub_297801F64(v11, v10);
}

uint64_t sub_2978AE218(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);

  return sub_2978AC100(a1, v3);
}

void **sub_2978AE258(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == 1 && sub_29788A458(a2))
  {
    sub_297801F64(*a1, "(");
  }

  result = sub_2978AC100(a1, a2);
  if (*(a1 + 12) == 1)
  {
    result = sub_29788A458(a2);
    if (result)
    {
      v5 = *a1;

      return sub_297801F64(v5, ")");
    }
  }

  return result;
}

uint64_t sub_2978AE2F0(uint64_t a1, uint64_t a2)
{
  if ((~*(a1 + 716) & 5) != 0)
  {
    return 0;
  }

  if (sub_29788A888(a2) != 16)
  {
    return 0;
  }

  v3 = sub_297803A7C(a2 + 8);
  v4 = (sub_297803A7C(a2 + 8) + 8);
  if (v4 == sub_29788A894(a2 + 8) || !sub_2978AC790(*v3))
  {
    return 0;
  }

  v5 = *v4;
  if (sub_29787E544(*v4) != 12)
  {
LABEL_11:
    if (sub_2978AE47C(v5))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  v12 = 0;
  v6 = sub_2977FD5B0(v5);
  if ((sub_2978881F0(v6, &v12) & 1) == 0)
  {
    v10 = sub_297803A7C(v5 + 8);
    if (sub_2978AE47C(*v10))
    {
      return *v10;
    }

    return 0;
  }

  if (v12 != 3)
  {
    goto LABEL_11;
  }

  v7 = *sub_297803A7C(v5 + 8);
  v8 = *(sub_297803A7C(v5 + 8) + 8);
  v9 = sub_297803A7C(v5 + 8);
  if (v7 != v8 || v7 != *(v9 + 16) || !sub_2978AE47C(v7))
  {
    goto LABEL_11;
  }

  return v7;
}

uint64_t sub_2978AE47C(uint64_t a1)
{
  v3 = sub_29788C170(a1);
  v1 = sub_2977FB720(&v3);
  result = sub_297888658(v1);
  if (result)
  {
    return sub_29788862C(result) == 3;
  }

  return result;
}

void sub_2978AE4D8(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = sub_29786AC48(a2);
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {

        sub_2978AECFC(a1, a2);
      }

      else
      {

        sub_2978AED00(a1, a2);
      }
    }

    else if ((v4 - 7) >= 2)
    {

      sub_2978AEC6C(a1, a2);
    }
  }

  else if (v4 > 2)
  {
    if (v4 == 3)
    {

      sub_297886C88(a1, a2);
    }

    else if (v4 == 4)
    {

      sub_2978AA4F8(a2);
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {

      sub_2978AE76C(a1, a2);
    }

    else
    {

      sub_2978AE9D8(a1, a2);
    }
  }

  else
  {

    sub_2978AE668(a1, a2);
  }
}

void sub_2978AE668(uint64_t *a1, _DWORD *a2)
{
  v14 = a2;
  v3 = a1[2];
  if (v3)
  {
    v13[0] = sub_297886EF0(v3, &v14);
    v13[1] = v4;
    v12[0] = sub_297886F58(a1[2]);
    v12[1] = v5;
    if (sub_29782EE3C(v13, v12))
    {
      v6 = v14;
      v7 = sub_2977FB720(v13);
      sub_2978ABE78(a1, v6, *(v7 + 8));
      return;
    }

    a2 = v14;
  }

  sub_2978ABF90(a1, a2);
  sub_2978AC02C(a1, v14);
  v8 = sub_297801F64(*a1, " ");
  v9 = sub_29788709C(v14);
  sub_297801FA8(v8, v9, v10);
  sub_297887314(a1, v14);
  if (sub_29783CFFC(v14))
  {
    sub_297801F64(*a1, " = ");
    v11 = sub_29783CFFC(v14);
    sub_2978AC100(a1, v11);
  }
}

void **sub_2978AE76C(uint64_t *a1, _DWORD *a2)
{
  v39 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v39);
  v5 = sub_297888638(v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_29788709C(a2);
    v9 = v8;
    v10 = sub_297888648(v6);
    if (v10 == 1)
    {
      v33 = sub_297801F64(*a1, "read_only ");
      v34 = sub_297801F64(v33, "image2d_t ");
      v35 = sub_297801FA8(v34, v7, v9);
      v36 = sub_297801F64(v35, "_image, ");
      v37 = sub_297801F64(v36, "sampler_t ");
      v25 = sub_297801FA8(v37, v7, v9);
      v26 = "_sampler";
      return sub_297801F64(v25, v26);
    }

    if (!v10)
    {
      v11 = sub_297801F64(*a1, "read_only ");
      v12 = sub_297801F64(v11, "image2d_t ");
      v13 = sub_297801FA8(v12, v7, v9);
      v14 = sub_297801F64(v13, "_image, ");
      v15 = sub_297801F64(v14, "sampler_t ");
      v16 = sub_297801FA8(v15, v7, v9);
      v17 = sub_297801F64(v16, "_sampler, ");
      v18 = sub_297801F64(v17, "float4 ");
      v19 = sub_297801FA8(v18, v7, v9);
      v20 = sub_297801F64(v19, "_transform0, ");
      v21 = sub_297801F64(v20, "float4 ");
      v22 = sub_297801FA8(v21, v7, v9);
      v23 = sub_297801F64(v22, "_transform1, ");
      v24 = sub_297801F64(v23, "float4 ");
      v25 = sub_297801FA8(v24, v7, v9);
      v26 = "_extent";
      return sub_297801F64(v25, v26);
    }
  }

  if (sub_297888998(a2))
  {
    sub_297801F64(*a1, "const ");
  }

  if (sub_297887CC8(a2))
  {
    sub_297888A04(a2);
  }

  v27 = sub_2977FD5B0(a2);
  sub_2978AC45C(a1, v27);
  v38 = -1;
  v28 = sub_2977FD5B0(a2);
  if (sub_2978881F0(v28, &v38) && (sub_297888250(a2) & 1) == 0)
  {
    sub_29788825C(a1, v38);
  }

  sub_297801F64(*a1, " ");
  result = sub_297888470(a2);
  if (result)
  {
    v30 = *a1;
    v31 = sub_29788709C(a2);
    sub_297801FA8(v30, v31, v32);
    result = sub_297888250(a2);
    if (result)
    {
      return sub_29788825C(a1, v38);
    }
  }

  return result;
}

uint64_t sub_2978AE9D8(uint64_t *a1, _DWORD *a2)
{
  a1[87] = a2;
  if (sub_29788AB30(a2))
  {

    return sub_2978AED04(a1, a2);
  }

  else
  {
    v5 = sub_29788709C(a2);
    v7 = v6;
    sub_2977FB7B4(&v24, "destCoord");
    result = sub_297804D28(v5, v7, v24, v25);
    if ((result & 1) == 0)
    {
      if (sub_2978A62C0(a2) && (v24 = sub_297873448((a1 + 3)), v25 = v8, v23[0] = sub_29787347C((a1 + 3)), v23[1] = v9, sub_29781550C(&v24, v23)))
      {
        while (1)
        {
          v11 = sub_2978A62CC(&v24, v10);
          result = sub_2978A1558(a2, v11);
          if (result)
          {
            break;
          }

          sub_2978734C0(&v24);
          if (!sub_29781550C(&v24, v23))
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        sub_297801F64(*a1, "inline ");
        if (sub_297888A1C(a2))
        {
          sub_297888A28(a2);
        }

        v12 = sub_2978735BC(a2);
        sub_2978AC45C(a1, v12);
        LODWORD(v24) = 0;
        v13 = sub_2978735BC(a2);
        if (sub_2978881F0(v13, &v24))
        {
          sub_29788825C(a1, v24);
        }

        v14 = sub_297801F64(*a1, " __attribute__((overloadable)) ");
        v15 = sub_29788709C(a2);
        v17 = sub_297801FA8(v14, v15, v16);
        sub_297801F64(v17, "(");
        v18 = sub_297803A7C((a2 + 4));
        v19 = sub_297888A34((a2 + 4));
        if (v18 != v19)
        {
          v20 = v19;
          v21 = v19 - v18;
          do
          {
            sub_2978AC2B8(a1, *v18);
            if (v21 >= 9)
            {
              sub_297801F64(*a1, ", ");
            }

            ++v18;
            v21 -= 8;
          }

          while (v18 != v20);
        }

        if (sub_297888A90(a2 + 4))
        {
          sub_297801F64(*a1, ", ");
        }

        sub_297801F64(*a1, "float2 _dc)");
        if (sub_297888A68(a2))
        {
          sub_297801F64(*a1, " ");
          v22 = sub_297888A68(a2);
          sub_2978AEFFC(a1, v22);
          sub_297801F64(*a1, "\n");
        }

        else
        {
          sub_297888A70(a1, 0);
        }

        return sub_29783DAC8((a1 + 3), a2);
      }
    }
  }

  return result;
}

void **sub_2978AEC6C(uint64_t *a1, unsigned __int16 *a2)
{
  if (sub_2977FD5B0(a2))
  {
    v4 = *a1;
    v5 = sub_2977FD5B0(a2);
    v7 = sub_29788709C(v5);

    return sub_297801FA8(v4, v7, v6);
  }

  else
  {
    v9 = sub_297888B98(a2);

    return sub_297888B78(a1, v9);
  }
}

void **sub_2978AED04(uint64_t *a1, uint64_t a2)
{
  v4 = sub_297801F64(*a1, "kernel void ");
  v5 = sub_29788709C(a2);
  sub_297801FA8(v4, v5, v6);
  v42 = a2;
  v44[0] = sub_29788709C(a2);
  v44[1] = v7;
  sub_2977FB7B4(v43, "main");
  if (sub_2977FB778(v44, v43[0], v43[1]))
  {
    sub_297801F64(*a1, "OpenCLEntryPoint");
  }

  sub_297801F64(*a1, "(write_only image2d_t out, float4 outputRect, float4 vertexTransform0, float4 vertexTransform1");
  v8 = sub_2977FB720((a1 + 85));
  v9 = sub_2978130B8(a1 + 85);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8;
      sub_297801F64(*a1, ", \n");
      v44[0] = sub_2977FD5B0(v11);
      v12 = sub_29788709C(v11);
      v14 = v13;
      v15 = sub_2977FB720(v44);
      v16 = sub_297888638(v15);
      if (v16)
      {
        v17 = sub_297888648(v16);
        if (v17 == 1)
        {
          v35 = sub_297801F64(*a1, "read_only ");
          v36 = sub_297801F64(v35, "image2d_t ");
          v37 = sub_297801FA8(v36, v12, v14);
          v38 = sub_297801F64(v37, "_image, ");
          v39 = sub_297801F64(v38, "sampler_t ");
          v32 = sub_297801FA8(v39, v12, v14);
          v33 = "_sampler";
          goto LABEL_11;
        }

        if (!v17)
        {
          v18 = sub_297801F64(*a1, "read_only ");
          v19 = sub_297801F64(v18, "image2d_t ");
          v20 = sub_297801FA8(v19, v12, v14);
          v21 = sub_297801F64(v20, "_image, ");
          v22 = sub_297801F64(v21, "sampler_t ");
          v23 = sub_297801FA8(v22, v12, v14);
          v24 = sub_297801F64(v23, "_sampler, ");
          v25 = sub_297801F64(v24, "float4 ");
          v26 = sub_297801FA8(v25, v12, v14);
          v27 = sub_297801F64(v26, "_transform0, ");
          v28 = sub_297801F64(v27, "float4 ");
          v29 = sub_297801FA8(v28, v12, v14);
          v30 = sub_297801F64(v29, "_transform1, ");
          v31 = sub_297801F64(v30, "float4 ");
          v32 = sub_297801FA8(v31, v12, v14);
          v33 = "_extent";
LABEL_11:
          sub_297801F64(v32, v33);
        }
      }

      else
      {
        sub_2978AC45C(a1, v44[0]);
        v34 = sub_297801F64(*a1, " ");
        sub_297801FA8(v34, v12, v14);
      }

      ++v8;
    }

    while (v8 != v10);
  }

  sub_297801F64(*a1, ") ");
  if (!sub_297888A68(v42))
  {
    return sub_297888A70(a1, 0);
  }

  sub_297801F64(*a1, " ");
  v40 = sub_297888A68(v42);
  sub_2978AEFFC(a1, v40);
  return sub_297801F64(*a1, "\n");
}

void **sub_2978AEFFC(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_2978AF014(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

uint64_t sub_2978AF014(uint64_t *a1, unsigned __int8 *a2)
{
  result = sub_29786AC48(a2);
  switch(result)
  {
    case 0:

      result = sub_2978AF254(a1, a2);
      break;
    case 1:

      result = sub_297888F38(a1);
      break;
    case 2:

      result = sub_2978AF3A0(a1, a2);
      break;
    case 3:

      result = sub_2978AF3AC(a1, a2);
      break;
    case 4:

      result = sub_2978AF4B0(a1, a2);
      break;
    case 5:

      result = sub_2978AF528(a1, a2);
      break;
    case 6:

      result = sub_297889134(a1);
      break;
    case 7:

      result = sub_2978AF58C(a1, a2);
      break;
    case 8:

      result = sub_2978AF6A4(a1, a2);
      break;
    case 9:

      result = sub_2978AF730(a1, a2);
      break;
    case 10:

      result = sub_297889390(a1);
      break;
    case 11:

      result = sub_2978893D8(a1);
      break;
    case 13:

      result = sub_2978AF7D8(a1, a2);
      break;
    case 14:

      result = sub_2978AE218(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

void **sub_2978AF254(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "{\n");
  if (sub_29788AB30(*(a1 + 696)) && (*(a1 + 712) & 1) == 0)
  {
    sub_297801F64(*a1, "\n");
    sub_297801F64(*a1, "  int2 gid = (int2)(get_global_id(0), get_global_id(1));\n\n");
    sub_297801F64(*a1, "  if (gid.x >= get_image_width(out) || gid.y >= get_image_height(out)) return;\n\n");
    sub_297801F64(*a1, "  float2 p = (float2)(gid.x, gid.y) + outputRect.xy + (float2)(0.5f);\n  float x = dot((float4)(p, 1, 0), vertexTransform0);\n  float y = dot((float4)(p, 1, 0), vertexTransform1);\n  float2 _dc = (float2)(x,y);\n\n");
    sub_297801F64(*a1, "  int2 _writeLoc = gid;\n\n");
    *(a1 + 712) = 1;
  }

  ++*(a1 + 8);
  v4 = sub_297803A7C(a2 + 8);
  v5 = sub_297889524(a2 + 8);
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      v7 = *v4++;
      sub_2978884C4(a1);
      sub_2978AEFFC(a1, v7);
      sub_297889558(a1, v7);
      sub_297801F64(*a1, "\n");
    }

    while (v4 != v6);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v8 = *a1;

  return sub_297801F64(v8, "}");
}

void **sub_2978AF3AC(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "if (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978AC100(a1, v4);
  }

  sub_297801F64(*a1, ") ");
  if (sub_2977FD5B0(a2))
  {
    v5 = sub_2977FD5B0(a2);
    sub_2978AEFFC(a1, v5);
    v6 = sub_2977FD5B0(a2);
    sub_297889558(a1, v6);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  result = sub_29783CFFC(a2);
  if (result)
  {
    sub_297801F64(*a1, " else ");
    v8 = sub_29783CFFC(a2);
    sub_2978AEFFC(a1, v8);
    v9 = sub_29783CFFC(a2);

    return sub_297889558(a1, v9);
  }

  return result;
}

uint64_t sub_2978AF4B0(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "switch (");
  v4 = sub_2977FB7B8(a2);
  sub_2978AC100(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);

  return sub_2978AEFFC(a1, v5);
}

void **sub_2978AF528(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "case ");
  v4 = sub_29783CFFC(a2);
  sub_2978AC100(a1, v4);
  v5 = *a1;

  return sub_297801F64(v5, ": ");
}

void **sub_2978AF58C(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "for (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978AEFFC(a1, v4);
    v5 = sub_2977FB7B8(a2);
    sub_297889558(a1, v5);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  sub_297801F64(*a1, " ");
  if (sub_2977FD5B0(a2))
  {
    v6 = sub_2977FD5B0(a2);
    sub_2978AEFFC(a1, v6);
  }

  sub_297888A70(a1, 1);
  if (sub_29783CFFC(a2))
  {
    v7 = sub_29783CFFC(a2);
    sub_2978AC100(a1, v7);
  }

  sub_297801F64(*a1, ") ");
  v8 = sub_297805510(a2);
  sub_2978AEFFC(a1, v8);
  v9 = sub_297805510(a2);

  return sub_297889558(a1, v9);
}

void **sub_2978AF6A4(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "while (");
  v4 = sub_2977FB7B8(a2);
  sub_2978AEFFC(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);
  sub_2978AEFFC(a1, v5);
  v6 = sub_2977FD5B0(a2);

  return sub_297889558(a1, v6);
}

void **sub_2978AF730(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "do ");
  v4 = sub_2977FB7B8(a2);
  sub_2978AEFFC(a1, v4);
  v5 = sub_2977FB7B8(a2);
  sub_297889558(a1, v5);
  sub_297801F64(*a1, " while (");
  v6 = sub_2977FD5B0(a2);
  sub_2978AC100(a1, v6);
  sub_297801F64(*a1, ")");

  return sub_297888A70(a1, 0);
}

void **sub_2978AF7D8(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "return");
  if (sub_2977FB7B8(a2))
  {
    sub_297801F64(*a1, " ");
    v4 = sub_2977FB7B8(a2);
    sub_2978AC100(a1, v4);
  }

  return sub_297888A70(a1, 0);
}

BOOL sub_2978AF854(uint64_t a1, uint64_t a2)
{
  sub_2978AFAB8(a2);
  result = sub_29781BCA4(a1 + 168);
  if (!result)
  {
    v25 = sub_29781ACE4(a1 + 168);
    v24 = sub_29781AD1C(a1 + 168);
    for (result = sub_29781550C(&v25, &v24); result; result = sub_29781550C(&v25, &v24))
    {
      v5 = sub_29781AD54(&v25);
      v6 = sub_29781ADE4(v5);
      v8 = v7;
      v9 = sub_29781AD54(&v25);
      v10 = *sub_297819E7C(v9);
      v23[0] = sub_2978A479C(a2);
      v23[1] = v11;
      v12 = sub_2977FB720(v23);
      v13 = sub_2978130B8(v23);
      if (v12 == v13)
      {
        goto LABEL_21;
      }

      v14 = v13;
      while (1)
      {
        v15 = *v12;
        v16 = sub_29788709C(*v12);
        if (sub_297804D28(v16, v17, v6, v8))
        {
          break;
        }

        if (++v12 == v14)
        {
          goto LABEL_21;
        }
      }

      if (v15 && sub_297887CEC(v15) == 7)
      {
        v23[0] = sub_2977FD5B0(v15);
        v18 = sub_2977FB720(v23);
        if (sub_2978875FC(v18) && *(v10 + 64) != 1)
        {
          sub_2978295E8(*(a1 + 160), 4733, v23);
          sub_2978295C0(v23, v6, v8);
          sub_29782963C(v23);
        }

        v23[0] = sub_2977FD5B0(v15);
        v19 = sub_2977FB720(v23);
        if (sub_2978876EC(v19) && *(v10 + 64) != 3)
        {
          sub_2978295E8(*(a1 + 160), 4733, v23);
          sub_2978295C0(v23, v6, v8);
          sub_29782963C(v23);
        }

        v23[0] = sub_2977FD5B0(v15);
        v20 = sub_2977FB720(v23);
        if (sub_2978877CC(v20))
        {
          if (*(v10 + 64) != 4)
          {
            sub_2978295E8(*(a1 + 160), 4733, v23);
            sub_2978295C0(v23, v6, v8);
            sub_29782963C(v23);
          }
        }

        if (sub_2978AFAC0(a2, v15, v10))
        {
          goto LABEL_23;
        }

        v21 = *(a1 + 160);
        v22 = 4732;
      }

      else
      {
LABEL_21:
        v21 = *(a1 + 160);
        v22 = 4734;
      }

      sub_2978295E8(v21, v22, v23);
      sub_2978295C0(v23, v6, v8);
      sub_29782963C(v23);
LABEL_23:
      sub_29781AE30(&v25);
    }
  }

  return result;
}

BOOL sub_2978AFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  v5 = sub_2978B0F4C(a1 + 128, &v7);
  if (!v5)
  {
    *sub_2978B0F74(a1 + 128, &v7) = a3;
  }

  return v5 == 0;
}

uint64_t sub_2978AFB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v27 = a2;
  v28 = a3;
  result = sub_297806914(&v27);
  if ((result & 1) == 0)
  {
    sub_297804C94(v27, v28, -1, v30);
    if (sub_2977FB5F8(v30))
    {
      sub_297809B88(v26);
      v6 = j_nullsub_1(v30, v5);
      v7 = sub_2977FB720(v6);
      v8 = sub_297805334(v7);
      sub_29781A420(v29, v8, v9, 0, 0, 0);
      sub_2978AFE0C(v29, v26);
      v21[0] = sub_29781A4C8(v29);
      v21[1] = v10;
      if (sub_297805430(v21))
      {
        sub_2978295E8(*(a1 + 160), 4729, v21);
        sub_2978295C0(v21, v27, v28);
        sub_29782963C(v21);
      }

      else
      {
        v25 = sub_29780A294(v26, v11);
        v24 = sub_297809B0C(v26, v13);
        while (sub_29780852C(&v25, &v24))
        {
          v14 = sub_2977FB720(&v25);
          sub_2978AFE4C(v21, v14);
          sub_297801F5C(&v27, &v20);
          sub_2978046C4(v23, &v20);
          std::string::~string(&v20);
          if (sub_2978034A0(v22, "float"))
          {
            sub_2978AFE50(a1, v21);
          }

          else if (sub_2978034A0(v22, "int") || sub_2978034A0(v22, "uint"))
          {
            sub_2978B0280(a1, v21);
          }

          else if (sub_2978034A0(v22, "BOOL"))
          {
            sub_2978B0458(a1, v21);
          }

          else
          {
            sub_2978295E8(*(a1 + 160), 4738, &v20);
            sub_2978044E8(&v18, v22);
            v15 = sub_2978295C0(&v20, v18, v19);
            sub_2978044E8(&v18, v21);
            v16 = sub_2978295C0(v15, v18, v19);
            sub_2978044E8(&v18, v23);
            sub_2978295C0(v16, v18, v19);
            sub_29782963C(&v20);
          }

          sub_2978B0640(v21);
          sub_2978B0644(&v25);
        }
      }

      sub_29781A49C(v29);
      sub_2978B0654(v26);
    }

    else
    {
      sub_2978295E8(*(a1 + 160), 4721, v29);
      sub_2978295C0(v29, v27, v28);
      sub_29782963C(v29);
    }

    result = sub_29780A9E0(v30, v12);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978AFE0C(uint64_t a1, uint64_t *a2)
{
  if (sub_29781A4E8(a1))
  {
    sub_2978B195C(a1, a2);
  }

  return a1;
}

uint64_t sub_2978AFE50(uint64_t a1, uint64_t a2)
{
  v38[23] = *MEMORY[0x29EDCA608];
  if (*(a2 + 48) == 1)
  {
    sub_2978044E8(v38, a2);
    v4 = sub_297809ADC((a2 + 56), 0);
    v5 = std::stof(v4, 0);
    result = sub_2978B0A38(a1, v38[0], v38[1], v5);
    goto LABEL_24;
  }

  v7 = *(a2 + 52);
  v8 = sub_297809AF0((a2 + 56));
  v9 = *(a2 + 48);
  if (v7 != 1)
  {
    if (v8 != *(a2 + 52) * v9)
    {
      goto LABEL_19;
    }

    sub_2978B0B2C(v38);
    if (!*(a2 + 48))
    {
      goto LABEL_20;
    }

    v13 = 0;
    do
    {
      sub_297813788(&__str);
      v14 = *(a2 + 52);
      if (v14)
      {
        for (i = 0; i < v14; ++i)
        {
          v16 = sub_297809ADC((a2 + 56), i + v13 * v14);
          LODWORD(v36) = std::stof(v16, 0);
          sub_297803988(&__str, &v36);
          v14 = *(a2 + 52);
        }
      }

      sub_2978B0B30(v38, &__str);
      sub_2977FD134(&__str);
      ++v13;
      v17 = *(a2 + 48);
    }

    while (v13 < v17);
    switch(v17)
    {
      case 2u:
        sub_2978044E8(&__str, a2);
        v29 = sub_297875F54(v38, 0);
        sub_2978B0B28(&v36, v29);
        v30 = sub_297875F54(v38, 1u);
        sub_2978B0B28(v34, v30);
        sub_2978B0724(a1, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        break;
      case 3u:
        sub_2978044E8(&__str, a2);
        v26 = sub_297875F54(v38, 0);
        sub_2978B0B28(&v36, v26);
        v27 = sub_297875F54(v38, 1u);
        sub_2978B0B28(v34, v27);
        v28 = sub_297875F54(v38, 2u);
        sub_2978B0B28(v33, v28);
        sub_2978B0840(a1, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        break;
      case 4u:
        sub_2978044E8(&__str, a2);
        v18 = sub_297875F54(v38, 0);
        sub_2978B0B28(&v36, v18);
        v19 = sub_297875F54(v38, 1u);
        sub_2978B0B28(v34, v19);
        v20 = sub_297875F54(v38, 2u);
        sub_2978B0B28(v33, v20);
        v21 = sub_297875F54(v38, 3u);
        sub_2978B0B28(v32, v21);
        sub_2978B08EC(a1, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, v36, v37, v34[0], v34[1], v22, v33[0], v33[1], v32[0], v32[1]);
        break;
      default:
LABEL_20:
        sub_2978295E8(*(a1 + 160), 4736, &__str);
        v24 = sub_29785965C(&__str, *(a2 + 48));
        sub_2978044E8(&v36, a2);
        v25 = sub_2978295C0(v24, v36, v37);
        sub_2978044E8(&v36, a2 + 80);
        sub_2978295C0(v25, v36, v37);
        sub_29782963C(&__str);
        break;
    }

    result = sub_2978B0BA0(v38);
    goto LABEL_24;
  }

  if (v8 != v9)
  {
LABEL_19:
    sub_2978295E8(*(a1 + 160), 4737, v38);
    sub_2978044E8(&__str, a2);
    v23 = sub_2978295C0(v38, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    sub_2978044E8(&__str, a2 + 80);
    sub_2978295C0(v23, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    result = sub_29782963C(v38);
    goto LABEL_24;
  }

  sub_297813788(v38);
  v36 = sub_29780A294((a2 + 56), v10);
  v34[0] = sub_297809B0C(a2 + 56, v11);
  while (sub_29780852C(&v36, v34))
  {
    v12 = sub_2977FB720(&v36);
    std::string::basic_string(&__str, v12);
    LODWORD(v33[0]) = std::stof(&__str, 0);
    sub_297803988(v38, v33);
    std::string::~string(&__str);
    sub_2978297A4(&v36);
  }

  sub_2978044E8(&__str, a2);
  sub_2978B0B28(&v36, v38);
  sub_2978B0AAC(a1, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, v36, v37);
  result = sub_2977FD134(v38);
LABEL_24:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978B0280(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    sub_2978044E8(v19, a2);
    v4 = sub_297809ADC((a2 + 56), 0);
    v5 = std::stoi(v4, 0, 10);
    return sub_2978B0BA4(a1, v19[0], v19[1], v5);
  }

  if (*(a2 + 52) != 1)
  {
    sub_2978295E8(*(a1 + 160), 4739, v19);
    sub_2978044E8(&__str, a2 + 24);
    v10 = sub_2978295C0(v19, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    sub_2978044E8(&__str, a2);
    size = __str.__r_.__value_.__l.__size_;
    v11 = __str.__r_.__value_.__r.__words[0];
    v13 = v10;
LABEL_10:
    v14 = sub_2978295C0(v13, v11, size);
    sub_2978044E8(&__str, a2 + 80);
    sub_2978295C0(v14, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    return sub_29782963C(v19);
  }

  if (sub_297809AF0((a2 + 56)) != *(a2 + 48))
  {
    sub_2978295E8(*(a1 + 160), 4737, v19);
    sub_2978044E8(&__str, a2);
    size = __str.__r_.__value_.__l.__size_;
    v11 = __str.__r_.__value_.__r.__words[0];
    v13 = v19;
    goto LABEL_10;
  }

  sub_297813788(v19);
  v15[0] = sub_29780A294((a2 + 56), v7);
  v18 = sub_297809B0C(a2 + 56, v8);
  while (sub_29780852C(v15, &v18))
  {
    v9 = sub_2977FB720(v15);
    std::string::basic_string(&__str, v9);
    v16 = std::stoi(&__str, 0, 10);
    sub_297803988(v19, &v16);
    std::string::~string(&__str);
    sub_2978297A4(v15);
  }

  sub_2978044E8(&__str, a2);
  sub_2978B0B28(v15, v19);
  sub_2978B0C18(a1, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, v15[0], v15[1]);
  return sub_2977FD134(v19);
}

uint64_t sub_2978B0458(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    sub_2978044E8(v19, a2);
    v4 = sub_297809ADC((a2 + 56), 0);
    v5 = sub_2978034A0(v4, "false");
    return sub_2978B0C94(a1, v19[0], v19[1], !v5);
  }

  if (*(a2 + 52) != 1)
  {
    sub_2978295E8(*(a1 + 160), 4739, v19);
    sub_2978044E8(&v17, a2 + 24);
    v10 = sub_2978295C0(v19, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    sub_2978044E8(&v17, a2);
    size = v17.__r_.__value_.__l.__size_;
    v11 = v17.__r_.__value_.__r.__words[0];
    v13 = v10;
LABEL_10:
    v14 = sub_2978295C0(v13, v11, size);
    sub_2978044E8(&v17, a2 + 80);
    sub_2978295C0(v14, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    return sub_29782963C(v19);
  }

  if (sub_297809AF0((a2 + 56)) != *(a2 + 48))
  {
    sub_2978295E8(*(a1 + 160), 4737, v19);
    sub_2978044E8(&v17, a2);
    size = v17.__r_.__value_.__l.__size_;
    v11 = v17.__r_.__value_.__r.__words[0];
    v13 = v19;
    goto LABEL_10;
  }

  sub_2978B0D08();
  v15[0] = sub_29780A294((a2 + 56), v7);
  v18 = sub_297809B0C(a2 + 56, v8);
  while (sub_29780852C(v15, &v18))
  {
    v9 = sub_2977FB720(v15);
    std::string::basic_string(&v17, v9);
    v16 = !sub_2978034A0(&v17, "false");
    sub_2977FCD50(v19, &v16);
    std::string::~string(&v17);
    sub_2978297A4(v15);
  }

  sub_2978044E8(&v17, a2);
  sub_2978B0D88(v15, v19);
  sub_2978B0D0C(a1, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_, v15[0], v15[1]);
  return sub_2977FD134(v19);
}

void sub_2978B0658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29782F7A4((a1 + 168), a2, a3);
  v5 = sub_29781AD1C(a1 + 168);
  if (!sub_297815520(&v6, &v5))
  {
    v4 = sub_29781AD54(&v6);
    sub_2978B06C8(a1, *(v4 + 8));
    sub_2978B06D4(a1 + 168, v6);
  }
}

void sub_2978B06D4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3 = sub_29781AD54(&v4);
  sub_29782F864(a1, v3);
  sub_29781BCB4(v3, a1 + 24);
}

uint64_t sub_2978B0724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2978B07B8(72, a1);
  sub_2978B07C0(v6);

  return sub_2978B07C4(a1, a2, a3, v6);
}

uint64_t sub_2978B07C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a2;
  v13[1] = a3;
  v12 = a4;
  sub_29781C290(v9, v13, &v12);
  result = sub_29781C040(a1 + 168, v9);
  v10 = result;
  v11 = v6;
  if ((v6 & 1) == 0)
  {
    v7 = sub_29781AD54(&v10);
    sub_2978B06C8(a1, *(v7 + 8));
    v8 = v12;
    result = sub_29781AD54(&v10);
    *(result + 8) = v8;
  }

  return result;
}

uint64_t sub_2978B0840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2978B07B8(72, a1);
  sub_2978B08E8(v6);

  return sub_2978B07C4(a1, a2, a3, v6);
}

uint64_t sub_2978B08EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = sub_2978B07B8(72, a1);
  sub_2978B099C(v17, a4, a5, a6, a7, a9, a10, v18, a11, a12);

  return sub_2978B07C4(a1, a2, a3, v17);
}

BOOL sub_2978B09A8@<W0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_297809B88(a2);
  v9 = sub_29783BF9C(a1 + 168);
  v8 = sub_29783BFD4(a1 + 168);
  for (result = sub_29781550C(&v9, &v8); result; result = sub_29781550C(&v9, &v8))
  {
    v5 = sub_29781AD54(&v9);
    v7[0] = sub_29781ADE4(v5);
    v7[1] = v6;
    sub_29780BFD8(a2, v7);
    sub_29781AE30(&v9);
  }

  return result;
}

uint64_t sub_2978B0A38(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = sub_2978B07B8(72, a1);
  v9.n128_f32[0] = a4;
  sub_297897068(v8, v9);

  return sub_2978B07C4(a1, a2, a3, v8);
}

uint64_t sub_2978B0AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2978B07B8(72, a1);
  sub_2978B35F8(v10, a4, a5);

  return sub_2978B07C4(a1, a2, a3, v10);
}

uint64_t sub_2978B0B30(void *a1, void *a2)
{
  if (a1[1] >= a1[2])
  {
    sub_2978B3688(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_2978B3780(v4, a2);
  v5 = sub_2977FB7B8(a1) + 40;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_2978B0BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2978B07B8(72, a1);
  sub_29789707C(v8, a4);

  return sub_2978B07C4(a1, a2, a3, v8);
}

uint64_t sub_2978B0C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2978B07B8(72, a1);
  sub_2978B3BF8(v10, a4, a5);

  return sub_2978B07C4(a1, a2, a3, v10);
}

uint64_t sub_2978B0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2978B07B8(72, a1);
  sub_297897090(v8, a4);

  return sub_2978B07C4(a1, a2, a3, v8);
}

uint64_t sub_2978B0D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2978B07B8(72, a1);
  sub_2978B3CD0(v10, a4, a5);

  return sub_2978B07C4(a1, a2, a3, v10);
}

uint64_t sub_2978B0D8C(uint64_t a1)
{
  if (sub_29782B4CC(a1) || (result = sub_29782B4D4(a1), result))
  {
    v3 = sub_29782B4CC(a1);
    v4 = sub_29782AFAC(a1);
    if (v4 <= 4 * v3 || (v4 = sub_29782AFAC(a1), v4 < 0x41))
    {
      v5 = sub_29782F70C(v4);
      v6 = sub_297885834();
      v7 = sub_297803A7C(a1);
      v8 = sub_29783D84C(a1);
      if (v7 != v8)
      {
        v9 = v8;
        do
        {
          if (!sub_297807F98(*v7, v5))
          {
            if (!sub_297807F98(*v7, v6))
            {
              sub_297845D8C(a1);
            }

            *v7 = v5;
          }

          v7 += 2;
        }

        while (v7 != v9);
      }

      return sub_29782AF58(a1, 0);
    }

    else
    {

      return sub_2978B0EB8(a1);
    }
  }

  return result;
}

uint64_t sub_2978B0EBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_2978857AC(a1);
  if (v2)
  {
    v5 = 64;
    v4 = 1 << (sub_29780A3C4(v2) + 1);
    v2 = *sub_29782CF54(&v5, &v4);
  }

  if (v2 == *(a1 + 16))
  {
    return sub_297885B64(a1);
  }

  j__free(*a1);
  return sub_297885B18(a1, v2);
}

uint64_t *sub_2978B0F90(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (sub_2978B0FEC(a1, a2, &v6))
  {
    return v6;
  }

  v5 = 0;
  return sub_2978B1028(a1, a2, &v5, v6);
}

uint64_t sub_2978B0FEC(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = 0;
  result = sub_29788738C(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t *sub_2978B1028(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_2978B1064(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t *sub_2978B1064(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978B1150(a1, (2 * v6));
    sub_2978B0FEC(a1, a2, &v11);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978B1150(a1, v7);
    sub_2978B0FEC(a1, a2, &v11);
  }

  v8 = sub_29782B4D8(a1);
  v9 = sub_29782F70C(v8);
  if (!sub_297807F98(*v11, v9))
  {
    sub_29782B514(a1);
  }

  return v11;
}

void sub_2978B1154(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_2978B11E0(a1, v4, &v4[2 * v3]);
    j__free(v4);
  }

  else
  {
    sub_297885B64(a1);
  }
}

uint64_t sub_2978B11E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_297885B64(a1);
  v7 = sub_29782F70C(v6);
  result = sub_297885834();
  if (a2 != a3)
  {
    v9 = result;
    do
    {
      result = sub_297807F98(*a2, v7);
      if ((result & 1) == 0)
      {
        result = sub_297807F98(*a2, v9);
        if ((result & 1) == 0)
        {
          v10 = 0;
          sub_2978B0FEC(a1, a2, &v10);
          *v10 = *a2;
          v10[1] = a2[1];
          result = sub_29782B4D8(a1);
        }
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_2978B129C(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string(a1, a2);
  std::string::basic_string(v4 + 1, (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  sub_297855DC4(a1 + 56, a2 + 56);
  std::string::basic_string((a1 + 80), (a2 + 80));
  return a1;
}

void sub_2978B12F4(uint64_t a1)
{
  std::string::~string((a1 + 80));
  sub_297809B8C(a1 + 56);
  std::string::~string((a1 + 24));

  std::string::~string(a1);
}

uint64_t sub_2978B1340(uint64_t a1)
{
  sub_2978B138C(v5);
  v2 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v2;
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = 4;
  return a1;
}

_OWORD *sub_2978B1390(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; i != 4; ++i)
  {
    j_nullsub_1(&a1[i], a2);
  }

  sub_2978B1424(&v12, a2, a3);
  *a1 = v12;
  sub_2978B1424(&v12, a4, a5);
  a1[1] = v12;
  return a1;
}

uint64_t sub_2978B1428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if (sub_2977FB7B8(v9))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *sub_2978B14B4(v9, v4);
      *sub_297887A44(a1, v4) = v6;
      v4 = v5;
    }

    while (sub_2977FB7B8(v9) > v5++);
  }

  return a1;
}

uint64_t sub_2978B14C0(uint64_t a1)
{
  sub_2978B150C(v5);
  v2 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v2;
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = 4;
  return a1;
}

_OWORD *sub_2978B1510(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  for (i = 0; i != 4; ++i)
  {
    j_nullsub_1(&a1[i], a2);
  }

  sub_2978B1424(&v16, a2, a3);
  *a1 = v16;
  sub_2978B1424(&v16, a4, a5);
  a1[1] = v16;
  sub_2978B1424(&v16, a6, a7);
  a1[2] = v16;
  return a1;
}

uint64_t sub_2978B15CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2978B1620(v14, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v11 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v11;
  v12 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v12;
  *(a1 + 64) = 4;
  return a1;
}

_OWORD *sub_2978B162C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  for (i = 0; i != 4; ++i)
  {
    j_nullsub_1(&a1[i], a2);
  }

  sub_2978B1424(&v19, a2, a3);
  *a1 = v19;
  sub_2978B1424(&v19, a4, a5);
  a1[1] = v19;
  sub_2978B1424(&v19, a6, a7);
  a1[2] = v19;
  sub_2978B1424(&v19, a9, a10);
  a1[3] = v19;
  return a1;
}

void *sub_2978B1710(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_2978B1768(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t sub_2978B1768(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 40;
      result = sub_2977FD134(v2);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_2978B17AC(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_2978B17EC(&v3);
  return a1;
}

uint64_t *sub_2978B17EC(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_2978B185C(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_2978B18A8(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_2978B185C(uint64_t *a1)
{
  v2 = sub_2978B18D0(a1);
  sub_2978B18F4(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_2978B18F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_2978B1950(v3, v5))
  {
    i -= 104;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_2978B195C(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if ((*(*a1 + 16))(a1))
  {
    v4 = sub_2978B1AB8(a1, a2);
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v8 = 0;
      if ((*(*a1 + 32))(a1, i, &v8))
      {
        v6 = sub_2978B1B48(a1, a2, i);
        sub_2978B1AC0(a1, v6);
        (*(*a1 + 40))(a1, v8);
      }
    }
  }

  return (*(*a1 + 48))(a1);
}

uint64_t sub_2978B1AC0(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 104))(a1);
  sub_2978B1BA0(a1, a2);
  v4 = *(*a1 + 112);

  return v4(a1);
}

uint64_t sub_2978B1B48(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (sub_2978B18D0(a2) <= a3)
  {
    sub_2978B2AA4(a2, a3 + 1);
  }

  return sub_2978B2B24(a2, a3);
}

uint64_t sub_2978B1BA0(uint64_t a1, uint64_t a2)
{
  sub_2978B1C30(a1, "name", a2);
  sub_2978B1C30(a1, "type", a2 + 24);
  sub_2978B1C38(a1, "numCols", (a2 + 48));
  sub_2978B1C38(a1, "numRows", (a2 + 52));

  return sub_2978B1C40(a1, "values", (a2 + 56));
}

uint64_t sub_2978B1C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(*a1 + 120))(a1, a2, a4, 0, &v7, &v8);
  if (result)
  {
    sub_2978B1CFC(a1, a3);
    return (*(*a1 + 128))(a1, v8);
  }

  return result;
}

void sub_2978B1CFC(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    sub_297802744(&v14);
    sub_29783E51C(v13, &v14);
    v4 = sub_2977FB7B8(a1);
    sub_29781B980(a2, v4, v13);
    v5 = sub_29783E520(v13);
    sub_2978044E8(&v11, v5);
    v6 = sub_2978B1E8C(v11, v12);
    (*(*a1 + 184))(a1, &v11, v6);
    sub_29781F160(v13);
    std::string::~string(&v14);
  }

  else
  {
    sub_297804560(&v14);
    v7 = sub_2978B1E8C(v14.__r_.__value_.__r.__words[0], v14.__r_.__value_.__l.__size_);
    (*(*a1 + 184))(a1, &v14, v7);
    v8 = *&v14.__r_.__value_.__l.__data_;
    v9 = sub_2977FB7B8(a1);
    v11 = sub_29781B98C(v8, *(&v8 + 1), v9, a2);
    v12 = v10;
    if (!sub_297806914(&v11))
    {
      sub_2978036E8(v13, &v11);
      (*(*a1 + 192))(a1, v13);
    }
  }
}

BOOL sub_2978B1E90(char *a1, uint64_t a2)
{
  v6 = a1;
  v7 = a2;
  if (sub_297806914(&v6))
  {
    return 1;
  }

  v2 = sub_29780FFE4(&v6);
  if (sub_2978B1F3C(v2))
  {
    return 1;
  }

  v3 = sub_29782E158(&v6);
  if (sub_2978B1F3C(v3))
  {
    return 1;
  }

  if (sub_29780FFE4(&v6) == 44)
  {
    return 1;
  }

  sub_2977FB7B4(v5, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-/^., \t");
  return sub_29780F9A4(&v6, v5[0], v5[1], 0) != -1 || sub_2978B1F44(v6, v7) || sub_2978B1FE8(v6, v7) || sub_2978B20CC(v6, v7);
}

BOOL sub_2978B1F44(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_2977FB7B4(&v3, "null");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "Null");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "NULL");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "~");
  return sub_2977FB778(v5, v3, v4);
}

BOOL sub_2978B1FE8(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_2977FB7B4(&v3, "true");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "True");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "TRUE");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "false");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "False");
  if (sub_2977FB778(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "FALSE");
  return sub_2977FB778(v5, v3, v4);
}

BOOL sub_2978B20CC(char *a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  if (sub_29780FFE4(&v8) != 45 && sub_29780FFE4(&v8) != 43 || (v2 = 1, v3 = sub_2978187D4(&v8, 1uLL), (sub_2978B21A4(v3, v4) & 1) == 0))
  {
    if (sub_2978B21A4(v8, v9))
    {
      return 1;
    }

    sub_2977FB7B4(&v6, ".nan");
    if (sub_2977FB778(&v8, v6, v7))
    {
      return 1;
    }

    sub_2977FB7B4(&v6, ".NaN");
    if (sub_2977FB778(&v8, v6, v7))
    {
      return 1;
    }

    else
    {
      sub_2977FB7B4(&v6, ".NAN");
      return sub_2977FB778(&v8, v6, v7);
    }
  }

  return v2;
}

uint64_t sub_2978B21A4(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  sub_2977FB7B4(&v9, "0");
  if (!sub_297807C54(&v11, v9, v10) || (v2 = 1, v9 = sub_2978187D4(&v11, 1uLL), v10 = v3, sub_2977FB7B4(&v7, "01234567"), sub_29780F9A4(&v9, v7, v8, 0) != -1))
  {
    sub_2977FB7B4(&v9, "0o");
    if (sub_297807C54(&v11, v9, v10))
    {
      v9 = sub_2978187D4(&v11, 2uLL);
      v10 = v4;
      sub_2977FB7B4(&v7, "01234567");
      if (sub_29780F9A4(&v9, v7, v8, 0) == -1)
      {
        return 1;
      }
    }

    sub_2977FB7B4(&v9, "0x");
    if (sub_297807C54(&v11, v9, v10))
    {
      v9 = sub_2978187D4(&v11, 2uLL);
      v10 = v5;
      sub_2977FB7B4(&v7, "0123456789abcdefABCDEF");
      if (sub_29780F9A4(&v9, v7, v8, 0) == -1)
      {
        return 1;
      }
    }

    sub_2977FB7B4(&v9, "0123456789");
    if (sub_29780F9A4(&v11, v9, v10, 0) == -1)
    {
      return 1;
    }

    sub_2977FB7B4(&v9, ".inf");
    if (sub_2977FB778(&v11, v9, v10))
    {
      return 1;
    }

    sub_2977FB7B4(&v9, ".Inf");
    if (sub_2977FB778(&v11, v9, v10))
    {
      return 1;
    }

    sub_2977FB7B4(&v9, ".INF");
    if (sub_2977FB778(&v11, v9, v10))
    {
      return 1;
    }

    else
    {
      sub_2977FB7B4(&v7, "^(\\.[0-9]+|[0-9]+(\\.[0-9]*)?)([eE][-+]?[0-9]+)?$");
      sub_297809094(&v9, v7, v8, 0);
      v2 = sub_297809168(&v9, v11, v12, 0);
      sub_2978090D4(&v9);
    }
  }

  return v2;
}

uint64_t sub_2978B23A8(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(*a1 + 120))(a1, a2, a4, 0, &v7, &v8);
  if (result)
  {
    sub_2978B245C(a1, a3);
    return (*(*a1 + 128))(a1, v8);
  }

  return result;
}

void sub_2978B245C(uint64_t a1, unsigned int *a2)
{
  if ((*(*a1 + 16))(a1))
  {
    sub_297802744(&v13);
    sub_29783E51C(v12, &v13);
    v4 = sub_2977FB7B8(a1);
    sub_29781B9E4(a2, v4, v12);
    v5 = sub_29783E520(v12);
    sub_2978044E8(v11, v5);
    v6 = sub_2977FD678();
    (*(*a1 + 184))(a1, v11, v6);
    sub_29781F160(v12);
    std::string::~string(&v13);
  }

  else
  {
    sub_297804560(&v13);
    v7 = sub_2977FD678();
    (*(*a1 + 184))(a1, &v13, v7);
    v8 = *&v13.__r_.__value_.__l.__data_;
    v9 = sub_2977FB7B8(a1);
    v11[0] = sub_29781B9F0(v8, *(&v8 + 1), v9, a2);
    v11[1] = v10;
    if (!sub_297806914(v11))
    {
      sub_2978036E8(v12, v11);
      (*(*a1 + 192))(a1, v12);
    }
  }
}

uint64_t sub_2978B25EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(*a1 + 120))(a1, a2, a4, 0, &v7, &v8);
  if (result)
  {
    sub_2978B26A0(a1, a3);
    return (*(*a1 + 128))(a1, v8);
  }

  return result;
}

uint64_t sub_2978B26A0(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  if ((*(*a1 + 16))(a1))
  {
    v4 = sub_2978B27FC(a1, a2);
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v8 = 0;
      if ((*(*a1 + 72))(a1, i, &v8))
      {
        v6 = sub_2978B2804(a1, a2, i);
        sub_2978B1CFC(a1, v6);
        (*(*a1 + 80))(a1, v8);
      }
    }
  }

  return (*(*a1 + 88))(a1);
}

uint64_t sub_2978B2804(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (sub_297809AF0(a2) <= a3)
  {
    sub_2978B285C(a2, a3 + 1);
  }

  return sub_297809ADC(a2, a3);
}

unint64_t sub_2978B285C(uint64_t *a1, unint64_t a2)
{
  result = sub_297809AF0(a1);
  if (a2 <= result)
  {
    if (a2 < result)
    {
      v5 = *a1 + 24 * a2;

      return sub_29780A2D4(a1, v5);
    }
  }

  else
  {

    return sub_2978B28DC(a1, a2 - result);
  }

  return result;
}

uint64_t sub_2978B28DC(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3) >= a2)
  {

    return sub_2978B29B0(a1, a2);
  }

  else
  {
    v4 = sub_297809AF0(a1);
    v5 = sub_297809EBC(a1, v4 + a2);
    v6 = sub_297809AF0(a1);
    sub_297809F34(v8, v5, v6, a1);
    sub_2978B2A24(v8, a2);
    sub_297809F38(a1, v8);
    return sub_29780A01C(v8);
  }
}

uint64_t sub_2978B29B0(uint64_t a1, uint64_t a2)
{
  sub_297809E80(v8, a1, a2);
  v4 = v9;
  v5 = v10;
  while (v4 != v5)
  {
    v6 = nullsub_1(v4, v3);
    sub_2978B2A98(a1, v6);
    v4 += 24;
    v9 = v4;
  }

  return sub_297809E88(v8);
}

uint64_t sub_2978B2A24(uint64_t a1, uint64_t a2)
{
  sub_29785ACCC(&v8, a1 + 16, a2);
  for (i = v8; i != v9; v8 = i)
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(i, v3);
    sub_2978B2A98(v5, v6);
    i = v8 + 24;
  }

  return sub_29784F0A0(&v8);
}

uint64_t *sub_2978B2AA4(uint64_t *a1, unint64_t a2)
{
  result = sub_2978B18D0(a1);
  if (a2 <= result)
  {
    if (a2 < result)
    {
      v5 = *a1 + 104 * a2;

      return sub_2978B2C10(a1, v5);
    }
  }

  else
  {

    return sub_2978B2B34(a1, a2 - result);
  }

  return result;
}

uint64_t *sub_2978B2B34(uint64_t *a1, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((a1[2] - a1[1]) >> 3) >= a2)
  {

    return sub_2978B2C68(a1, a2);
  }

  else
  {
    v4 = sub_2978B18D0(a1);
    v5 = sub_2978B2CDC(a1, v4 + a2);
    v6 = sub_2978B18D0(a1);
    sub_2978B2D54(v8, v5, v6, a1);
    sub_2978B2D58(v8, a2);
    sub_2978B2DCC(a1, v8);
    return sub_2978B2EB0(v8);
  }
}

uint64_t sub_2978B2C10(void *a1, uint64_t a2)
{
  v4 = sub_2978B18D0(a1);
  sub_2978B18F4(a1, a2);

  return nullsub_1(a1, v4);
}

uint64_t sub_2978B2C68(uint64_t a1, uint64_t a2)
{
  sub_2978B2EB4(v8, a1, a2);
  v4 = v9;
  v5 = v10;
  while (v4 != v5)
  {
    v6 = nullsub_1(v4, v3);
    sub_2978B2EB8(a1, v6);
    v4 += 104;
    v9 = v4;
  }

  return sub_297809E88(v8);
}

unint64_t sub_2978B2CDC(void *a1, unint64_t a2)
{
  v9 = a2;
  v4 = sub_2978B2F3C();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_2978B18A8(a1);
  if (v6 < v5 >> 1)
  {
    v8 = 2 * v6;
    return *sub_29780338C(&v8, &v9);
  }

  return v5;
}

uint64_t sub_2978B2D58(uint64_t a1, uint64_t a2)
{
  sub_2978B3060(&v8, a1 + 16, a2);
  for (i = v8; i != v9; v8 = i)
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(i, v3);
    sub_2978B2EB8(v5, v6);
    i = v8 + 104;
  }

  return sub_29784F0A0(&v8);
}

uint64_t sub_2978B2DCC(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_2978B307C(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_2978B18D0(a1);

  return nullsub_1(a1, v11);
}

void *sub_2978B2EBC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 104 * a3;
  return result;
}

uint64_t sub_2978B2ED4(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_2978B2EF0(a2);
}

uint64_t sub_2978B2EF4(uint64_t a1)
{
  v2 = sub_297802744(a1);
  sub_297802744(v2 + 24);
  *(a1 + 48) = 0x100000001;
  sub_297809B88((a1 + 56));
  sub_297802744(a1 + 80);
  return a1;
}

uint64_t sub_2978B2F3C()
{
  v2 = sub_2978B2F78();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_2978B2F90(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_2978B2FE4(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 104 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 104 * a2;
  return a1;
}

uint64_t sub_2978B300C(uint64_t a1, unint64_t a2)
{
  if (sub_2978B2F78() < a2)
  {
    sub_29780339C();
  }

  return sub_2978B3054(a2);
}

void *sub_2978B3064(void *result, void *a2, uint64_t a3)
{
  v3 = *a2 + 104 * a3;
  *result = *a2;
  result[1] = v3;
  result[2] = a2;
  return result;
}

uint64_t sub_2978B307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    v9 = a2;
    do
    {
      v10 = nullsub_1(v8, v7);
      sub_2978B3134(a1, v10, v9);
      v9 += 104;
      v8 = v16 + 104;
      v16 += 104;
    }

    while (v9 != a3);
  }

  sub_29780CE64(&v14);
  sub_2978B3138(a1, a2, a3);
  return j_nullsub_1(&v14, v11);
}

uint64_t sub_2978B3138(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = nullsub_1(v4, a2);
      result = sub_2978B1950(v5, v6);
      v4 += 104;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_2978B31A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_297808AB4(a1, a2);
  sub_297808AB4(v4 + 24, a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  sub_2978B31FC(a1 + 56, a2 + 56);
  sub_297808AB4(a1 + 80, a2 + 80);
  return a1;
}

__n128 sub_2978B3200(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *sub_2978B3224(uint64_t *a1)
{
  sub_2978B3278(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_2978B3280(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_2978B32AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 104;
      v6 = nullsub_1(v2 - 104, a2);
      result = sub_2978B1950(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_2978B3318(uint64_t a1, void *a2)
{
  v4 = sub_2978B3408(a1);

  return sub_2978B335C(a1, v4, a2);
}

uint64_t sub_2978B335C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a2;
  v5 = sub_2977FB720(&v8);
  v6 = sub_2977FB720(v5);
  sub_2977FD5DC(a3, v5);
  sub_2977FE390(a3, v6);
  if (v5 == *(a1 + 16))
  {
    *(a1 + 16) = a3;
  }

  else
  {
    sub_2977FD5DC(v6, a3);
  }

  sub_2977FE390(v5, a3);
  nullsub_1(a1, a3);
  sub_2977FDEF4(&v9, a3);
  return v9;
}

uint64_t sub_2978B3408(uint64_t a1)
{
  sub_2978B3444(a1);
  sub_2977FDEF4(&v3, *(a1 + 16));
  return v3;
}

void *sub_2978B3458(uint64_t a1, uint64_t *a2)
{
  if (sub_2978B34D0(a1))
  {

    return sub_297803E1C(a2, 72, 8uLL);
  }

  else
  {
    v5 = sub_2978B3408(a1);
    return sub_2978B3508(a1, &v5);
  }
}

void *sub_2978B3534(uint64_t a1, void *a2)
{
  v4 = sub_2977FB720(a2);
  v5 = sub_2977FB7B8(v4);
  v6 = sub_2977FB720(v4);
  v7 = v6;
  if (v4 == *(a1 + 16))
  {
    *(a1 + 16) = v5;
  }

  else
  {
    sub_2977FD5DC(v6, v5);
  }

  sub_2977FE390(v5, v7);
  sub_2977FDEF4(&v9, v5);
  *a2 = v9;
  nullsub_1(a1, v4);
  sub_2977FD5DC(v4, 0);
  sub_2977FE390(v4, 0);
  return v4;
}

uint64_t sub_2978B35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2978B1424(&v5, a2, a3);
  *a1 = v5;
  *(a1 + 64) = 3;
  return a1;
}

uint64_t *sub_2978B3640(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_297803A80(a2);
  return a1;
}

uint64_t sub_2978B3688(void *a1, unint64_t a2)
{
  v4 = sub_29780D318(a1);
  v5 = sub_29780CAF4(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(40 * v7, 0x10800400DDA7E6AuLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_2978B3784(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_2978B1768(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 40 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 40 * v7;
  return result;
}

uint64_t sub_2978B3784(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_2978B37DC(a3, v5);
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_2978B37E0(uint64_t a1, void *a2)
{
  sub_297803C7C(a1, 4u);
  if (!sub_297806904(a2))
  {
    sub_2978B3828(a1, a2);
  }

  return a1;
}

uint64_t sub_2978B3828(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_297803A80(a2);
      v5 = sub_297803A80(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          sub_2977FB720(a2);
          sub_2977FB7B8(a2);
          v13 = sub_2978B3A18();
        }

        v14 = sub_2977FB7B8(a1);
        nullsub_1(v13, v14);
        v15 = a1;
        v16 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_297859A8C(a1) >= v4)
        {
          if (v6)
          {
            sub_2977FB720(a2);
            sub_2977FB720(a2);
            sub_2977FB720(a1);
            sub_2978B3A18();
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          nullsub_1(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_297803D70(a1, v4);
          v6 = 0;
        }

        v17 = (sub_2977FB720(a2) + 4 * v6);
        v18 = sub_2977FB7B8(a2);
        v19 = sub_2977FB720(a1);
        sub_2978198E8(v17, v18, (v19 + 4 * v6));
        v16 = sub_2977FB720(a1) + 4 * v4;
        v15 = a1;
      }

      sub_2977FD5DC(v15, v16);
      sub_2977FD800(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      nullsub_1(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      *(a1 + 16) = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

const void **sub_2978B3A1C(const void **a1, void *a2)
{
  sub_297803C7C(a1, 4u);
  if (!sub_297806904(a2))
  {
    sub_2978B3A64(a1, a2);
  }

  return a1;
}

const void **sub_2978B3A64(const void **a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = sub_297803A80(a2);
    v5 = sub_297803A80(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v10 = sub_297844084();
      }

      else
      {
        v10 = sub_2977FB720(a1);
      }

      v16 = v10;
      v17 = sub_2977FB7B8(a1);
      nullsub_1(v16, v17);
      v15 = a1;
      v14 = v16;
    }

    else
    {
      v6 = v5;
      if (sub_297859A8C(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_297844084();
        }
      }

      else
      {
        v7 = sub_2977FB720(a1);
        v8 = sub_2977FB7B8(a1);
        nullsub_1(v7, v8);
        v9 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v9);
        sub_297803D70(a1, v4);
        v6 = 0;
      }

      v11 = (sub_2977FB720(a2) + 4 * v6);
      v12 = sub_2977FB7B8(a2);
      v13 = sub_2977FB720(a1);
      sub_297807F80(v11, v12, (v13 + 4 * v6));
      v14 = sub_2977FB720(a1) + 4 * v4;
      v15 = a1;
    }

    sub_2977FD5DC(v15, v14);
  }

  return a1;
}

uint64_t sub_2978B3BFC(uint64_t a1)
{
  sub_2978B3C40(&v3);
  *a1 = v3;
  *(a1 + 64) = 3;
  return a1;
}

uint64_t sub_2978B3C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if (sub_2977FB7B8(v9))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *sub_2978B14B4(v9, v4);
      *sub_297887A44(a1, v4) = v6;
      v4 = v5;
    }

    while (sub_2977FB7B8(v9) > v5++);
  }

  return a1;
}

uint64_t sub_2978B3CD4(uint64_t a1)
{
  sub_2978B3D18(&v3);
  *a1 = v3;
  *(a1 + 64) = 3;
  return a1;
}

uint64_t sub_2978B3D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if (sub_2977FB7B8(v9))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *sub_297803268(v9, v4);
      *sub_297887A44(a1, v4) = v6;
      v4 = v5;
    }

    while (sub_2977FB7B8(v9) > v5++);
  }

  return a1;
}

uint64_t *sub_2978B3DA0(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_2977FD0D4(a2);
  return a1;
}

uint64_t sub_2978B3DE0(unsigned __int8 *a1)
{
  switch(sub_29786AC48(a1))
  {
    case 1u:
      v5 = sub_29781BF50(a1);

      goto LABEL_10;
    case 2u:
      v8 = sub_29781BF50(a1);

      return sub_2978B4050(v8);
    case 3u:
      v6 = sub_29781BF50(a1);

      return sub_297816700(v6);
    case 4u:
      v6 = sub_29781BF50(a1);

      return sub_297816700(v6);
    case 5u:
    case 6u:
      v10 = sub_29781BF50(a1);

      goto LABEL_34;
    case 7u:
      v9 = sub_29781BF50(a1);

      return sub_297805508(v9);
    case 8u:
      v7 = sub_29781BF50(a1);

      return sub_297811C4C(v7);
    case 9u:
      v7 = sub_29781BF50(a1);

      return sub_297811C4C(v7);
    case 0xAu:
      v5 = sub_29781BF50(a1);

      goto LABEL_10;
    case 0xBu:
      v5 = sub_29781BF50(a1);

      goto LABEL_10;
    case 0xCu:
      v5 = sub_29781BF50(a1);

LABEL_10:
      result = sub_297847BE0(v5);
      break;
    case 0xDu:
      v10 = sub_29781BF50(a1);

LABEL_34:
      result = sub_29782AFB0(v10);
      break;
    case 0xEu:
      v4 = sub_29781BF50(a1);

      result = sub_2978A261C(v4);
      break;
    default:
      v2 = sub_29781BF50(a1);

      result = sub_2978B4020(v2);
      break;
  }

  return result;
}

uint64_t sub_2978B4020(uint64_t a1)
{
  v1 = *sub_29789056C(a1 + 8);

  return sub_2978B3DE0(v1);
}

uint64_t sub_2978B4050(uint64_t a1)
{
  v1 = *sub_2978B4704(a1 + 8);

  return sub_2978A0C20(v1);
}

_DWORD *sub_2978B4080(uint64_t a1, int a2, int a3)
{
  v5 = sub_2978A0C00(0x18u, a1, 8u);

  return sub_2978B40CC(v5, a2, a3);
}

_DWORD *sub_2978B40D8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2978B4080(a1, a2, a3);
  sub_2978B4130(v8 + 1, a1, a4, a5);
  return v8;
}

void *sub_2978B4130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978B4A98(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

_DWORD *sub_2978B4184(uint64_t a1, int a2)
{
  v3 = sub_2978A0C00(8u, a1, 8u);

  return sub_2978B41C8(v3, a2);
}

_DWORD *sub_2978B41D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2978A0C00(0x10u, a1, 8u);
  v7 = sub_2978B4230(v6);
  sub_2978B4234(v7 + 8, a1, a2, a3);
  return v6;
}

void *sub_2978B4234(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978B4A98(a1, v6);
  return sub_2978B4AB0(a1, a2, v8, v9);
}

_DWORD *sub_2978B4288(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v13 = sub_2978A0C00(0x30u, a1, 8u);

  return sub_2978B4304(v13, a2, a3, a4, a5, a6, a7);
}

_DWORD *sub_2978B4314(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_2978A0C00(0x28u, a1, 8u);

  return sub_2978B4360(v5, a2, a3);
}

_DWORD *sub_2978B4368(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v7 = sub_2978A0C00(0x20u, a1, 8u);

  return sub_2978B43C4(v7, a2, a3, a4);
}

_DWORD *sub_2978B43D0(uint64_t a1, int a2, int a3)
{
  v5 = sub_2978A0C00(0x18u, a1, 8u);

  return sub_2978B441C(v5, a2, a3);
}

_DWORD *sub_2978B4428(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2978A0C00(0x30u, a1, 8u);

  return sub_2978B449C(v11, a2, a3, a4, a5, a6);
}

_DWORD *sub_2978B44A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2978A0C00(0x20u, a1, 8u);

  return sub_2978B4500(v7, a2, a3, a4);
}

_DWORD *sub_2978B4508(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2978A0C00(0x20u, a1, 8u);
  v8 = sub_2978A2654(a4);

  return sub_2978B4578(v7, a2, v8, a3, a4);
}

_DWORD *sub_2978B4584(uint64_t a1, int a2)
{
  v3 = sub_2978A0C00(8u, a1, 8u);

  return sub_2978B45C8(v3, a2);
}

_DWORD *sub_2978B45D0(uint64_t a1, int a2)
{
  v3 = sub_2978A0C00(8u, a1, 8u);

  return sub_2978B4614(v3, a2);
}

_DWORD *sub_2978B461C(uint64_t a1, int a2)
{
  v3 = sub_2978A0C00(8u, a1, 8u);

  return sub_2978B4660(v3, a2);
}

_DWORD *sub_2978B4668(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_2978A0C00(0x18u, a1, 8u);

  return sub_2978B46B4(v5, a2, a3);
}

_DWORD *sub_2978B46BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978A0C00(0x10u, a1, 8u);

  return sub_2978B4700(v3, a2);
}

_DWORD *sub_2978B4708(_DWORD *a1, int a2, int a3)
{
  v6 = sub_2978B4750(a1, 0);
  sub_2978A1BC8(v6 + 2);
  a1[4] = a2;
  a1[5] = a3;
  return a1;
}

_DWORD *sub_2978B4750(_DWORD *result, char a2)
{
  *result = 0;
  *result = a2;
  return result;
}

_DWORD *sub_2978B475C(_DWORD *a1, int a2)
{
  result = sub_2978B4750(a1, 1);
  result[1] = a2;
  return result;
}

_DWORD *sub_2978B4788(_DWORD *a1)
{
  v2 = sub_2978B4750(a1, 2);
  sub_2978B47BC(v2 + 2);
  return a1;
}

_DWORD *sub_2978B47CC(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  result = sub_2978B4750(a1, 3);
  *(result + 1) = a3;
  *(result + 2) = a4;
  *(result + 3) = a6;
  result[8] = a2;
  result[9] = a5;
  result[10] = a7;
  return result;
}

_DWORD *sub_2978B4828(_DWORD *a1, int a2, uint64_t a3)
{
  result = sub_2978B4750(a1, 4);
  *(result + 2) = 0;
  *(result + 3) = 0;
  *(result + 1) = a3;
  result[8] = a2;
  return result;
}

_DWORD *sub_2978B4860(_DWORD *a1, int a2, int a3, uint64_t a4)
{
  result = sub_2978B4898(a1, 5, a2, a3);
  *(result + 3) = a4;
  return result;
}

_DWORD *sub_2978B4898(_DWORD *a1, char a2, int a3, int a4)
{
  result = sub_2978B4750(a1, a2);
  *(result + 1) = 0;
  result[4] = a3;
  result[5] = a4;
  return result;
}

_DWORD *sub_2978B48DC(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_2978B4750(a1, 7);
  *(result + 1) = a3;
  *(result + 2) = a4;
  *(result + 3) = a5;
  *(result + 4) = a6;
  result[10] = a2;
  return result;
}

_DWORD *sub_2978B4930(_DWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  result = sub_2978B4750(a1, 8);
  *(result + 1) = a3;
  *(result + 2) = a4;
  result[6] = a2;
  return result;
}

_DWORD *sub_2978B4970(_DWORD *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_2978B4750(a1, 9);
  *(result + 1) = a4;
  *(result + 2) = a5;
  result[6] = a2;
  result[7] = a3;
  return result;
}

_DWORD *sub_2978B49B4(_DWORD *a1, int a2)
{
  result = sub_2978B4750(a1, 10);
  result[1] = a2;
  return result;
}

_DWORD *sub_2978B49E0(_DWORD *a1, int a2)
{
  result = sub_2978B4750(a1, 11);
  result[1] = a2;
  return result;
}

_DWORD *sub_2978B4A0C(_DWORD *a1, int a2)
{
  result = sub_2978B4750(a1, 12);
  result[1] = a2;
  return result;
}

_DWORD *sub_2978B4A38(_DWORD *a1, int a2, uint64_t a3)
{
  result = sub_2978B4750(a1, 13);
  *(result + 1) = a3;
  result[4] = a2;
  return result;
}

_DWORD *sub_2978B4A6C(_DWORD *a1, uint64_t a2)
{
  result = sub_2978B4750(a1, 14);
  *(result + 1) = a2;
  return result;
}

void *sub_2978B4AB0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  if (sub_29783DA5C(a1))
  {
    v7 = sub_29788AA04(a1, v6);
    nullsub_1(a2, v7);
  }

  result = sub_2977FB7B8(v18);
  if (result)
  {
    if (sub_2977FB7B8(v18) == 1)
    {
      v9 = sub_2977FB720(v18);
      result = sub_2978B4BA0(&v17, *v9);
      *a1 = v17;
    }

    else
    {
      v10 = sub_2977FB7B8(v18);
      if (v10 >> 61)
      {
        v11 = -1;
      }

      else
      {
        v11 = 8 * v10;
      }

      v12 = sub_2978A0C00(v11, a2, 8u);
      sub_2978B4BA4(&v17, v12);
      *a1 = v17;
      v14 = sub_29788AA04(a1, v13);
      v15 = sub_2977FB720(v18);
      v16 = sub_2977FB7B8(v18);
      return memcpy(v14, v15, 8 * v16);
    }
  }

  return result;
}

uint64_t sub_2978B4BA8(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_2978B4BE8(a1, v3);
}

uint64_t sub_2978B4C14(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_29785B820(a1, v3, 1);
}

uint64_t sub_2978B4C58(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978B4C94(a1, v2);
}

uint64_t sub_2978B4C94(uint64_t a1, uint64_t a2)
{
  v16 = sub_297885F40(a1);
  v17 = v4;
  v5 = sub_2977FB720(&v16);
  v6 = sub_2978130B8(&v16);
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v7 = v6;
    LODWORD(v8) = 1;
    do
    {
      v9 = *v5++;
      v8 = sub_29788B158(v9, a2) & v8;
    }

    while (v5 != v7);
  }

  v16 = sub_297886048(a1);
  v17 = v10;
  v11 = sub_2977FB720(&v16);
  v12 = sub_2978130B8(&v16);
  if (v11 != v12)
  {
    v13 = v12;
    do
    {
      v14 = *v11++;
      v8 = sub_29788B158(v14, a2) & v8;
    }

    while (v11 != v13);
  }

  return v8;
}

void sub_2978B4D64(_BYTE *a1, uint64_t a2)
{
  v4 = sub_297887990(a1);
  if (v4 <= 3)
  {
    if (v4 < 0)
    {
      return;
    }
  }

  else
  {
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        if (v4 == 7)
        {

          sub_2978B4F44(a1, a2);
        }

        else if (v4 == 8)
        {

          sub_2978B5014(a1, a2);
        }

        return;
      }

      v5 = a1;
      v6 = a2;

LABEL_14:
      sub_2978B4EF4(v5, v6);
      return;
    }

    if (v4 != 4)
    {
      v5 = a1;
      v6 = a2;

      goto LABEL_14;
    }
  }

  sub_2978B4EA4(a1, a2);
}

void sub_2978B4EA4(uint64_t a1, uint64_t a2)
{
  v4[0] = sub_2978B5B84(a1);
  v4[1] = v3;
  sub_297801F5C(v4, &v5);
  sub_2978B5C3C(a2, &v5);
  std::string::~string(&v5);
}

void sub_2978B4EF4(uint64_t a1, uint64_t a2)
{
  v4[0] = sub_2978B5410(a1);
  v4[1] = v3;
  sub_297801F5C(v4, &v5);
  sub_2978B5C3C(a2, &v5);
  std::string::~string(&v5);
}

void sub_2978B4F44(uint64_t a1, uint64_t a2)
{
  v12.__r_.__value_.__r.__words[0] = sub_2977FB7B8(a1);
  v4 = sub_2977FB720(&v12);
  sub_2978B4D64(v4, a2);
  sub_297808DBC(a2, "[", &v8);
  sub_2978036E4(v9, &v8);
  v5 = sub_29782AFB0(a1);
  sub_2978B5D7C(v7, v5);
  sub_297807128(v9, v7, v10);
  sub_2978036E0(v6, "]");
  sub_297807128(v10, v6, v11);
  sub_297812960(v11, &v12);
  sub_2978B5C3C(a2, &v12);
  std::string::~string(&v12);
  std::string::~string(&v8);
}

void sub_2978B5014(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FB720(a1 + 16);
  sub_2978B4D64(v3, a2);
  sub_297808DBC(a2, "[]", &v4);
  sub_2978B5C3C(a2, &v4);
  std::string::~string(&v4);
}

uint64_t sub_2978B5074(uint64_t a1)
{
  sub_2977FDEF4(&v12, a1);
  v1 = sub_2977FB720(&v12);
  v2 = sub_297888660(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_2978B5138(v2))
    {
      v4 = sub_2977FB7B8(v3);
    }

    else
    {
      v4 = sub_2977FD5B0(v3);
    }

    v12 = v4;
  }

  v5 = sub_2977FB720(&v12);
  v6 = sub_29788865C(v5);
  if (v6)
  {
    v12 = sub_2977FB7B8(v6);
  }

  v7 = sub_2977FB720(&v12);
  v8 = sub_2978876EC(v7);
  if (!v8)
  {
    v9 = sub_2977FB720(&v12);
    v8 = sub_2978877CC(v9);
    if (!v8)
    {
      return v12;
    }
  }

  v10 = sub_2977FB7B8(v8);
  sub_2977FDEF4(&v13, v10);
  return v13;
}

uint64_t sub_2978B5178(uint64_t a1, _DWORD *a2)
{
  if (sub_2978B5314(a1, a2))
  {
    return 1;
  }

  if (sub_2978970D4(a1))
  {
    return 0;
  }

  v25 = sub_2978B5074(a1);
  v5 = sub_2977FB720(&v25);
  v6 = sub_297887DB4(v5);
  if (v6)
  {
    v7 = sub_2977FB7B8(v6);
    v8 = sub_297803A7C(v7 + 16);
    v9 = sub_297888490(v7 + 16);
    if (v8 != v9)
    {
      v10 = v9;
      while (1)
      {
        v11 = *v8;
        v12 = sub_2978862BC(*v8);
        v13 = sub_2978862C0(v11);
        if (v12 != v13)
        {
          break;
        }

LABEL_12:
        if (++v8 == v10)
        {
          return 0;
        }
      }

      while (1)
      {
        v24 = sub_29788C514(*v12);
        v14 = sub_2977FB720(&v24);
        if (sub_2978B5314(v14, a2))
        {
          return 1;
        }

        if (++v12 == v13)
        {
          goto LABEL_12;
        }
      }
    }

    return 0;
  }

  v15 = sub_2977FB720(&v25);
  result = sub_297887E3C(v15);
  if (result)
  {
    v16 = sub_2977FB7B8(result);
    v17 = sub_297803A7C(v16 + 16);
    v18 = sub_2978885E0(v16 + 16);
    if (v17 != v18)
    {
      v19 = v18;
      while (1)
      {
        v20 = *v17;
        v21 = sub_2978862BC(*v17);
        v22 = sub_2978862C0(v20);
        if (v21 != v22)
        {
          break;
        }

LABEL_20:
        result = 0;
        if (++v17 == v19)
        {
          return result;
        }
      }

      while (1)
      {
        v24 = sub_29788C514(*v21);
        v23 = sub_2977FB720(&v24);
        if (sub_2978B5314(v23, a2))
        {
          return 1;
        }

        if (++v21 == v22)
        {
          goto LABEL_20;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2978B5314(uint64_t a1, _DWORD *a2)
{
  v6 = sub_2978B5074(a1);
  v3 = sub_2977FB720(&v6);
  result = sub_2978875FC(v3);
  if (result)
  {
    v5 = sub_29788862C(result);
    *a2 = v5;
    return (v5 - 5) < 2;
  }

  return result;
}

unint64_t sub_2978B5368(uint64_t a1)
{
  v2 = sub_297888658(a1);
  if (v2)
  {

    return sub_2978B53EC(v2);
  }

  else
  {
    result = sub_29788865C(a1);
    if (result || (result = sub_297888660(a1)) != 0)
    {
      v5 = sub_2977FB7B8(result);
      v4 = sub_2977FB720(&v5);
      return sub_2978B5368(v4);
    }
  }

  return result;
}

uint64_t sub_2978B5410(uint64_t a1)
{
  v2 = sub_2977FB7B8(a1);
  if (sub_297888470(v2))
  {
    v3 = sub_2977FB7B8(a1);
    return sub_29788709C(v3);
  }

  else
  {
    sub_2977FB7B4(&v5, &byte_2978FC3E5);
    return v5;
  }
}

uint64_t sub_2978B546C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 928);
  v6 = v5 + 4;
  if (a3 == 2 && v6 == a2)
  {
    v7 = 24;
  }

  else if (a3 == 3 && v6 == a2)
  {
    v7 = 40;
  }

  else if (a3 == 4 && v6 == a2)
  {
    v7 = 56;
  }

  else
  {
    v8 = v5 + 8;
    if (a3 == 2 && v8 == a2)
    {
      v7 = 72;
    }

    else if (a3 == 3 && v8 == a2)
    {
      v7 = 88;
    }

    else if (a3 == 4 && v8 == a2)
    {
      v7 = 104;
    }

    else
    {
      v9 = v5 + 12;
      if (a3 == 2 && v9 == a2)
      {
        v7 = 120;
      }

      else if (a3 == 3 && v9 == a2)
      {
        v7 = 136;
      }

      else if (a3 == 4 && v9 == a2)
      {
        v7 = 152;
      }

      else
      {
        v10 = v5 + 16;
        if (a3 == 2 && v10 == a2)
        {
          v7 = 168;
        }

        else if (a3 == 3 && v10 == a2)
        {
          v7 = 184;
        }

        else if (a3 == 4 && v10 == a2)
        {
          v7 = 200;
        }

        else
        {
          v11 = v5 + 20;
          if (a3 == 2 && v11 == a2)
          {
            v7 = 216;
          }

          else
          {
            v12 = v11 == a2 && a3 == 3;
            v7 = 248;
            if (v12)
            {
              v7 = 232;
            }
          }
        }
      }
    }
  }

  v14[1] = v3;
  v14[2] = v4;
  sub_2977FDEF4(v14, v5 + v7);
  return v14[0];
}

uint64_t sub_2978B55FC(uint64_t a1, _DWORD *a2)
{
  result = sub_297888658(a1);
  if (result || (result = sub_29788865C(a1)) != 0 && (v7 = sub_2977FB7B8(result), v6 = sub_2977FB720(&v7), (result = sub_297888658(v6)) != 0))
  {
    v5 = sub_29788862C(result);
    *a2 = v5;
    return (v5 - 41) < 4;
  }

  return result;
}

uint64_t sub_2978B566C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a1 + 928);
  v7 = v6 + 4;
  v8 = a4 == 2 && v7 == a2;
  v9 = v8;
  if (a3 == 2 && (v9 & 1) != 0)
  {
    v10 = 264;
  }

  else
  {
    v12 = a4 == 3 && v7 == a2;
    if (a3 == 3 && v12)
    {
      v10 = 280;
    }

    else
    {
      v14 = a4 == 4 && v7 == a2;
      if (a3 == 4 && v14)
      {
        v10 = 296;
      }

      else if (a3 == 2 && v12)
      {
        v10 = 312;
      }

      else if (a3 == 2 && v14)
      {
        v10 = 328;
      }

      else
      {
        if (a3 == 3)
        {
          v17 = v9;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v10 = 344;
        }

        else
        {
          if (a3 != 3)
          {
            v14 = 0;
          }

          if (v14)
          {
            v10 = 360;
          }

          else
          {
            if (a3 != 4)
            {
              v9 = 0;
            }

            if (v9)
            {
              v10 = 376;
            }

            else if (a3 == 4 && v12)
            {
              v10 = 392;
            }

            else
            {
              v19 = v6 + 8;
              v21 = a4 == 2 && v19 == a2;
              if (a3 == 2 && v21)
              {
                v10 = 408;
              }

              else
              {
                v23 = a4 == 3 && v19 == a2;
                if (a3 == 3 && v23)
                {
                  v10 = 424;
                }

                else
                {
                  v25 = a4 == 4 && v19 == a2;
                  if (a3 == 4 && v25)
                  {
                    v10 = 440;
                  }

                  else
                  {
                    if (a3 != 2)
                    {
                      v23 = 0;
                    }

                    if (v23)
                    {
                      v10 = 456;
                    }

                    else if (a3 == 2 && v25)
                    {
                      v10 = 472;
                    }

                    else if (a3 == 3 && v21)
                    {
                      v10 = 488;
                    }

                    else
                    {
                      if (a3 != 3)
                      {
                        v25 = 0;
                      }

                      if (v25)
                      {
                        v10 = 504;
                      }

                      else
                      {
                        v8 = a3 != 4 || !v21;
                        v10 = 536;
                        if (!v8)
                        {
                          v10 = 520;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v29[1] = v4;
  v29[2] = v5;
  sub_2977FDEF4(v29, v6 + v10);
  return v29[0];
}

uint64_t sub_2978B5844(uint64_t a1, int a2)
{
  v3 = *(a1 + 928);
  switch(a2)
  {
    case 3:
      v3 += 4;
      break;
    case 4:
      v3 += 8;
      break;
    case 5:
      v3 += 12;
      break;
    case 6:
      v3 += 16;
      break;
    case 7:
      v3 += 20;
      break;
    case 8:
      v3 += 24;
      break;
    case 9:
      v3 += 40;
      break;
    case 10:
      v3 += 56;
      break;
    case 11:
      v3 += 72;
      break;
    case 12:
      v3 += 88;
      break;
    case 13:
      v3 += 104;
      break;
    case 14:
      v3 += 120;
      break;
    case 15:
      v3 += 136;
      break;
    case 16:
      v3 += 152;
      break;
    case 17:
      v3 += 168;
      break;
    case 18:
      v3 += 184;
      break;
    case 19:
      v3 += 200;
      break;
    case 20:
      v3 += 216;
      break;
    case 21:
      v3 += 232;
      break;
    case 22:
      v3 += 248;
      break;
    case 23:
      v3 += 264;
      break;
    case 24:
      v3 += 280;
      break;
    case 25:
      v3 += 296;
      break;
    case 26:
      v3 += 312;
      break;
    case 27:
      v3 += 328;
      break;
    case 28:
      v3 += 344;
      break;
    case 29:
      v3 += 360;
      break;
    case 30:
      v3 += 376;
      break;
    case 31:
      v3 += 392;
      break;
    case 32:
      v3 += 408;
      break;
    case 33:
      v3 += 424;
      break;
    case 34:
      v3 += 440;
      break;
    case 35:
      v3 += 456;
      break;
    case 36:
      v3 += 472;
      break;
    case 37:
      v3 += 488;
      break;
    case 38:
      v3 += 504;
      break;
    case 39:
      v3 += 520;
      break;
    case 40:
      v3 += 536;
      break;
    case 41:
      v3 += 552;
      break;
    case 42:
      v3 += 556;
      break;
    case 43:
      v3 += 560;
      break;
    case 44:
      v3 += 564;
      break;
    default:
      break;
  }

  sub_2977FDEF4(&v5, v3);
  return v5;
}

uint64_t sub_2978B5AD8(uint64_t a1, _BYTE *a2)
{
  if (((*(a1 + 1) & 0x7F) - 5) > 0xEu || ((0x7E03u >> ((*(a1 + 1) & 0x7F) - 5)) & 1) == 0)
  {
    return 0;
  }

  *a2 = byte_2978FC002[((*(a1 + 1) & 0x7F) - 5)];
  return 1;
}

uint64_t sub_2978B5B84(uint64_t a1)
{
  v1 = sub_29788862C(a1);

  return sub_2978B5BAC(v1);
}

uint64_t sub_2978B5BE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978A0C00(0x18u, a1, 8u);
  sub_2978B5C38(v3, a2);
  sub_2977FDEF4(&v5, v3);
  return v5;
}

uint64_t sub_2978B5C64(uint64_t a1, uint64_t a2, int a3)
{
  v14 = a2;
  v13 = a3;
  v10 = sub_2977FB720(&v14);
  v11 = sub_2978461F8(&v10, &v13);
  v12 = v4;
  if (sub_2978B5D34(*(a1 + 928) + 568, &v11))
  {
    v5 = sub_2978B5D5C((*(a1 + 928) + 568), &v11);
    sub_2977FDEF4(&v15, *v5);
  }

  else
  {
    v6 = sub_2978A0C00(0x18u, a1, 8u);
    sub_2978B5D78(v6, v14, v13);
    v7 = sub_2977FDEF4(&v15, v6);
    v8 = sub_2977FB720(v7);
    *sub_2978B5D5C((*(a1 + 928) + 568), &v11) = v8;
  }

  return v15;
}

uint64_t sub_2978B5D9C(uint64_t *a1, uint64_t a2)
{
  v14 = a2;
  if (sub_2977FB720(a1))
  {
    v4 = sub_2977FB720(a1);
    v5 = sub_297888660(v4);
    if (v5)
    {
      v6 = v5;
      result = sub_2978B5138();
      if (!result)
      {
        return result;
      }

      v13 = sub_2977FB7B8(v6);
      v8 = &v13;
      v9 = a2;
      return sub_2978B5D9C(v8, v9);
    }
  }

  if (sub_29780B1BC(&v14))
  {
    v10 = sub_2977FB720(&v14);
    v11 = sub_297888660(v10);
    if (v11)
    {
      v12 = v11;
      result = sub_2978B5138();
      if (!result)
      {
        return result;
      }

      v9 = sub_2977FB7B8(v12);
      v8 = a1;
      return sub_2978B5D9C(v8, v9);
    }
  }

  return *a1 == v14;
}

uint64_t sub_2978B5E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_297884F38(a1, 8);
  sub_29780AE44(v4 + 8);
  *(a1 + 16) = a2;
  return a1;
}

_BYTE *sub_2978B5E9C(_BYTE *a1, uint64_t a2, int a3)
{
  result = sub_297884F38(a1, 7);
  *(result + 1) = a2;
  *(result + 4) = a3;
  return result;
}

uint64_t sub_2978B5ED0(uint64_t result, int a2)
{
  *(result + 16) = 263;
  *result = a2;
  return result;
}

uint64_t sub_2978B5EE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_297847420(a1);
  result = sub_297847458(a1);
  if (result)
  {
    v8 = result;
    v18 = sub_297885188();
    v19 = v9;
    v16 = sub_297885940();
    v17 = v10;
    v11 = v8 - 1;
    v12 = sub_2978B6000(a2) & (v8 - 1);
    v13 = v6 + 24 * v12;
    if (sub_29788595C(a2, v13))
    {
LABEL_8:
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (!sub_29788595C(v13, &v18))
      {
        if (sub_29788595C(v13, &v16) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = v6 + 24 * v12;
        ++v15;
        if (sub_29788595C(a2, v13))
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v14)
      {
        v13 = v14;
      }
    }

    *a3 = v13;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_2978B6004(void *a1)
{
  v1 = a1 + 1;
  v2 = sub_29780A784(*a1);
  v3 = sub_29782B3D0(v1);

  return sub_297846ED0(v2, v3);
}

uint64_t sub_2978B6050(int *a1, uint64_t a2)
{
  v6 = 0;
  if (sub_2978B60AC(a1, a2, &v6))
  {
    return v6;
  }

  v5 = 0;
  return sub_2978B60E8(a1, a2, &v5, v6);
}

uint64_t sub_2978B60AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  result = sub_2978B5EE0(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_2978B60E8(int *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_2978B6134(a1, a2, a4);
  sub_29781C4B8(v6, a2);
  *(v6 + 16) = *a3;
  return v6;
}

uint64_t sub_2978B6134(int *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v5 = sub_2978478E4(a1);
  v6 = sub_297847458(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978B6224(a1, (2 * v6));
    sub_2978B60AC(a1, a2, &v12);
    sub_297847458(a1);
  }

  else if (v6 + ~v5 - sub_2978478EC(a1) <= v6 >> 3)
  {
    sub_2978B6224(a1, v7);
    sub_2978B60AC(a1, a2, &v12);
  }

  sub_2978478F0(a1);
  v10 = sub_297885188();
  v11 = v8;
  if (!sub_29788595C(v12, &v10))
  {
    sub_29784792C(a1);
  }

  return v12;
}

void sub_2978B6228(int *a1, unsigned int a2)
{
  v2 = a2;
  v22 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10)
  {
    v21[0] = 64;
    LODWORD(v19) = sub_2977FB4FC(a2 - 1);
    v2 = *sub_2977FF288(v21, &v19);
  }

  if (*a1)
  {
    if (v2 >= 0x10)
    {
      v19 = sub_297885188();
      v20 = v7;
      v17 = sub_297885940();
      v18 = v8;
      v9 = sub_297847420(a1);
      v10 = v21;
      v11 = 384;
      do
      {
        if (!sub_29788595C(v9, &v19) && !sub_29788595C(v9, &v17))
        {
          *v10 = *v9;
          *(v10 + 2) = *(v9 + 16);
          v10 += 6;
        }

        v9 += 24;
        v11 -= 24;
      }

      while (v11);
      *a1 &= ~1u;
      v12 = sub_29784729C(a1);
      *v12 = sub_2978850E0(a1, v2);
      v12[1] = v13;
      sub_2978B63DC(a1, v21, v10);
    }
  }

  else
  {
    v4 = sub_29784729C(a1);
    v5 = *v4;
    v6 = *(v4 + 8);
    sub_29784729C(a1);
    if (v2 > 0x10)
    {
      v14 = sub_29784729C(a1);
      *v14 = sub_2978850E0(a1, v2);
      v14[1] = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    sub_2978B63DC(a1, v5, v5 + 24 * v6);
    j__free(v5);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2978B63DC(int *a1, uint64_t a2, uint64_t a3)
{
  sub_297885114(a1);
  v12 = sub_297885188();
  v13 = v6;
  result = sub_297885940();
  v10 = result;
  v11 = v8;
  while (a2 != a3)
  {
    result = sub_29788595C(a2, &v12);
    if ((result & 1) == 0)
    {
      result = sub_29788595C(a2, &v10);
      if ((result & 1) == 0)
      {
        v9 = 0;
        sub_2978B60AC(a1, a2, &v9);
        sub_29781C4B8(v9, a2);
        *(v9 + 16) = *(a2 + 16);
        result = sub_2978478F0(a1);
      }
    }

    a2 += 24;
  }

  return result;
}

void *sub_2978B6494(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = a4;
  *a1 = a2;
  *(a1 + 10) = a4;
  if (a2)
  {
    v7 = sub_2978B6568(a2);
    v8 = 0uLL;
    if (!v7)
    {
      v8 = *(a2 + 24);
    }

    *(a1 + 24) = v8;
    *(a1 + 8) = *(a2 + 8) + 1;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 12) = *(a2 + 12);
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 12) = *(a1 + 12) & 0xF000 | 0x558;
  }

  if (sub_2978B6568(a1))
  {
    *(a1 + 16) = a1;
    if ((v4 & 2) == 0)
    {
LABEL_8:
      if ((v4 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_8;
  }

  *(a1 + 24) = a1;
  if ((v4 & 4) != 0)
  {
LABEL_9:
    *(a1 + 32) = a1;
  }

LABEL_10:

  return sub_29783DB90(a1 + 40);
}

uint64_t sub_2978B6590(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  sub_2978B65DC(a1 + 8, a2, 256);
  *(a1 + 16) = sub_29785873C(*(a2 + 152));
  sub_29786F060(*(a2 + 152), 1);
  return a1;
}

char *sub_2978B65E4(char *a1)
{
  sub_29786F060(*(*a1 + 152), a1[16]);
  sub_2978B6620(a1 + 8);
  return a1;
}

uint64_t sub_2978B6628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_297817C28((a1 + 16));
  *(a1 + 152) = a4;
  *(a1 + 160) = a5;
  *(a1 + 168) = 0;
  *(a1 + 220) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  sub_29788E11C(a1 + 352);
  sub_2978B66B4((a1 + 440), 1, 6);
  sub_297829180((a1 + 444));
  sub_297829180((a1 + 448));
  sub_29783DC08(a1 + 456, 0);
  return a1;
}

_WORD *sub_2978B66B4(_WORD *a1, char a2, char a3)
{
  v6 = sub_2978A19CC(a1);
  sub_2978B7170(v6, a2);
  sub_2978B7188(a1, a3);
  return a1;
}

uint64_t sub_2978B6704(uint64_t a1)
{
  v2 = *(a1 + 220);
  if (v2)
  {
    v3 = (a1 + 224);
    do
    {
      if (*v3)
      {
        v4 = sub_2978B6770();
        j__free(v4);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  sub_2978B6774(a1 + 456);
  sub_2977FD134(a1 + 352);
  sub_297818154(a1 + 16);
  return a1;
}

void *sub_2978B6788(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 220);
  if (v4)
  {
    v5 = v4 - 1;
    *(a1 + 220) = v5;
    v6 = *(a1 + 8 * v5 + 224);
    result = sub_2978B6494(v6, *(a1 + 184), *(a1 + 8), a2);
    *(a1 + 184) = v6;
  }

  else
  {
    v8 = sub_2977FA198(328);
    result = sub_2978B6804(v8, *(a1 + 184), *(a1 + 8), a2);
    *(a1 + 184) = result;
  }

  return result;
}

void sub_2978B6808(uint64_t a1)
{
  v2 = sub_297829BD8(*(a1 + 184));
  v15[0] = sub_297873448(v2);
  v15[1] = v3;
  v14[0] = sub_29787347C(v2);
  v14[1] = v4;
  while (sub_29781550C(v15, v14))
  {
    v6 = sub_2978B6914(v15, v5);
    v7 = sub_2978B6920(v6);
    if (v7)
    {
      v8 = sub_2978BDEBC(a1, v7);
      if (v8)
      {
        v9 = v8;
        if (sub_2977FB7B8(v8))
        {
          sub_2978B695C(v13, v9);
          sub_2978B6960(v13);
          sub_2978B69A8(v13);
        }
      }
    }

    else
    {
      sub_2978BE058(a1, v6);
    }

    sub_2978734C0(v15);
  }

  v10 = *(a1 + 184);
  *(a1 + 184) = sub_2977FB720(v10);
  v11 = *(a1 + 220);
  if (v11 == 16)
  {
    if (v10)
    {
      v12 = sub_2978B6770(v10);
      j__free(v12);
    }
  }

  else
  {
    *(a1 + 220) = v11 + 1;
    *(a1 + 8 * v11 + 224) = v10;
  }
}

uint64_t sub_2978B6920(uint64_t a1)
{
  v2 = a1;
  if (sub_29788AB2C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978B6960(uint64_t *a1)
{
  sub_2978B7308(a1 + 1);
  a1[1] = sub_2978B7290(0);

  return sub_2978B730C(a1);
}

uint64_t sub_2978B69AC(uint64_t a1)
{
  v1 = a1;
  if ((sub_297888998(a1) & 1) == 0)
  {
    do
    {
      v1 = sub_29781F408(v1);
    }

    while (!sub_297888998(v1));
  }

  return v1;
}

void *sub_2978B6A00(uint64_t *a1)
{
  sub_2978B6788(a1, 8);
  a1[22] = a1[23];
  v2 = *a1;
  v3 = a1[1];
  v4 = sub_29781F408(a1[20]);
  result = sub_297883DCC(v2, v3, v4);
  a1[25] = result;
  return result;
}

void sub_2978B6A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v31[0] = a3;
  v31[1] = a4;
  v30 = a2;
  v6 = sub_2977FB720(v31) - 8;
  do
  {
    v7 = *(v6 + 8);
    v6 += 8;
  }

  while (v7 != v4);
  v8 = sub_2978130B8(v31);
  sub_2978A1858(v29, v6, v8);
  sub_297804638(&v28, "\n    ");
  v9 = sub_2977FB720(v29);
  v10 = sub_2978130B8(v29);
  if (v9 != v10)
  {
    v11 = v10;
    do
    {
      v12 = *v9++;
      v23 = sub_29788709C(v12);
      v24 = v13;
      sub_2978B6C84("'", &v23, v25);
      sub_2978036E0(v22, "' -> ");
      sub_297807128(v25, v22, v26);
      sub_297812960(v26, &v27);
      sub_2978044E4(&v28, &v27);
      std::string::~string(&v27);
    }

    while (v9 != v11);
  }

  v23 = sub_29788709C(v4);
  v24 = v14;
  sub_2978B6C84("'", &v23, v25);
  sub_2978036E0(v22, "'");
  sub_297807128(v25, v22, v26);
  sub_297812960(v26, &v27);
  sub_2978044E4(&v28, &v27);
  std::string::~string(&v27);
  if (sub_2977FB7B8(v29) > 1)
  {
    v4 = *sub_2977FE5F8(v29, 1);
  }

  v15 = sub_2978B6C94(a1 + 456, &v30);
  v16 = sub_2978B6CB0(v15);
  v17 = sub_2978B6D10(v15);
  if (v16 == v17)
  {
LABEL_12:
    v19 = 0;
  }

  else
  {
    v18 = v17;
    while (1)
    {
      v19 = *v16;
      v20 = sub_2977FD5B0(*v16);
      if (sub_2978B69AC(v20) == v4)
      {
        break;
      }

      if (++v16 == v18)
      {
        goto LABEL_12;
      }
    }
  }

  v21 = sub_2977FB5F0(v19);
  sub_2978B677C(a1, v21, 2781, &v27);
  sub_2978044E8(v26, &v28);
  sub_2978295C0(&v27, v26[0], v26[1]);
  sub_29782963C(&v27);
  std::string::~string(&v28);
}