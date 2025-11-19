uint64_t sub_10005239C()
{
  sub_10002600C(v0 + 128, v24, &qword_1000B5978, &qword_100094AA0);
  if (*(&v24[0] + 1))
  {
    v28 = v24[2];
    v29 = v24[3];
    v30 = v25;
    v26 = v24[0];
    v27 = v24[1];
    sub_10002600C(&v27 + 8, v24, &qword_1000B5428, &qword_100093030);
    sub_1000021C0(&qword_1000B5428, &qword_100093030);
    if (swift_dynamicCast())
    {
      sub_100039234(&v26);
      v1 = v31;
    }

    else
    {
      v20 = v26;
      v21 = v27;
      sub_100058B68();
      swift_allocError();
      *v22 = xmmword_100091320;
      *(v22 + 16) = v20;
      *(v22 + 32) = v21;
      *(v22 + 40) = 0;
      swift_willThrow();

      sub_100039234(&v26);
    }

    return v1 & 1;
  }

  sub_100002BCC(v24, &qword_1000B5978, &qword_100094AA0);
  v2 = *(v0 + 120);
  if (!v2[2])
  {
    __break(1u);
LABEL_11:
    result = sub_100058918(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v3 = *(v0 + 120);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_7:
    v2[2] = v5 - 1;
    sub_100040F6C(&v2[5 * v5 - 1], v24);
    sub_10002F35C(v24, &v26);
    v6 = *(&v27 + 1);
    sub_100006190(&v26, *(&v27 + 1));
    v7 = *(*(v6 - 8) + 64);
    __chkstk_darwin();
    v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9);
    v11 = sub_100067F24(v9, v2, v6);
    v13 = v12;
    v15 = v14;
    sub_100002B38(&v26);
    sub_10002A1BC();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    v17 = v29;
    v18 = v28;
    v19 = v26;
    *(v16 + 40) = v27;
    *(v16 + 24) = v19;
    *(v16 + 56) = v18;
    *(v16 + 72) = v17;
    *(v16 + 80) = 11;
    swift_willThrow();
    sub_100002B38(v24);
    return v1 & 1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10005268C()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_100040F6C(&v2[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          sub_100006190(&v25, *(&v26 + 1));
          v6 = *(*(v5 - 8) + 64);
          __chkstk_darwin();
          v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v2, v5);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v22[1];
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_100052978()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_8:
          v2[2] = v4 - 1;
          sub_100040F6C(&v2[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          sub_100006190(&v25, *(&v26 + 1));
          v6 = *(*(v5 - 8) + 64);
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v2, v5);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();
  }

  return sub_100039234(&v25);
}

uint64_t sub_100052C64()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_8:
          v2[2] = v4 - 1;
          sub_100040F6C(&v2[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          sub_100006190(&v25, *(&v26 + 1));
          v6 = *(*(v5 - 8) + 64);
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v2, v5);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();
  }

  return sub_100039234(&v25);
}

uint64_t sub_100052F50()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_100040F6C(&v2[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          sub_100006190(&v25, *(&v26 + 1));
          v6 = *(*(v5 - 8) + 64);
          __chkstk_darwin();
          v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v2, v5);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v22[1];
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_10005323C()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_100040F6C(&v2[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          sub_100006190(&v25, *(&v26 + 1));
          v6 = *(*(v5 - 8) + 64);
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v2, v5);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v30;
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_100053528()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_100040F6C(&v2[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          sub_100006190(&v25, *(&v26 + 1));
          v6 = *(*(v5 - 8) + 64);
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v2, v5);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v30;
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_100053814()
{
  sub_10002600C(v0 + 128, v23, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v23[0] + 1))
  {
    sub_100002BCC(v23, &qword_1000B5978, &qword_100094AA0);
    v2 = *(v0 + 120);
    if (v2[2])
    {
      v3 = *(v0 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v4 = v2[2];
        if (v4)
        {
LABEL_7:
          v2[2] = v4 - 1;
          sub_100040F6C(&v2[5 * v4 - 1], v23);
          sub_10002F35C(v23, &v25);
          v5 = *(&v26 + 1);
          sub_100006190(&v25, *(&v26 + 1));
          v6 = *(*(v5 - 8) + 64);
          __chkstk_darwin();
          v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v8);
          v10 = sub_100067F24(v8, v2, v5);
          v12 = v11;
          v14 = v13;
          sub_100002B38(&v25);
          sub_10002A1BC();
          swift_allocError();
          *v15 = v10;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v28;
          v17 = v27;
          v18 = v25;
          *(v15 + 40) = v26;
          *(v15 + 24) = v18;
          *(v15 + 56) = v17;
          *(v15 + 72) = v16;
          *(v15 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v23);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v27 = v23[2];
  v28 = v23[3];
  v29 = v24;
  v25 = v23[0];
  v26 = v23[1];
  sub_10002600C(&v26 + 8, v23, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v25);
    return v30;
  }

  else
  {
    v19 = v25;
    v20 = v26;
    sub_100058B68();
    swift_allocError();
    *v21 = xmmword_100091320;
    *(v21 + 16) = v19;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v25);
  }
}

uint64_t sub_100053B00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v32 - v8;
  sub_10002600C(v2 + 128, v33, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v33[0] + 1))
  {
    sub_100002BCC(v33, &qword_1000B5978, &qword_100094AA0);
    v12 = *(v2 + 120);
    if (v12[2])
    {
      v13 = *(v2 + 120);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v14 = v12[2];
        if (v14)
        {
LABEL_7:
          v12[2] = v14 - 1;
          sub_100040F6C(&v12[5 * v14 - 1], v33);
          sub_10002F35C(v33, &v35);
          v15 = *(&v36 + 1);
          sub_100006190(&v35, *(&v36 + 1));
          v16 = *(*(v15 - 8) + 64);
          __chkstk_darwin();
          v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v19 + 16))(v18);
          v20 = sub_100067F24(v18, v12, v15);
          v22 = v21;
          v24 = v23;
          sub_100002B38(&v35);
          sub_10002A1BC();
          swift_allocError();
          *v25 = v20;
          *(v25 + 8) = v22;
          *(v25 + 16) = v24;
          v26 = v38;
          v27 = v37;
          v28 = v35;
          *(v25 + 40) = v36;
          *(v25 + 24) = v28;
          *(v25 + 56) = v27;
          *(v25 + 72) = v26;
          *(v25 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(v33);
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v12);
    v12 = result;
    v14 = *(result + 16);
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v37 = v33[2];
  v38 = v33[3];
  v39 = v34;
  v35 = v33[0];
  v36 = v33[1];
  sub_10002600C(&v36 + 8, v33, &qword_1000B5428, &qword_100093030);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  if (swift_dynamicCast())
  {
    sub_100039234(&v35);
    v10 = *(a1 - 8);
    (*(v10 + 56))(v9, 0, 1, a1);
    return (*(v10 + 32))(a2, v9, a1);
  }

  else
  {
    (*(*(a1 - 8) + 56))(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    v29 = v35;
    v30 = v36;
    sub_100058B68();
    swift_allocError();
    *v31 = xmmword_100091320;
    *(v31 + 16) = v29;
    *(v31 + 32) = v30;
    *(v31 + 40) = 0;
    swift_willThrow();

    return sub_100039234(&v35);
  }
}

BOOL sub_100053F40()
{
  sub_10002600C(v0 + 128, v3, &qword_1000B5978, &qword_100094AA0);
  v1 = v4 == 0;
  sub_100002BCC(v3, &qword_1000B5978, &qword_100094AA0);
  return v1;
}

uint64_t sub_10005419C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v12, v2, v3);
  if (v13)
  {
    sub_100058B58(&v12, v14);
    sub_10004CC10(v14, &v12);
    if (swift_dynamicCast())
    {
      sub_100002B38(v14);
      v4 = v11;
    }

    else
    {
      *&v12 = 0;
      *(&v12 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v12;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      sub_100002B38(v14);
    }

    return v4 & 1;
  }

  else
  {
    sub_100002BCC(&v12, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054344()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_100058B58(&v11, v13);
    sub_10004CC10(v13, &v11);
    if (swift_dynamicCast())
    {
      sub_100002B38(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v13);
    }
  }

  else
  {
    sub_100002BCC(&v11, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000544E8()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v10, v2, v3);
  if (v11)
  {
    sub_100058B58(&v10, v12);
    sub_10004CC10(v12, &v10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v10;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();
    }

    return sub_100002B38(v12);
  }

  else
  {
    sub_100002BCC(&v10, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005468C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v10, v2, v3);
  if (v11)
  {
    sub_100058B58(&v10, v12);
    sub_10004CC10(v12, &v10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v10 = 0;
      *(&v10 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v10;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();
    }

    return sub_100002B38(v12);
  }

  else
  {
    sub_100002BCC(&v10, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054830()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_100058B58(&v11, v13);
    sub_10004CC10(v13, &v11);
    if (swift_dynamicCast())
    {
      sub_100002B38(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v13);
    }
  }

  else
  {
    sub_100002BCC(&v11, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000549D4()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_100058B58(&v11, v13);
    sub_10004CC10(v13, &v11);
    if (swift_dynamicCast())
    {
      sub_100002B38(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v13);
    }
  }

  else
  {
    sub_100002BCC(&v11, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054B78()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_100058B58(&v11, v13);
    sub_10004CC10(v13, &v11);
    if (swift_dynamicCast())
    {
      sub_100002B38(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v13);
    }
  }

  else
  {
    sub_100002BCC(&v11, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054D1C()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v0[14];
  sub_100006190((v0 + 10), v2);
  (*(v3 + 32))(&v11, v2, v3);
  if (v12)
  {
    sub_100058B58(&v11, v13);
    sub_10004CC10(v13, &v11);
    if (swift_dynamicCast())
    {
      sub_100002B38(v13);
      return v10;
    }

    else
    {
      *&v11 = 0;
      *(&v11 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v5 = v11;
      v7 = v0[1];
      v6 = v0[2];
      v8 = v1[3];
      sub_100058B68();
      swift_allocError();
      *v9 = v5;
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v13);
    }
  }

  else
  {
    sub_100002BCC(&v11, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054EC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = v2[13];
  v11 = v2[14];
  sub_100006190((v2 + 10), v10);
  (*(v11 + 32))(&v19, v10, v11);
  if (v20)
  {
    sub_100058B58(&v19, v21);
    sub_10004CC10(v21, &v19);
    if (swift_dynamicCast())
    {
      sub_100002B38(v21);
      v12 = *(a1 - 8);
      (*(v12 + 56))(v9, 0, 1, a1);
      return (*(v12 + 32))(v22, v9, a1);
    }

    else
    {
      (*(*(a1 - 8) + 56))(v9, 1, 1, a1);
      (*(v6 + 8))(v9, v5);
      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v14 = v19;
      v16 = v2[1];
      v15 = v2[2];
      v17 = v3[3];
      sub_100058B68();
      swift_allocError();
      *v18 = v14;
      *(v18 + 16) = v16;
      *(v18 + 24) = v15;
      *(v18 + 32) = v17;
      *(v18 + 40) = 0;
      swift_willThrow();

      return sub_100002B38(v21);
    }
  }

  else
  {
    sub_100002BCC(&v19, &qword_1000B5428, &qword_100093030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100055214()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100002AA0(v0 + 10, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_10005526C()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100002AA0(v0 + 10, v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t sub_1000552C4()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100002AA0(v0 + 10, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_100055534()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100055584()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10005562C()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10005567C()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1000557BC()
{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_10005580C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_100055944@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SingleValueDecoder.SingleValueContainer;
  a1[4] = sub_100058C74();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_100058A70(v1, v3 + 16);
  v4 = *(v1 + 16);
  sub_10002600C(v1 + 48, v3 + 144, &qword_1000B5978, &qword_100094AA0);
  *(v3 + 136) = v4;
}

unint64_t sub_1000559E4()
{
  result = qword_1000B5970;
  if (!qword_1000B5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5970);
  }

  return result;
}

double sub_100055A88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  if (v9 >= Array.endIndex.getter())
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    Array.subscript.getter();
    v2[1] = v9 + 1;
    *(a2 + 24) = v4;
    v11 = sub_100007DE4(a2);
    (*(v5 + 32))(v11, v8, v4);
  }

  return result;
}

uint64_t sub_100055B98(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_100055A38();
}

uint64_t sub_100055BDC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      result = sub_100056A44(v11, *v10, *(v10 + 8), *(v10 + 16) | (*(v10 + 17) << 8));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100055CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100055D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 48;
    for (i = (a2 + 48); ; i += 8)
    {
      v6 = *(v3 - 16);
      v7 = *(v3 - 8);
      v9 = *v3;
      v8 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = *(v3 + 24);
      v12 = *(v3 + 32);
      v13 = *(v3 + 40);
      v14 = *(i - 2);
      v15 = *(i - 1);
      v17 = *i;
      v16 = i[1];
      v18 = i[2];
      v19 = i[3];
      v20 = i[4];
      v21 = (*v3 >> 61) & 3;
      v22 = *(i + 40);
      if (v21)
      {
        if (v21 != 1)
        {
          if ((v17 & 0x6000000000000000) != 0x4000000000000000 || v17 != 0x4000000000000000 || v15 | v14 | v16 | v18)
          {
            v48 = *(v3 + 8);
            sub_100058C08(v6, v7, *v3);
            return 0;
          }

          v30 = *(v3 + 8);
          v31 = *(v3 + 32);
          v32 = *(v3 + 40);
          v33 = *(i + 40);
          v34 = i[4];
          sub_100058C08(v6, v7, *v3);
          v20 = v34;
          v22 = v33;
          v13 = v32;
          v12 = v31;
LABEL_33:
          if (v11 != v19)
          {
            return 0;
          }

          goto LABEL_34;
        }

        if ((v17 & 0x6000000000000000) != 0x2000000000000000)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if ((v17 & 0x6000000000000000) != 0)
      {
        return 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v56 = *(i + 40);
        if (v9 >> 6)
        {
          v35 = v17 & 0xC0;
          if (v9 >> 6 == 1)
          {
            if (v35 != 64)
            {
              return 0;
            }

            if (v6 == v14 && v7 == v15)
            {
              if ((v9 ^ v17))
              {
                return 0;
              }
            }

            else
            {
              v53 = *(v3 + 16);
              v55 = i[4];
              v51 = *(v3 + 40);
              v49 = *(v3 + 32);
              v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
              result = 0;
              if ((v44 & 1) == 0)
              {
                return result;
              }

              v10 = v53;
              v20 = v55;
              v12 = v49;
              v13 = v51;
              v22 = v56;
              if ((v9 ^ v17))
              {
                return result;
              }
            }

LABEL_61:
            if (v8 == v16 && v10 == v18)
            {
              goto LABEL_33;
            }

            v54 = v20;
            v45 = v13;
            v46 = v12;
            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
            result = 0;
            if ((v47 & 1) == 0)
            {
              return result;
            }

            v43 = v11 == v19;
            v12 = v46;
            v13 = v45;
            v22 = v56;
            goto LABEL_65;
          }

          if (v35 != 128)
          {
            return 0;
          }
        }

        else if (*i >= 0x40u)
        {
          return 0;
        }

        if (v6 != v14 || v7 != v15)
        {
          v52 = *(v3 + 16);
          v36 = *(v3 + 32);
          v50 = *(v3 + 40);
          v37 = i[4];
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v37;
          v22 = v56;
          v13 = v50;
          v12 = v36;
          v10 = v52;
          if ((v38 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_61;
      }

      if (v17 < 0)
      {
        return 0;
      }

      if (!(v9 >> 6))
      {
        break;
      }

      v29 = v17 & 0xC0;
      if (v9 >> 6 != 1)
      {
        if (v29 != 128)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if (v29 != 64)
      {
        return 0;
      }

      if (v6 != v14 || v7 != v15)
      {
        v54 = i[4];
        v39 = *(i + 40);
        v40 = *(v3 + 40);
        v41 = *(v3 + 32);
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if (v42 & 1) == 0 || ((v9 ^ v17))
        {
          return result;
        }

        v43 = v11 == v19;
        v12 = v41;
        v13 = v40;
        v22 = v39;
LABEL_65:
        v20 = v54;
        if (!v43)
        {
          return result;
        }

        goto LABEL_34;
      }

      result = 0;
      if (((v9 ^ v17) & 1) != 0 || v11 != v19)
      {
        return result;
      }

LABEL_34:
      if (v13)
      {
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v20)
        {
          v5 = v22;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 64;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i >= 0x40u)
    {
      return 0;
    }

LABEL_13:
    if (v6 == v14 && v7 == v15)
    {
      goto LABEL_33;
    }

    v23 = i[4];
    v24 = *(i + 40);
    v25 = *(v3 + 40);
    v26 = *(v3 + 32);
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v27 & 1) == 0)
    {
      return result;
    }

    v12 = v26;
    v13 = v25;
    v22 = v24;
    v20 = v23;
    if (v11 != v19)
    {
      return result;
    }

    goto LABEL_34;
  }

  return 1;
}

unint64_t sub_1000560F8(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      Hasher._combine(_:)(1uLL);
      Character.hash(into:)();
      Hasher._combine(_:)(a3 & 1);
      goto LABEL_7;
    }

    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  Hasher._combine(_:)(v8);
  String.hash(into:)();
LABEL_7:
  v9 = Hasher._finalize()();

  return sub_100056374(a1, a2, a3, v9);
}

unint64_t sub_1000561CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = *(a3 + 16);
  Hasher._combine(_:)(v8);
  if (v8)
  {
    v9 = (a3 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      String.hash(into:)();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = Hasher._finalize()();

  return sub_1000564B4(a1, a2, a3, v12);
}

unint64_t sub_1000562A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100056600(a1, v5);
}

unint64_t sub_100056308(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_10001FA30(a1, v4);
}

unint64_t sub_100056374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v13 = a3 & 0xC0;
    do
    {
      v14 = (v12 + 24 * v7);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v14 + 16);
      if (v17 >> 6)
      {
        if (v17 >> 6 == 1)
        {
          if (v13 == 64)
          {
            v18 = v15 == a1 && v16 == a2;
            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((a3 ^ v17) & 1) == 0)
            {
              return v7;
            }
          }

          goto LABEL_4;
        }

        if (v13 != 128)
        {
          goto LABEL_4;
        }
      }

      else if (a3 >= 0x40u)
      {
        goto LABEL_4;
      }

      v19 = v15 == a1 && v16 == a2;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1000564B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v21 = (a3 + 40);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = *(v14 + 16);
        if (v16 == *(a3 + 16))
        {
          if (!v16 || v14 == a3)
          {
            return v7;
          }

          v17 = (v14 + 40);
          for (i = v21; ; i += 2)
          {
            v19 = *(v17 - 1) == *(i - 1) && *v17 == *i;
            if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            v17 += 2;
            if (!--v16)
            {
              return v7;
            }
          }
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100056600(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_100056798(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  v11 = a4 >> 6;
  v35 = a1;
  if (a4 >> 6)
  {
    if (v11 != 1)
    {
      if (a3 | a2 || a4 != 128)
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      Hasher._combine(_:)(v12);
      goto LABEL_11;
    }

    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  Hasher._combine(_:)(a4 & 1);
LABEL_11:
  v13 = Hasher._finalize()();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_47:
    v28 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v4;
    sub_10003B5D8(a2, a3, a4);
    sub_100057860(a2, a3, a4, v15, isUniquelyReferenced_nonNull_native);
    *v4 = v38;
    *v35 = a2;
    *(v35 + 8) = a3;
    *(v35 + 16) = a4;
    return 1;
  }

  v16 = ~v14;
  v17 = *(v9 + 48);
  v19 = a2 != 1 || a3 != 0;
  if (a4 == 128)
  {
    v20 = (a3 | a2) != 0;
  }

  else
  {
    v19 = 1;
    v20 = 1;
  }

  v21 = v11 != 2 || v19;
  v22 = v11 != 2 || v20;
  v36 = v22;
  v37 = v21;
  while (1)
  {
    v23 = (v17 + 24 * v15);
    v24 = *v23;
    v25 = v23[1];
    v26 = *(v23 + 16);
    if (!(v26 >> 6))
    {
      break;
    }

    if (v26 >> 6 == 1)
    {
      if (v11 == 1)
      {
        goto LABEL_35;
      }
    }

    else if (v25 | v24 || v26 != 128)
    {
      if ((v37 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((v36 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_29:
    v15 = (v15 + 1) & v16;
    if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  if (a4 >= 0x40u)
  {
    goto LABEL_29;
  }

LABEL_35:
  v27 = v24 == a2 && v25 == a3;
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((a4 ^ v26) & 1) != 0)
  {
    goto LABEL_29;
  }

  sub_10003B5E8(a2, a3, a4);
LABEL_49:
  v31 = *(v9 + 48) + 24 * v15;
  v32 = *v31;
  v33 = *(v31 + 8);
  *v35 = *v31;
  *(v35 + 8) = v33;
  v34 = *(v31 + 16);
  *(v35 + 16) = v34;
  sub_10003B5D8(v32, v33, v34);
  return 0;
}

uint64_t sub_100056A44(uint64_t a1, Swift::UInt a2, Swift::UInt a3, unsigned int a4)
{
  v5 = v4;
  v10 = a4 >> 8;
  v11 = *v5;
  v12 = *(*v5 + 40);
  Hasher.init(_seed:)();
  if (v10 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(a2), (a4))
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v13 = a3;
  }

  Hasher._combine(_:)(v13);
  v14 = Hasher._finalize()();
  v15 = v11 + 56;
  v16 = -1 << *(v11 + 32);
  v17 = v14 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v11 + 48);
    do
    {
      v20 = v19 + 24 * v17;
      v21 = *(v20 + 16);
      LOBYTE(v22) = *(v20 + 17);
      if (v22)
      {
        if ((a4 & 0x100) != 0)
        {
          result = 0;
          a2 = *v20;
          a3 = *(v20 + 8);
          goto LABEL_19;
        }
      }

      else if ((a4 & 0x100) == 0 && *v20 == a2)
      {
        if (*(v20 + 16))
        {
          if (a4)
          {
            result = 0;
            a3 = *(v20 + 8);
            goto LABEL_19;
          }
        }

        else if ((a4 & 1) == 0 && *(v20 + 8) == a3)
        {
          result = 0;
          goto LABEL_19;
        }
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v22 = (a4 >> 8) & 1;
  v23 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v5;
  sub_100057B10(a2, a3, a4 & 0x1FF, v17, isUniquelyReferenced_nonNull_native);
  *v5 = v26;
  result = 1;
  v21 = a4;
LABEL_19:
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v21;
  *(a1 + 17) = v22;
  return result;
}

uint64_t sub_100056BF0(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_100056E00(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100057430(v19 + 1);
    }

    sub_1000577BC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_100057CF0(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

Swift::Int sub_100056E00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000021C0(&qword_1000B59C8, &qword_100096550);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    for (; __CocoaSet.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_100057430(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_10005700C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(qword_1000B59D8, &qword_100093068);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_100057680(*v16, *(v16 + 8), *(v16 + 16), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v16 = *(v3 + 48) + 24 * (v13 | (v7 << 6));
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v17;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10005717C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B5990, &qword_100093038);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v35 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = *(v19 + 17);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v22 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v20), (v21))
      {
        v24 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v24 = v35;
      }

      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v35;
      *(v15 + 16) = v21;
      *(v15 + 17) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100057430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B59C8, &qword_100096550);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100057680(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  Hasher.init(_seed:)();
  if (!(a3 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(a3 & 1);
    goto LABEL_11;
  }

  if (a2 | a1 || a3 != 128)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  Hasher._combine(_:)(v9);
LABEL_11:
  Hasher._finalize()();
  v10 = -1 << *(a4 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v12 = *(a4 + 48) + 24 * result;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

unint64_t sub_1000577BC(Swift::UInt a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100057860(Swift::Int result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a5)
  {
    sub_10005700C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100057E48();
      goto LABEL_54;
    }

    sub_100058260(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  Hasher.init(_seed:)();
  v14 = a3 >> 6;
  if (a3 >> 6)
  {
    if (v14 != 1)
    {
      if (a2 | v9 || a3 != 128)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }

      Hasher._combine(_:)(v15);
      goto LABEL_18;
    }

    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  Hasher._combine(_:)(a3 & 1);
LABEL_18:
  result = Hasher._finalize()();
  v16 = v12 + 56;
  v17 = -1 << *(v12 + 32);
  a4 = result & ~v17;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_54;
  }

  v18 = ~v17;
  v19 = *(v12 + 48);
  v21 = v9 != 1 || a2 != 0;
  if (a3 == 128)
  {
    v22 = (a2 | v9) != 0;
  }

  else
  {
    v21 = 1;
    v22 = 1;
  }

  v23 = v14 != 2 || v21;
  v24 = v14 != 2 || v22;
  v34 = v24;
  v35 = v23;
  while (1)
  {
    v25 = v19 + 24 * a4;
    result = *v25;
    v26 = *(v25 + 8);
    v27 = *(v25 + 16);
    if (!(v27 >> 6))
    {
      break;
    }

    if (v27 >> 6 == 1)
    {
      if (v14 == 1)
      {
        goto LABEL_42;
      }
    }

    else if (v26 | result || v27 != 128)
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if ((v34 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_36:
    a4 = (a4 + 1) & v18;
    if (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (a3 >= 0x40u)
  {
    goto LABEL_36;
  }

LABEL_42:
  if (result != v9 || v26 != a2)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if ((a3 ^ v27))
  {
    goto LABEL_36;
  }

LABEL_53:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_54:
  v29 = *v36;
  *(*v36 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v30 = *(v29 + 48) + 24 * a4;
  *v30 = v9;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

Swift::Int sub_100057B10(Swift::Int result, Swift::UInt a2, __int16 a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    sub_10005717C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      result = sub_100057FB0();
      a4 = v11;
      goto LABEL_25;
    }

    sub_1000583B8(v9 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  Hasher.init(_seed:)();
  if (a3 & 0x100) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v8), (a3))
  {
    v14 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v14 = a2;
  }

  Hasher._combine(_:)(v14);
  result = Hasher._finalize()();
  v15 = -1 << *(v12 + 32);
  a4 = result & ~v15;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    do
    {
      v17 = *(v12 + 48) + 24 * a4;
      if (*(v17 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          goto LABEL_24;
        }
      }

      else if ((a3 & 0x100) == 0 && *v17 == v8)
      {
        if (*(v17 + 16))
        {
          if (a3)
          {
            goto LABEL_24;
          }
        }

        else if ((a3 & 1) == 0 && *(v17 + 8) == a2)
        {
LABEL_24:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_25:
  v18 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v19 = *(v18 + 48) + 24 * a4;
  *v19 = v8;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  *(v19 + 17) = HIBYTE(a3) & 1;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

Swift::Int sub_100057CF0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100057430(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100058110();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10005863C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  sub_1000021C0(&qword_1000B59C0, &unk_100093050);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100057E48()
{
  v1 = v0;
  sub_1000021C0(qword_1000B59D8, &qword_100093068);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_10003B5D8(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100057FB0()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5990, &qword_100093038);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 17);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100058110()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B59C8, &qword_100096550);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100058260(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(qword_1000B59D8, &qword_100093068);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_100057680(v16, v17, v18, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(v3 + 48) + 24 * (v12 | (v7 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_10003B5D8(*v15, v17, v18);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000583B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B5990, &qword_100093038);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v34 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = *(v19 + 17);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v22 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v20), (v21))
      {
        v24 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v24 = v34;
      }

      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_34;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v34;
      *(v15 + 16) = v21;
      *(v15 + 17) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_32;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10005863C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B59C8, &qword_100096550);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000588A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_10005892C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48) + 24 * result;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16) | (*(v4 + 17) << 8);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_100058998()
{
  result = qword_1000B5980;
  if (!qword_1000B5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5980);
  }

  return result;
}

uint64_t sub_1000589EC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  if (v0[9])
  {

    v6 = v0[10];

    if (v0[14])
    {
      sub_100002B38(v0 + 11);
    }

    v7 = v0[15];
  }

  return _swift_deallocObject(v0, 129, 7);
}

_OWORD *sub_100058B58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100058B68()
{
  result = qword_1000B5998;
  if (!qword_1000B5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5998);
  }

  return result;
}

uint64_t sub_100058C08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 61) & 3;
  if (v3 == 1)
  {
  }

  if (!v3)
  {
    return sub_100058C28(result, a2, a3);
  }

  return result;
}

uint64_t sub_100058C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_100028AE8(a1, a2, a3);
  }

  else
  {

    return sub_100028AE8(a1, a2, a3);
  }
}

unint64_t sub_100058C74()
{
  result = qword_1000B59A0;
  if (!qword_1000B59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B59A0);
  }

  return result;
}

uint64_t sub_100058CC8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  if (v0[9])
  {

    v6 = v0[10];

    if (v0[14])
    {
      sub_100002B38(v0 + 11);
    }

    v7 = v0[15];
  }

  v8 = v0[17];

  if (v0[19])
  {

    v9 = v0[20];

    if (v0[24])
    {
      sub_100002B38(v0 + 21);
    }

    v10 = v0[25];
  }

  return _swift_deallocObject(v0, 209, 7);
}

unint64_t sub_100058D80()
{
  result = qword_1000B59B0;
  if (!qword_1000B59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B59B0);
  }

  return result;
}

uint64_t sub_100058DD4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  if (v0[9])
  {
    sub_100002B38(v0 + 6);
  }

  v4 = v0[10];

  sub_100002B38(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100058EA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100058EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100058F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100058F7C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100058FA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100058FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10005905C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1000590A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000590E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ArgumentDecoder.Error(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for ArgumentDecoder.Error(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ArgumentDecoder.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArgumentDecoder.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100059258(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100059270(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1000592A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 48);
  v3 = v1 + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2 >> 6;
    v2 += 24;
    if (v5 != 1)
    {
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);

      return v6;
    }
  }

  if (!v1)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  sub_10002BB8C(v6, *(a1 + 40), *(a1 + 48));
  return v6;
}

BOOL sub_100059390(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000593C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000593EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1000594D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100059508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10005BA50(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100059548@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  if (*a1 >= 2uLL)
  {
    v5 = *a1;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v6 = sub_1000592A8(v4);
  v8 = v7;
  v10 = v9;

  if (v10 > 0xFD)
  {
    v12 = *(a1 + 32);
    if (v12[2])
    {
      v13 = v12[4];
      v14 = v12[5];

      v6 = sub_10004CE4C(45, 0xE100000000000000, v13, v14);
      v8 = v15;
    }

    else
    {
      v8 = 0xE500000000000000;
      v6 = 0x65756C6176;
    }
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_100059614()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1 == 1)
    {
      return 0;
    }

    v7 = *(v1 + 16);
    if (*(v0 + 168))
    {
      if (v7)
      {
        v49 = _swiftEmptyArrayStorage;
        sub_10004E820(0, v7, 0);
        v8 = _swiftEmptyArrayStorage;
        v9 = (v1 + 48);
        while (1)
        {
          v11 = *(v9 - 2);
          v10 = *(v9 - 1);
          v12 = *v9;
          if (!(v12 >> 6))
          {
            break;
          }

          if (v12 >> 6 != 1)
          {
            v51 = 45;
            v14 = 0xE100000000000000;
            goto LABEL_16;
          }

          v51 = 0;
          v52 = 0xE000000000000000;

          v13._countAndFlagsBits = 45;
          v13._object = 0xE100000000000000;
          String.append(_:)(v13);
          Character.write<A>(to:)();
LABEL_17:
          sub_100028AE8(v11, v10, v12);
          v16 = v51;
          v17 = v52;
          v49 = v8;
          v19 = v8[2];
          v18 = v8[3];
          if (v19 >= v18 >> 1)
          {
            sub_10004E820((v18 > 1), v19 + 1, 1);
            v8 = v49;
          }

          v9 += 24;
          v8[2] = v19 + 1;
          v20 = &v8[2 * v19];
          v20[4] = v16;
          v20[5] = v17;
          if (!--v7)
          {
            goto LABEL_33;
          }
        }

        v51 = 11565;
        v14 = 0xE200000000000000;
LABEL_16:
        v52 = v14;
        sub_10002BB8C(v11, v10, v12);
        v15._countAndFlagsBits = v11;
        v15._object = v10;
        String.append(_:)(v15);
        goto LABEL_17;
      }

LABEL_33:
      sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
      sub_10002BB28();
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      v51 = 15392;
      v52 = 0xE200000000000000;
      v38 = *(v0 + 88);
      v37 = *(v0 + 96);
      v39 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v39 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = *(v0 + 96);
      }

      else
      {
        sub_100059548(v0, &v49);
        v38 = v49;
        v37 = v50;
      }

      v44._countAndFlagsBits = v38;
      v44._object = v37;
      String.append(_:)(v44);

      v45._countAndFlagsBits = 62;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v46 = v51;
      v47 = v52;
      v51 = v34;
      v52 = v36;

      v48._countAndFlagsBits = v46;
      v48._object = v47;
      String.append(_:)(v48);

      return v51;
    }

    v21 = _swiftEmptyArrayStorage;
    if (!v7)
    {
LABEL_37:
      v51 = v21;
      sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
      sub_10002BB28();
      v41 = BidirectionalCollection<>.joined(separator:)();

      return v41;
    }

    v49 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v7, 0);
    v21 = _swiftEmptyArrayStorage;
    v22 = (v1 + 48);
    while (1)
    {
      v24 = *(v22 - 2);
      v23 = *(v22 - 1);
      v25 = *v22;
      if (!(v25 >> 6))
      {
        break;
      }

      if (v25 >> 6 != 1)
      {
        v51 = 45;
        v27 = 0xE100000000000000;
        goto LABEL_28;
      }

      v51 = 0;
      v52 = 0xE000000000000000;

      v26._countAndFlagsBits = 45;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      Character.write<A>(to:)();
LABEL_29:
      sub_100028AE8(v24, v23, v25);
      v29 = v51;
      v30 = v52;
      v49 = v21;
      v32 = v21[2];
      v31 = v21[3];
      if (v32 >= v31 >> 1)
      {
        sub_10004E820((v31 > 1), v32 + 1, 1);
        v21 = v49;
      }

      v22 += 24;
      v21[2] = v32 + 1;
      v33 = &v21[2 * v32];
      v33[4] = v29;
      v33[5] = v30;
      if (!--v7)
      {
        goto LABEL_37;
      }
    }

    v51 = 11565;
    v27 = 0xE200000000000000;
LABEL_28:
    v52 = v27;
    sub_10002BB8C(v24, v23, v25);
    v28._countAndFlagsBits = v24;
    v28._object = v23;
    String.append(_:)(v28);
    goto LABEL_29;
  }

  v51 = 60;
  v52 = 0xE100000000000000;
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *(v0 + 96);
  }

  else
  {
    sub_100059548(v0, &v49);
    v4 = v49;
    v3 = v50;
  }

  v42._countAndFlagsBits = v4;
  v42._object = v3;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 62;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  return v51;
}

uint64_t sub_100059A90()
{
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_100059614();
}

uint64_t sub_100059AEC()
{
  if (*v0 >= 2uLL)
  {

    v2 = v1[2];
    if (!v2)
    {
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    v2 = _swiftEmptyArrayStorage[2];
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v3 = (v1 + 6);
  while (1)
  {
    v5 = *v3;
    v3 += 24;
    v4 = v5;
    if (v5 & 0xC0) == 0x40 && (v4)
    {
      break;
    }

    if (!--v2)
    {
      goto LABEL_10;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

uint64_t sub_100059B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9)
{
  sub_10002A1BC();
  swift_allocError();
  *v16 = a4;
  *(v16 + 8) = a5;
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  *(v16 + 32) = a8;
  *(v16 + 40) = a9;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = 0;
  *(v16 + 80) = 12;
  swift_willThrow();

  sub_10005AD50(a5, a6, a7);
}

uint64_t sub_100059C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a7;
  v33 = a5;
  v34 = a6;
  v31 = a1;
  v32 = a4;
  v37 = a3;
  v35 = a2;
  v30 = a9;
  v13 = *(a12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v29 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 8);

  v21(a8, a10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = *(AssociatedTypeWitness - 8);
  if ((*(v22 + 48))(v19, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v22 + 32))(v30, v19, AssociatedTypeWitness);
  }

  (*(v16 + 8))(v19, v15);
  sub_10002A1BC();
  swift_allocError();
  v23 = v33;
  *v24 = v32;
  *(v24 + 8) = v23;
  v26 = v34;
  v25 = v35;
  *(v24 + 16) = v34;
  v27 = v36;
  *(v24 + 24) = v36;
  *(v24 + 32) = a8;
  *(v24 + 40) = a10;
  *(v24 + 48) = v31;
  *(v24 + 56) = v25;
  *(v24 + 64) = v37;
  *(v24 + 72) = 0;
  *(v24 + 80) = 12;
  swift_willThrow();

  sub_10005AD50(v23, v26, v27);
}

uint64_t sub_100059EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t))
{
  result = a10(a8, a9);
  if (v10)
  {
    sub_10002A1BC();
    swift_allocError();
    *v19 = a4;
    *(v19 + 8) = a5;
    *(v19 + 16) = a6;
    *(v19 + 24) = a7;
    *(v19 + 32) = a8;
    *(v19 + 40) = a9;
    *(v19 + 48) = a1;
    *(v19 + 56) = a2;
    *(v19 + 64) = a3;
    *(v19 + 72) = v10;
    *(v19 + 80) = 12;
    swift_willThrow();

    sub_10005AD50(a5, a6, a7);
  }

  return result;
}

uint64_t sub_100059FC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = a5;
  v31 = a8;
  v26 = a7;
  v27 = a3;
  v28 = a4;
  v25 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v18 = *(v23 + 64);
  __chkstk_darwin();
  v20 = &v23 - v19;
  v21 = v30;
  result = v31(a10, a11, a12, a1, a2, v27, v28, v29, a6);
  if (!v21)
  {
    (*(v25 + 32))(v26, v20, a10, a11, a12, a1, a13);
    return (*(v23 + 8))(v20, v24);
  }

  return result;
}

uint64_t sub_10005A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v21 - v16;
  if (a3 == 1)
  {
    a1 = sub_100068C4C(&off_1000AC3B8);
  }

  else
  {
  }

  (*(v14 + 16))(v17, a4, v13);
  v18 = *(AssociatedTypeWitness - 8);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    *(&v28 + 1) = AssociatedTypeWitness;
    v19 = sub_100007DE4(&v27);
    (*(v18 + 32))(v19, v17, AssociatedTypeWitness);
  }

  sub_10005AC84(&v27, v25);
  v24[0] = v22;
  v24[1] = a6;
  v24[2] = a7;
  v25[4] = a1;
  v26 = 1;

  sub_10006AD50(v24);
  sub_100039234(v24);
  return sub_100039288(&v27);
}

uint64_t sub_10005A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a7;
  v13 = sub_100007DE4(v18);
  (*(*(a7 - 8) + 16))(v13, a2, a7);
  sub_10005AC84(v18, v16);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16[4] = a6;
  v17 = 1;

  sub_10006AD50(v15);
  sub_100039234(v15);
  return sub_100039288(v18);
}

uint64_t sub_10005A4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v14, v10, a2);
    v16 = (*(a3 + 16))(a2, a3);
    (*(v11 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_10005A6A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = Array.init()();
  sub_10006A744(a3, a4, a5, a6, v10, sub_10005ACF4);
}

uint64_t sub_10005A784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  __chkstk_darwin();
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t sub_10005A854(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      return 0;
    }

    else
    {
      swift_getWitnessTable();
      Sequence.lazy.getter();
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      *(v5 + 24) = a3;
      type metadata accessor for LazySequence();
      swift_getWitnessTable();
      LazySequenceProtocol.map<A>(_:)();

      type metadata accessor for LazyMapSequence();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v6 = BidirectionalCollection<>.joined(separator:)();

      return v6;
    }
  }

  return result;
}

uint64_t sub_10005AA84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005AAC0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10005AAE4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_10005AB18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005AB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005ABF4()
{
  result = qword_1000B5AF0;
  if (!qword_1000B5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5AF0);
  }

  return result;
}

uint64_t sub_10005AC48(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005AC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B5428, &qword_100093030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005AD0C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005AD50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_10002BB8C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10005AD64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18)
{
  v76 = a7;
  v77 = a5;
  v88 = a4;
  v84 = a8;
  v82 = a12;
  v81 = a11;
  v22 = a6[1];
  v72 = a6[2];
  v23 = a6[4];
  v74 = a6[3];
  v75 = a9;
  v70 = v23;
  v89 = a6[5];
  LODWORD(v73) = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = type metadata accessor for Optional();
  v80 = *(v83 - 8);
  v79 = *(v80 + 64);
  __chkstk_darwin();
  v78 = &v69 - v25;
  v26 = *(a18 + 24);
  v86 = a17;
  v87 = a18;
  v27 = v22;
  v28 = v26(a17, a18);
  v29 = *(*(AssociatedTypeWitness - 8) + 48);
  v85 = a13;
  v30 = v28 | (v29(a13, 1, AssociatedTypeWitness) != 1);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10008E640;
  v90 = a1;
  v91 = a3;
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  v92 = a2;
  *(v31 + 48) = a3;
  if (v22)
  {
    v32 = *a6;
    v113[0] = v32;
    v113[1] = v22;
    v33 = v89;
    if (v89)
    {
      v71 = v30;
      sub_100039960(v113, v102);
      v34 = v74;

      v35 = v27;
      v36 = v34;
      v37 = v33;
      v38 = v72;
      v39 = v70;
LABEL_8:

      v41 = v73;
      v30 = v71;
      goto LABEL_10;
    }

    sub_100039960(v113, v102);
    v40 = v74;

    v35 = v27;
    v36 = v40;
    v38 = v72;
  }

  else
  {
    v32 = 0;
    v38 = 0;
    v35 = 0xE000000000000000;
    v36 = 0xE000000000000000;
  }

  if (v27)
  {
    v71 = v30;
    v39 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_8;
  }

  v39 = 0;
  v41 = 0;
  v37 = 0xE000000000000000;
LABEL_10:
  LODWORD(v74) = a16;
  v73 = a15;
  v72 = a14;
  LODWORD(v89) = a10;
  *&v94 = v30;
  *(&v94 + 1) = v76;
  *&v95 = v75;
  *(&v95 + 1) = v31;
  *&v96 = v77;
  BYTE8(v96) = 0;
  *&v97 = v32;
  *(&v97 + 1) = v35;
  *&v98 = v38;
  *(&v98 + 1) = v36;
  *&v99 = v39;
  *(&v99 + 1) = v37;
  LOBYTE(v100) = v41;
  *(&v100 + 1) = 0;
  v101 = 0xE000000000000000;
  v102[0] = v30;
  v102[1] = v76;
  v102[2] = v75;
  v102[3] = v31;
  v102[4] = v77;
  v103 = 0;
  v104 = v32;
  v105 = v35;
  v106 = v38;
  v107 = v36;
  v108 = v39;
  v109 = v37;
  v110 = v41;
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_10002F094(&v94, v93);
  sub_10002F0F0(v102);
  v42 = swift_allocObject();
  v43 = v86;
  v44 = v87;
  v42[2] = v86;
  v42[3] = v44;
  v45 = v82;
  v42[4] = v81;
  v42[5] = v45;
  v46 = v91;
  v47 = v92;
  v42[6] = v90;
  v42[7] = v47;
  v42[8] = v46;
  v48 = v80;
  v49 = v78;
  v50 = v83;
  (*(v80 + 16))(v78, v85, v83);
  v51 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v52 = (v79 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v53[2] = v43;
  v53[3] = v44;
  v54 = v88;
  v53[4] = v88;
  v55 = v53 + v51;
  v56 = v54;
  (*(v48 + 32))(v55, v49, v50);
  v57 = v91;
  v58 = (v53 + v52);
  v59 = v92;
  *v58 = v90;
  v58[1] = v59;
  v58[2] = v57;
  if (v56)
  {
    sub_100028B00(v56);
  }

  v60 = v97;
  v61 = v84;
  *(v84 + 72) = v98;
  v62 = v100;
  *(v61 + 88) = v99;
  *(v61 + 104) = v62;
  *(v61 + 8) = v94;
  v63 = v96;
  *(v61 + 24) = v95;
  *(v61 + 40) = v63;
  if (v74 == 255)
  {
    v64 = 4;
  }

  else
  {
    v64 = v74;
  }

  v66 = v72;
  v65 = v73;
  if (v74 == 255)
  {
    v65 = 0;
    v66 = 0;
  }

  v93[0] = 1;
  *v61 = v56;
  v67 = v101;
  *(v61 + 56) = v60;
  *(v61 + 120) = v67;
  *(v61 + 128) = v66;
  *(v61 + 136) = v65;
  *(v61 + 144) = v64;
  *(v61 + 145) = v89;
  *(v61 + 152) = sub_10005B7B8;
  *(v61 + 160) = v42;
  *(v61 + 168) = 1;
  *(v61 + 176) = sub_10005B95C;
  *(v61 + 184) = v53;
}

double sub_10005B274@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v42 = a6;
  v46 = a5;
  v45 = a4;
  v44 = a3;
  v43 = a2;
  v41 = a1;
  v39 = a11;
  v15 = *(a13 + 8);
  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v36 = *(v16 - 8);
  v17 = *(v36 + 64);
  __chkstk_darwin();
  v19 = &v36 - v18;
  v40 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = (*(a13 + 24))(a7, a12, a13);
  v37 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a12;
  *(v24 + 24) = a13;
  v25 = v36;
  (*(v36 + 16))(v19, a7, v16);
  v26 = v39;
  if (v39 == 255)
  {
    a9 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v28 = a10;
  }

  sub_10005AD64(v41, v43, v44, v45, v38, v46, v22, v47, v37, v42, sub_10005BA88, v24, v19, a9, v28, v26, a12, v40);
  (*(v25 + 8))(v19, v16);
  v29 = v55;
  a8[8] = v54;
  a8[9] = v29;
  v30 = v57;
  a8[10] = v56;
  a8[11] = v30;
  v31 = v51;
  a8[4] = v50;
  a8[5] = v31;
  v32 = v53;
  a8[6] = v52;
  a8[7] = v32;
  v33 = v47[1];
  *a8 = v47[0];
  a8[1] = v33;
  result = *&v48;
  v35 = v49;
  a8[2] = v48;
  a8[3] = v35;
  return result;
}

double sub_10005B5C0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, unsigned __int8 a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v20 = swift_allocObject();
  v20[2] = a14;
  v20[3] = a15;
  v20[4] = a7;
  v20[5] = a9;
  sub_10005AD64(a1, a2, a3, a4, _swiftEmptyArrayStorage, a5, 0, v31, 0, a6, sub_10005B738, v20, a10, a11, a12, a13, a14, a15);
  v21 = v39;
  a8[8] = v38;
  a8[9] = v21;
  v22 = v41;
  a8[10] = v40;
  a8[11] = v22;
  v23 = v35;
  a8[4] = v34;
  a8[5] = v23;
  v24 = v37;
  a8[6] = v36;
  a8[7] = v24;
  v25 = v31[1];
  *a8 = v31[0];
  a8[1] = v25;
  result = *&v32;
  v27 = v33;
  a8[2] = v32;
  a8[3] = v27;
  return result;
}

uint64_t sub_10005B700()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  return sub_100059EC0(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(v9 + 32));
}

uint64_t sub_10005B770()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005B7F0()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(type metadata accessor for Optional() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  if (*(v0 + 4) >= 2uLL)
  {
  }

  v8 = *(AssociatedTypeWitness - 8);
  if (!(*(v8 + 48))(&v0[v6], 1, AssociatedTypeWitness))
  {
    (*(v8 + 8))(&v0[v6], AssociatedTypeWitness);
  }

  v9 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *&v0[v9 + 8];

  v11 = *&v0[v9 + 16];

  return _swift_deallocObject(v0, v9 + 24, v5 | 7);
}

uint64_t sub_10005B95C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for Optional() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10005A148(a1, a2, v2[4], v2 + v8, *v9, v9[1], v9[2]);
}

uint64_t sub_10005BA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10005BAD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10005BB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005BB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10005BBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005BC40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005BC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10005BCF0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_10005BD34()
{
  result = qword_1000B5BC0;
  if (!qword_1000B5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BC0);
  }

  return result;
}

unint64_t sub_10005BD8C()
{
  result = qword_1000B5BC8;
  if (!qword_1000B5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BC8);
  }

  return result;
}

unint64_t sub_10005BDE4()
{
  result = qword_1000B5BD0;
  if (!qword_1000B5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BD0);
  }

  return result;
}

unint64_t sub_10005BE3C()
{
  result = qword_1000B5BD8;
  if (!qword_1000B5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BD8);
  }

  return result;
}

uint64_t sub_10005BEF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, char a7)
{
  v8 = v7;
  v14 = a1;
  v15 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_15;
  }

  v17 = sub_1000561CC(a1, a2, a3);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  v38 = a7;
  v51 = v14;
  v39 = a4;
  sub_100058AFC(*(v15 + 56) + 72 * v17, &v47);
  v19 = *(&v49 + 1);
  v20 = *(*(&v49 + 1) + 16);
  if (v20)
  {
    v21 = sub_10004E478(v20, 0);
    v37 = sub_100062194(&v42, (v21 + 4), v20, v19);

    sub_100018614();
    if (v37 != v20)
    {
      __break(1u);
      goto LABEL_31;
    }

    v8 = v7;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  LOBYTE(a4) = v39;
  *&v42 = v21;

  sub_100080110(&v42);
  if (v8)
  {
LABEL_31:

    __break(1u);
    return result;
  }

  sub_100039234(&v47);
  v22 = *(v42 + 16);

  if (!v22)
  {
    v14 = v51;
LABEL_15:
    *(&v43 + 1) = &type metadata for Bool;
    LOBYTE(v42) = a4 & 1;
    sub_10005AC84(&v42, v48 + 8);
    *&v47 = v14;
    *(&v47 + 1) = a2;
    *&v48[0] = a3;
    *(&v49 + 1) = a5;
    v50 = 1;

    sub_10006AD50(&v47);
    sub_100039234(&v47);
    v25 = &v42;
    return sub_100002BCC(v25, &qword_1000B5428, &qword_100093030);
  }

  if (v38)
  {
    v14 = v51;
    if (v38 == 1)
    {
      if (*(v15 + 16) && (v23 = sub_1000561CC(v51, a2, a3), (v24 & 1) != 0))
      {
        sub_100058AFC(*(v15 + 56) + 72 * v23, &v42);
        v48[1] = v44;
        v49 = v45;
        v50 = v46;
        v47 = v42;
        v48[0] = v43;
      }

      else
      {
        BYTE8(v48[0]) = v39 & 1;
        *&v47 = v14;
        *(&v47 + 1) = a2;
        *&v48[0] = a3;
        *&v49 = &type metadata for Bool;
        *(&v49 + 1) = &_swiftEmptySetSingleton;
        v50 = 1;
      }

      sub_10005AC84(v48 + 8, &v42);
      sub_1000021C0(&qword_1000B5428, &qword_100093030);
      v34 = swift_dynamicCast();
      v35 = v40[0];
      if (!v34)
      {
        v35 = v39;
      }

      *(&v43 + 1) = &type metadata for Bool;
      LOBYTE(v42) = v35 & 1;
      sub_100062CA0(&v42, v48 + 8);

      sub_100055BDC(v36);
      sub_10006AD50(&v47);
      return sub_100039234(&v47);
    }

    goto LABEL_15;
  }

  result = v51;
  if (*(v15 + 16))
  {
    result = sub_1000561CC(v51, a2, a3);
    if (v27)
    {
      sub_100058AFC(*(v15 + 56) + 72 * result, &v47);
      sub_10005AC84(v48 + 8, &v42);
      sub_1000021C0(&qword_1000B5428, &qword_100093030);
      if (swift_dynamicCast() & 1) == 0 || v40[0] == 2 || ((v40[0] ^ v39))
      {
        v28 = *(&v49 + 1);
        v29 = a6[1];
        sub_10002A1BC();
        swift_allocError();
        *v30 = v28;
        *(v30 + 8) = a5;
        *(v30 + 16) = v29;
        v31 = v45;
        v32 = v44;
        v33 = v42;
        *(v30 + 40) = v43;
        *(v30 + 24) = v33;
        *(v30 + 56) = v32;
        *(v30 + 72) = v31;
        *(v30 + 80) = 10;
        swift_willThrow();

        return sub_100039234(&v47);
      }

      v41 = &type metadata for Bool;
      v40[0] = v39 & 1;
      sub_10005AC84(v40, &v43 + 8);
      *&v42 = v51;
      *(&v42 + 1) = a2;
      *&v43 = a3;
      *(&v45 + 1) = a5;
      v46 = 1;

      sub_10006AD50(&v42);
      sub_100039234(&v42);
      sub_100039234(&v47);
      v25 = v40;
      return sub_100002BCC(v25, &qword_1000B5428, &qword_100093030);
    }
  }

  return result;
}

unint64_t sub_10005C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v90) = a7;
  v101 = *(a8 - 8);
  v18 = *(v101 + 64);
  __chkstk_darwin();
  v81 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  v21 = *(v83 + 64);
  __chkstk_darwin();
  v84 = &v73 - v22;
  v89 = v20;
  v88 = *(v20 - 8);
  v23 = v88[8];
  __chkstk_darwin();
  v82 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v73 - v25;
  __chkstk_darwin();
  v87 = &v73 - v26;
  v27 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_19;
  }

  v28 = sub_1000561CC(a1, a2, a3);
  if ((v29 & 1) == 0)
  {
    goto LABEL_19;
  }

  v79 = a4;
  *&v80 = a1;
  *(&v80 + 1) = a2;
  sub_100058AFC(*(v27 + 56) + 72 * v28, v97);
  v30 = v99;
  v31 = *(v99 + 16);
  if (v31)
  {
    v76 = a3;
    v77 = a6;
    v78 = a5;
    v74 = v9;
    v32 = sub_10004E478(v31, 0);
    v75 = sub_100062194(&v91, (v32 + 4), v31, v30);

    sub_100018614();
    if (v75 != v31)
    {
      __break(1u);
      goto LABEL_29;
    }

    v10 = v74;
    a5 = v78;
    a6 = v77;
    a3 = v76;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  a4 = v79;
  *&v91 = v32;

  sub_100080110(&v91);
  if (v10)
  {
LABEL_29:

    __break(1u);
    return result;
  }

  v33 = *(v91 + 16);

  result = sub_100039234(v97);
  if (!v33)
  {
    a2 = *(&v80 + 1);
    a1 = v80;
LABEL_19:
    *(&v92[0] + 1) = a8;
    v54 = sub_100007DE4(&v91);
    (*(v101 + 16))(v54, a4, a8);
    sub_10005AC84(&v91, v98);
    v97[0] = a1;
    v97[1] = a2;
    v97[2] = a3;
    v99 = a5;
    v100 = 1;

    sub_10006AD50(v97);
    sub_100039234(v97);
    v55 = &v91;
    return sub_100002BCC(v55, &qword_1000B5428, &qword_100093030);
  }

  a1 = v80;
  if (v90)
  {
    if (v90 == 1)
    {
      __chkstk_darwin();
      *(&v73 - 2) = a8;
      *(&v73 - 1) = v35;
      return sub_10006AA44(a1, *(&v80 + 1), a3, a5, a4, String.init(argument:), (&v73 - 4), a8);
    }

    a2 = *(&v80 + 1);
    goto LABEL_19;
  }

  v90 = a9;
  if (*(v27 + 16))
  {
    result = sub_1000561CC(v80, *(&v80 + 1), a3);
    if (v36)
    {
      v76 = a3;
      v77 = a6;
      v78 = a5;
      sub_100058AFC(*(v27 + 56) + 72 * result, v97);
      sub_10005AC84(v98, &v91);
      sub_1000021C0(&qword_1000B5428, &qword_100093030);
      v37 = v87;
      v38 = swift_dynamicCast();
      v39 = v101;
      v40 = *(v101 + 56);
      v40(v37, v38 ^ 1u, 1, a8);
      v41 = *(v39 + 16);
      v42 = v85;
      v74 = v39 + 16;
      v73 = v41;
      v41(v85, a4, a8);
      v40(v42, 0, 1, a8);
      v43 = *(TupleTypeMetadata2 + 48);
      v44 = v88[2];
      v45 = v84;
      v46 = v37;
      v47 = v89;
      v44(v84, v46, v89);
      v75 = v43;
      v44(&v43[v45], v42, v47);
      v48 = *(v39 + 48);
      if (v48(v45, 1, a8) == 1)
      {
        v49 = v88[1];
        v50 = v89;
        v49(v42, v89);
        v51 = v48(&v75[v45], 1, a8);
        v52 = v50;
        if (v51 == 1)
        {
          v49(v45, v50);
          v49(v87, v50);
          v53 = v78;
LABEL_27:
          v96[3] = a8;
          v72 = sub_100007DE4(v96);
          v73(v72, v79, a8);
          sub_10005AC84(v96, v92 + 8);
          v91 = v80;
          *&v92[0] = v76;
          v94 = v53;
          v95 = 1;

          sub_10006AD50(&v91);
          sub_100039234(&v91);
          sub_100039234(v97);
          v55 = v96;
          return sub_100002BCC(v55, &qword_1000B5428, &qword_100093030);
        }
      }

      else
      {
        v56 = v82;
        v44(v82, v45, v89);
        v57 = v75;
        if (v48(&v75[v45], 1, a8) != 1)
        {
          v65 = v101;
          v66 = v57 + v45;
          v67 = v56;
          v68 = v81;
          (*(v101 + 32))(v81, v66, a8);
          LODWORD(v90) = dispatch thunk of static Equatable.== infix(_:_:)();
          v69 = *(v65 + 8);
          v69(v68, a8);
          v70 = v88[1];
          v71 = v89;
          v70(v85, v89);
          v69(v67, a8);
          v70(v45, v71);
          v70(v87, v71);
          v53 = v78;
          v58 = v77;
          if (v90)
          {
            goto LABEL_27;
          }

LABEL_25:
          v59 = v99;
          v60 = v58[1];
          sub_10002A1BC();
          swift_allocError();
          *v61 = v59;
          *(v61 + 8) = v53;
          *(v61 + 16) = v60;
          v62 = v93;
          v63 = v92[1];
          v64 = v91;
          *(v61 + 40) = v92[0];
          *(v61 + 24) = v64;
          *(v61 + 56) = v63;
          *(v61 + 72) = v62;
          *(v61 + 80) = 10;
          swift_willThrow();

          return sub_100039234(v97);
        }

        v49 = v88[1];
        v52 = v89;
        v49(v85, v89);
        (*(v101 + 8))(v56, a8);
      }

      v53 = v78;
      v58 = v77;
      (*(v83 + 8))(v45, TupleTypeMetadata2);
      v49(v87, v52);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_10005CE10(_OWORD *a1)
{
  v3 = *v1;
  v44 = *(*v1 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100043B48((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[192 * v5];
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[3];
    *(v6 + 4) = a1[2];
    *(v6 + 5) = v9;
    *(v6 + 2) = v7;
    *(v6 + 3) = v8;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[7];
    *(v6 + 8) = a1[6];
    *(v6 + 9) = v12;
    *(v6 + 6) = v10;
    *(v6 + 7) = v11;
    v13 = a1[8];
    v14 = a1[9];
    v15 = a1[11];
    *(v6 + 12) = a1[10];
    *(v6 + 13) = v15;
    *(v6 + 10) = v13;
    *(v6 + 11) = v14;
    *v46 = v3;
    v16 = *a1;
    if (*a1 >= 2uLL)
    {
      v17 = *a1;
    }

    else
    {
      v16 = &_swiftEmptyArrayStorage;
    }

    v45 = v16[2];
    if (!v45)
    {
      break;
    }

    sub_1000289DC(a1, v47);
    v18 = 0;
    v3 = (v16 + 6);
    while (v18 < v16[2])
    {
      v22 = *(v3 - 2);
      v21 = *(v3 - 1);
      v23 = *v3;
      if ((*v3 & 0xC0) == 0x40)
      {
        v24 = 64;
      }

      else
      {
        v24 = *v3;
      }

      v25 = *(v46[1] + 2);
      sub_10002BB8C(*(v3 - 2), *(v3 - 1), *v3);
      if (v25)
      {
        sub_10002BB8C(v22, v21, v23);
        sub_1000560F8(v22, v21, v24);
        v27 = v26;
        sub_100028AE8(v22, v21, v23);
        if (v27)
        {
          sub_100028AE8(v22, v21, v23);
          goto LABEL_11;
        }
      }

      a1 = v16;
      v28 = v46[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = v46[1];
      v30 = v47[0];
      v31 = sub_1000560F8(v22, v21, v24);
      v33 = *(v30 + 16);
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_32;
      }

      v37 = v32;
      if (*(v30 + 24) < v36)
      {
        sub_10006B49C(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_1000560F8(v22, v21, v24);
        if ((v37 & 1) != (v38 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_24:
        v16 = a1;
        if ((v37 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v42 = v31;
      sub_10006AE74();
      v31 = v42;
      v16 = a1;
      if ((v37 & 1) == 0)
      {
LABEL_25:
        v20 = v47[0];
        *(v47[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v39 = *(v20 + 6) + 24 * v31;
        *v39 = v22;
        *(v39 + 8) = v21;
        *(v39 + 16) = v24;
        *(*(v20 + 7) + 8 * v31) = v44;
        v40 = *(v20 + 2);
        v35 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v35)
        {
          goto LABEL_33;
        }

        *(v20 + 2) = v41;
        goto LABEL_10;
      }

LABEL_9:
      v19 = v31;
      sub_100028AE8(v22, v21, v23);
      v20 = v47[0];
      *(*(v47[0] + 56) + 8 * v19) = v44;
LABEL_10:
      v46[1] = v20;
LABEL_11:
      ++v18;
      v3 += 24;
      if (v45 == v18)
      {
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v3 = sub_100043B48(0, v44 + 1, 1, v3);
  }

  sub_1000289DC(a1, v47);
}

void *sub_10005D14C@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10005D178(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_10005D1C0(void (**a1)(void **a1), unint64_t *a2))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x180uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    v7 = (*v2 + 192 * v6);
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[5];
    *(result + 2) = v7[4];
    *(result + 3) = v10;
    *result = v8;
    *(result + 1) = v9;
    v11 = v7[6];
    v12 = v7[7];
    v13 = v7[9];
    *(result + 6) = v7[8];
    *(result + 7) = v13;
    *(result + 4) = v11;
    *(result + 5) = v12;
    v14 = v7[10];
    v15 = v7[11];
    v16 = v7[13];
    *(result + 10) = v7[12];
    *(result + 11) = v16;
    *(result + 8) = v14;
    *(result + 9) = v15;
    v17 = *(result + 3);
    *(result + 14) = *(result + 2);
    *(result + 15) = v17;
    v18 = *(result + 1);
    *(result + 12) = *result;
    *(result + 13) = v18;
    v19 = *(result + 7);
    *(result + 18) = *(result + 6);
    *(result + 19) = v19;
    v20 = *(result + 5);
    *(result + 16) = *(result + 4);
    *(result + 17) = v20;
    v21 = *(result + 11);
    *(result + 22) = *(result + 10);
    *(result + 23) = v21;
    v22 = *(result + 9);
    *(result + 20) = *(result + 8);
    *(result + 21) = v22;
    return sub_10005D2B4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10005D2BC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

void sub_10005D31C(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_10005D350@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_10005D37C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1000622A8(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_10005D3B8(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_10005D3E0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_10005D3FC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_10005D418(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_10005D434@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_10005D458(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_10005D47C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

char *sub_10005D498()
{
  v1 = sub_10004E58C(*v0, v0[1]);

  return v1;
}

unint64_t sub_10005D514()
{
  result = qword_1000B5BF0;
  if (!qword_1000B5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5BF0);
  }

  return result;
}

unint64_t sub_10005D5A8()
{
  result = qword_1000B5C08;
  if (!qword_1000B5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C08);
  }

  return result;
}

unint64_t sub_10005D644()
{
  result = qword_1000B5C20;
  if (!qword_1000B5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C20);
  }

  return result;
}

unint64_t sub_10005D714()
{
  result = qword_1000B5C38;
  if (!qword_1000B5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C38);
  }

  return result;
}

uint64_t sub_10005D7A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(&qword_1000B5C00, &qword_100093BC0);
    sub_10005D5A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005D860(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(&qword_1000B5C18, &qword_100093BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005D8D8()
{
  result = qword_1000B5C50;
  if (!qword_1000B5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C50);
  }

  return result;
}

uint64_t sub_10005D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = &type metadata for Bool;
  v16[0] = 1;
  sub_10005AC84(v16, v14);
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14[4] = a1;
  v15 = 1;

  sub_10006AD50(v13);
  sub_100039234(v13);
  return sub_100002BCC(v16, &qword_1000B5428, &qword_100093030);
}

uint64_t sub_10005DA4C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 2)
  {
    v17 = v6;
    v18 = v7;
    v16 = &type metadata for Bool;
    v15[0] = a3 & 1;
    v11 = result;
    sub_10005AC84(v15, v13);
    v12[0] = a4;
    v12[1] = a5;
    v12[2] = a6;
    v13[4] = v11;
    v14 = 1;

    sub_10006AD50(v12);
    sub_100039234(v12);
    return sub_100002BCC(v15, &qword_1000B5428, &qword_100093030);
  }

  return result;
}

uint64_t sub_10005DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a5;
  if (!*(*a5 + 16) || (v13 = sub_1000561CC(a6, a7, a8), (v14 & 1) == 0))
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_8;
  }

  sub_100058AFC(*(v8 + 56) + 72 * v13, v17);
  sub_10005AC84(v18, &v20);
  sub_100039234(v17);
  if (!*(&v21 + 1))
  {
LABEL_8:
    sub_100002BCC(&v20, &qword_1000B5428, &qword_100093030);
LABEL_9:
    sub_10002A1BC();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0;
    *(v16 + 80) = 15;
    return swift_willThrow();
  }

  sub_100058B58(&v20, v22);
  sub_10004CC10(v22, v17);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_100002B38(v22);
    goto LABEL_9;
  }

  if (__OFADD__(v20, 1))
  {
    __break(1u);
  }

  else
  {
    *(&v21 + 1) = &type metadata for Int;
    *&v20 = v20 + 1;
    sub_10005AC84(&v20, v18);
    v17[0] = a6;
    v17[1] = a7;
    v17[2] = a8;
    v18[4] = a1;
    v19 = 1;

    sub_10006AD50(v17);
    sub_100039234(v17);
    sub_100002B38(v22);
    return sub_100002BCC(&v20, &qword_1000B5428, &qword_100093030);
  }

  return result;
}

uint64_t sub_10005DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = &type metadata for Int;
  v13[0] = 0;
  sub_10005AC84(v13, v11);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v11[4] = a1;
  v12 = 1;

  sub_10006AD50(v10);
  sub_100039234(v10);
  return sub_100002BCC(v13, &qword_1000B5428, &qword_100093030);
}

uint64_t sub_10005DE1C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = result;

    v7 = v4 - 1;
    for (i = 32; ; i += 192)
    {
      v9 = *(a2 + i + 144);
      v17[8] = *(a2 + i + 128);
      v17[9] = v9;
      v10 = *(a2 + i + 176);
      v17[10] = *(a2 + i + 160);
      v18 = v10;
      v11 = *(a2 + i + 80);
      v17[4] = *(a2 + i + 64);
      v17[5] = v11;
      v12 = *(a2 + i + 112);
      v17[6] = *(a2 + i + 96);
      v17[7] = v12;
      v13 = *(a2 + i + 16);
      v17[0] = *(a2 + i);
      v17[1] = v13;
      v14 = *(a2 + i + 48);
      v17[2] = *(a2 + i + 32);
      v17[3] = v14;
      v15 = v18;
      sub_1000289DC(v17, &v16);
      v15(&_swiftEmptySetSingleton, v6);
      sub_100028A38(v17);
      if (v3 || !v7)
      {
        break;
      }

      --v7;
    }
  }

  return result;
}

uint64_t sub_10005E29C(Swift::UInt a1, uint64_t *a2, Swift::UInt a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = v9;
  v16 = a9;
  v235 = *a2;
  v270 = a2[1];
  v17 = a2[2];
  sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008E640;
  v231 = a3;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 49) = BYTE1(a5) & 1;
  v19 = sub_100068C4C(v18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v20 = *(a1 + 145);
  if (v20 <= 2)
  {
    if (*(a1 + 145))
    {
      if (v20 == 1)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          v230 = v17;

          if ((sub_100059AEC() & 1) != 0 && (a5 & 0x100) == 0 && (a5 & 1) == 0 && !a4)
          {
            if ((v231 & 0x8000000000000000) == 0)
            {
              v21 = v232[6];
              if (*(v21 + 16) > v231)
              {
                v22 = v21 + 16 * v231;
                v24 = *(v22 + 32);
                v23 = *(v22 + 40);

                sub_100068124(2uLL, v24, v23);

                a4 = static String._fromSubstring(_:)();
                a5 = v25;
                v26 = v231;

                if (*(v19 + 16))
                {
                  v27 = *(v19 + 40);
                  Hasher.init(_seed:)();
                  Hasher._combine(_:)(1uLL);
                  Hasher._combine(_:)(v231);
                  Hasher._combine(_:)(0);
                  v28 = Hasher._finalize()();
                  v29 = -1 << *(v19 + 32);
                  v30 = v28 & ~v29;
                  if ((*(v19 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
                  {
                    v31 = ~v29;
                    while (1)
                    {
                      v68 = *(v19 + 48) + 24 * v30;
                      if (*(v68 + 17) & 1) == 0 && *v68 == v231 && (*(v68 + 16))
                      {
                        break;
                      }

                      v30 = (v30 + 1) & v31;
                      if (((*(v19 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                      {
                        goto LABEL_117;
                      }
                    }

LABEL_61:

                    goto LABEL_235;
                  }
                }

LABEL_117:

                if (*(v19 + 16))
                {
                  v126 = *(v19 + 40);
                  Hasher.init(_seed:)();
                  Hasher._combine(_:)(1uLL);
                  Hasher._combine(_:)(v231);
                  Hasher._combine(_:)(0);
                  v127 = Hasher._finalize()();
                  v128 = -1 << *(v19 + 32);
                  v129 = v127 & ~v128;
                  if ((*(v19 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129))
                  {
                    v130 = ~v128;
                    do
                    {
                      v131 = *(v19 + 48) + 24 * v129;
                      if (*(v131 + 17) & 1) == 0 && *v131 == v231 && (*(v131 + 16))
                      {
                        goto LABEL_235;
                      }

                      v129 = (v129 + 1) & v130;
                    }

                    while (((*(v19 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) != 0);
                  }
                }

                v143 = *(v19 + 40);
                Hasher.init(_seed:)();
                Hasher._combine(_:)(1uLL);
                Hasher._combine(_:)(v231);
                Hasher._combine(_:)(0);
                v144 = Hasher._finalize()();
                v145 = -1 << *(v19 + 32);
                v146 = v144 & ~v145;
                if ((*(v19 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146))
                {
                  v147 = ~v145;
                  do
                  {
                    v148 = *(v19 + 48) + 24 * v146;
                    if (*(v148 + 17) & 1) == 0 && *v148 == v231 && (*(v148 + 16))
                    {
                      goto LABEL_158;
                    }

                    v146 = (v146 + 1) & v147;
                  }

                  while (((*(v19 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) != 0);
                }

LABEL_157:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v236 = v19;
                sub_100057B10(v26, 0, 1, v146, isUniquelyReferenced_nonNull_native);

LABEL_158:
                v17 = v230;
                goto LABEL_235;
              }

              goto LABEL_253;
            }

            goto LABEL_250;
          }

          sub_10006CB10(v231, a4, a5 & 0x1FF, &v246);
          v95 = v251;
          if (v251)
          {
            v96 = v246;
            v97 = v247;
            v98 = v250;
            v99 = v248 | ((v249 & 1) << 8);
            v100 = sub_100061F2C(v246, v247, v248 | ((v249 & 1) << 8), v19);

            if ((v100 & 1) == 0)
            {
              v239 = v19;
              if ((sub_100061F2C(v96, v97, v99, v19) & 1) == 0)
              {
                sub_100056A44(&v236, v96, v97, v99);
                v19 = v239;
              }
            }

            a6(v19, v235, v270, v230, v98, v95, a8);
            if (v9)
            {

              return sub_100002BCC(&v246, &qword_1000B5C58, &qword_100093D88);
            }

            sub_100002BCC(&v246, &qword_1000B5C58, &qword_100093D88);
            return sub_100055BDC(v19);
          }

LABEL_98:

          sub_10002A1BC();
          swift_allocError();
          *v107 = v19;
          *(v107 + 8) = v235;
          v108 = v270;
          *(v107 + 16) = v270;
          *(v107 + 24) = v230;
          v109 = *&v238[15];
          v110 = *v238;
          v111 = v236;
          *(v107 + 41) = v237;
          *(v107 + 25) = v111;
          *(v107 + 57) = v110;
          *(v107 + 72) = v109;
          *(v107 + 80) = 7;
          swift_willThrow();
          return sub_10002BB8C(v235, v108, v230);
        }

        goto LABEL_62;
      }

      if (v17 < 0)
      {
LABEL_62:
        v70 = a2[3];
        v71 = a2[4];

        a6(v72, v235, v270, v17, v70, v71, a8);
        if (!v10)
        {
LABEL_237:

          return sub_100055BDC(v19);
        }

        return swift_bridgeObjectRelease_n();
      }

      v230 = v17;

      if ((sub_100059AEC() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
      {
        sub_10006CC94(v231, a4, a5 & 0x1FF, &v252);
        v101 = v257;
        if (v257)
        {
          v102 = v252;
          v103 = v253;
          v104 = v256;
          v105 = v254 | ((v255 & 1) << 8);
          v106 = sub_100061F2C(v252, v253, v254 | ((v255 & 1) << 8), v19);

          if ((v106 & 1) == 0)
          {
            v239 = v19;
            if ((sub_100061F2C(v102, v103, v105, v19) & 1) == 0)
            {
              sub_100056A44(&v236, v102, v103, v105);
              v19 = v239;
            }
          }

          a6(v19, v235, v270, v230, v104, v101, a8);
          if (v9)
          {

            return sub_100002BCC(&v252, &qword_1000B5C58, &qword_100093D88);
          }

          sub_100002BCC(&v252, &qword_1000B5C58, &qword_100093D88);
          return sub_100055BDC(v19);
        }

        goto LABEL_98;
      }

      if ((v231 & 0x8000000000000000) != 0)
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v57 = v232[6];
      if (*(v57 + 16) <= v231)
      {
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      v58 = v57 + 16 * v231;
      v60 = *(v58 + 32);
      v59 = *(v58 + 40);

      sub_100068124(2uLL, v60, v59);

      a4 = static String._fromSubstring(_:)();
      a5 = v61;
      v26 = v231;

      if (*(v19 + 16))
      {
        v62 = *(v19 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v231);
        Hasher._combine(_:)(0);
        v63 = Hasher._finalize()();
        v64 = -1 << *(v19 + 32);
        v65 = v63 & ~v64;
        if ((*(v19 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
        {
          v66 = ~v64;
          do
          {
            v69 = *(v19 + 48) + 24 * v65;
            if (*(v69 + 17) & 1) == 0 && *v69 == v231 && (*(v69 + 16))
            {
              goto LABEL_61;
            }

            v65 = (v65 + 1) & v66;
          }

          while (((*(v19 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) != 0);
        }
      }

      if (!*(v19 + 16))
      {
        goto LABEL_150;
      }

      v132 = *(v19 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v231);
      Hasher._combine(_:)(0);
      v133 = Hasher._finalize()();
      v134 = -1 << *(v19 + 32);
      v135 = v133 & ~v134;
      if (((*(v19 + 56 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
      {
LABEL_150:
        v149 = *(v19 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v231);
        Hasher._combine(_:)(0);
        v150 = Hasher._finalize()();
        v151 = -1 << *(v19 + 32);
        v146 = v150 & ~v151;
        if ((*(v19 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146))
        {
          v152 = ~v151;
          while (1)
          {
            v153 = *(v19 + 48) + 24 * v146;
            if (*(v153 + 17) & 1) == 0 && *v153 == v231 && (*(v153 + 16))
            {
              goto LABEL_158;
            }

            v146 = (v146 + 1) & v152;
            if (((*(v19 + 56 + ((v146 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v146) & 1) == 0)
            {
              goto LABEL_157;
            }
          }
        }

        goto LABEL_157;
      }

      v136 = ~v134;
      while (1)
      {
        v137 = *(v19 + 48) + 24 * v135;
        if (*(v137 + 17) & 1) == 0 && *v137 == v231 && (*(v137 + 16))
        {
          break;
        }

        v135 = (v135 + 1) & v136;
        if (((*(v19 + 56 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
        {
          goto LABEL_150;
        }
      }

LABEL_235:
      *&v236 = a4;
      *(&v236 + 1) = a5;
      v222 = String.init<A>(_:)();
      a6(v19, v235, v270, v17, v222, v223, a8);
      if (v10)
      {
      }

      goto LABEL_237;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      v230 = v17;

      if ((sub_100059AEC() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
      {
        sub_10006CA04(v231, a4, a5 & 0x1FF, &v240);
        v89 = v245;
        if (v245)
        {
          v90 = v240;
          v91 = v241;
          v92 = v244;
          v93 = v242 | ((v243 & 1) << 8);
          v94 = sub_100061F2C(v240, v241, v242 | ((v243 & 1) << 8), v19);

          if ((v94 & 1) == 0)
          {
            v239 = v19;
            if ((sub_100061F2C(v90, v91, v93, v19) & 1) == 0)
            {
              sub_100056A44(&v236, v90, v91, v93);
              v19 = v239;
            }
          }

          a6(v19, v235, v270, v230, v92, v89, a8);
          if (v9)
          {

            return sub_100002BCC(&v240, &qword_1000B5C58, &qword_100093D88);
          }

          sub_100002BCC(&v240, &qword_1000B5C58, &qword_100093D88);
          return sub_100055BDC(v19);
        }

        goto LABEL_98;
      }

      if ((v231 & 0x8000000000000000) == 0)
      {
        v47 = v232[6];
        if (*(v47 + 16) <= v231)
        {
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
          goto LABEL_254;
        }

        v48 = v47 + 16 * v231;
        v50 = *(v48 + 32);
        v49 = *(v48 + 40);

        sub_100068124(2uLL, v50, v49);

        a4 = static String._fromSubstring(_:)();
        a5 = v51;
        a1 = v231;

        if (*(v19 + 16))
        {
          v52 = *(v19 + 40);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v231);
          Hasher._combine(_:)(0);
          v53 = Hasher._finalize()();
          v54 = -1 << *(v19 + 32);
          v55 = v53 & ~v54;
          if ((*(v19 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
          {
            v56 = ~v54;
            do
            {
              v67 = *(v19 + 48) + 24 * v55;
              if (*(v67 + 17) & 1) == 0 && *v67 == v231 && (*(v67 + 16))
              {
                goto LABEL_61;
              }

              v55 = (v55 + 1) & v56;
            }

            while (((*(v19 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) != 0);
          }
        }

        if (*(v19 + 16))
        {
          v120 = *(v19 + 40);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v231);
          Hasher._combine(_:)(0);
          v121 = Hasher._finalize()();
          v122 = -1 << *(v19 + 32);
          v123 = v121 & ~v122;
          if ((*(v19 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123))
          {
            v124 = ~v122;
            do
            {
              v125 = *(v19 + 48) + 24 * v123;
              if (*(v125 + 17) & 1) == 0 && *v125 == v231 && (*(v125 + 16))
              {
                goto LABEL_235;
              }

              v123 = (v123 + 1) & v124;
            }

            while (((*(v19 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) != 0);
          }
        }

        v138 = *(v19 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v231);
        Hasher._combine(_:)(0);
        v139 = Hasher._finalize()();
        v140 = -1 << *(v19 + 32);
        v18 = v139 & ~v140;
        if ((*(v19 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v141 = ~v140;
          do
          {
            v142 = *(v19 + 48) + 24 * v18;
            if (*(v142 + 17) & 1) == 0 && *v142 == v231 && (*(v142 + 16))
            {
              goto LABEL_235;
            }

            v18 = (v18 + 1) & v141;
          }

          while (((*(v19 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
        }

        v164 = swift_isUniquelyReferenced_nonNull_native();
        v239 = v19;
        v165 = *(v19 + 16);
        if (*(v19 + 24) > v165)
        {
          if ((v164 & 1) == 0)
          {
            goto LABEL_258;
          }

          v81 = v19;
          goto LABEL_233;
        }

        if (v164)
        {
          sub_10005717C(v165 + 1);
        }

        else
        {
          sub_1000583B8(v165 + 1);
        }

        v81 = v239;
        v198 = *(v239 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v231);
        Hasher._combine(_:)(0);
        v199 = Hasher._finalize()();
        v200 = -1 << *(v239 + 32);
        v18 = v199 & ~v200;
        if (((*(v239 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_233;
        }

        v201 = ~v200;
        while (1)
        {
          v202 = *(v239 + 48) + 24 * v18;
          if (*(v202 + 17) & 1) == 0 && *v202 == v231 && (*(v202 + 16))
          {
            break;
          }

          v18 = (v18 + 1) & v201;
          if (((*(v239 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_233;
          }
        }

        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_218;
      }

LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v112 = a2[3];
    v113 = a2[4];

    a6(v114, v235, v270, v17, v112, v113, a8);

    if (!v10)
    {
      return sub_100055BDC(v19);
    }
  }

  if (v20 - 5 < 2)
  {

    sub_10002A1BC();
    swift_allocError();
    *v32 = 3;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0;
    *(v32 + 80) = 15;
    return swift_willThrow();
  }

  v228 = a9;
  v229 = v19;
  if (v20 == 3)
  {
    if (v17 < 0)
    {
      v115 = a2[3];
      v116 = a2[4];

      a5 = v235;
      a4 = v270;
      a6(v117, v235, v270, v17, v115, v116, a8);
      if (v10)
      {
        return swift_bridgeObjectRelease_n();
      }

      v230 = v17;

      sub_100055BDC(v118);
LABEL_189:
      v18 = 1;
LABEL_190:

      sub_100055BDC(v182);
      sub_100068908(v19);
      v183 = v232[4];
      v184 = v232[5];
      v185 = *(v183 + 16);
      if (v185 < v184)
      {
        __break(1u);
      }

      else if ((v184 & 0x8000000000000000) == 0)
      {
        if (v184 == v185)
        {
          goto LABEL_204;
        }

        if (v184 < v185)
        {
          if ((*(v183 + (v184 << 6) + 48) & 0x6000000000000000) == 0x2000000000000000)
          {
            v186 = v10;
            sub_10006CDA4(&v264);
            v187 = v269;
            if (!v269)
            {
              return swift_bridgeObjectRelease_n();
            }

            v188 = v267;
            v189 = v266;
            v190 = v265;
            v191 = v268;
            while (1)
            {
              v192 = v264;
              if (sub_100061F2C(v264, v190, v189 | ((v188 & 1u) << 8), v229) & 1) != 0 || (v239 = v229, (sub_100061F2C(v192, v190, v189 | ((v188 & 1u) << 8), v229)))
              {

                v193 = v229;
              }

              else
              {

                sub_100056A44(&v236, v192, v190, v189 | ((v188 & 1) << 8));
                v193 = v239;
              }

              a6(v193, v235, v270, v230, v191, v187, a8);
              if (v186)
              {
                break;
              }

              v186 = 0;
              sub_100002BCC(&v264, &qword_1000B5C58, &qword_100093D88);
              sub_100055BDC(v193);
              sub_10006CDA4(&v264);
              v190 = v265;
              v189 = v266;
              v191 = v268;
              v187 = v269;
              v188 = v267;
              if (!v269)
              {
                return swift_bridgeObjectRelease_n();
              }
            }

            swift_bridgeObjectRelease_n();
            return sub_100002BCC(&v264, &qword_1000B5C58, &qword_100093D88);
          }

LABEL_204:

          if (!v18)
          {
            sub_10002A1BC();
            swift_allocError();
            *v194 = v19;
            *(v194 + 8) = a5;
            *(v194 + 16) = a4;
            *(v194 + 24) = v230;
            v195 = *&v238[15];
            v196 = *v238;
            v197 = v236;
            *(v194 + 41) = v237;
            *(v194 + 25) = v197;
            *(v194 + 57) = v196;
            *(v194 + 72) = v195;
            *(v194 + 80) = 7;
            swift_willThrow();
            return sub_10002BB8C(a5, a4, v230);
          }
        }

LABEL_248:
        __break(1u);
        goto LABEL_249;
      }

      __break(1u);
      goto LABEL_248;
    }

    v230 = v17;

    v18 = 0;
    if ((sub_100059AEC() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
    {
      a4 = v270;
      a5 = v235;
      goto LABEL_190;
    }

    if ((v231 & 0x8000000000000000) != 0)
    {
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
      do
      {
        __break(1u);
LABEL_258:
        sub_100057FB0();
        v17 = v230;
        v81 = v239;
LABEL_233:
        *(v81 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v18;
        v218 = *(v81 + 48) + 24 * v18;
        *v218 = a1;
        *(v218 + 8) = 0;
        *(v218 + 16) = 1;
        v219 = *(v81 + 16);
        v220 = __OFADD__(v219, 1);
        v221 = v219 + 1;
      }

      while (v220);
      *(v81 + 16) = v221;

      v19 = v81;
      goto LABEL_235;
    }

    v34 = v232[6];
    if (*(v34 + 16) <= v231)
    {
      goto LABEL_256;
    }

    v35 = v34 + 16 * v231;
    v37 = *(v35 + 32);
    v36 = *(v35 + 40);

    sub_100068124(2uLL, v37, v36);

    v38 = static String._fromSubstring(_:)();
    v40 = v39;
    a1 = v231;

    if (!*(v19 + 16))
    {
      goto LABEL_179;
    }

    v41 = *(v19 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v231);
    Hasher._combine(_:)(0);
    v42 = Hasher._finalize()();
    v43 = v19 + 56;
    v44 = -1 << *(v19 + 32);
    v45 = v42 & ~v44;
    if ((*(v19 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
    {
      v46 = ~v44;
      while (1)
      {
        v88 = *(v19 + 48) + 24 * v45;
        if (*(v88 + 17) & 1) == 0 && *v88 == v231 && (*(v88 + 16))
        {
          goto LABEL_185;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v43 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_171;
        }
      }
    }

    if (!*(v19 + 16))
    {
      goto LABEL_179;
    }

LABEL_171:
    v166 = *(v19 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v231);
    Hasher._combine(_:)(0);
    v167 = Hasher._finalize()();
    v168 = -1 << *(v19 + 32);
    v169 = v167 & ~v168;
    if ((*(v43 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169))
    {
      v170 = ~v168;
      while (1)
      {
        v171 = *(v19 + 48) + 24 * v169;
        if (*(v171 + 17) & 1) == 0 && *v171 == v231 && (*(v171 + 16))
        {
          break;
        }

        v169 = (v169 + 1) & v170;
        if (((*(v43 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
        {
          goto LABEL_179;
        }
      }
    }

    else
    {
LABEL_179:
      v172 = *(v19 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v231);
      Hasher._combine(_:)(0);
      v173 = Hasher._finalize()();
      v174 = -1 << *(v19 + 32);
      v175 = v173 & ~v174;
      if (((*(v19 + 56 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175) & 1) == 0)
      {
LABEL_186:

        v179 = swift_isUniquelyReferenced_nonNull_native();
        sub_100057B10(v231, 0, 1, v175, v179);
        v178 = v19;
        goto LABEL_187;
      }

      v176 = ~v174;
      while (1)
      {
        v177 = *(v19 + 48) + 24 * v175;
        if (*(v177 + 17) & 1) == 0 && *v177 == v231 && (*(v177 + 16))
        {
          break;
        }

        v175 = (v175 + 1) & v176;
        if (((*(v19 + 56 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175) & 1) == 0)
        {
          goto LABEL_186;
        }
      }
    }

LABEL_185:

    v178 = v19;
LABEL_187:
    *&v236 = v38;
    *(&v236 + 1) = v40;
    v180 = String.init<A>(_:)();
    a5 = v235;
    a4 = v270;
    a6(v178, v235, v270, v17, v180, v181, a8);
    if (v10)
    {
LABEL_243:

      return swift_bridgeObjectRelease_n();
    }

    sub_100055BDC(v178);
    sub_100068908(*a9);
    goto LABEL_189;
  }

  v230 = v17;
  v73 = *(a1 + 176);
  v74 = *(a1 + 184);

  v73(v75, a8);
  if (v9)
  {
    return swift_bridgeObjectRelease_n();
  }

  if (v230 < 0)
  {
    v155 = a2[3];
    v156 = a2[4];
    (a6)(v19, v235, v270);
    a1 = v231;

    sub_100055BDC(v157);
    goto LABEL_161;
  }

  result = sub_100059AEC();
  if ((result & 1) == 0)
  {
    a1 = v231;
    goto LABEL_161;
  }

  a1 = v231;
  if ((a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
  {
LABEL_161:
    while (1)
    {
      sub_10006CC94(a1, a4, a5 & 0x1FF, &v258);
      v158 = v263;
      if (!v263)
      {
        break;
      }

      v160 = v258;
      v159 = v259;
      v161 = v262;
      v162 = v260 | ((v261 & 1) << 8);
      if (sub_100061F2C(v258, v259, v260 | ((v261 & 1) << 8), v229) & 1) != 0 || (v239 = v229, (sub_100061F2C(v160, v159, v162, v229)))
      {

        v163 = v229;
      }

      else
      {

        sub_100056A44(&v236, v160, v159, v162);
        v163 = v239;
      }

      a1 = v231;
      a6(v163, v235, v270, v230, v161, v158, a8);
      sub_100002BCC(&v258, &qword_1000B5C58, &qword_100093D88);
      sub_100055BDC(v163);
    }

    return swift_bridgeObjectRelease_n();
  }

  if ((v231 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v76 = v232[6];
    if (*(v76 + 16) > v231)
    {
      v16 = 0;
      v77 = v76 + 16 * v231;
      v79 = *(v77 + 32);
      v78 = *(v77 + 40);

      sub_100068124(2uLL, v79, v78);

      a1 = v231;
      v227 = static String._fromSubstring(_:)();
      v81 = v80;

      if (!*(v19 + 16))
      {
        goto LABEL_226;
      }

      v82 = *(v19 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v231);
      Hasher._combine(_:)(0);
      v83 = Hasher._finalize()();
      v84 = v230;
      v18 = v19 + 56;
      v85 = -1 << *(v19 + 32);
      v86 = v83 & ~v85;
      if ((*(v19 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
      {
        v87 = ~v85;
        do
        {
          v119 = *(v19 + 48) + 24 * v86;
          if (*(v119 + 17) & 1) == 0 && *v119 == v231 && (*(v119 + 16))
          {
            goto LABEL_225;
          }

          v86 = (v86 + 1) & v87;
        }

        while (((*(v18 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) != 0);
      }

LABEL_218:
      if (*(v19 + 16))
      {
        v203 = *(v19 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(a1);
        Hasher._combine(_:)(0);
        v204 = Hasher._finalize()();
        v84 = v230;
        v205 = -1 << *(v19 + 32);
        v206 = v204 & ~v205;
        if ((*(v18 + ((v206 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v206))
        {
          v207 = ~v205;
          while (1)
          {
            v208 = *(v19 + 48) + 24 * v206;
            if (*(v208 + 17) & 1) == 0 && *v208 == a1 && (*(v208 + 16))
            {
              break;
            }

            v206 = (v206 + 1) & v207;
            if (((*(v18 + ((v206 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v206) & 1) == 0)
            {
              goto LABEL_226;
            }
          }

LABEL_225:
          v209 = v81;

          v210 = v19;
          v211 = v227;
LABEL_242:
          *&v236 = v211;
          *(&v236 + 1) = v209;
          v225 = String.init<A>(_:)();
          a6(v210, v235, v270, v84, v225, v226, a8);
          if (v16)
          {
            goto LABEL_243;
          }

          sub_100055BDC(v210);
          sub_100068908(*v228);
          goto LABEL_161;
        }
      }

LABEL_226:
      v209 = v81;
      v212 = *(v19 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(a1);
      Hasher._combine(_:)(0);
      v213 = Hasher._finalize()();
      v214 = -1 << *(v19 + 32);
      v215 = v213 & ~v214;
      if ((*(v19 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215))
      {
        v216 = ~v214;
        v211 = v227;
        while (1)
        {
          v217 = *(v19 + 48) + 24 * v215;
          if (*(v217 + 17) & 1) == 0 && *v217 == a1 && (*(v217 + 16))
          {
            break;
          }

          v215 = (v215 + 1) & v216;
          if (((*(v19 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
          {
            goto LABEL_240;
          }
        }

        v210 = v19;
      }

      else
      {
        v211 = v227;
LABEL_240:

        v224 = swift_isUniquelyReferenced_nonNull_native();
        sub_100057B10(a1, 0, 1, v215, v224);
        v210 = v19;
      }

      v84 = v230;
      goto LABEL_242;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005FEE4(uint64_t a1, int64_t a2, uint64_t a3, void *a4)
{
  v12 = *(a1 + 16);
  if (v12 < a2)
  {
    goto LABEL_219;
  }

  v10 = a2;
  if (a2 < 0)
  {
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      swift_unknownObjectRelease();
LABEL_107:
      sub_10004E710(v7, v172, v10, v8);
LABEL_165:
      v127 = v99;
LABEL_166:
      v128 = a4[2];

      v129 = a4[4];

      a4[2] = v127;
      a4[3] = 0;
      a4[4] = _swiftEmptyArrayStorage;
      if (v10 == v9)
      {
        break;
      }

      v155 = v9;
      v157 = v7;
      if (v10 <= v9)
      {
        v130 = v9;
      }

      else
      {
        v130 = v10;
      }

      v167 = v8;
      v171 = v130;
      v9 = 24;
      v159 = v4;
      v162 = v6;
      v163 = v11;
      while (v10 != v171)
      {
        v131 = v172 + (v10 << 6);
        v8 = *(v131 + 40);
        v132 = *(v131 + 48);
        v6 = *(v131 + 56);
        ++v10;
        *&v177 = v7;
        *(&v177 + 1) = v172;
        *&v178 = v10;
        *(&v178 + 1) = v167;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_223;
        }

        if (v8 >= *(a3 + 16))
        {
          goto LABEL_224;
        }

        v133 = &v164[16 * v8];
        v134 = *(v133 + 1);
        v176 = *v133;
        sub_100062BE0();

        v11 = Set.init(minimumCapacity:)();
        v135 = *(v11 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v8);
        if (v6)
        {
          v136 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v136 = v132;
        }

        Hasher._combine(_:)(v136);
        v4 = v181;
        v137 = Hasher._finalize()();
        v138 = -1 << *(v11 + 32);
        v7 = v137 & ~v138;
        if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          v139 = ~v138;
          do
          {
            v140 = *(v11 + 48) + 24 * v7;
            if ((*(v140 + 17) & 1) == 0 && *v140 == v8)
            {
              if (*(v140 + 16))
              {
                if (v6)
                {
                  goto LABEL_208;
                }
              }

              else if ((v6 & 1) == 0 && *(v140 + 8) == v132)
              {
                goto LABEL_208;
              }
            }

            v7 = (v7 + 1) & v139;
          }

          while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v180 = v11;
        v142 = *(v11 + 16);
        if (*(v11 + 24) <= v142)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_10005717C(v142 + 1);
          }

          else
          {
            sub_1000583B8(v142 + 1);
          }

          v11 = v180;
          v143 = *(v180 + 40);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v8);
          if (v6)
          {
            v144 = 0;
          }

          else
          {
            Hasher._combine(_:)(1uLL);
            v144 = v132;
          }

          Hasher._combine(_:)(v144);
          v4 = v181;
          v145 = Hasher._finalize()();
          v146 = -1 << *(v11 + 32);
          v7 = v145 & ~v146;
          if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
          {
            v147 = ~v146;
            do
            {
              v148 = *(v11 + 48) + 24 * v7;
              if ((*(v148 + 17) & 1) == 0 && *v148 == v8)
              {
                if (*(v148 + 16))
                {
                  if (v6)
                  {
                    goto LABEL_231;
                  }
                }

                else if ((v6 & 1) == 0 && *(v148 + 8) == v132)
                {
                  goto LABEL_231;
                }
              }

              v7 = (v7 + 1) & v147;
            }

            while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
          }
        }

        else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = &v180;
          sub_100057FB0();
          v11 = v180;
        }

        *(v11 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
        v149 = *(v11 + 48) + 24 * v7;
        *v149 = v8;
        *(v149 + 8) = v132;
        *(v149 + 16) = v6;
        *(v149 + 17) = 0;
        v150 = *(v11 + 16);
        v46 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v46)
        {
          goto LABEL_225;
        }

        *(v11 + 16) = v151;
LABEL_208:
        v4 = v159;
        v6 = v162;
        v7 = v157;
        v152 = v199;
        v162(v11, 0, 0, 254, v176, v134, a4);
        v199 = v152;
        if (v152)
        {

          sub_100062C34();

          sub_100028A38(&v183);
          return swift_unknownObjectRelease();
        }

        v11 = v163;
        if (v10 == v155)
        {
          goto LABEL_210;
        }
      }
    }

LABEL_210:
    sub_100062C34();
    sub_100028A38(&v183);
    goto LABEL_98;
  }

  v13 = a1;
  v199 = v5;
  v14 = *(v4 + 16);
  v156 = *(v4 + 24);
  v158 = v14;
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = (v14 + 32);
  while (1)
  {
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    *v185 = v16[2];
    *&v185[16] = v19;
    v183 = v17;
    v184 = v18;
    v20 = v16[4];
    v21 = v16[5];
    v22 = v16[7];
    v188 = v16[6];
    v189 = v22;
    v186 = v20;
    v187 = v21;
    v23 = v16[8];
    v24 = v16[9];
    v25 = v16[11];
    v192 = v16[10];
    v193 = v25;
    v190 = v23;
    v191 = v24;
    if (!v183 && (BYTE8(v183) & 2) != 0 && BYTE1(v191) == 5)
    {
      break;
    }

    v16 += 12;
    if (!--v15)
    {
      goto LABEL_11;
    }
  }

  if (BYTE8(v192) != 1 || v12 == a2)
  {
LABEL_11:
    v6 = v12;
    if (v12 >= a2)
    {
      goto LABEL_12;
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    swift_unknownObjectRetain();
    sub_1000289DC(&v183, v181);
    sub_10003922C();
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v125 = swift_dynamicCastClass();
    if (!v125)
    {
      swift_unknownObjectRelease();
      v125 = _swiftEmptyArrayStorage;
    }

    v126 = v125[2];

    v9 = v8 >> 1;
    if (__OFSUB__(v8 >> 1, v10))
    {
      goto LABEL_227;
    }

    if (v126 != (v8 >> 1) - v10)
    {
      goto LABEL_228;
    }

    v99 = swift_dynamicCastClass();
    if (!v99)
    {
      swift_unknownObjectRelease();
      v127 = _swiftEmptyArrayStorage;
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v164 = *(&v191 + 1);
  v161 = a1 + 32;
  v6 = a2 + 1;
  v100 = (a1 + (a2 << 6) + 64);
  while (1)
  {
    v101 = *(v100 - 2);
    if ((v101 & 0x6000000000000000) == 0x4000000000000000 && v101 == 0x4000000000000000 && (*(v100 - 1) | *v100 | *(v100 - 3) | *(v100 - 4)) == 0)
    {
      break;
    }

    ++v6;
    v100 += 8;
    if (v6 - v12 == 1)
    {
      goto LABEL_11;
    }
  }

  sub_1000289DC(&v183, v181);
  sub_10003922C();
  v175 = v13;

  if (v12 != v6)
  {
    v4 = v6;
    while (1)
    {
      v166 = v4;
      v103 = (v161 + (v4 << 6));
      v104 = v103[1];
      v177 = *v103;
      v178 = v104;
      *v179 = v103[2];
      *&v179[9] = *(v103 + 41);
      if ((v104 & 0x6000000000000000) != 0x2000000000000000)
      {
        break;
      }

      v170 = *(&v177 + 1);
      v172 = v177;
      v105 = *&v179[8];
      v106 = *&v179[16];
      v11 = v179[24];
      sub_100062A60(&v177, v181);
      sub_100062BE0();
      v7 = Set.init(minimumCapacity:)();
      v107 = *(v7 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v105);
      v9 = v106;
      if (v11 == 1)
      {
        v108 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v108 = v106;
      }

      Hasher._combine(_:)(v108);
      v109 = Hasher._finalize()();
      v110 = -1 << *(v7 + 32);
      v8 = v109 & ~v110;
      if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v111 = ~v110;
        v4 = 24;
        while (1)
        {
          v112 = *(v7 + 48) + 24 * v8;
          if ((*(v112 + 17) & 1) == 0 && *v112 == v105)
          {
            if (*(v112 + 16))
            {
              if (v11)
              {
                goto LABEL_155;
              }
            }

            else if ((v11 & 1) == 0 && *(v112 + 8) == v9)
            {
              goto LABEL_155;
            }
          }

          v8 = (v8 + 1) & v111;
          if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_133;
          }
        }
      }

      v4 = 24;
LABEL_133:
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v182 = v7;
      v114 = *(v7 + 16);
      if (*(v7 + 24) <= v114)
      {
        if (v113)
        {
          sub_10005717C(v114 + 1);
        }

        else
        {
          sub_1000583B8(v114 + 1);
        }

        v7 = v182;
        v115 = *(v182 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v105);
        if (v11)
        {
          v116 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v116 = v9;
        }

        Hasher._combine(_:)(v116);
        v117 = Hasher._finalize()();
        v118 = -1 << *(v7 + 32);
        v8 = v117 & ~v118;
        if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          v119 = ~v118;
          v4 = 24;
          while (1)
          {
            v120 = *(v7 + 48) + 24 * v8;
            if ((*(v120 + 17) & 1) == 0 && *v120 == v105)
            {
              if (*(v120 + 16))
              {
                if (v11)
                {
                  goto LABEL_231;
                }
              }

              else if ((v11 & 1) == 0 && *(v120 + 8) == v9)
              {
                goto LABEL_231;
              }
            }

            v8 = (v8 + 1) & v119;
            if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_153;
            }
          }
        }

        v4 = 24;
      }

      else if ((v113 & 1) == 0)
      {
        sub_100057FB0();
        v4 = 24;
        v7 = v182;
      }

LABEL_153:
      *(v7 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v8;
      v121 = *(v7 + 48) + 24 * v8;
      *v121 = v105;
      *(v121 + 8) = v9;
      *(v121 + 16) = v11;
      *(v121 + 17) = 0;
      v122 = *(v7 + 16);
      v46 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v46)
      {
        goto LABEL_226;
      }

      *(v7 + 16) = v123;
LABEL_155:
      v124 = v199;
      (v164)(v7, 0, 0, 254, v172, v170, a4);
      v199 = v124;
      if (v124)
      {
        goto LABEL_214;
      }

      v4 = v166 + 1;

      sub_100062ABC(&v177);
      if (v166 + 1 == v12)
      {
        goto LABEL_157;
      }
    }

LABEL_230:
    __break(1u);
LABEL_231:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_157:
  --v6;
  v13 = v175;

  sub_100062C34();
  sub_100028A38(&v183);
  v14 = v158;
  if (v6 < v10)
  {
    goto LABEL_158;
  }

LABEL_12:
  if (v12 < v6)
  {
    goto LABEL_221;
  }

  v4 = _swiftEmptyArrayStorage;
  if (v6 != v10)
  {
    v75 = v13 + 32;
    v76 = v6 - 1;
    v77 = v10;
    do
    {
      v78 = (v75 + (v77 << 6));
      v9 = v77;
      while (1)
      {
        if (v77 < v10 || v9 >= v6)
        {
          goto LABEL_159;
        }

        *&v185[9] = *(v78 + 41);
        v79 = v78[1];
        v183 = *v78;
        v184 = v79;
        *v185 = v78[2];
        v11 = v9 + 1;
        if (v185[24])
        {
          break;
        }

        v78 += 4;
        ++v9;
        if (v6 == v11)
        {
          goto LABEL_14;
        }
      }

      v169 = v76;
      v172 = v75;
      v7 = v14;
      sub_100062A60(&v183, v181);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v182 = v4;
      if ((v80 & 1) == 0)
      {
        sub_10004E8C0(0, *(v4 + 16) + 1, 1);
        v4 = v182;
      }

      v8 = *(v4 + 16);
      v81 = *(v4 + 24);
      if (v8 >= v81 >> 1)
      {
        sub_10004E8C0((v81 > 1), v8 + 1, 1);
        v4 = v182;
      }

      *(v4 + 16) = v8 + 1;
      v82 = (v4 + (v8 << 6));
      v83 = v183;
      v84 = v184;
      v85 = *v185;
      *(v82 + 73) = *&v185[9];
      v82[3] = v84;
      v82[4] = v85;
      v82[2] = v83;
      v77 = v9 + 1;
      v76 = v169;
      v75 = v172;
    }

    while (v169 != v9);
  }

LABEL_14:

  v26 = *(v4 + 16);
  *&v177 = v4;
  *(&v177 + 1) = v4 + 32;
  *&v178 = 0;
  *(&v178 + 1) = (2 * v26) | 1;
  if (!v26)
  {
  }

  v27 = v158;
  if (!*(v158 + 16))
  {
    goto LABEL_98;
  }

  v154 = *(v158 + 16);

  v28 = v154;
  v29 = v158 + 32;
  v30 = 0;
  v164 = (a3 + 32);
  v11 = &_swiftEmptySetSingleton;
  while (1)
  {
    v31 = (v29 + 192 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    *v185 = v31[2];
    *&v185[16] = v34;
    v183 = v32;
    v184 = v33;
    v35 = v31[4];
    v36 = v31[5];
    v37 = v31[7];
    v188 = v31[6];
    v189 = v37;
    v186 = v35;
    v187 = v36;
    v38 = v31[8];
    v39 = v31[9];
    v40 = v31[11];
    v192 = v31[10];
    v193 = v40;
    v190 = v38;
    v191 = v39;
    if (v30 == v28)
    {
      goto LABEL_217;
    }

    if (!v183)
    {
      v165 = BYTE1(v191);
      if ((BYTE1(v191) | 4) == 4)
      {
        break;
      }
    }

LABEL_19:
    ++v30;
    v41 = *(v27 + 16);
    if (v30 == v41)
    {
      v87 = v27;

      goto LABEL_97;
    }

    if (v30 >= v41)
    {
      goto LABEL_218;
    }
  }

  v153 = v30;
  if (BYTE8(v192) != 1)
  {
    __break(1u);
    goto LABEL_230;
  }

  v42 = v192;
  v43 = *(&v191 + 1);
  v160 = BYTE8(v183);
  sub_1000289DC(&v183, v181);
  v168 = v43;
  v172 = v42;
  sub_10003922C();
  while (1)
  {
    sub_100061118(v165 == 4, &v177, v194);
    if ((v195 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
    {

      v87 = v158;

      sub_100062C34();
      sub_100028A38(&v183);
LABEL_97:
      v88 = *(v87 + 16);
      v89 = (v158 + 32);
      if (v88)
      {
        while (1)
        {
          v90 = *v89;
          v91 = v89[1];
          v92 = v89[3];
          *v185 = v89[2];
          *&v185[16] = v92;
          v183 = v90;
          v184 = v91;
          v93 = v89[4];
          v94 = v89[5];
          v95 = v89[7];
          v188 = v89[6];
          v189 = v95;
          v186 = v93;
          v187 = v94;
          v96 = v89[8];
          v97 = v89[9];
          v98 = v89[11];
          v192 = v89[10];
          v193 = v98;
          v190 = v96;
          v191 = v97;
          if (!v183 && (BYTE8(v183) & 2) != 0 && BYTE1(v191) == 6)
          {
            break;
          }

          v89 += 12;
          if (!--v88)
          {
            goto LABEL_98;
          }
        }

        if (BYTE8(v192) == 1)
        {
          v6 = *(&v191 + 1);
          v4 = v192;
          swift_beginAccess();
          v172 = *(&v177 + 1);
          v7 = v177;
          v8 = *(&v178 + 1);
          v10 = v178;
          if ((BYTE8(v178) & 1) == 0)
          {
            sub_1000289DC(&v183, v181);
            sub_10003922C();
            v9 = v8 >> 1;
            goto LABEL_107;
          }

          goto LABEL_160;
        }
      }

LABEL_98:

      return swift_unknownObjectRelease();
    }

    v10 = v196;
    v7 = v197;
    v9 = v198;
    sub_100002BCC(v194, &qword_1000B5C68, &qword_100093D90);
    if (v10 < 0)
    {
      break;
    }

    if (v10 >= *(a3 + 16))
    {
      goto LABEL_213;
    }

    v6 = v11;
    v48 = &v164[16 * v10];
    v49 = *v48;
    v50 = *(v48 + 1);
    sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10008E640;
    *(v51 + 32) = v10;
    *(v51 + 40) = v7;
    *(v51 + 48) = v9 & 1;

    v8 = sub_100068C4C(v51);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v52 = v199;
    v168(v8, 0, 0, 254, v49, v50, a4);
    v199 = v52;
    if (v52)
    {

      sub_100062C34();
      sub_100028A38(&v183);

      goto LABEL_98;
    }

    v11 = v6;
    if (*(v6 + 16))
    {
      v53 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v10);
      if (v9)
      {
        v54 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v54 = v7;
      }

      Hasher._combine(_:)(v54);
      v4 = v181;
      v55 = Hasher._finalize()();
      v56 = -1 << *(v6 + 32);
      v57 = v55 & ~v56;
      if ((*(v6 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        v58 = ~v56;
        do
        {
          v59 = *(v6 + 48) + 24 * v57;
          if ((*(v59 + 17) & 1) == 0 && *v59 == v10)
          {
            if (*(v59 + 16))
            {
              if (v9)
              {
                goto LABEL_29;
              }
            }

            else if ((v9 & 1) == 0 && *(v59 + 8) == v7)
            {
              goto LABEL_29;
            }
          }

          v57 = (v57 + 1) & v58;
        }

        while (((*(v6 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0);
      }
    }

    v60 = *(v6 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v10);
    if (v9)
    {
      v61 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v61 = v7;
    }

    Hasher._combine(_:)(v61);
    v4 = v181;
    v62 = Hasher._finalize()();
    v63 = -1 << *(v6 + 32);
    v64 = v62 & ~v63;
    if ((*(v6 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
    {
      v65 = ~v63;
      do
      {
        v66 = *(v6 + 48) + 24 * v64;
        if ((*(v66 + 17) & 1) == 0 && *v66 == v10)
        {
          if (*(v66 + 16))
          {
            if (v9)
            {
              goto LABEL_29;
            }
          }

          else if ((v9 & 1) == 0 && *(v66 + 8) == v7)
          {
            goto LABEL_29;
          }
        }

        v64 = (v64 + 1) & v65;
      }

      while (((*(v6 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0);
    }

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v182 = v6;
    v68 = *(v6 + 16);
    if (*(v6 + 24) > v68)
    {
      if ((v67 & 1) == 0)
      {
        v4 = &v182;
        sub_100057FB0();
        v11 = v182;
      }
    }

    else
    {
      if (v67)
      {
        sub_10005717C(v68 + 1);
      }

      else
      {
        sub_1000583B8(v68 + 1);
      }

      v11 = v182;
      v69 = *(v182 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v10);
      if (v9)
      {
        v70 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v70 = v7;
      }

      Hasher._combine(_:)(v70);
      v4 = v181;
      v71 = Hasher._finalize()();
      v72 = -1 << *(v11 + 32);
      v64 = v71 & ~v72;
      if ((*(v11 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
      {
        v73 = ~v72;
        do
        {
          v74 = *(v11 + 48) + 24 * v64;
          if ((*(v74 + 17) & 1) == 0 && *v74 == v10)
          {
            if (*(v74 + 16))
            {
              if (v9)
              {
                goto LABEL_231;
              }
            }

            else if ((v9 & 1) == 0 && *(v74 + 8) == v7)
            {
              goto LABEL_231;
            }
          }

          v64 = (v64 + 1) & v73;
        }

        while (((*(v11 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0);
      }
    }

    *(v11 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v64;
    v44 = *(v11 + 48) + 24 * v64;
    *v44 = v10;
    *(v44 + 8) = v7;
    *(v44 + 16) = v9 & 1;
    v45 = *(v11 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    *(v11 + 16) = v47;
LABEL_29:
    if ((v160 & 2) == 0)
    {
      sub_100062C34();
      sub_100028A38(&v183);
      v27 = v158;
      v29 = v158 + 32;
      v28 = v154;
      v30 = v153;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:

  sub_100062C34();

  sub_100062ABC(&v177);
  return sub_100028A38(&v183);
}

uint64_t sub_100061118@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0x7FFFFFF3ELL;
  result = swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3] >> 1;
  v10 = 0uLL;
  v11 = v9 - v8;
  if (v9 == v8)
  {
LABEL_9:
    v20 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
LABEL_11:
    *a3 = v10;
    *(a3 + 16) = v6;
    *(a3 + 24) = v21;
    *(a3 + 40) = v22;
    *(a3 + 56) = v20;
  }

  else
  {
    if (v8 > v9)
    {
      v9 = a2[2];
    }

    v12 = v9 - v8;
    v13 = v8 + 1;
    v14 = v8 << 6;
    while (v12)
    {
      v15 = (a2[1] + v14);
      v17 = v15[1];
      v16 = v15[2];
      v18 = *(v15 + 41);
      v27 = *v15;
      *v28 = v17;
      *&v28[25] = v18;
      *&v28[16] = v16;
      a2[2] = v13;
      v19 = *v28;
      if (*v28 & 0x6000000000000000) == 0x2000000000000000 || (a1)
      {
        v24 = *&v28[8];
        v25 = v27;
        v23 = *&v28[24];
        v20 = v28[40];
        result = sub_100062A60(&v27, v26);
        v22 = v23;
        v21 = v24;
        v10 = v25;
        v6 = v19;
        goto LABEL_11;
      }

      --v12;
      ++v13;
      v14 += 64;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100061248@<X0>(_OWORD *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v121 = a1;
  v5 = v1[4];
  v130 = v1 + 4;
  v6 = v1[6];
  v126 = v1[5];
  v7 = *v1;
  v8 = v4[1];

  v128 = v8;
  v125 = v7;
  if (sub_10004E0CC(v7, v8))
  {
    v9 = 1;
  }

  else
  {
    v10 = v4[2];
    v11 = (v10 + 177);
    v12 = *(v10 + 16) + 1;
    do
    {
      v9 = --v12 != 0;
      if (!v12)
      {
        break;
      }

      v13 = v11;
      v11 += 192;
    }

    while (*(v13 - 145) || (*(v13 - 137) & 2) == 0 || *v13 != 4);
  }

  v127 = v9;
  *&v144 = sub_100074FD8(_swiftEmptyArrayStorage);
  *(&v144 + 1) = v6;
  *&v145 = _swiftEmptyArrayStorage;
  *(&v145 + 1) = 0;
  v146 = _swiftEmptyArrayStorage;
  v143 = &_swiftEmptySetSingleton;
  v14 = v4[2];
  v15 = v4[3];

  sub_10005DE1C(&v144, v14);
  if (v3)
  {

LABEL_97:
    v103 = v126;
    v4[4] = v5;
    v4[5] = v103;
    v4[6] = v6;
    return result;
  }

  v124 = v15;
  v120 = v5;
  v17 = *(v5 + 16);
  v18 = v126;
  if (v17 < v126)
  {
    goto LABEL_107;
  }

  if (v126 < 0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *&v135 = 0;
    if (v126 != v17)
    {
      v119 = v14;

      if (v126 < v17)
      {
        v123 = v128 + 16;
        v19 = v120;
        v118 = v119 + 32;
        v117 = xmmword_10008E640;
        v20 = v126;
        v122 = v4;
        v129 = v6;
        while (1)
        {
          v21 = (v19 + (v20 << 6));
          v22 = v21[2];
          v23 = v21[3];
          v24 = v21[4];
          *(v142 + 9) = *(v21 + 73);
          v141 = v23;
          v142[0] = v24;
          v140 = v22;
          sub_100062A60(&v140, &v137);
          swift_unknownObjectRelease();
          v25 = v140;
          v26 = *(&v141 + 1);
          v27 = v141;
          v28 = v142[0];
          v29 = *&v142[1];
          v30 = BYTE8(v142[1]);
          v4[5] = v20 + 1;
          v139 = &_swiftEmptySetSingleton;
          v31 = (v27 >> 61) & 3;
          if (v31)
          {
            break;
          }

          *&v134 = v29;
          v149 = v25;
          v150 = v27;
          v151 = v26;
          v152 = v28;
          v48 = v124;
          if (*(v124 + 16))
          {
            v132 = *(&v25 + 1);
            v133 = v25;
            v49 = sub_1000560F8(v25, *(&v25 + 1), v27);
            if (v50)
            {
              v51 = *(*(v48 + 56) + 8 * v49);
              if ((v51 & 0x8000000000000000) != 0)
              {
                goto LABEL_109;
              }

              if (v51 >= *(v119 + 16))
              {
                goto LABEL_110;
              }

              v52 = (v118 + 192 * v51);
              v53 = *v52;
              v54 = v52[1];
              v55 = v52[3];
              v153[2] = v52[2];
              v153[3] = v55;
              v153[0] = v53;
              v153[1] = v54;
              v56 = v52[4];
              v57 = v52[5];
              v58 = v52[7];
              v153[6] = v52[6];
              v153[7] = v58;
              v153[4] = v56;
              v153[5] = v57;
              v59 = v52[8];
              v60 = v52[9];
              v61 = v52[11];
              v153[10] = v52[10];
              v153[11] = v61;
              v153[8] = v59;
              v153[9] = v60;
              v62 = *(v52 + 168);
              v154 = *(v52 + 152);
              v155 = v62;
              v63 = v154;
              if ((v62 & 1) == 0)
              {
                v156 = v154;
                v69 = v135;
                if ((v27 & 0x8000000000000000) != 0)
                {
                  sub_1000289DC(v153, &v137);
                  sub_100062B10(&v154, &v137);
                  sub_10002BB8C(v133, v132, v27);

                  sub_100062ABC(&v140);
                  LOBYTE(v136) = 0;
                  sub_10002A1BC();
                  swift_allocError();
                  v110 = v133;
                  v109 = v134;
                  *v111 = *(&v28 + 1);
                  *(v111 + 8) = v109;
                  *(v111 + 16) = v30;
                  *(v111 + 17) = 0;
                  v112 = v132;
                  *(v111 + 24) = v110;
                  *(v111 + 32) = v112;
                  *(v111 + 40) = v27;
                  *(v111 + 48) = v26;
                  *(v111 + 56) = v28;
                  *(v111 + 64) = v137;
                  *(v111 + 80) = 8;
                  swift_willThrow();
                  sub_100062B6C(&v154);
                  sub_100028A38(v153);
                }

                else
                {
                  sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
                  v70 = swift_allocObject();
                  *(v70 + 16) = v117;
                  v71 = v134;
                  *(v70 + 32) = *(&v28 + 1);
                  *(v70 + 40) = v71;
                  *(v70 + 48) = v30;
                  *(v70 + 49) = 0;
                  sub_1000289DC(v153, &v137);
                  sub_100062B10(&v154, &v137);
                  v72 = sub_100068C4C(v70);
                  swift_setDeallocating();
                  swift_deallocClassInstance();
                  (v156)(v72, v133, v132, v27, &v144);
                  if (!v69)
                  {
                    sub_100062ABC(&v140);

                    v73 = *(&_swiftEmptySetSingleton + 5);
                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(1uLL);
                    Hasher._combine(_:)(*(&v28 + 1));
                    if (v30)
                    {
                      v74 = 0;
                    }

                    else
                    {
                      Hasher._combine(_:)(1uLL);
                      v74 = v134;
                    }

                    Hasher._combine(_:)(v74);
                    v75 = Hasher._finalize()();
                    v76 = &_swiftEmptySetSingleton;
                    v77 = -1 << *(&_swiftEmptySetSingleton + 32);
                    v78 = v75 & ~v77;
                    v79 = *(&_swiftEmptySetSingleton + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v78;
                    *&v135 = 0;
                    if (v79)
                    {
                      v80 = ~v77;
                      do
                      {
                        v81 = *(&_swiftEmptySetSingleton + 6) + 24 * v78;
                        if ((*(v81 + 17) & 1) == 0 && *v81 == *(&v28 + 1))
                        {
                          if (*(v81 + 16))
                          {
                            if (v30)
                            {
                              goto LABEL_61;
                            }
                          }

                          else if ((v30 & 1) == 0 && *(v81 + 8) == v134)
                          {
LABEL_61:
                            sub_100062B6C(&v154);
                            sub_100028A38(v153);
                            goto LABEL_84;
                          }
                        }

                        v78 = (v78 + 1) & v80;
                      }

                      while (((*(&_swiftEmptySetSingleton + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v78) & 1) != 0);
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v136 = &_swiftEmptySetSingleton;
                    v83 = *(&_swiftEmptySetSingleton + 2);
                    if (*(&_swiftEmptySetSingleton + 3) <= v83)
                    {
                      if (isUniquelyReferenced_nonNull_native)
                      {
                        sub_10005717C(v83 + 1);
                      }

                      else
                      {
                        sub_1000583B8(v83 + 1);
                      }

                      v76 = v136;
                      v84 = *(v136 + 5);
                      Hasher.init(_seed:)();
                      Hasher._combine(_:)(1uLL);
                      Hasher._combine(_:)(*(&v28 + 1));
                      if (v30)
                      {
                        v85 = 0;
                      }

                      else
                      {
                        Hasher._combine(_:)(1uLL);
                        v85 = v134;
                      }

                      Hasher._combine(_:)(v85);
                      v86 = Hasher._finalize()();
                      v87 = -1 << v76[32];
                      v78 = v86 & ~v87;
                      if ((*&v76[((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v78))
                      {
                        v88 = ~v87;
                        v89 = v134;
                        while (1)
                        {
                          v90 = *(v76 + 6) + 24 * v78;
                          if ((*(v90 + 17) & 1) == 0 && *v90 == *(&v28 + 1))
                          {
                            if (*(v90 + 16))
                            {
                              if (v30)
                              {
                                goto LABEL_112;
                              }
                            }

                            else if ((v30 & 1) == 0 && *(v90 + 8) == v134)
                            {
                              goto LABEL_112;
                            }
                          }

                          v78 = (v78 + 1) & v88;
                          if (((*&v76[((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v78) & 1) == 0)
                          {
                            goto LABEL_82;
                          }
                        }
                      }
                    }

                    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_100057FB0();
                      v76 = v136;
                    }

                    v89 = v134;
LABEL_82:
                    *(v28 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v78;
                    v91 = *(v28 + 48) + 24 * v78;
                    *v91 = *(&v28 + 1);
                    *(v91 + 8) = v89;
                    *(v91 + 16) = v30;
                    *(v91 + 17) = 0;
                    v92 = *(v28 + 16);
                    v93 = __OFADD__(v92, 1);
                    v94 = v92 + 1;
                    if (!v93)
                    {
                      *(v76 + 2) = v94;
                      sub_100062B6C(&v154);
                      sub_100028A38(v153);
                      v139 = v76;
                      goto LABEL_84;
                    }

                    goto LABEL_111;
                  }

                  sub_100062ABC(&v140);

                  sub_100062B6C(&v154);
                  sub_100028A38(v153);
                }

                sub_100068908(&_swiftEmptySetSingleton);
                sub_100055BDC(&_swiftEmptySetSingleton);
LABEL_103:

                v114 = v4[4];

                v115 = v4[6];

                v6 = v129;
                v5 = v120;
                goto LABEL_97;
              }

              sub_1000289DC(v153, &v137);
              sub_100062B10(&v154, &v137);
              v64 = v135;
              sub_10005E29C(v153, &v149, *(&v28 + 1), v134, v30, v63, *(&v63 + 1), &v144, &v139);
              if (v64)
              {
                sub_100062ABC(&v140);
                sub_100028A38(v153);

                sub_100062B6C(&v154);
                sub_100068908(v139);

                sub_100055BDC(v113);

                goto LABEL_103;
              }

              *&v135 = 0;
              sub_100062ABC(&v140);
              sub_100028A38(v153);
              sub_100062B6C(&v154);
LABEL_84:
              v6 = v129;
LABEL_85:
              v95 = v139;
              sub_100068908(v139);
              v67 = v95;
              goto LABEL_86;
            }
          }

          if (v127)
          {
            v65 = sub_10006CED4();
            sub_100062ABC(&v140);
            v66 = v65[2];

            v6 = v129;
            if (!v66)
            {
              goto LABEL_92;
            }
          }

          else
          {
            sub_100062ABC(&v140);
            v6 = v129;
          }

          sub_100068908(&_swiftEmptySetSingleton);
          v67 = &_swiftEmptySetSingleton;
LABEL_86:
          sub_100055BDC(v67);
LABEL_87:
          v19 = v4[4];
          v20 = v4[5];
          v96 = *(v19 + 16);
          if (v96 < v20)
          {
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v20 < 0)
          {
            goto LABEL_106;
          }

          if (v20 == v96)
          {
            goto LABEL_94;
          }

          v97 = v4[4];

          if (v20 >= v96)
          {
            goto LABEL_91;
          }
        }

        if (v31 == 1)
        {
          v132 = *(&v25 + 1);
          v133 = v25;
          (*(v128 + 16))(v147);
          CommandConfiguration.subcommands.getter();
          v33 = v32;
          sub_100027BE4(v147);
          v34 = *(v33 + 16);
          v156 = v33;
          v35 = (v33 + 40);
          v131 = -v34;
          v36 = -1;
          while (1)
          {
            if (v131 + v36 == -1)
            {

              sub_100062ABC(&v140);
              v4 = v122;
              goto LABEL_45;
            }

            if (++v36 >= *(v156 + 16))
            {
              __break(1u);
              goto LABEL_105;
            }

            v37 = *(v35 - 1);
            v38 = *v35;
            v39 = (*(*v35 + 24))(v37, *v35);
            v42 = v132;
            v41 = v133;
            if (v39 == v133 && v132 == v40)
            {
              break;
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v44 & 1) == 0)
            {
              v35 += 2;
              (*(v38 + 16))(v148, v37, v38);
              v45 = v148[18];

              sub_100027BE4(v148);
              *&v134 = &v117;
              *&v137 = v41;
              *(&v137 + 1) = v42;
              __chkstk_darwin();
              v116 = &v137;
              v46 = v135;
              v47 = sub_100083AB4(sub_100062BC0, (&v117 - 2), v45);
              *&v135 = v46;

              if ((v47 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_41;
          }

LABEL_41:

          sub_100062ABC(&v140);
          v68 = sub_10004DFB4(v37, v38);
          v4 = v122;
          if (!v68 && sub_10004E0CC(v125, v128))
          {
            sub_100068908(&_swiftEmptySetSingleton);
            sub_100055BDC(&_swiftEmptySetSingleton);
            v6 = v129;
            goto LABEL_87;
          }

          if (sub_10004DFB4(v37, v38))
          {
            sub_100068908(&_swiftEmptySetSingleton);
            sub_100055BDC(&_swiftEmptySetSingleton);
            v6 = v129;
            goto LABEL_94;
          }

LABEL_45:
          v6 = v129;
          if (!v127)
          {
            goto LABEL_85;
          }

          goto LABEL_92;
        }

        goto LABEL_84;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      sub_100068908(&_swiftEmptySetSingleton);
      sub_100055BDC(&_swiftEmptySetSingleton);
LABEL_94:
      v18 = v126;
    }

    v98 = v120;
    *&v137 = v120;
    *(&v137 + 1) = v18;
    v138 = v6;
    v99 = v143;

    sub_100068908(v99);

    v100 = v135;
    sub_10005FEE4(v137, *(&v137 + 1), v138, &v144);
    if (v100)
    {

      v101 = v4[4];

      v102 = v4[6];

      v5 = v98;
      goto LABEL_97;
    }

    v104 = v146;
    v134 = v144;
    v135 = v145;
    v105 = v4[4];

    v106 = v4[6];

    v4[4] = v98;
    v4[5] = v18;
    v4[6] = v6;
    v107 = v121;
    v108 = v135;
    *v121 = v134;
    v107[1] = v108;
    *(v107 + 4) = v104;
  }

  return result;
}