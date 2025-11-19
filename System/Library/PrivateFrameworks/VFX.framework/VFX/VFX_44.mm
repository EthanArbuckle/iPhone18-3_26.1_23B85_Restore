uint64_t sub_1AF46F3D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x74696D45776F6873;
  v5 = 0xEB00000000726574;
  if (a1 != 5)
  {
    v4 = 0x6F6C6556776F6873;
    v5 = 0xEC00000079746963;
  }

  v6 = 0xE700000000000000;
  v7 = 0x797469736E6564;
  if (a1 != 3)
  {
    v7 = 0x797469636F6C6576;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x656372756F73;
  if (a1 != 1)
  {
    v8 = 0x737569646172;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 1953066341;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE600000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x656372756F73)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x737569646172)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1953066341)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xEB00000000726574;
      if (v9 != 0x74696D45776F6873)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEC00000079746963;
      if (v9 != 0x6F6C6556776F6873)
      {
LABEL_39:
        v12 = sub_1AFDFEE28();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x797469736E6564)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x797469636F6C6576)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1AF46F604(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x636E65756C666E69;
  v4 = a1;
  v5 = 0xE90000000000006CLL;
  v6 = 0x61657241776F6873;
  if (a1 == 5)
  {
    v6 = 0x6556746F5278616DLL;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v7 = 0x6C676E4177656976;
  if (a1 == 3)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xD000000000000010;
    v8 = 0x80000001AFF241B0;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737569646172;
  if (a1 != 1)
  {
    v10 = 0x65636E6174736964;
    v9 = 0xEF66666F6C6C6146;
  }

  if (!a1)
  {
    v10 = 0x636E65756C666E69;
    v9 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x737569646172)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xEF66666F6C6C6146;
        if (v11 != 0x65636E6174736964)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE90000000000006CLL;
        if (v11 != 0x6556746F5278616DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x61657241776F6873)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      if (v11 != 0x6C676E4177656976)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0xD000000000000010;
    v2 = 0x80000001AFF241B0;
  }

  if (v11 != v3)
  {
LABEL_39:
    v13 = sub_1AFDFEE28();
    goto LABEL_40;
  }

LABEL_36:
  if (v12 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1AF46F828(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7373656E6B6369;
  v3 = 0x6854726564726F62;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x3272656E726F63;
    }

    else
    {
      v5 = 0x61657241776F6873;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x3172656E726F63;
    }

    else
    {
      v5 = 0x6854726564726F62;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEF7373656E6B6369;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x3272656E726F63;
  if (a2 != 2)
  {
    v8 = 0x61657241776F6873;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x3172656E726F63;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF46F974(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F69746365726964;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x7441746E696F70;
  v7 = 0x6C46656375646572;
  v8 = 0xEE00676E69707069;
  if (a1 != 4)
  {
    v7 = 0x6556746F5278616DLL;
    v8 = 0xEE0063655670556CLL;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6556746F5278616DLL;
  v10 = 0xEC0000007269446CLL;
  if (a1 != 1)
  {
    v9 = 0x726F746365567075;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x6F69746365726964;
    v10 = 0xE90000000000006ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x7441746E696F70)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = 0x6C46656375646572;
        v14 = 0x676E69707069;
      }

      else
      {
        v13 = 0x6556746F5278616DLL;
        v14 = 0x63655670556CLL;
      }

      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v11 != v13)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_30;
  }

  if (!a2)
  {
LABEL_26:
    if (v11 != v3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 != 1)
  {
    v2 = 0xE800000000000000;
    v3 = 0x726F746365567075;
    goto LABEL_26;
  }

  v2 = 0xEC0000007269446CLL;
  if (v11 != 0x6556746F5278616DLL)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (v12 != v2)
  {
LABEL_32:
    v15 = sub_1AFDFEE28();
    goto LABEL_33;
  }

  v15 = 1;
LABEL_33:

  return v15 & 1;
}

uint64_t sub_1AF46FB84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x636E65756C666E69;
  v4 = a1;
  v5 = 0x726F4E656E616C70;
  v6 = 0xEB000000006C616DLL;
  if (a1 != 2)
  {
    v5 = 0x6E616C50776F6873;
    v6 = 0xE900000000000065;
  }

  v7 = 0x6E6543656E616C70;
  v8 = 0xEB00000000726574;
  if (!a1)
  {
    v7 = 0x636E65756C666E69;
    v8 = 0xE900000000000065;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x726F4E656E616C70;
  v12 = 0xEB000000006C616DLL;
  if (a2 != 2)
  {
    v11 = 0x6E616C50776F6873;
    v12 = 0xE900000000000065;
  }

  if (a2)
  {
    v3 = 0x6E6543656E616C70;
    v2 = 0xEB00000000726574;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1AFDFEE28();
  }

  return v15 & 1;
}

uint64_t sub_1AF46FCE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000746ELL;
  v3 = 0x756F43656D617266;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x726550656D617266;
    }

    else
    {
      v5 = 0x756F43656D617266;
    }

    if (v4)
    {
      v6 = 0xEB00000000776F52;
    }

    else
    {
      v6 = 0xEA0000000000746ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x726550656D617266;
    v6 = 0xEE006E6D756C6F43;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x7574786554657375;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEC00000044336572;
    }
  }

  v7 = 0x726550656D617266;
  v8 = 0xEE006E6D756C6F43;
  v9 = 0xE400000000000000;
  v10 = 1684957547;
  if (a2 != 3)
  {
    v10 = 0x7574786554657375;
    v9 = 0xEC00000044336572;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x726550656D617266;
    v2 = 0xEB00000000776F52;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1AFDFEE28();
  }

  return v13 & 1;
}

uint64_t sub_1AF46FE8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x73726566667562;
    }

    else
    {
      v3 = 0x74756F79616CLL;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7374726170;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F43786574726576;
    v4 = 0xEB00000000746E75;
  }

  else
  {
    v3 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x73726566667562;
    }

    else
    {
      v9 = 0x74756F79616CLL;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F43786574726576;
    v6 = 0xEB00000000746E75;
    if (a2 != 3)
    {
      v5 = 0x696669746E656469;
      v6 = 0xEA00000000007265;
    }

    if (a2 == 2)
    {
      v7 = 0x7374726170;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1AFDFEE28();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1AF470024(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x646F4D646E656C62;
  v5 = 0xE600000000000000;
  v6 = 0x66666F747563;
  if (a1 != 4)
  {
    v6 = 0x676E697A69736572;
    v5 = 0xEC00000065646F4DLL;
  }

  if (a1 == 3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0x7469736E65746E69;
  v8 = 0xE90000000000006CLL;
  if (a1 == 1)
  {
    v8 = 0xE900000000000079;
  }

  else
  {
    v7 = 0x6576654C72756C62;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x65727574786574;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x646F4D646E656C62)
      {
        goto LABEL_36;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x66666F747563)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v11 = 0xEC00000065646F4DLL;
      if (v9 != 0x676E697A69736572)
      {
LABEL_36:
        v12 = sub_1AFDFEE28();
        goto LABEL_37;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE900000000000079;
      if (v9 != 0x7469736E65746E69)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v11 = 0xE90000000000006CLL;
      if (v9 != 0x6576654C72756C62)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x65727574786574)
    {
      goto LABEL_36;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_1AF47022C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x737569646172;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656570536E69;
    }

    else
    {
      v4 = 0x73656E7468676974;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7053646E756F7261;
    }

    else
    {
      v4 = 0x737569646172;
    }

    if (v3)
    {
      v5 = 0xEB00000000646565;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x64656570536E69;
  if (a2 != 2)
  {
    v8 = 0x73656E7468676974;
    v7 = 0xE900000000000073;
  }

  if (a2)
  {
    v2 = 0x7053646E756F7261;
    v6 = 0xEB00000000646565;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF470384(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x68536D6F74737563;
    v13 = 0xEC00000072656461;
    if (a1 != 2)
    {
      v12 = 0x6574656D61726170;
      v13 = 0xEA00000000007372;
    }

    v14 = 0x646F4D646E656C62;
    if (a1)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v14 = 1684957547;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x6D6F436874706564;
    v4 = 0xEC00000065726170;
    v5 = 0x6972576874706564;
    v6 = 0xEA00000000006574;
    if (a1 != 7)
    {
      v5 = 0x66666F747563;
      v6 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE800000000000000;
    v8 = 0x65646F4D6C6C7563;
    if (a1 != 4)
    {
      v8 = 0xD000000000000014;
      v7 = 0x80000001AFF24AB0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE900000000000065;
        if (v9 != 0x646F4D646E656C62)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1684957547)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 != 2)
    {
      v15 = 0xEA00000000007372;
      if (v9 != 0x6574656D61726170)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x68536D6F74737563;
    v17 = 1919247457;
    goto LABEL_41;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEA00000000006574;
        if (v9 != 0x6972576874706564)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x66666F747563)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    v16 = 0x6D6F436874706564;
    v17 = 1701994864;
LABEL_41:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v9 != v16)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x65646F4D6C6C7563)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0x80000001AFF24AB0;
    if (v9 != 0xD000000000000014)
    {
LABEL_52:
      v18 = sub_1AFDFEE28();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_1AF470670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x44497475706E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x444974757074756FLL;
    }

    else
    {
      v4 = 0x6E4974757074756FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000786564;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646E497475706E69;
    }

    else
    {
      v4 = 0x44497475706E69;
    }

    if (v3)
    {
      v5 = 0xEA00000000007865;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x444974757074756FLL;
  if (a2 != 2)
  {
    v8 = 0x6E4974757074756FLL;
    v7 = 0xEB00000000786564;
  }

  if (a2)
  {
    v2 = 0x646E497475706E69;
    v6 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF4707CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x7469736E65746E69;
  v4 = a1;
  v5 = 0xEA0000000000656CLL;
  v6 = 0xE500000000000000;
  v7 = 0x7261654E7ALL;
  if (a1 != 4)
  {
    v7 = 1918977658;
    v6 = 0xE400000000000000;
  }

  if (a1 == 3)
  {
    v7 = 0x676E4172656E6E69;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xD000000000000011;
  v9 = 0x80000001AFF22AF0;
  if (a1 != 1)
  {
    v8 = 0x676E41726574756FLL;
    v9 = 0xEA0000000000656CLL;
  }

  if (!a1)
  {
    v8 = 0x7469736E65746E69;
    v9 = 0xE900000000000079;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA0000000000656CLL;
      if (v10 != 0x676E4172656E6E69)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v10 != 0x7261654E7ALL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v10 != 1918977658)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001AFF22AF0;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x676E41726574756FLL;
      v2 = 0xEA0000000000656CLL;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1AFDFEE28();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_1AF470998(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF470AB0(uint64_t result)
{
  switch(result)
  {
    case 71:
      result = 70;
      break;
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 191:
      return result;
    case 81:
      result = 80;
      break;
    case 186:
      result = 204;
      break;
    case 187:
      result = 205;
      break;
    case 188:
      result = 206;
      break;
    case 189:
      result = 207;
      break;
    case 190:
      result = 208;
      break;
    case 192:
      result = 210;
      break;
    case 193:
      result = 211;
      break;
    case 194:
      result = 212;
      break;
    case 195:
      result = 213;
      break;
    case 196:
      result = 214;
      break;
    case 197:
      result = 215;
      break;
    case 198:
      result = 216;
      break;
    case 199:
      result = 217;
      break;
    case 200:
      result = 218;
      break;
    default:
      if (result == 11)
      {
        result = 10;
      }

      break;
  }

  return result;
}

uint64_t sub_1AF470B6C(uint64_t result)
{
  switch(result)
  {
    case 70:
      result = 71;
      break;
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 209:
      return result;
    case 80:
      result = 81;
      break;
    case 204:
      result = 186;
      break;
    case 205:
      result = 187;
      break;
    case 206:
      result = 188;
      break;
    case 207:
      result = 189;
      break;
    case 208:
      result = 190;
      break;
    case 210:
      result = 192;
      break;
    case 211:
      result = 193;
      break;
    case 212:
      result = 194;
      break;
    case 213:
      result = 195;
      break;
    case 214:
      result = 196;
      break;
    case 215:
      result = 197;
      break;
    case 216:
      result = 198;
      break;
    case 217:
      result = 199;
      break;
    case 218:
      result = 200;
      break;
    default:
      if (result == 10)
      {
        result = 11;
      }

      break;
  }

  return result;
}

id sub_1AF470C5C()
{
  sub_1AF0D4478(0, &unk_1EB630CC0);
  v1 = swift_unknownObjectRetain();
  v2 = sub_1AF476EE4(v1);
  swift_unknownObjectRelease();
  [v2 setResourceOptions_];
  [v2 setUsage_];
  v3 = [objc_msgSend(v0 device)];
  swift_unknownObjectRelease();
  sub_1AF477C5C(&v6);
  v4 = [v0 device];
  sub_1AF473D6C(sub_1AF478000);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1AF470DA4()
{
  v1 = [v0 dataType];
  if (v1 == 2)
  {
    v11 = [v0 arrayType];
    v12 = [v11 arrayLength];
    v13 = [v11 stride];

    return v13 * v12;
  }

  if (v1 == 1)
  {
    v2 = [v0 structType];
    v3 = [v2 members];
    sub_1AF0D4478(0, &qword_1ED723130);
    v4 = sub_1AFDFD418();

    if (v4 >> 62)
    {
      v5 = sub_1AFDFE108();
      v6 = 0;
      if (v5)
      {
LABEL_5:
        v7 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1B2719C70](v7, v4);
          }

          else
          {
            v8 = *(v4 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          v10 = sub_1AF470DA4();

          v6 += v10;
        }

        while (v5 != v7);
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = 0;
      if (v5)
      {
        goto LABEL_5;
      }
    }

    return v6;
  }

  v14 = [v0 dataType];

  return sub_1AF470F68(v14);
}

uint64_t sub_1AF470F68(uint64_t a1)
{
  v1 = a1 - 3;
  result = 1;
  switch(v1)
  {
    case 0:
    case 14:
    case 26:
    case 30:
    case 35:
    case 39:
    case 44:
    case 45:
    case 48:
    case 49:
    case 52:
    case 53:
      result = 4;
      break;
    case 1:
    case 15:
    case 16:
    case 17:
    case 27:
    case 31:
    case 36:
    case 37:
    case 40:
    case 41:
    case 55:
    case 56:
    case 57:
    case 78:
    case 82:
      result = 8;
      break;
    case 2:
    case 3:
    case 4:
    case 18:
    case 19:
    case 23:
    case 28:
    case 29:
    case 32:
    case 33:
      result = 16;
      break;
    case 5:
    case 6:
    case 10:
    case 24:
    case 25:
      result = 32;
      break;
    case 7:
    case 21:
    case 22:
      result = 24;
      break;
    case 8:
    case 9:
      result = 48;
      break;
    case 11:
    case 12:
      result = 64;
      break;
    case 13:
    case 34:
    case 38:
    case 43:
    case 47:
    case 51:
      result = 2;
      break;
    case 20:
      result = 12;
      break;
    case 42:
    case 46:
    case 50:
      return result;
    default:
      result = sub_1AFDFE518();
      __break(1u);
      break;
  }

  return result;
}

void sub_1AF47103C(uint64_t a1)
{
  switch(a1)
  {
    case 3:
    case 16:
    case 29:
    case 33:
    case 37:
    case 41:
    case 45:
    case 49:
    case 53:
    case 59:
      return;
    case 4:
      v1 = &unk_1ED72F770;
      v2 = MEMORY[0x1E69E6448];
      v3 = sub_1AF43A0C8;
      goto LABEL_34;
    case 5:
      v1 = &qword_1ED72F740;
      v2 = MEMORY[0x1E69E6448];
      v5 = sub_1AF43A0C8;
      goto LABEL_30;
    case 6:
      v1 = &qword_1ED72F6E0;
      v2 = MEMORY[0x1E69E6448];
      v4 = sub_1AF43A0C8;
      goto LABEL_32;
    case 7:
      type metadata accessor for simd_float2x2(0);
      return;
    case 8:
      type metadata accessor for simd_float2x3(0);
      return;
    case 9:
      type metadata accessor for simd_float2x4(0);
      return;
    case 10:
      type metadata accessor for simd_float3x2(0);
      return;
    case 11:
      type metadata accessor for simd_float3x3(0);
      return;
    case 12:
      type metadata accessor for simd_float3x4(0);
      return;
    case 13:
      type metadata accessor for simd_float4x2(0);
      return;
    case 14:
      type metadata accessor for simd_float4x3(0);
      return;
    case 15:
      type metadata accessor for simd_float4x4(0);
      return;
    case 17:
    case 38:
      v1 = &qword_1ED72F768;
      v2 = MEMORY[0x1E69E7290];
      v3 = sub_1AF477AB8;
      goto LABEL_34;
    case 18:
    case 39:
      v1 = &qword_1ED72F738;
      v2 = MEMORY[0x1E69E7290];
      v5 = sub_1AF477AB8;
      goto LABEL_30;
    case 19:
    case 40:
      v1 = &qword_1ED72F6D8;
      v2 = MEMORY[0x1E69E7290];
      v4 = sub_1AF477AB8;
      goto LABEL_32;
    case 30:
      v1 = &qword_1ED722EC8;
      v2 = MEMORY[0x1E69E72F0];
      v3 = sub_1AF477C08;
      goto LABEL_34;
    case 31:
      v1 = &unk_1EB639678;
      v2 = MEMORY[0x1E69E72F0];
      v5 = sub_1AF477C08;
      goto LABEL_30;
    case 32:
      v1 = &unk_1EB639670;
      v2 = MEMORY[0x1E69E72F0];
      v4 = sub_1AF477C08;
      goto LABEL_32;
    case 34:
      v1 = &qword_1ED722EC0;
      v2 = MEMORY[0x1E69E7668];
      v3 = sub_1AF477BB4;
      goto LABEL_34;
    case 35:
      v1 = &qword_1ED72F730;
      v2 = MEMORY[0x1E69E7668];
      v5 = sub_1AF477BB4;
      goto LABEL_30;
    case 36:
      v1 = &qword_1ED722EB8;
      v2 = MEMORY[0x1E69E7668];
      v4 = sub_1AF477BB4;
      goto LABEL_32;
    case 42:
      v1 = &unk_1EB639628;
      v2 = MEMORY[0x1E69E75F8];
      v3 = sub_1AF477A64;
      goto LABEL_34;
    case 43:
      v1 = &unk_1EB639620;
      v2 = MEMORY[0x1E69E75F8];
      v5 = sub_1AF477A64;
      goto LABEL_30;
    case 44:
      v1 = &unk_1EB639610;
      v2 = MEMORY[0x1E69E75F8];
      v4 = sub_1AF477A64;
      goto LABEL_32;
    case 46:
      v1 = &unk_1EB639668;
      v2 = MEMORY[0x1E69E7230];
      v3 = sub_1AF477B60;
      goto LABEL_34;
    case 47:
      v1 = &unk_1EB639660;
      v2 = MEMORY[0x1E69E7230];
      v5 = sub_1AF477B60;
      goto LABEL_30;
    case 48:
      v1 = &unk_1EB639650;
      v2 = MEMORY[0x1E69E7230];
      v4 = sub_1AF477B60;
      goto LABEL_32;
    case 50:
      v1 = &unk_1EB639648;
      v2 = MEMORY[0x1E69E7508];
      v3 = sub_1AF477B0C;
LABEL_34:
      v6 = v3;
      v7 = MEMORY[0x1E69E7428];
      goto LABEL_35;
    case 51:
      v1 = &unk_1EB639640;
      v2 = MEMORY[0x1E69E7508];
      v5 = sub_1AF477B0C;
LABEL_30:
      v6 = v5;
      v7 = MEMORY[0x1E69E7450];
      goto LABEL_35;
    case 52:
      v1 = &unk_1EB639630;
      v2 = MEMORY[0x1E69E7508];
      v4 = sub_1AF477B0C;
LABEL_32:
      v6 = v4;
      v7 = MEMORY[0x1E69E74A8];
LABEL_35:
      sub_1AF478010(0, v1, v6, v2, v7);
      break;
    default:
      sub_1AFDFE518();
      __break(1u);
      break;
  }
}

uint64_t sub_1AF4715F0()
{
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF471A88(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 0x35 && ((0x1FF1FFFFFFFFFFuLL >> v1))
  {
    return qword_1AFE52238[v1];
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF471B58(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a3 + a2;
  swift_unknownObjectRetain();
  [v3 setArgumentBuffer:a1 offset:v5];

  return swift_unknownObjectRelease();
}

id sub_1AF471BD4(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (a1)
  {
    v7 = a3 + a2;
    v8 = a4;
    swift_unknownObjectRetain();
    [v5 setBuffer:a1 offset:v7 atIndex:v8];
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    swift_getObjectType();
    v10 = swift_unknownObjectRetain();
    sub_1AF759830(v10, a5);
    return swift_unknownObjectRelease_n();
  }

  else
  {

    return [v5 setBuffer:0 offset:0 atIndex:a4];
  }
}

id sub_1AF471CC4(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = v3;
  result = [v4 setTexture:a1 atIndex:a2];
  if (a1)
  {
    swift_getObjectType();
    v8 = swift_unknownObjectRetain();
    sub_1AF759830(v8, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF471D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 - 8) + 72);
  v9[2] = a3;
  v10 = a4;
  v11 = [v4 constantDataAtIndex_];
  v12 = v6;
  return sub_1AF648DE8(a1, sub_1AF477CA0, v9, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v7);
}

id sub_1AF471E24()
{
  v1 = [v0 bufferPointerType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 elementIsArgumentBuffer];

  return v3;
}

uint64_t sub_1AF471E80(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = HIDWORD(a2);
  v9 = a2;
  v10 = a5 + a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  [v5 copyFromBuffer:a1 sourceOffset:v9 toBuffer:a3 destinationOffset:v10 size:v8];
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id sub_1AF471F38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1AF472034();
  v9 = [a3 height] * v8;
  v10 = [a3 width];
  v11 = [a3 height];
  v12 = [a3 depth];
  sub_1AF477C5C(&v18);
  v13 = v19;
  v14 = v18;
  *&v18 = v10;
  *(&v18 + 1) = v11;
  v19 = v12;
  v16 = v14;
  v17 = v13;
  return [v4 copyFromBuffer:a1 sourceOffset:a2 sourceBytesPerRow:v8 sourceBytesPerImage:v9 sourceSize:&v18 toTexture:a3 destinationSlice:0 destinationLevel:0 destinationOrigin:&v16];
}

uint64_t sub_1AF472034()
{
  v1 = [v0 pixelFormat];
  v2 = [v0 width];
  if ((v1 - 160) > 0x3A || ((1 << (v1 + 96)) & 0x7FDF1FF7CFD54FFLL) == 0)
  {
    return sub_1AF47289C(v1) * v2;
  }

  if ((v1 - 186) > 0x20)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_1AFE523E0[(v1 - 186)];
  }

  return 16 * ((v2 + v4 - 1) / v4);
}

uint64_t sub_1AF4720E8(uint64_t a1)
{
  result = 0x6D726F6E553861;
  switch(a1)
  {
    case 0:
      return 0x64696C61766E69;
    case 1:
      return result;
    case 10:
      return 0x6D726F6E553872;
    case 12:
      return 0x6D726F6E533872;
    case 13:
      return 0x746E69553872;
    case 14:
      return 0x746E69533872;
    case 20:
      v13 = 1429614962;
      return v13 | 0x6D726F6E00000000;
    case 22:
      v13 = 1396060530;
      return v13 | 0x6D726F6E00000000;
    case 23:
      v10 = 1429614962;
      return v10 | 0x746E6900000000;
    case 24:
      v10 = 1396060530;
      return v10 | 0x746E6900000000;
    case 25:
      v14 = 1177956722;
      return v14 | 0x74616F6C00000000;
    case 30:
      v13 = 1429759858;
      return v13 | 0x6D726F6E00000000;
    case 32:
      v13 = 1396205426;
      return v13 | 0x6D726F6E00000000;
    case 33:
      v10 = 1429759858;
      return v10 | 0x746E6900000000;
    case 34:
      v10 = 1396205426;
      return v10 | 0x746E6900000000;
    case 53:
      v10 = 1429353330;
      return v10 | 0x746E6900000000;
    case 54:
      v10 = 1395798898;
      return v10 | 0x746E6900000000;
    case 55:
      v14 = 1177695090;
      return v14 | 0x74616F6C00000000;
    case 60:
      return 0x726F6E5536316772;
    case 62:
      return 0x726F6E5336316772;
    case 63:
      v20 = 909207410;
      return v20 | 0x746E695500000000;
    case 64:
      v7 = 909207410;
      return v7 | 0x746E695300000000;
    case 65:
      v16 = 909207410;
      return v16 | 0x616F6C4600000000;
    case 70:
      v12 = 1633838962;
      return v12 | 0x6F6E553800000000;
    case 71:
      v15 = 1633838962;
      return v15 | 0x6F6E553800000000;
    case 72:
      return 0x6F6E533861626772;
    case 73:
      v8 = 0x553861626772;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 74:
      v8 = 0x533861626772;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 80:
      v12 = 1634887522;
      return v12 | 0x6F6E553800000000;
    case 81:
      v15 = 1634887522;
      return v15 | 0x6F6E553800000000;
    case 90:
      v18 = 828532594;
      return v18 | 0x5532613000000000;
    case 91:
      return 0x5532613031626772;
    case 92:
      return 0x4630316231316772;
    case 93:
      v11 = 0x356539626772;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6C46000000000000;
    case 94:
      v18 = 829581154;
      return v18 | 0x5532613000000000;
    case 103:
      v20 = 842229618;
      return v20 | 0x746E695500000000;
    case 104:
      v7 = 842229618;
      return v7 | 0x746E695300000000;
    case 105:
      v16 = 842229618;
      return v16 | 0x616F6C4600000000;
    case 110:
      return 0x6E55363161626772;
    case 112:
      return 0x6E53363161626772;
    case 113:
      v4 = 0x363161626772;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6955000000000000;
    case 114:
      v9 = 0x363161626772;
      return v9 & 0xFFFFFFFFFFFFLL | 0x6953000000000000;
    case 115:
      v11 = 0x363161626772;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6C46000000000000;
    case 123:
      v4 = 0x323361626772;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6955000000000000;
    case 124:
      v9 = 0x323361626772;
      return v9 & 0xFFFFFFFFFFFFLL | 0x6953000000000000;
    case 125:
      v11 = 0x323361626772;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6C46000000000000;
    case 186:
      v17 = 0x345F63747361;
      return v17 & 0xFFFFFFFFFFFFLL | 0x3478000000000000;
    case 187:
      v17 = 0x355F63747361;
      return v17 & 0xFFFFFFFFFFFFLL | 0x3478000000000000;
    case 188:
      v6 = 0x355F63747361;
      return v6 & 0xFFFFFFFFFFFFLL | 0x3578000000000000;
    case 189:
      v6 = 0x365F63747361;
      return v6 & 0xFFFFFFFFFFFFLL | 0x3578000000000000;
    case 190:
      v5 = 0x365F63747361;
      return v5 & 0xFFFFFFFFFFFFLL | 0x3678000000000000;
    case 192:
      v6 = 0x385F63747361;
      return v6 & 0xFFFFFFFFFFFFLL | 0x3578000000000000;
    case 193:
      v5 = 0x385F63747361;
      return v5 & 0xFFFFFFFFFFFFLL | 0x3678000000000000;
    case 194:
      return 0x3878385F63747361;
    case 195:
      return 0x7830315F63747361;
    case 196:
      return 0x7830315F63747361;
    case 197:
      return 0x7830315F63747361;
    case 198:
      return 0x7830315F63747361;
    case 199:
      return 0x7832315F63747361;
    case 200:
      return 0x7832315F63747361;
    case 204:
      v21 = 0x345F63747361;
      return v21 & 0xFFFFFFFFFFFFLL | 0x3478000000000000;
    case 205:
      v21 = 0x355F63747361;
      return v21 & 0xFFFFFFFFFFFFLL | 0x3478000000000000;
    case 206:
      v19 = 0x355F63747361;
      goto LABEL_86;
    case 207:
      v19 = 0x365F63747361;
      goto LABEL_86;
    case 208:
      v3 = 0x365F63747361;
      goto LABEL_24;
    case 210:
      v19 = 0x385F63747361;
LABEL_86:
      result = v19 & 0xFFFFFFFFFFFFLL | 0x3578000000000000;
      break;
    case 211:
      v3 = 0x385F63747361;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x3678000000000000;
      break;
    case 212:
      result = 0x3878385F63747361;
      break;
    case 213:
      result = 0x7830315F63747361;
      break;
    case 214:
      result = 0x7830315F63747361;
      break;
    case 215:
      result = 0x7830315F63747361;
      break;
    case 216:
      result = 0x7830315F63747361;
      break;
    case 217:
      result = 0x7832315F63747361;
      break;
    case 218:
      result = 0x7832315F63747361;
      break;
    case 252:
      result = 0x4632336874706564;
      break;
    case 253:
      result = 0x386C69636E657473;
      break;
    case 260:
      result = 0xD000000000000015;
      break;
    case 552:
      result = 0x785F303161726762;
      break;
    case 553:
      result = 0x785F303161726762;
      break;
    case 554:
      result = 0x72785F3031726762;
      break;
    case 555:
      result = 0x72785F3031726762;
      break;
    default:
      MTLPixelFormatGetInfo();
      result = sub_1AFDFD0E8();
      break;
  }

  return result;
}

uint64_t sub_1AF47289C(uint64_t a1)
{
  v1 = 1;
  switch(a1)
  {
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 253:
      return v1;
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 30:
    case 32:
    case 33:
    case 34:
    case 250:
      return 2;
    case 53:
    case 54:
    case 55:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 252:
      return 4;
    case 103:
    case 104:
    case 105:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
      return 8;
    case 123:
    case 124:
    case 125:
      return 16;
    case 260:
      return 5;
    default:
      if (qword_1EB6332B8 != -1)
      {
        v3 = a1;
        swift_once();
        a1 = v3;
      }

      if (qword_1EB6C2A10 == a1)
      {
        return 2;
      }

      if (qword_1EB633280 != -1)
      {
        v4 = a1;
        swift_once();
        a1 = v4;
      }

      if (qword_1EB6C29F0 == a1)
      {
        return 2;
      }

      if (qword_1EB6332A8 != -1)
      {
        v5 = a1;
        swift_once();
        a1 = v5;
      }

      if (qword_1EB6C2A08 == a1)
      {
        return 3;
      }

      if (qword_1EB633270 != -1)
      {
        v6 = a1;
        swift_once();
        a1 = v6;
      }

      if (qword_1EB6C29E8 == a1)
      {
        return 3;
      }

      if (qword_1EB633298 != -1)
      {
        v7 = a1;
        swift_once();
        a1 = v7;
      }

      if (qword_1EB6C2A00 == a1)
      {
        return 3;
      }

      if (qword_1EB633260 != -1)
      {
        v8 = a1;
        swift_once();
        a1 = v8;
      }

      if (qword_1EB6C29E0 == a1)
      {
        return 3;
      }

      if (qword_1EB633288 != -1)
      {
        v9 = a1;
        swift_once();
        a1 = v9;
      }

      if (qword_1EB6C29F8 == a1)
      {
        return 4;
      }

      if (qword_1EB633250 != -1)
      {
        v10 = a1;
        swift_once();
        a1 = v10;
      }

      if (qword_1EB6C29D8 == a1)
      {
        return 4;
      }

      v12 = a1;
      if (!a1)
      {
        return 0;
      }

      sub_1AFDFE218();

      v11 = sub_1AF4720E8(v12);
      MEMORY[0x1B2718AE0](v11);

      result = sub_1AFDFE518();
      __break(1u);
      return result;
  }
}

uint64_t sub_1AF472C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 <= -65)
  {
LABEL_2:
    if ((a5 - 160) >= 0x3B)
    {
      v9 = 1;
    }

    else
    {
      v9 = 1;
      if ((0x7FDF1FF7CFD54FFuLL >> (a5 + 96)))
      {
        goto LABEL_18;
      }
    }

    goto LABEL_8;
  }

  if (a4 < 65)
  {
    if (a4 < 0)
    {
      if (a4 == -64)
      {
        goto LABEL_2;
      }

      v10 = a1 << -a4;
    }

    else
    {
      v10 = a1 >> 63;
      if (a4 != 64)
      {
        v10 = a1 >> a4;
      }
    }
  }

  else
  {
    v10 = a1 >> 63;
  }

  if (v10 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v10;
  }

  if ((a5 - 160) <= 0x3A && ((1 << (a5 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
  {
LABEL_18:
    if ((a5 - 186) > 0x20)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_1AFE523E0[a5 - 186];
    }

    v11 = 16 * ((v9 + v12 - 1) / v12);
    if (a4 < -64)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_8:
  v11 = sub_1AF47289C(a5) * v9;
  if (a4 < -64)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (a4 > 64)
  {
    goto LABEL_37;
  }

  if (a4 < 0)
  {
    if (a4 != -64)
    {
      v13 = a2 << -a4;
      if (v13 > 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_22:
    if ((a5 - 160) >= 0x3B)
    {
      v14 = 1;
      v13 = 1;
      return v14 * v11 * v13;
    }

    v13 = 1;
    v14 = 1;
    if (((0x7FDF1FF7CFD54FFuLL >> (a5 + 96)) & 1) == 0)
    {
      return v14 * v11 * v13;
    }

    goto LABEL_40;
  }

  if (a4 != 64)
  {
    v13 = a2 >> a4;
    if (a2 >> a4 > 0)
    {
LABEL_29:
      if ((a5 - 160) > 0x3A || ((1 << (a5 + 96)) & 0x7FDF1FF7CFD54FFLL) == 0)
      {
LABEL_52:
        if ((a4 & 0x8000000000000000) == 0)
        {
          if (a4 == 64)
          {
LABEL_48:
            v14 = a3 >> 63;
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        if (a4 <= 0xFFFFFFFFFFFFFFC0)
        {
LABEL_46:
          v14 = 1;
          return v14 * v11 * v13;
        }

        goto LABEL_60;
      }

LABEL_40:
      if ((a5 - 186) > 0x20)
      {
        v15 = 1;
      }

      else
      {
        v15 = qword_1AFE524E8[a5 - 186];
      }

      v13 = (v13 + v15 - 1) / v15;
      if (a4 < -64)
      {
        goto LABEL_46;
      }

      if (a4 >= 65)
      {
        goto LABEL_48;
      }

      goto LABEL_52;
    }
  }

LABEL_37:
  if (a5 - 160) < 0x3B && ((0x7FDF1FF7CFD54FFuLL >> (a5 + 96)))
  {
    v13 = 1;
    goto LABEL_40;
  }

  if (a4 > 64)
  {
    v13 = 1;
    v14 = a3 >> 63;
    goto LABEL_55;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v14 = 1;
    v13 = 1;
    if (a4 == 64)
    {
      return v14 * v11 * v13;
    }

LABEL_54:
    v14 = a3 >> a4;
    goto LABEL_55;
  }

  v13 = 1;
LABEL_60:
  v14 = a3 << -a4;
LABEL_55:
  if (v14 <= 1)
  {
    v14 = 1;
  }

  return v14 * v11 * v13;
}

double sub_1AF472F54()
{
  *&v3 = [v0 width];
  *&v2 = [v0 height];
  [v0 depth];
  return COERCE_DOUBLE(__PAIR64__(v2, v3));
}

uint64_t sub_1AF472FC8()
{
  v1 = [v0 pixelFormat];
  v2 = [v0 width];
  v3 = [v0 height];

  return sub_1AF472C1C(v2, v3, 1, 0, v1);
}

uint64_t sub_1AF473048(uint64_t a1)
{
  v3 = [v1 pixelFormat];
  v4 = [v1 width];
  v5 = [v1 height];
  v6 = [v1 depth];

  return sub_1AF472C1C(v4, v5, v6, a1, v3);
}

uint64_t sub_1AF4730E8()
{
  v1 = [v0 mipmapLevelCount];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    for (i = 0; i != v2; ++i)
    {
      v3 += sub_1AF472C1C([v0 width], objc_msgSend(v0, sel_height), objc_msgSend(v0, sel_depth), i, objc_msgSend(v0, sel_pixelFormat));
    }
  }

  else
  {
    v3 = 0;
  }

  return sub_1AF4731CC() * v3;
}

uint64_t sub_1AF4731CC()
{
  v1 = [v0 textureType];
  result = 1;
  if (v1 <= 4)
  {
    if (v1 != 1 && v1 != 3)
    {
      return result;
    }

LABEL_11:

    return [v0 arrayLength];
  }

  switch(v1)
  {
    case 5:
      return 6;
    case 6:
      return 6 * [v0 arrayLength];
    case 8:
      goto LABEL_11;
  }

  return result;
}

uint64_t sub_1AF473274()
{
  v1 = [v0 textureType];
  if (v1 > 8)
  {
    return 1;
  }

  if (((1 << v1) & 0x63) != 0)
  {
    v3 = [v0 width];
  }

  else if (((1 << v1) & 0x11C) != 0)
  {
    v2 = [v0 width];
    v3 = [v0 height];
    if (v3 <= v2)
    {
      v3 = v2;
    }
  }

  else
  {
    v6 = [v0 width];
    v7 = [v0 height];
    v8 = [v0 depth];
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v9 <= v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = v9;
    }
  }

  v4 = log2f(fmaxf(v3, 1.0));
  return (floorf(v4) + 1.0);
}

uint64_t sub_1AF473390(uint64_t a1)
{
  v3 = [v1 textureType];
  if (v3 <= 8)
  {
    if (((1 << v3) & 0x17C) != 0)
    {
      v4 = [v1 width];
      if (a1 < -64)
      {
LABEL_4:
        [v1 height];
        v5 = 1;
        v6 = 1;
LABEL_25:
        v8 = v5;
LABEL_39:
        v16 = 1;
LABEL_40:
        sub_1AF4674F0(v8, v6, v16, &v26);
        return v26;
      }

      if (a1 < 65)
      {
        if (a1 < 0)
        {
          if (a1 == -64)
          {
            goto LABEL_4;
          }

          v9 = v4 << -a1;
        }

        else
        {
          v9 = v4 >> 63;
          if (a1 != 64)
          {
            v9 = v4 >> a1;
          }
        }
      }

      else
      {
        v9 = v4 >> 63;
      }

      if (v9 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v9;
      }

      v10 = [v1 height];
      v11 = v10 << -a1;
      v12 = v10 >> a1;
      if (a1 == 64)
      {
        v12 = v10 >> 63;
      }

      if (a1 >= 0)
      {
        v11 = v12;
      }

      if (a1 >= 65)
      {
        v11 = v10 >> 63;
      }

      if (v11 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v11;
      }

      goto LABEL_25;
    }

    if (((1 << v3) & 3) != 0)
    {
      v7 = [v1 width];
      if (a1 < -64)
      {
LABEL_7:
        v8 = 1;
LABEL_38:
        v6 = 1;
        goto LABEL_39;
      }

      if (a1 < 65)
      {
        if (a1 < 0)
        {
          if (a1 == -64)
          {
            goto LABEL_7;
          }

          v17 = v7 << -a1;
        }

        else
        {
          v17 = v7 >> 63;
          if (a1 != 64)
          {
            v17 = v7 >> a1;
          }
        }
      }

      else
      {
        v17 = v7 >> 63;
      }

      if (v17 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v17;
      }

      goto LABEL_38;
    }

    v13 = [v1 width];
    if (a1 < -64)
    {
      goto LABEL_27;
    }

    if (a1 < 65)
    {
      if (a1 < 0)
      {
        if (a1 == -64)
        {
LABEL_27:
          [v1 height];
          [v1 depth];
          v14 = 1;
          v15 = 1;
          v16 = 1;
LABEL_65:
          v8 = v15;
          v6 = v14;
          goto LABEL_40;
        }

        v18 = v13 << -a1;
      }

      else
      {
        v18 = v13 >> 63;
        if (a1 != 64)
        {
          v18 = v13 >> a1;
        }
      }
    }

    else
    {
      v18 = v13 >> 63;
    }

    if (v18 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v18;
    }

    v20 = [v1 height];
    v21 = v20 << -a1;
    v22 = v20 >> a1;
    if (a1 == 64)
    {
      v22 = v20 >> 63;
    }

    if (a1 >= 0)
    {
      v21 = v22;
    }

    if (a1 >= 65)
    {
      v21 = v20 >> 63;
    }

    if (v21 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v21;
    }

    v23 = [v1 depth];
    v24 = v23 << -a1;
    v25 = v23 >> a1;
    if (a1 == 64)
    {
      v25 = v23 >> 63;
    }

    if (a1 >= 0)
    {
      v24 = v25;
    }

    if (a1 >= 65)
    {
      v24 = v23 >> 63;
    }

    if (v24 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v24;
    }

    goto LABEL_65;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF4736A0()
{
  [v0 pixelFormat];
  [v0 mipmapLevelCount];

  return sub_1AFDFD9B8();
}

uint64_t sub_1AF47371C()
{
  [v0 pixelFormat];
  [v0 mipmapLevelCount];

  return sub_1AFDFD9B8();
}

uint64_t sub_1AF473794()
{
  v1 = [v0 textureType];
  if (v1 <= 4)
  {
    if (v1)
    {
      if (v1 == 2)
      {
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](541340220, 0xE400000000000000);
        v2 = sub_1AF4720E8([v0 pixelFormat]);
        MEMORY[0x1B2718AE0](v2);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        [v0 width];
        v3 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v3);

        MEMORY[0x1B2718AE0](120, 0xE100000000000000);
        [v0 height];
LABEL_12:
        v10 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v10);

        MEMORY[0x1B2718AE0](0x3A7370696D20, 0xE600000000000000);
        [v0 mipmapLevelCount];
        v11 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v11);

        MEMORY[0x1B2718AE0](0x3A656761737520, 0xE700000000000000);
        [v0 usage];
        type metadata accessor for MTLTextureUsage(0);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](62, 0xE100000000000000);
        return 0;
      }

      goto LABEL_8;
    }

    sub_1AFDFE218();
    v7 = 541339964;
    v8 = 0xE400000000000000;
LABEL_11:
    MEMORY[0x1B2718AE0](v7, v8);
    v9 = sub_1AF4720E8([v0 pixelFormat]);
    MEMORY[0x1B2718AE0](v9);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    [v0 width];
    goto LABEL_12;
  }

  if (v1 == 5)
  {
    sub_1AFDFE218();
    v7 = 0x20656275433CLL;
    v8 = 0xE600000000000000;
    goto LABEL_11;
  }

  if (v1 == 7)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](541340476, 0xE400000000000000);
    v4 = sub_1AF4720E8([v0 pixelFormat]);
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    [v0 width];
    v5 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](120, 0xE100000000000000);
    [v0 height];
    v6 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v6);

    MEMORY[0x1B2718AE0](120, 0xE100000000000000);
    [v0 depth];
    goto LABEL_12;
  }

LABEL_8:
  MEMORY[0x1B2718AE0](0x203A5858786554, 0xE700000000000000);
  sub_1AFDFEDD8();
  return 0;
}

char *sub_1AF473BD4(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(&v18 + 1) = a4;
  *&v18 = a3;
  v7 = [a2 width];
  v8 = [a2 height];
  v9 = [a2 depth];
  v10 = [a2 textureType];
  v11 = 6;
  if (v10 != 5)
  {
    v11 = 1;
  }

  v21 = v11;
  v22 = a2;
  result = [a2 mipmapLevelCount];
  v17 = result;
  if (result)
  {
    v13 = 0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        sub_1AF4674F0(v7, v8, v9, &v28);
        v15 = v29;
        v16 = v28;
        v28 = v18;
        v29 = a5;
        v26 = v16;
        v27 = v15;
        v24 = v18;
        v25 = a5;
        result = [a1 copyFromTexture:v22 sourceSlice:i sourceLevel:v13 sourceOrigin:&v28 sourceSize:&v26 toTexture:a6 destinationSlice:i destinationLevel:v13 destinationOrigin:&v24];
      }

      ++v13;
      if (v7 > 1)
      {
        v7 /= 2;
      }

      if (v8 > 1)
      {
        v8 /= 2;
      }

      if (v9 > 1)
      {
        v9 /= 2;
      }
    }

    while (v13 != v17);
  }

  return result;
}

uint64_t sub_1AF473D6C(void (*a1)(void))
{
  v3 = [objc_msgSend(v1 newCommandQueue)];
  v4 = [v3 blitCommandEncoder];
  a1();
  [v4 endEncoding];
  [v3 commit];
  sub_1AF473E3C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF473E3C()
{
  v1 = v0;
  v2 = sub_1AFDFC538();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC4F8();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v11 = sub_1AF477C68(v2, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();
  v12 = *(v3 + 16);
  v29 = v6;
  v12(v6, v11, v2);
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v35 = v14;
  *v13 = 136315138;
  v15 = [v1 label];
  v33 = v3;
  v34 = v2;
  v30 = v1;
  if (v15)
  {
    v16 = v15;
    v17 = sub_1AFDFCEF8();
    v19 = v18;
  }

  else
  {
    v19 = 0xE700000000000000;
    v17 = 0x64656D616E6E55;
  }

  v20 = sub_1AF740B70(v17, v19, &v35);

  *(v13 + 4) = v20;
  v21 = v29;
  v22 = sub_1AFDFC528();
  v23 = sub_1AFDFDB88();
  v24 = sub_1AFDFC4E8();
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v22, v23, v24, "waitUntilCompleted", "CB: %s", v13, 0xCu);
  [v30 waitUntilCompleted];
  v25 = sub_1AFDFDB78();
  v26 = sub_1AFDFC4E8();
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v22, v25, v26, "waitUntilCompleted", "CB: %s", v13, 0xCu);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  MEMORY[0x1B271DEA0](v14, -1, -1);
  MEMORY[0x1B271DEA0](v13, -1, -1);
  (*(v33 + 8))(v21, v34);
  return (*(v31 + 8))(v10, v32);
}

uint64_t MTLClearColor.encode(to:)(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AFDFEC08();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AFDFEC08();
    sub_1AF448018(v3, v4);
    sub_1AFDFEC08();
    sub_1AF448018(v3, v4);
    sub_1AFDFEC08();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

void sub_1AF4742E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF47714C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

id sub_1AF474330(void *a1)
{
  [v1 setTexture_];
  swift_unknownObjectRelease();
  [v1 setLoadAction_];
  [v1 setStoreAction_];
  [v1 setStoreActionOptions_];
  [v1 setLevel_];
  [v1 setSlice_];
  [v1 setDepthPlane_];
  [v1 setResolveTexture_];
  swift_unknownObjectRelease();
  [v1 setResolveLevel_];
  [v1 setResolveDepthPlane_];
  v3 = [a1 resolveSlice];

  return [v1 setResolveSlice_];
}

BOOL sub_1AF474514(void *a1)
{
  v3 = [v1 texture];
  v4 = [a1 texture];
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = v4;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v3 != v5)
    {
      return 0;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v6 = [v1 loadAction];
  if (v6 != [a1 loadAction])
  {
    return 0;
  }

  v7 = [v1 storeAction];
  if (v7 != [a1 storeAction])
  {
    return 0;
  }

  v8 = [v1 level];
  if (v8 != [a1 level])
  {
    return 0;
  }

  v9 = [v1 resolveTexture];
  v10 = [a1 resolveTexture];
  if (v9)
  {
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v9 == v11;
    }

    goto LABEL_12;
  }

  if (v10)
  {
LABEL_12:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

void sub_1AF474680(uint64_t a1@<X8>)
{
  v3 = [v1 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript_];

  v5 = [v4 texture];
  if (!v5)
  {
    v6 = [v1 depthAttachment];
    v5 = [v6 texture];
  }

  v7 = [v1 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  v9 = [v8 texture];
  if (v9)
  {
    v47 = [v9 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0;
  }

  v10 = [v1 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  v12 = [v11 texture];
  if (v12)
  {
    v46 = [v12 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
  }

  v13 = [v1 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  v15 = [v14 texture];
  if (v15)
  {
    v45 = [v15 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0;
  }

  v16 = [v1 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  v18 = [v17 texture];
  if (v18)
  {
    v44 = [v18 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0;
  }

  v19 = [v1 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  v21 = [v20 texture];
  if (v21)
  {
    v43 = [v21 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0;
  }

  v22 = [v1 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  v24 = [v23 texture];
  if (v24)
  {
    v41 = [v24 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
  }

  v25 = [v1 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  v27 = [v26 texture];
  if (v27)
  {
    v28 = [v27 pixelFormat];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
  }

  v29 = [v1 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript_];

  v31 = [v30 texture];
  if (v31)
  {
    v32 = [v31 &selRef_renderVideoBackground_engineContext_materialProperty_];
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0;
  }

  v33 = [v1 depthAttachment];
  v34 = [v33 texture];

  if (v34)
  {
    v35 = [v34 &selRef_renderVideoBackground_engineContext_materialProperty_];
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0;
  }

  v36 = [v1 stencilAttachment];
  v37 = [v36 texture];

  if (v37)
  {
    v38 = [v37 &selRef_renderVideoBackground_engineContext_materialProperty_];
    swift_unknownObjectRelease();
    if (v5)
    {
      goto LABEL_32;
    }

LABEL_35:
    v40 = 1;
    goto LABEL_36;
  }

  v38 = 0;
  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_32:
  v39 = [v5 sampleCount];
  swift_unknownObjectRelease();
  v40 = v39;
  if ((v39 & 0xFE) == 0)
  {
    v40 = 1;
  }

LABEL_36:
  *a1 = v47;
  *(a1 + 8) = v46;
  *(a1 + 16) = v45;
  *(a1 + 24) = v44;
  *(a1 + 32) = v43;
  *(a1 + 40) = v42;
  *(a1 + 48) = v28;
  *(a1 + 56) = v32;
  *(a1 + 64) = v35;
  *(a1 + 72) = v38;
  *(a1 + 80) = v40;
}

double sub_1AF474C10()
{
  v1 = [v0 colorAttachments];
  v2 = [v1 objectAtIndexedSubscript_];

  if ([v2 texture] || (v2, v2 = objc_msgSend(v0, sel_depthAttachment), objc_msgSend(v2, sel_texture)))
  {
    sub_1AF473390([v2 level]);
    swift_unknownObjectRelease();

    return 0.0;
  }

  else
  {

    return 0.0;
  }
}

BOOL sub_1AF474D44(void *a1)
{
  v2 = v1;
  for (i = 0; i != 8; ++i)
  {
    v5 = [v2 colorAttachments];
    v6 = [v5 objectAtIndexedSubscript_];

    v7 = [a1 colorAttachments];
    v8 = [v7 objectAtIndexedSubscript_];

    LOBYTE(v7) = sub_1AF474514(v8);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = [v2 depthAttachment];
  v10 = [a1 depthAttachment];
  v11 = sub_1AF474514(v10);

  if (v11)
  {
    v12 = [v2 stencilAttachment];
    v13 = [a1 stencilAttachment];
    v14 = sub_1AF474514(v13);

    return v14;
  }

  return 0;
}

void sub_1AF474EC4()
{
  v1 = [v0 depthAttachment];
  v2 = [v1 texture];

  if (v2)
  {
    if ([v2 pixelFormat] == 260)
    {
      v3 = [v0 stencilAttachment];
      v4 = [v0 depthAttachment];
      sub_1AF474330(v4);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AF474FE4(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  sub_1AF441150(a1, v7);
  a3(v12, v7, v8);
  v9 = v13;
  v10 = v14;
  sub_1AF448018(v12, v13);
  a4(a2, v9, v10);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
}

uint64_t sub_1AF4750A8(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF448018(v5, v6);
    v3 = sub_1AFDFEAC8();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t sub_1AF475164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v7, v8);
  v5 = sub_1AFDFEAC8();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1AF475224(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  a4(v14, v9, v10);
  v11 = v15;
  v12 = v16;
  sub_1AF448018(v14, v15);
  a5(v8, v11, v12);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
}

uint64_t MTLTextureSwizzle.encode(to:)(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AFDFEF48();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t MTLTextureSwizzle.init(from:)(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF441150(v5, v5[3]);
    v3 = sub_1AFDFEEA8();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t sub_1AF475440@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v7, v7[3]);
  v5 = sub_1AFDFEEA8();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1AF475500(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AFDFEF48();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

unint64_t sub_1AF4755AC@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1AF4772BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *MTLStorageMode.init(from:)(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF441150(v6, v6[3]);
    v4 = sub_1AFDFEE78();
    if (v4 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = v4;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t sub_1AF4756A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v8, v8[3]);
  v5 = sub_1AFDFEE78();
  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v7;
  return result;
}

uint64_t sub_1AF47576C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v7, v7[3]);
  v5 = sub_1AFDFEE78();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1AF47582C(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF441150(v5, v5[3]);
    v3 = sub_1AFDFEE78();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t MTLWinding.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x7369776B636F6C63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  sub_1AFDFE218();

  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF475A8C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF475B34()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF475BC8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF475C6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF476E98();
  *a1 = result;
  return result;
}

void sub_1AF475C9C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AF475D00()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF475D60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF476E98();
  *a1 = result;
  return result;
}

uint64_t sub_1AF475D88(uint64_t a1)
{
  v2 = sub_1AF477380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF475DC4(uint64_t a1)
{
  v2 = sub_1AF477380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MTLTextureSwizzleChannels.encode(to:)(void *a1, int a2)
{
  sub_1AF478010(0, &qword_1EB6395B0, sub_1AF477380, &_s10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF477380();
  sub_1AFDFF3F8();
  v20 = a2;
  v19 = 0;
  type metadata accessor for MTLTextureSwizzle(0);
  sub_1AF477718(&qword_1EB6395B8, type metadata accessor for MTLTextureSwizzle);
  sub_1AFDFE918();
  if (!v2)
  {
    v18 = BYTE1(a2);
    v17 = 1;
    sub_1AFDFE918();
    v16 = BYTE2(a2);
    v15 = 2;
    sub_1AFDFE918();
    v14 = HIBYTE(a2);
    v13 = 3;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF476064@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1AF4773D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF4760AC(uint64_t a1, uint64_t a2)
{
  MTLPixelFormatGetInfoForDevice();
  if (a2 > 32)
  {
    switch(a2)
    {
      case '!':
        return (v7 >> 19) & 1;
      case '%':
        return (v7 >> 20) & 1;
      case ')':
        return (v7 >> 21) & 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        return WORD1(v7) & 1;
      case 16:
        return (v7 >> 17) & 1;
      case 29:
        return (v7 >> 18) & 1;
    }
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v7 = 0xE000000000000000;
  sub_1AFDFE218();
  type metadata accessor for MTLDataType(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF293F0);
  v4 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v5 = v4;
    swift_once();
    v4 = v5;
  }

  v6 = 0;
  sub_1AF0D4F18(v4, &v6, 0, 0xE000000000000000);

  return 0;
}

uint64_t sub_1AF4762BC()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF476304()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

_BYTE *sub_1AF476348@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1AF4763B0()
{
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF476604(uint64_t a1)
{
  v1 = a1;
  if ((~a1 & 0xF) == 0)
  {
    return 7105601;
  }

  if (a1)
  {
    if ((a1 & 8) != 0)
    {
      MEMORY[0x1B2718AE0](543450450, 0xE400000000000000);
      if ((v1 & 4) == 0)
      {
LABEL_6:
        if ((v1 & 2) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    MEMORY[0x1B2718AE0](0x206E65657247, 0xE600000000000000);
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 1) == 0)
      {
        return 0;
      }

LABEL_8:
      MEMORY[0x1B2718AE0](0x206168706C41, 0xE600000000000000);
      return 0;
    }

LABEL_13:
    MEMORY[0x1B2718AE0](0x2065756C42, 0xE500000000000000);
    if ((v1 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return 1701736270;
}

uint64_t sub_1AF476764(uint64_t a1)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 16:
    case 17:
    case 18:
    case 19:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
      result = 0x746E6174736E6F43;
      break;
    default:
      result = sub_1AFDFE518();
      __break(1u);
      break;
  }

  return result;
}

BOOL sub_1AF476A04()
{
  for (i = 30; i != -1; --i)
  {
    v2 = [v0 attributes];
    v3 = [v2 objectAtIndexedSubscript_];

    v4 = [v3 format];
    if (v4)
    {
      return 0;
    }
  }

  v7 = 30;
  do
  {
    v5 = v7 == -1;
    if (v7 == -1)
    {
      break;
    }

    v8 = [v0 layouts];
    v9 = [v8 objectAtIndexedSubscript_];

    v10 = [v9 stride];
    --v7;
  }

  while (!v10);
  return v5;
}

id sub_1AF476B14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_1AF477CAC(v3);
  v6 = v5;

  v7 = sub_1AFDFC1A8();
  sub_1AF439ED8(v4, v6);

  return v7;
}

id sub_1AF476B80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_1AFDFC1B8();
  v6 = v5;

  v7 = sub_1AF477DE4();
  sub_1AF439ED8(v4, v6);

  return v7;
}

id sub_1AF476BF4(id result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = result;
  if (a4)
  {
    result = [v5 setVertexBuffer:result offset:a2 atIndex:a3];
    if ((a4 & 8) == 0)
    {
LABEL_3:
      if ((a4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = [v5 setMeshBuffer:v9 offset:a2 atIndex:a3];
      if ((a4 & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((a4 & 8) == 0)
  {
    goto LABEL_3;
  }

  result = [v5 setObjectBuffer:v9 offset:a2 atIndex:a3];
  if ((a4 & 0x10) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a4 & 2) == 0)
  {
    return result;
  }

LABEL_9:

  return [v5 setFragmentBuffer:v9 offset:a2 atIndex:a3];
}

id sub_1AF476CE0(id result, uint64_t a2, char a3)
{
  v6 = result;
  if (a3)
  {
    result = [v3 setVertexTexture:result atIndex:a2];
    if ((a3 & 8) == 0)
    {
LABEL_3:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = [v3 setMeshTexture:v6 atIndex:a2];
      if ((a3 & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_3;
  }

  result = [v3 setObjectTexture:v6 atIndex:a2];
  if ((a3 & 0x10) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a3 & 2) == 0)
  {
    return result;
  }

LABEL_9:

  return [v3 setFragmentTexture:v6 atIndex:a2];
}

uint64_t sub_1AF476DA8()
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1AFC06B58(0, 46, 0);
  v0 = 0x20u;
  v1 = v11;
  do
  {
    v2 = *(&unk_1F24F4A70 + v0);
    v3 = sub_1AF4720E8(v2);
    v12 = v1;
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      v8 = v3;
      v9 = v4;
      sub_1AFC06B58(v5 > 1, v6 + 1, 1);
      v4 = v9;
      v3 = v8;
      v1 = v12;
    }

    *(v1 + 16) = v6 + 1;
    v7 = (v1 + 24 * v6);
    v7[4] = v3;
    v7[5] = v4;
    v7[6] = v2;
    v0 += 8;
  }

  while (v0 != 400);
  return v1;
}

uint64_t sub_1AF476E98()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_1AF476EE4(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTextureType_];
  [v2 setPixelFormat_];
  [v2 setWidth_];
  [v2 setHeight_];
  [v2 setDepth_];
  [v2 setMipmapLevelCount_];
  [v2 setSampleCount_];
  [v2 setArrayLength_];
  [v2 setCpuCacheMode_];
  [v2 setStorageMode_];

  [v2 setHazardTrackingMode_];
  [v2 setUsage_];
  return v2;
}

uint64_t sub_1AF4770E0(int32x4_t a1, int32x4_t a2)
{
  v2 = vaddq_s32(a2, a1);
  sub_1AF4674F0((v2.i32[0] - 1) / a2.i32[0], (v2.i32[1] - 1) / a2.i32[1], (v2.i32[2] - 1) / a2.i32[2], &v4);
  return v4;
}

double sub_1AF47714C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  sub_1AF448018(v5, v6);
  sub_1AFDFEA98();
  v3 = v2;
  sub_1AF448018(v5, v6);
  sub_1AFDFEA98();
  sub_1AF448018(v5, v6);
  sub_1AFDFEA98();
  sub_1AF448018(v5, v6);
  sub_1AFDFEA98();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

unint64_t sub_1AF4772BC(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v1)
  {
    sub_1AF441150(v5, v5[3]);
    v3 = sub_1AFDFEE78() & 0xFFFFFFFFFFFFFFEFLL;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v3;
}

unint64_t sub_1AF477380()
{
  result = qword_1EB632988;
  if (!qword_1EB632988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632988);
  }

  return result;
}

uint64_t sub_1AF4773D4(void *a1)
{
  sub_1AF478010(0, &qword_1EB632830, sub_1AF477380, &_s10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF477380();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  type metadata accessor for MTLTextureSwizzle(0);
  v23 = 0;
  sub_1AF477718(&unk_1EB6329D8, type metadata accessor for MTLTextureSwizzle);
  sub_1AFDFE768();
  v9 = v24;
  v21 = 1;
  sub_1AFDFE768();
  v16 = v9;
  v10 = v22;
  v19 = 2;
  sub_1AFDFE768();
  v15 = v10;
  v11 = v20;
  v17 = 3;
  sub_1AFDFE768();
  (*(v5 + 8))(v8, v4);
  v12 = v18;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v16 | (v15 << 8) | (v11 << 16) | (v12 << 24);
}

uint64_t sub_1AF477694(uint64_t a1)
{
  *(a1 + 8) = sub_1AF477718(&qword_1EB632A40, type metadata accessor for MTLPixelFormat);
  result = sub_1AF477718(&qword_1EB640390, type metadata accessor for MTLPixelFormat);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AF477718(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF47779C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF4778A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF4778A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFD538();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF477908()
{
  result = qword_1EB639600;
  if (!qword_1EB639600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639600);
  }

  return result;
}

unint64_t sub_1AF477960()
{
  result = qword_1EB639608;
  if (!qword_1EB639608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639608);
  }

  return result;
}

unint64_t sub_1AF4779B8()
{
  result = qword_1EB632978;
  if (!qword_1EB632978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632978);
  }

  return result;
}

unint64_t sub_1AF477A10()
{
  result = qword_1EB632980;
  if (!qword_1EB632980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632980);
  }

  return result;
}

unint64_t sub_1AF477A64()
{
  result = qword_1EB639618;
  if (!qword_1EB639618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639618);
  }

  return result;
}

unint64_t sub_1AF477AB8()
{
  result = qword_1ED72F7A8;
  if (!qword_1ED72F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F7A8);
  }

  return result;
}

unint64_t sub_1AF477B0C()
{
  result = qword_1EB639638;
  if (!qword_1EB639638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639638);
  }

  return result;
}

unint64_t sub_1AF477B60()
{
  result = qword_1EB639658;
  if (!qword_1EB639658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639658);
  }

  return result;
}

unint64_t sub_1AF477BB4()
{
  result = qword_1ED72F6D0;
  if (!qword_1ED72F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F6D0);
  }

  return result;
}

unint64_t sub_1AF477C08()
{
  result = qword_1ED722ED8;
  if (!qword_1ED722ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722ED8);
  }

  return result;
}

void sub_1AF477C5C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1AF477C68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1AF477CAC(void *a1)
{
  sub_1AFDFBC38();
  swift_allocObject();
  sub_1AFDFBC28();
  sub_1AF477FAC();
  v2 = a1;
  v3 = sub_1AFDFBC08();

  return v3;
}

uint64_t sub_1AF477DE4()
{
  sub_1AFDFBBB8();
  swift_allocObject();
  sub_1AFDFBBA8();
  sub_1AF477F58();
  sub_1AFDFBB88();

  return v1;
}

unint64_t sub_1AF477F58()
{
  result = qword_1EB639680;
  if (!qword_1EB639680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639680);
  }

  return result;
}

unint64_t sub_1AF477FAC()
{
  result = qword_1EB63DFA0;
  if (!qword_1EB63DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DFA0);
  }

  return result;
}

void sub_1AF478010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AF4780C8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF47815C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF47815C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF4781B0()
{
  result = qword_1EB6396A8;
  if (!qword_1EB6396A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6396A8);
  }

  return result;
}

uint64_t sub_1AF4783C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  v8 = sub_1AF467494(&v26);
  if (v8 <= 0x46u)
  {
    if (v8 <= 0x18u)
    {
      if (v8 == 10)
      {
        v9 = 4;
        v10 = *a1;
        if (!*a1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      if (v8 == 11)
      {
        v9 = 5;
        v10 = *a1;
        if (!*a1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    else
    {
      switch(v8)
      {
        case 0x19u:
          v9 = 0;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        case 0x37u:
          v9 = 1;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        case 0x46u:
          v9 = 6;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

LABEL_33:
          v11 = *(a1 + 8);
          if ([swift_unknownObjectRetain_n() storageMode] != 2)
          {
            v17 = [v10 contents];
            v18 = v10;
            swift_unknownObjectRelease();
            v26 = v30;
            v27 = v31;
            v19 = sub_1AF445CA8(&v26);
            vfx_sampler1d_make(v17 + v11, v19, v9, a2, a3 & 1, &v26);
            v25 = v26;
            v13 = v27;
            v16 = v28;
            v14 = v29;
            result = sub_1AF478A6C(a1);
            v15 = v25;
            goto LABEL_38;
          }

          swift_unknownObjectRelease_n();
          goto LABEL_35;
      }
    }

    goto LABEL_39;
  }

  if (v8 <= 0x50u)
  {
    if (v8 == 71)
    {
      v9 = 7;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v8 == 80)
    {
      v9 = 8;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_39;
  }

  if (v8 == 81)
  {
    v9 = 9;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v8 != 115)
  {
    if (v8 == 125)
    {
      v9 = 3;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_39:
    v20 = v8;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v26 = 0xD00000000000001ALL;
    *(&v26 + 1) = 0x80000001AFF29870;
    v21 = sub_1AF4720E8(v20);
    MEMORY[0x1B2718AE0](v21);

    v22 = v26;
    v23 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v24 = v23;
      swift_once();
      v23 = v24;
    }

    *&v26 = 0;
    sub_1AF0D4F18(v23, &v26, v22, *(&v22 + 1));
    sub_1AF478A6C(a1);

    goto LABEL_36;
  }

  v9 = 2;
  v10 = *a1;
  if (*a1)
  {
    goto LABEL_33;
  }

LABEL_35:
  result = sub_1AF478A6C(a1);
LABEL_36:
  v13 = 0;
  v14 = 0;
  v15 = 0uLL;
  v16 = 1;
LABEL_38:
  *a4 = v15;
  *(a4 + 16) = v13;
  *(a4 + 24) = v16;
  *(a4 + 32) = v14;
  return result;
}

uint64_t sub_1AF478700@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v33 = *(a1 + 32);
  v34 = *(a1 + 48);
  v29 = *(a1 + 32);
  *&v30 = *(a1 + 48);
  v8 = sub_1AF467494(&v29);
  if (v8 <= 0x46u)
  {
    if (v8 <= 0x18u)
    {
      if (v8 == 10)
      {
        v9 = 4;
        v10 = *a1;
        if (!*a1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      if (v8 == 11)
      {
        v9 = 5;
        v10 = *a1;
        if (!*a1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    else
    {
      switch(v8)
      {
        case 0x19u:
          v9 = 0;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        case 0x37u:
          v9 = 1;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        case 0x46u:
          v9 = 6;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

LABEL_33:
          v11 = *(a1 + 8);
          if ([swift_unknownObjectRetain_n() storageMode] != 2)
          {
            v17 = [v10 contents];
            v18 = v10;
            swift_unknownObjectRelease();
            v29 = v33;
            *&v30 = v34;
            v19 = sub_1AF445CA8(&v29);
            v29 = v33;
            *&v30 = v34;
            v20 = sub_1AF445CB0(&v29);
            vfx_sampler2d_make(v17 + v11, v9, a2, a3 & 1, &v29, __PAIR64__(v20, v19));
            v27 = v30;
            v28 = v29;
            v13 = v31;
            v26 = v32;
            result = sub_1AF478A6C(a1);
            v16 = v27;
            v15 = v28;
            v14 = v26;
            goto LABEL_38;
          }

          swift_unknownObjectRelease_n();
          goto LABEL_35;
      }
    }

    goto LABEL_39;
  }

  if (v8 <= 0x50u)
  {
    if (v8 == 71)
    {
      v9 = 7;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v8 == 80)
    {
      v9 = 8;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_39;
  }

  if (v8 == 81)
  {
    v9 = 9;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v8 != 115)
  {
    if (v8 == 125)
    {
      v9 = 3;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_39:
    v21 = v8;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v29 = 0xD00000000000001ALL;
    *(&v29 + 1) = 0x80000001AFF29870;
    v22 = sub_1AF4720E8(v21);
    MEMORY[0x1B2718AE0](v22);

    v23 = v29;
    v24 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v25 = v24;
      swift_once();
      v24 = v25;
    }

    *&v29 = 0;
    sub_1AF0D4F18(v24, &v29, v23, *(&v23 + 1));
    sub_1AF478A6C(a1);

    goto LABEL_36;
  }

  v9 = 2;
  v10 = *a1;
  if (*a1)
  {
    goto LABEL_33;
  }

LABEL_35:
  result = sub_1AF478A6C(a1);
LABEL_36:
  v13 = 0;
  v14 = xmmword_1AFE22A20;
  v15 = 0uLL;
  v16 = 0uLL;
LABEL_38:
  *a4 = v15;
  *(a4 + 16) = v16;
  *(a4 + 32) = v13;
  *(a4 + 40) = v14;
  return result;
}

uint64_t sub_1AF478ACC@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v42 = *(a1 + 32);
  v43 = *(a1 + 48);
  v36 = *(a1 + 32);
  *&v37 = *(a1 + 48);
  v8 = sub_1AF467494(&v36);
  if (v8 <= 0x46u)
  {
    if (v8 <= 0x18u)
    {
      if (v8 == 10)
      {
        v9 = 4;
        v10 = *a1;
        if (!*a1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      if (v8 == 11)
      {
        v9 = 5;
        v10 = *a1;
        if (!*a1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    else
    {
      switch(v8)
      {
        case 0x19u:
          v9 = 0;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        case 0x37u:
          v9 = 1;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        case 0x46u:
          v9 = 6;
          v10 = *a1;
          if (!*a1)
          {
            goto LABEL_35;
          }

LABEL_33:
          v11 = *(a1 + 8);
          if ([swift_unknownObjectRetain_n() storageMode] != 2)
          {
            v19 = [v10 contents];
            v20 = v10;
            swift_unknownObjectRelease();
            v36 = v42;
            *&v37 = v43;
            v21 = sub_1AF445CA8(&v36);
            v36 = v42;
            *&v37 = v43;
            v22 = sub_1AF445CB0(&v36);
            v36 = v42;
            *&v37 = v43;
            v23 = sub_1AF478AC0(&v36);
            v24.i64[0] = __PAIR64__(v22, v21);
            v24.i32[2] = v23;
            vfx_sampler3d_make(v19 + v11, v9, a2, a3 & 1, &v36, v24);
            v34 = v37;
            v35 = v36;
            v32 = v39;
            v33 = v38;
            v30 = v41;
            v31 = v40;
            result = sub_1AF478A6C(a1);
            v18 = v30;
            v13 = v31;
            v17 = v32;
            v16 = v33;
            v15 = v34;
            v14 = v35;
            goto LABEL_38;
          }

          swift_unknownObjectRelease_n();
          goto LABEL_35;
      }
    }

    goto LABEL_39;
  }

  if (v8 <= 0x50u)
  {
    if (v8 == 71)
    {
      v9 = 7;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v8 == 80)
    {
      v9 = 8;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_39;
  }

  if (v8 == 81)
  {
    v9 = 9;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v8 != 115)
  {
    if (v8 == 125)
    {
      v9 = 3;
      v10 = *a1;
      if (!*a1)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_39:
    v25 = v8;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v36 = 0xD00000000000001ALL;
    *(&v36 + 1) = 0x80000001AFF29870;
    v26 = sub_1AF4720E8(v25);
    MEMORY[0x1B2718AE0](v26);

    v27 = v36;
    v28 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v29 = v28;
      swift_once();
      v28 = v29;
    }

    *&v36 = 0;
    sub_1AF0D4F18(v28, &v36, v27, *(&v27 + 1));
    sub_1AF478A6C(a1);

    goto LABEL_36;
  }

  v9 = 2;
  v10 = *a1;
  if (*a1)
  {
    goto LABEL_33;
  }

LABEL_35:
  result = sub_1AF478A6C(a1);
LABEL_36:
  v13 = xmmword_1AFE21110;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
LABEL_38:
  *a4 = v14;
  a4[1] = v15;
  a4[2] = v16;
  a4[3] = v17;
  a4[4] = v13;
  a4[5] = v18;
  return result;
}

uint64_t sub_1AF478E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 28);
  v11 = 32;
  if (a5 < 32)
  {
    v11 = a5;
  }

  if (v11 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a2 + 16);
  v14 = 1.0;
  if (v13)
  {
    v14 = *(a2 + 4 * v13 + 28);
  }

  v27[1] = v27;
  *&v35[28] = (v12 - 1) / v14;
  v36 = 1065353216;
  LODWORD(v15) = MEMORY[0x1EEE9AC00](a1, a2).n128_u32[0];
  v17 = *(a2 + 16);
  if (v17)
  {
    v15 = *(a2 + 4 * v17 + 28);
  }

  v18 = 0;
  v19 = v15 / v16;
  do
  {
    *(v27 + 4 * v18 - ((4 * v12 + 15) & 0xFFFFFFFFFFFFFFF0)) = sub_1AFBFCB44(a1, a2, a3, a4, v19 * v18).u32[0];
    ++v18;
  }

  while (v12 != v18);
  memcpy(&v28 + 4, v27 - ((4 * v12 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v12);

  LODWORD(v28) = DWORD1(v28);
  v21 = &v28 + v12;
  v22 = *v21;
  v21[1] = *v21;
  v21[2] = v22;
  v23 = *v35;
  *(a6 + 96) = v34;
  *(a6 + 112) = v23;
  *(a6 + 128) = *&v35[16];
  *(a6 + 144) = v36;
  v24 = v31;
  *(a6 + 32) = v30;
  *(a6 + 48) = v24;
  v25 = v33;
  *(a6 + 64) = v32;
  *(a6 + 80) = v25;
  v26 = v29;
  *a6 = v28;
  *(a6 + 16) = v26;
  return result;
}

uint64_t sub_1AF479070()
{
  v1 = *(v0 + 16);

  v1(v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF4790FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF47918C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t sub_1AF4793B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1AF4794F0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1AF47973C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1AF479974(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1AF479768(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF479914();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

void sub_1AF479810()
{
  if (!qword_1ED726A78)
  {
    sub_1AF47986C();
    v0 = sub_1AFDFE818();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726A78);
    }
  }
}

unint64_t sub_1AF47986C()
{
  result = qword_1ED72B298;
  if (!qword_1ED72B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72B298);
  }

  return result;
}

unint64_t sub_1AF4798C0()
{
  result = qword_1ED7240C0;
  if (!qword_1ED7240C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7240C0);
  }

  return result;
}

unint64_t sub_1AF479914()
{
  result = qword_1EB6396B0;
  if (!qword_1EB6396B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6396B0);
  }

  return result;
}

uint64_t sub_1AF479974(void *a1)
{
  sub_1AF479810();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF694FF8(2000, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(&v16, *(&v17 + 1));
      sub_1AF4798C0();
      sub_1AFDFEE88();
      v12 = v15;
      v13 = v14;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v16);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF47986C();
    sub_1AFDFF3B8();
    if (!v1)
    {
      sub_1AF4798C0();
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v12 = v17;
      v13 = v16;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF479C10(void *a1, double a2, __n128 a3)
{
  v12 = a3;
  sub_1AF47B65C(0, &qword_1EB6396E0, sub_1AF47B15C, &type metadata for RotateAction.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF47B15C();
  sub_1AFDFF3F8();
  v13.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v3)
  {
    v13 = v12;
    v14 = 1;
    sub_1AF47B65C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF47B0E0(&qword_1ED72F758);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF479E20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1936291937;
  }

  else
  {
    v3 = 0x656C676E61;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1936291937;
  }

  else
  {
    v5 = 0x656C676E61;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF479EBC()
{
  if (*v0)
  {
    return 1936291937;
  }

  else
  {
    return 0x656C676E61;
  }
}

uint64_t sub_1AF479EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C676E61 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AF479FC4(uint64_t a1)
{
  v2 = sub_1AF47B15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF47A000(uint64_t a1)
{
  v2 = sub_1AF47B15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF47A03C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF47AB74(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 16) = v5;
  }
}

double sub_1AF47A08C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1078530010;
  result = 0.0078125;
  *(a1 + 16) = xmmword_1AFE20160;
  return result;
}

uint64_t sub_1AF47A0A8(void *a1, double a2, double a3, double a4, __n128 a5)
{
  v14 = a5;
  sub_1AF47B65C(0, &qword_1EB6396C8, sub_1AF47B08C, &type metadata for SineMoveAction.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF47B08C();
  sub_1AFDFF3F8();
  v15.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v5)
  {
    v15.n128_u8[0] = 1;
    sub_1AFDFE8E8();
    v15.n128_u8[0] = 2;
    sub_1AFDFE8E8();
    v15 = v14;
    v16 = 3;
    sub_1AF47B65C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF47B0E0(&qword_1ED72F758);
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF47A318()
{
  v1 = 0x647574696C706D61;
  v2 = 0x6968536573616870;
  if (*v0 != 2)
  {
    v2 = 0x61746C6564;
  }

  if (*v0)
  {
    v1 = 0x636E657571657266;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF47A398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF47AA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF47A3C0(uint64_t a1)
{
  v2 = sub_1AF47B08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF47A3FC(uint64_t a1)
{
  v2 = sub_1AF47B08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF47A438(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF47ADD0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
  }
}

uint64_t sub_1AF47A46C(void *a1, double a2, double a3, double a4)
{
  LODWORD(a2) = v4->n128_u32[0];
  LODWORD(a3) = v4->n128_u32[1];
  LODWORD(a4) = v4->n128_u32[2];
  return sub_1AF47A0A8(a1, a2, a3, a4, v4[1]);
}

double sub_1AF47A490@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2S, #1.0 }

  *a1 = _D0;
  *(a1 + 8) = 0;
  *&result = 1065353216;
  *(a1 + 16) = xmmword_1AFE20150;
  return result;
}

uint64_t sub_1AF47A4AC(void *a1)
{
  sub_1AF47B65C(0, &qword_1EB639728, sub_1AF47B608, &type metadata for SineYAction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF47B608();
  sub_1AFDFF3F8();
  v13 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v12 = 1;
    sub_1AFDFE8E8();
    v11 = 2;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF47A668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x636E657571657266;
  v4 = 0xE900000000000079;
  if (v2 == 1)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v3 = 0x6968536573616870;
    v5 = 0xEA00000000007466;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x647574696C706D61;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  v8 = 0x636E657571657266;
  if (*a2 != 1)
  {
    v8 = 0x6968536573616870;
    v4 = 0xEA00000000007466;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647574696C706D61;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF47A770()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 0x6968536573616870;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647574696C706D61;
  }
}

uint64_t sub_1AF47A7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF47A8D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF47A7FC(uint64_t a1)
{
  v2 = sub_1AF47B608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF47A838(uint64_t a1)
{
  v2 = sub_1AF47B608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF47A874(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF47B3F0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
  }
}

double sub_1AF47A8C4@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2S, #1.0 }

  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1AF47A8D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647574696C706D61 && a2 == 0xE900000000000065;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6968536573616870 && a2 == 0xEA00000000007466)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF47AA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647574696C706D61 && a2 == 0xE900000000000065;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6968536573616870 && a2 == 0xEA00000000007466 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

float sub_1AF47AB74(void *a1)
{
  sub_1AF47B65C(0, &qword_1EB6396D0, sub_1AF47B15C, &type metadata for RotateAction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF47B15C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    LOBYTE(v14) = 0;
    sub_1AFDFE738();
    v2 = v10;
    sub_1AF47B65C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v13 = 1;
    sub_1AF47B0E0(&qword_1ED72F748);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

float sub_1AF47ADD0(void *a1)
{
  sub_1AF47B65C(0, &qword_1EB6396B8, sub_1AF47B08C, &type metadata for SineMoveAction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF47B08C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    LOBYTE(v14) = 0;
    sub_1AFDFE738();
    v2 = v10;
    LOBYTE(v14) = 1;
    sub_1AFDFE738();
    LOBYTE(v14) = 2;
    sub_1AFDFE738();
    sub_1AF47B65C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v13 = 3;
    sub_1AF47B0E0(&qword_1ED72F748);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF47B08C()
{
  result = qword_1EB6396C0;
  if (!qword_1EB6396C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6396C0);
  }

  return result;
}

uint64_t sub_1AF47B0E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF47B65C(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF47B15C()
{
  result = qword_1EB6396D8;
  if (!qword_1EB6396D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6396D8);
  }

  return result;
}

unint64_t sub_1AF47B1E4()
{
  result = qword_1EB6396E8;
  if (!qword_1EB6396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6396E8);
  }

  return result;
}

unint64_t sub_1AF47B23C()
{
  result = qword_1EB6396F0;
  if (!qword_1EB6396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6396F0);
  }

  return result;
}

unint64_t sub_1AF47B294()
{
  result = qword_1EB6396F8;
  if (!qword_1EB6396F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6396F8);
  }

  return result;
}

unint64_t sub_1AF47B2EC()
{
  result = qword_1EB639700;
  if (!qword_1EB639700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639700);
  }

  return result;
}

unint64_t sub_1AF47B344()
{
  result = qword_1EB639708;
  if (!qword_1EB639708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639708);
  }

  return result;
}

unint64_t sub_1AF47B39C()
{
  result = qword_1EB639710;
  if (!qword_1EB639710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639710);
  }

  return result;
}

float sub_1AF47B3F0(void *a1)
{
  sub_1AF47B65C(0, &qword_1EB639718, sub_1AF47B608, &type metadata for SineYAction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF47B608();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12[15] = 0;
    sub_1AFDFE738();
    v2 = v10;
    v12[14] = 1;
    sub_1AFDFE738();
    v12[13] = 2;
    sub_1AFDFE738();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF47B608()
{
  result = qword_1EB639720;
  if (!qword_1EB639720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639720);
  }

  return result;
}

void sub_1AF47B65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF47B6D8()
{
  result = qword_1EB639730;
  if (!qword_1EB639730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639730);
  }

  return result;
}

unint64_t sub_1AF47B730()
{
  result = qword_1EB639738;
  if (!qword_1EB639738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639738);
  }

  return result;
}

unint64_t sub_1AF47B788()
{
  result = qword_1EB639740;
  if (!qword_1EB639740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639740);
  }

  return result;
}

uint64_t sub_1AF47B7F4(uint64_t a1)
{
  v2 = sub_1AF47BAF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF47B830(uint64_t a1)
{
  v2 = sub_1AF47BAF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF47B8AC(uint64_t a1)
{
  v2 = sub_1AF47BBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF47B8E8(uint64_t a1)
{
  v2 = sub_1AF47BBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF47B964(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AF47BB48(0, a4, a5);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

double sub_1AF47BA8C()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for Anchored;
  *(v0 + 40) = &off_1F2510BE0;
  return result;
}

unint64_t sub_1AF47BAF4()
{
  result = qword_1EB639750;
  if (!qword_1EB639750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639750);
  }

  return result;
}

void sub_1AF47BB48(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AFDFE9A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF47BBA8()
{
  result = qword_1EB639760;
  if (!qword_1EB639760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639760);
  }

  return result;
}

void sub_1AF47BBFC()
{
  if (!qword_1ED72F7D0)
  {
    sub_1AF47BC54();
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F7D0);
    }
  }
}

unint64_t sub_1AF47BC54()
{
  result = qword_1ED72FFE0;
  if (!qword_1ED72FFE0)
  {
    sub_1AF47BC9C();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ED72FFE0);
  }

  return result;
}

unint64_t sub_1AF47BC9C()
{
  result = qword_1ED72FFF0;
  if (!qword_1ED72FFF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED72FFF0);
  }

  return result;
}

unint64_t sub_1AF47BD24()
{
  result = qword_1EB639768;
  if (!qword_1EB639768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639768);
  }

  return result;
}

unint64_t sub_1AF47BD7C()
{
  result = qword_1EB639770;
  if (!qword_1EB639770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639770);
  }

  return result;
}

unint64_t sub_1AF47BDD4()
{
  result = qword_1EB639778;
  if (!qword_1EB639778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639778);
  }

  return result;
}

unint64_t sub_1AF47BE2C()
{
  result = qword_1EB639780;
  if (!qword_1EB639780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639780);
  }

  return result;
}

uint64_t sub_1AF47BEA0()
{
}

uint64_t sub_1AF47BF34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v8;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t sub_1AF47C05C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

__n128 sub_1AF47C1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1AF47C230(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t sub_1AF47C338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AF47C380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for AnimationTimeSource(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationTimeSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationTimeSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF47C4D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF47F294(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_1AF47C5C0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1AF47C698(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = BYTE4(a3);
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  if (v4 > 3u)
  {
    if (v4 > 5u)
    {
      if (v4 == 6)
      {
        sub_1AF448018(v6, v7);
        sub_1AFDFEC28();
        if (!v3)
        {
          sub_1AF448018(v6, v7);
          sub_1AFDFEC18();
          sub_1AF448018(v6, v7);
          sub_1AFDFEC18();
          sub_1AF448018(v6, v7);
          sub_1AFDFEC48();
        }
      }

      else
      {
        sub_1AF448018(v6, v7);
        sub_1AFDFEC28();
      }

      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    }

    goto LABEL_14;
  }

  if (v4 > 1u)
  {
    if (v4 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (!v4)
  {
LABEL_14:
    sub_1AF448018(v6, v7);
    sub_1AFDFEC28();
    if (!v3)
    {
      goto LABEL_15;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
  }

  sub_1AF448018(v6, v7);
  sub_1AFDFEC28();
  if (!v3)
  {
    sub_1AF448018(v6, v7);
    sub_1AFDFEC48();
LABEL_15:
    sub_1AF448018(v6, v7);
    sub_1AFDFEC18();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
}

unint64_t sub_1AF47CB3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF47F2A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 12) = BYTE4(v5);
  }

  return result;
}

uint64_t sub_1AF47CBD4(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      result = 0x6465657073;
      break;
    case 2:
      v3 = 0x546E69676562;
      goto LABEL_8;
    case 3:
      result = 0x7366664F656D6974;
      break;
    case 4:
      result = 0x6F43746165706572;
      break;
    case 5:
      result = 0x657665726F747561;
      break;
    case 6:
      result = 0x77726F466C6C6966;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7546676E69736165;
      break;
    case 9:
      result = 0x746E65726170;
      break;
    case 10:
      result = 0x69546C61626F6C67;
      break;
    case 11:
      v3 = 0x546C61636F6CLL;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
      break;
    case 12:
      result = 0x657669746361;
      break;
    case 13:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF47CD78(void *a1)
{
  v3 = v1;
  sub_1AF47FF08(0, &qword_1EB6397A8, sub_1AF47FDB8, &type metadata for AnimationTimeSource.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF47FDB8();
  sub_1AFDFF3F8();
  LOBYTE(v12[0]) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v12[0]) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v12[0]) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v12[0]) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v12[0]) = 5;
    sub_1AFDFE8C8();
    LOBYTE(v12[0]) = *(v3 + 21);
    v13 = 6;
    sub_1AF47FF70();
    sub_1AFDFE918();
    LOBYTE(v12[0]) = *(v3 + 22);
    v13 = 7;
    sub_1AFDFE918();
    v12[0] = *(v3 + 24);
    *(v12 + 5) = *(v3 + 29);
    v13 = 8;
    sub_1AF47FFC4();
    sub_1AFDFE918();
    v12[0] = *(v3 + 40);
    v13 = 9;
    sub_1AF480018();
    sub_1AFDFE918();
    LOBYTE(v12[0]) = 10;
    sub_1AFDFE8E8();
    LOBYTE(v12[0]) = 11;
    sub_1AFDFE8E8();
    LOBYTE(v12[0]) = 12;
    sub_1AFDFE8C8();
    LOBYTE(v12[0]) = 13;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF47D12C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF47CBD4(*a1);
  v5 = v4;
  if (v3 == sub_1AF47CBD4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF47D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF47EE0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF47D1F0(uint64_t a1)
{
  v2 = sub_1AF47FDB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF47D22C(uint64_t a1)
{
  v2 = sub_1AF47FDB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF47D268@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF47F8E8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = *v7;
    result = *&v7[10];
    *(a2 + 42) = *&v7[10];
  }

  return result;
}

double sub_1AF47D2D0@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2S, #1.0 }

  *a1 = _D0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 15) = 0;
  *(a1 + 36) = 7;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 40) = 0xFFFFFFFFLL;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_1AF47D308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BasicAnimation();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(*(a1 - 8) + 56);
  v7(a2 + *(v4 + 40), 1, 1, a1);
  v5 = a2 + *(v4 + 44);

  return (v7)(v5, 1, 1, a1);
}

uint64_t sub_1AF47D3CC(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  if (v3)
  {
    v5 = *v2;
    ObjectType = swift_getObjectType();

    sub_1AF62BFF0(v5, 0, ObjectType, a2);

    *v2 = v5;
    v2[1] = v3;
  }

  return result;
}

double sub_1AF47D458@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  v6();
  v7 = type metadata accessor for BasicAnimationRuntime();
  (v6)(a1, a2);
  v8 = (a3 + *(v7 + 40));
  *v8 = 0;
  v8[1] = 0;
  *&result = 0xFFFFFFFFLL;
  *(a3 + *(v7 + 44)) = 0xFFFFFFFFLL;
  return result;
}

void sub_1AF47D4F8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F24F3B20;
  *(a1 + 32) = &unk_1F24F3B48;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = &unk_1F24F3B70;
  *(a1 + 64) = &unk_1F24F3B98;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = &unk_1F24F3BC0;
  *(a1 + 96) = &unk_1F24F3BE8;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = &unk_1F24F3C10;
  *(a1 + 128) = &unk_1F24F3C38;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
}

uint64_t sub_1AF47D578()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF47D5C8(unsigned __int8 a1)
{
  v1 = 0x746567726174;
  v2 = 0x656E696C656D6974;
  v3 = 0x656E696C656D6974;
  if (a1 != 4)
  {
    v3 = 0x6C6F707265746E69;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656E696C656D6974;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF47D698()
{
  swift_getWitnessTable();

  return sub_1AF609060();
}

uint64_t sub_1AF47D704(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1AF47D770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF47D7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF47D850@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF47D578();
  *a1 = result;
  return result;
}

uint64_t sub_1AF47D888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF47D5C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF47D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF47D5C4(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1AF47D8F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF47F28C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF47D920(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AF47D974(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AF47D9C8(void *a1, uint64_t a2)
{
  v4 = v2;
  v13 = *(a2 + 16);
  type metadata accessor for KeyframeAnimation.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1AFDFE9A8();
  v14 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3F8();
  v10 = *(v4 + 8);
  if (v10)
  {
    v11 = HIDWORD(*v4);
    LODWORD(v15[0]) = *v4;
    DWORD1(v15[0]) = v11;
    *(&v15[0] + 1) = v10;
    v16 = 0;
    sub_1AF47F894();

    sub_1AFDFE918();
    if (v3)
    {
      (*(v14 + 8))(v9, v6);
    }
  }

  LOBYTE(v15[0]) = *(v4 + 16);
  v16 = 5;
  sub_1AF47F7EC();
  sub_1AFDFE918();
  if (!v3)
  {
    v15[0] = *(v4 + 24);
    *(v15 + 9) = *(v4 + 33);
    v16 = 1;
    sub_1AF47F840();
    sub_1AFDFE918();
    sub_1AF47FF08(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      v15[0] = *(v4 + 56);
      *(v15 + 9) = *(v4 + 65);
      v16 = 2;
      sub_1AFDFE918();
    }

    sub_1AF47FF08(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    if (swift_dynamicCastMetatype())
    {
      v15[0] = *(v4 + 56);
      *(v15 + 9) = *(v4 + 65);
      v16 = 2;
      sub_1AFDFE918();
      v15[0] = *(v4 + 88);
      *(v15 + 9) = *(v4 + 97);
      v16 = 3;
      sub_1AFDFE918();
    }

    sub_1AF47FF08(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    if (swift_dynamicCastMetatype())
    {
      v15[0] = *(v4 + 56);
      *(v15 + 9) = *(v4 + 65);
      v16 = 2;
      sub_1AFDFE918();
      v15[0] = *(v4 + 88);
      *(v15 + 9) = *(v4 + 97);
      v16 = 3;
      sub_1AFDFE918();
      v15[0] = *(v4 + 120);
      *(v15 + 9) = *(v4 + 129);
      v16 = 4;
      sub_1AFDFE918();
    }
  }

  return (*(v14 + 8))(v9, v6);
}

double sub_1AF47DEB8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v76 = a2;
  v77 = a3;
  type metadata accessor for KeyframeAnimation.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1AFDFE818();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v58 - v8;
  v10 = a1[3];
  v75 = a1;
  sub_1AF441150(a1, v10);
  v11 = v117;
  sub_1AFDFF3B8();
  if (v11)
  {
    v117 = v11;
    v78 = 0;
    v79 = 0;
    v14 = 0;
    v15 = &unk_1F24FE120;
    v16 = &unk_1F24FE148;
    v17 = &unk_1F24FE170;
    v18 = &unk_1F24FE198;
    v74 = &unk_1F24FE1C0;
    LODWORD(v73) = 1;
    LOBYTE(v19) = 1;
    v20 = 1;
    v21 = &unk_1F24FE1E8;
LABEL_4:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
    v93 = 0;
    *&v94 = 0;
    BYTE8(v94) = 0;
    *(&v94 + 9) = v116[0];
    HIDWORD(v94) = *(v116 + 3);
    v95 = v15;
    v96 = v16;
    v97 = v14;
    v98 = v20;
    *v99 = *v115;
    *&v99[3] = *&v115[3];
    v100 = v17;
    v101 = v18;
    v102 = v79;
    v103 = v19;
    *v104 = *v114;
    *&v104[3] = *&v114[3];
    v105 = v74;
    v106 = v21;
    v107 = v78;
    v108 = v73;
    *v109 = *v113;
    *&v109[3] = *&v113[3];
    v110 = &unk_1F24FE210;
    *&v111 = &unk_1F24FE238;
    *(&v111 + 1) = 0;
    v112 = 1;
    v22 = type metadata accessor for KeyframeAnimation();
    (*(*(v22 - 8) + 8))(&v93, v22);
    return result;
  }

  v72 = v6;
  LOBYTE(v80) = 1;
  v12 = sub_1AF47F6F0();
  sub_1AFDFE768();
  v13 = v5;
  v117 = 0;
  v70 = v94;
  v71 = v93;
  v66 = *(&v94 + 1);
  v67 = v12;
  v24 = v95;
  v93 = sub_1AFDFE7F8();
  LOBYTE(v80) = 2;
  v25 = sub_1AFDFD538();
  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  *(&v68 + 1) = WitnessTable;
  v69 = v25;
  *&v68 = v27;
  v28 = sub_1AFDFD288();

  v65 = v24;
  if (v28)
  {
    LOBYTE(v80) = 2;
    v29 = v117;
    sub_1AFDFE768();
    v117 = v29;
    if (v29)
    {
      (*(v72 + 8))(v9, v13);
      v78 = 0;
      v79 = 0;
      v17 = &unk_1F24FE170;
      v18 = &unk_1F24FE198;
      v74 = &unk_1F24FE1C0;
      LODWORD(v73) = 1;
      LOBYTE(v19) = 1;
      v21 = &unk_1F24FE1E8;
      v14 = v66;
      v16 = v70;
      v15 = v71;
LABEL_13:
      v20 = v65;
      goto LABEL_4;
    }

    v30 = v13;
    v31 = v93;
    v79 = *(&v94 + 1);
    v18 = v94;
    v19 = v95;
  }

  else
  {
    v30 = v13;
    v79 = 0;
    v31 = &unk_1F24FE170;
    v19 = 1;
    v18 = &unk_1F24FE198;
  }

  v93 = sub_1AFDFE7F8();
  LOBYTE(v80) = 3;
  v32 = sub_1AFDFD288();

  v64 = v31;
  if (v32)
  {
    LOBYTE(v80) = 3;
    v33 = v117;
    sub_1AFDFE768();
    v117 = v33;
    if (v33)
    {
      (*(v72 + 8))(v9, v30);
      v78 = 0;
      v74 = &unk_1F24FE1C0;
      LODWORD(v73) = 1;
      v21 = &unk_1F24FE1E8;
      v14 = v66;
      v16 = v70;
      v15 = v71;
      v17 = v64;
      goto LABEL_13;
    }

    v74 = v93;
    v78 = *(&v94 + 1);
    v63 = v94;
    v34 = v95;
  }

  else
  {
    v78 = 0;
    v74 = &unk_1F24FE1C0;
    v34 = 1;
    v63 = &unk_1F24FE1E8;
  }

  v35 = v30;
  v36 = v9;
  v93 = sub_1AFDFE7F8();
  LOBYTE(v80) = 4;
  v37 = sub_1AFDFD288();

  v62 = v18;
  if (v37)
  {
    LOBYTE(v80) = 4;
    v38 = v117;
    sub_1AFDFE768();
    v117 = v38;
    if (v38)
    {
      (*(v72 + 8))(v9, v35);
      v14 = v66;
      v16 = v70;
      v15 = v71;
      v21 = v63;
      v17 = v64;
      LODWORD(v73) = v34;
      v20 = v65;
      goto LABEL_4;
    }

    v39 = v35;
    v68 = v94;
    v69 = v93;
    LODWORD(v67) = v95;
  }

  else
  {
    v39 = v35;
    *(&v68 + 1) = 0;
    v69 = &unk_1F24FE210;
    LODWORD(v67) = 1;
    *&v68 = &unk_1F24FE238;
  }

  LOBYTE(v80) = 5;
  sub_1AF47F744();
  v40 = v117;
  sub_1AFDFE6E8();
  v41 = v72;
  if (v40)
  {

    v61 = 0;
  }

  else
  {
    v42 = v93;
    if (v93 == 3)
    {
      v42 = 0;
    }

    v61 = v42;
  }

  v60 = v19;
  v90 = 0;
  sub_1AF47F798();
  sub_1AFDFE768();
  v43 = v34;
  v117 = 0;
  v44 = v62;
  v45 = v65;
  v47 = v91;
  v46 = v92;
  v58 = v91;
  (*(v41 + 8))(v36, v39);
  *&v80 = v47;
  *(&v80 + 1) = v46;
  v59 = v46;
  LOBYTE(v81) = v61;
  *(&v81 + 1) = v116[0];
  DWORD1(v81) = *(v116 + 3);
  *(&v81 + 1) = v71;
  *&v82 = v70;
  v48 = v66;
  *(&v82 + 1) = v66;
  LOBYTE(v83) = v45;
  *(&v83 + 1) = *v115;
  DWORD1(v83) = *&v115[3];
  *(&v83 + 1) = v64;
  *&v84 = v44;
  *(&v84 + 1) = v79;
  v49 = v60;
  LOBYTE(v85) = v60;
  *(&v85 + 1) = *v114;
  DWORD1(v85) = *&v114[3];
  v50 = v74;
  *(&v85 + 1) = v74;
  *&v86 = v63;
  *(&v86 + 1) = v78;
  LOBYTE(v87) = v43;
  *(&v87 + 1) = *v113;
  DWORD1(v87) = *&v113[3];
  *(&v87 + 1) = v69;
  v88 = v68;
  v89 = v67;
  v51 = type metadata accessor for KeyframeAnimation();
  v52 = *(v51 - 8);
  (*(v52 + 16))(&v93, &v80, v51);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
  v93 = v58;
  *&v94 = v59;
  BYTE8(v94) = v61;
  *(&v94 + 9) = v116[0];
  HIDWORD(v94) = *(v116 + 3);
  v95 = v71;
  v96 = v70;
  v97 = v48;
  v98 = v45;
  *v99 = *v115;
  *&v99[3] = *&v115[3];
  v100 = v64;
  v101 = v62;
  v102 = v79;
  v103 = v49;
  *v104 = *v114;
  *&v104[3] = *&v114[3];
  v105 = v50;
  v106 = v63;
  v107 = v78;
  v108 = v43;
  *v109 = *v113;
  *&v109[3] = *&v113[3];
  v110 = v69;
  v111 = v68;
  v112 = v67;
  (*(v52 + 8))(&v93, v51);
  v53 = v87;
  v54 = v73;
  *(v73 + 96) = v86;
  *(v54 + 112) = v53;
  *(v54 + 128) = v88;
  *(v54 + 144) = v89;
  v55 = v83;
  *(v54 + 32) = v82;
  *(v54 + 48) = v55;
  v56 = v85;
  *(v54 + 64) = v84;
  *(v54 + 80) = v56;
  result = *&v80;
  v57 = v81;
  *v54 = v80;
  *(v54 + 16) = v57;
  return result;
}

double sub_1AF47E814@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF47DEB8(a1, *(a2 + 16), *(a2 + 24), v10);
  if (!v3)
  {
    v6 = v10[7];
    *(a3 + 96) = v10[6];
    *(a3 + 112) = v6;
    *(a3 + 128) = v10[8];
    *(a3 + 144) = v11;
    v7 = v10[3];
    *(a3 + 32) = v10[2];
    *(a3 + 48) = v7;
    v8 = v10[5];
    *(a3 + 64) = v10[4];
    *(a3 + 80) = v8;
    result = *v10;
    v9 = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = v9;
  }

  return result;
}

double sub_1AF47E8A8@<D0>(uint64_t a1@<X8>)
{
  sub_1AF47D4F8(v7);
  v2 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v8;
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

double sub_1AF47E948@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for KeyframeAnimationRuntime();
  *a3 = 0;
  a3[1] = 0;
  (*(a2 + 32))(a1, a2);
  v7 = (a3 + *(v6 + 44));
  *v7 = 0;
  v7[1] = 0;
  *&result = 0xFFFFFFFFLL;
  *(a3 + *(v6 + 48)) = 0xFFFFFFFFLL;
  return result;
}

double sub_1AF47E9D8(float32x4_t a1)
{
  _Q3 = a1;
  v2 = vmulq_f32(a1, a1);
  v3 = vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL)));
  if (v3 == 0.0)
  {
    return 0.0;
  }

  _S8 = _Q3.f32[1];
  v6 = _Q3.f32[2];
  __asm { FMLA            S2, S8, V3.S[3] }

  v12 = _S2 / v3;
  v13 = (_S2 / v3);
  if (v13 <= 0.4999)
  {
    if (v13 >= -0.4999)
    {
      v18 = *&v2.i32[1];
      v19 = v2.i64[1];
      v20 = _Q3.f32[3];
      v21 = _Q3.f32[0];
      v22 = *v2.i32;
      v24 = atan2f(((_Q3.f32[0] * _Q3.f32[3]) + (_Q3.f32[1] * _Q3.f32[2])) + ((_Q3.f32[0] * _Q3.f32[3]) + (_Q3.f32[1] * _Q3.f32[2])), *&v2.i32[3] + (*&v2.i32[2] + (-*v2.i32 - *&v2.i32[1])));
      v23 = asinf(v12 + v12);
      atan2f(((v6 * v20) + (v21 * _S8)) + ((v6 * v20) + (v21 * _S8)), *(&v19 + 1) + ((v22 - v18) - *&v19));
      return COERCE_DOUBLE(__PAIR64__(LODWORD(v23), LODWORD(v24)));
    }

    v17 = atan2f(_Q3.f32[0], _Q3.f32[3]);
    *&v15 = v17 + v17;
    v16 = -1077342245;
  }

  else
  {
    v14 = atan2f(_Q3.f32[0], _Q3.f32[3]);
    *&v15 = v14 + v14;
    v16 = 1070141403;
  }

  HIDWORD(v15) = v16;
  return v15;
}

BOOL sub_1AF47EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a2) <= 3u)
  {
    if (BYTE4(a2) <= 1u)
    {
      if (!BYTE4(a2))
      {
        if (!BYTE4(a4))
        {
          return *&a1 == *&a3;
        }

        return 0;
      }

      if (BYTE4(a4) == 1)
      {
        return a1 == a3 && *(&a1 + 1) == *(&a3 + 1);
      }

      return 0;
    }

    if (BYTE4(a2) == 2)
    {
      if (BYTE4(a4) == 2)
      {
        return a1 == a3 && *(&a1 + 1) == *(&a3 + 1);
      }

      return 0;
    }

    if (BYTE4(a4) != 3)
    {
      return 0;
    }

    return *&a1 == *&a3;
  }

  if (BYTE4(a2) <= 5u)
  {
    if (BYTE4(a2) == 4)
    {
      if (BYTE4(a4) != 4)
      {
        return 0;
      }
    }

    else if (BYTE4(a4) != 5)
    {
      return 0;
    }

    return *&a1 == *&a3;
  }

  if (BYTE4(a2) == 6)
  {
    if (BYTE4(a4) != 6)
    {
      return 0;
    }

    v5 = *(&a1 + 1) == *(&a3 + 1) && *&a1 == *&a3;
    return v5 && a2 == a4;
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (BYTE4(a4) != 7 || a3 != 1 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (BYTE4(a4) != 7 || a3 != 2 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (BYTE4(a4) != 7 || a3 != 3 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (BYTE4(a4) != 7 || a3 != 4 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (BYTE4(a4) != 7 || a3 != 5 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (BYTE4(a4) != 7 || a3 != 6 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (BYTE4(a4) != 7 || a3 != 7 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (BYTE4(a4) != 7 || a3 != 8 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (BYTE4(a4) != 7 || a3 != 9 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if (BYTE4(a4) != 7 || a3 != 10 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if (BYTE4(a4) != 7 || a3 != 11 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if (BYTE4(a4) != 7 || a3 != 12 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if (BYTE4(a4) != 7 || a3 != 13 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if (BYTE4(a4) != 7 || a3 != 14 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if (BYTE4(a4) != 7 || a3 != 15 || a4)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (BYTE4(a4) != 7 || a3 || a4)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  return result;
}

uint64_t sub_1AF47EE0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69546E69676562 && a2 == 0xE900000000000065 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7366664F656D6974 && a2 == 0xEA00000000007465 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F43746165706572 && a2 == 0xEB00000000746E75 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657665726F747561 && a2 == 0xEC00000073657372 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x77726F466C6C6966 && a2 == 0xEF65646F4D647261 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF298E0 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7546676E69736165 && a2 == 0xEE006E6F6974636ELL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69546C61626F6C67 && a2 == 0xEA0000000000656DLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D69546C61636F6CLL && a2 == 0xE900000000000065 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 13;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_1AF47F294(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1AF47F2A4(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
LABEL_3:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    sub_1AF448018(v13, v14);
    v4 = sub_1AFDFEAB8();
    v3 = v4;
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        break;
      case 16:
      case 19:
      case 20:
      case 21:
        sub_1AF448018(v13, v14);
        sub_1AFDFEAA8();
        v3 = v12;
        break;
      case 17:
      case 18:
        sub_1AF448018(v13, v14);
        v6 = sub_1AFDFEAE8();
        sub_1AF448018(v13, v14);
        sub_1AFDFEAA8();
        v3 = v6 | (v7 << 32);
        break;
      case 22:
        sub_1AF448018(v13, v14);
        sub_1AFDFEAA8();
        v9 = v8;
        sub_1AF448018(v13, v14);
        sub_1AFDFEAA8();
        v11 = v10;
        sub_1AF448018(v13, v14);
        sub_1AFDFEAE8();
        v3 = v9 | (v11 << 32);
        break;
      default:
        sub_1AFDFE2C8();
        swift_allocError();
        sub_1AFDFE288();
        swift_willThrow();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
        goto LABEL_3;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

unint64_t sub_1AF47F684()
{
  result = qword_1EB6333B0;
  if (!qword_1EB6333B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6333B0);
  }

  return result;
}

unint64_t sub_1AF47F6F0()
{
  result = qword_1EB633740;
  if (!qword_1EB633740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633740);
  }

  return result;
}

unint64_t sub_1AF47F744()
{
  result = qword_1EB633828;
  if (!qword_1EB633828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633828);
  }

  return result;
}

unint64_t sub_1AF47F798()
{
  result = qword_1ED7224F0;
  if (!qword_1ED7224F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7224F0);
  }

  return result;
}

unint64_t sub_1AF47F7EC()
{
  result = qword_1EB639798;
  if (!qword_1EB639798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639798);
  }

  return result;
}

unint64_t sub_1AF47F840()
{
  result = qword_1EB6397A0;
  if (!qword_1EB6397A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6397A0);
  }

  return result;
}

unint64_t sub_1AF47F894()
{
  result = qword_1EB633DE0;
  if (!qword_1EB633DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633DE0);
  }

  return result;
}

uint64_t sub_1AF47F8E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF47FF08(0, &qword_1EB633110, sub_1AF47FDB8, &type metadata for AnimationTimeSource.CodingKeys, MEMORY[0x1E69E6F48]);
  v38 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF47FDB8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  LOBYTE(v39) = 0;
  sub_1AFDFE738();
  v12 = v11;
  LOBYTE(v39) = 1;
  sub_1AFDFE738();
  v14 = v13;
  LOBYTE(v39) = 2;
  sub_1AFDFE738();
  v16 = v15;
  LOBYTE(v39) = 3;
  sub_1AFDFE738();
  v18 = v17;
  LOBYTE(v39) = 4;
  sub_1AFDFE738();
  v20 = v19;
  LOBYTE(v39) = 5;
  v42 = sub_1AFDFE718();
  v43 = 6;
  sub_1AF47FE0C();
  sub_1AFDFE768();
  v21 = v39;
  v43 = 7;
  sub_1AFDFE768();
  v22 = v39;
  v43 = 8;
  sub_1AF47FE60();
  sub_1AFDFE768();
  v37 = v39;
  v35 = v41;
  v36 = v40;
  v43 = 9;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v23 = v39;
  LOBYTE(v39) = 10;
  sub_1AFDFE738();
  v25 = v24;
  LOBYTE(v39) = 11;
  sub_1AFDFE738();
  v27 = v26;
  LOBYTE(v39) = 12;
  v28 = sub_1AFDFE718();
  LOBYTE(v39) = 13;
  v29 = sub_1AFDFE718();
  v30 = (v10 + 8);
  v31 = v29;
  LOBYTE(v10) = v42 & 1;
  (*v30)(v9, v38);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  *(a2 + 4) = v14;
  *(a2 + 8) = v16;
  *(a2 + 12) = v18;
  *(a2 + 16) = v20;
  *(a2 + 20) = v10;
  *(a2 + 21) = v21;
  *(a2 + 22) = v22;
  *(a2 + 24) = v37;
  v33 = v35;
  *(a2 + 32) = v36;
  *(a2 + 36) = v33;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 52) = v27;
  *(a2 + 56) = v28 & 1;
  *(a2 + 57) = v31 & 1;
  return result;
}

unint64_t sub_1AF47FDB8()
{
  result = qword_1EB633610;
  if (!qword_1EB633610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633610);
  }

  return result;
}

unint64_t sub_1AF47FE0C()
{
  result = qword_1EB6333A8;
  if (!qword_1EB6333A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6333A8);
  }

  return result;
}

unint64_t sub_1AF47FE60()
{
  result = qword_1EB6337D8;
  if (!qword_1EB6337D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6337D8);
  }

  return result;
}

unint64_t sub_1AF47FEB4()
{
  result = qword_1ED727190;
  if (!qword_1ED727190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED727190);
  }

  return result;
}

void sub_1AF47FF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF47FF70()
{
  result = qword_1EB639E00;
  if (!qword_1EB639E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639E00);
  }

  return result;
}

unint64_t sub_1AF47FFC4()
{
  result = qword_1EB639E80;
  if (!qword_1EB639E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639E80);
  }

  return result;
}

unint64_t sub_1AF480018()
{
  result = qword_1EB63BD90;
  if (!qword_1EB63BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BD90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationTimeSource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationTimeSource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Scheduler.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Scheduler.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AF4802FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF4803B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v12;
    v14 = *(v5 + 16);

    v14(v13 + 1, v12 + 1, v4);
    v15 = ((v13 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v12 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 19) & 0xFFFFFFFFFFFFFFF8);
    swift_unknownObjectRetain();
  }

  return a1;
}

uint64_t sub_1AF480518(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));

  return swift_unknownObjectRelease();
}

void *sub_1AF4805AC(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v12 = (v10 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8)) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectRetain();
  return a1;
}

void *sub_1AF480688(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;
  v6 = a1 + 15;

  *(v6 & 0xFFFFFFFFFFFFFFF8) = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = (v9 + 8 + (v6 & 0xFFFFFFFFFFFFFFF8)) & ~v9;
  v11 = (v9 + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40) + 7;
  v13 = ((v12 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v13[1] = v15;
  v16 = ((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v14 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  return a1;
}

void *sub_1AF480790(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1AF480854(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v11 = (v9 + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = ((v12 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  swift_unknownObjectRelease();
  v13[1] = v15;
  v16 = ((v13 + 19) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v14 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  return a1;
}

uint64_t sub_1AF480944(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 > 0x7FFFFFFE)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}