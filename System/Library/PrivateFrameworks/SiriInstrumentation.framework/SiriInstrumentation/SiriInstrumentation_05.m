void sub_1A9C8BA68(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 siriEventTypeUnion];
    v7 = [v6 pommmesClientEvent];

    v8 = [v7 pegasusRequestContext];
    v9 = [v8 ended];

    v10 = [v9 serverDriven];
    [v10 deleteCatId];
  }
}

void sub_1A9C8BBC4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 siriEventTypeUnion];
    v7 = [v6 cdaClientEvent];

    v8 = [v7 userFeedbackCompleted];
    [v8 deleteExpectedWinnerSiriSpeechId];
  }
}

void sub_1A9C8BCE0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v6 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v2;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v20);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v10 = [v7 siriEventTypeUnion];
    if (v10 && (v11 = v10, v12 = [v10 cdaClientEvent], v11, v12) && (v13 = objc_msgSend(v12, sel_userFeedbackParticipantCollectionReported), v12, v13))
    {
      v14 = sub_1A9CAE468();
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v16 == i)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            v6 = v24;
            goto LABEL_2;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1AC590720](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * i + 32);
          }

          v19 = v18;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v18 deleteSiriSpeechId];
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v24;
    }

    else
    {
    }
  }
}

void sub_1A9C8BED0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v6 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v2;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v20);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v10 = [v7 siriEventTypeUnion];
    if (v10 && (v11 = v10, v12 = [v10 cdaClientEvent], v11, v12) && (v13 = objc_msgSend(v12, sel_userFeedbackParticipantCollectionReported), v12, v13))
    {
      v14 = sub_1A9CAE468();
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v16 == i)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            v6 = v24;
            goto LABEL_2;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1AC590720](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * i + 32);
          }

          v19 = v18;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v18 deleteHalTargetSiriSpeechId];
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v24;
    }

    else
    {
    }
  }
}

void sub_1A9C8C0C0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 siriEventTypeUnion];
    v7 = [v6 flowLinkClientEvent];

    v8 = [v7 linkActionTier1];
    [v8 deleteAppBundleId];
  }
}

void sub_1A9C8C1DC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = a1;
  v6 = a1 + 32;
  v21 = a1 & 0xC000000000000001;
  v22 = v2;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v19);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_25;
    }

    v10 = [v7 expressionName];
    if (v10 && (v11 = v10, v12 = [v10 updateParameters], v11, v12))
    {
      v13 = sub_1A9CAE468();
      if (v13)
      {
        v14 = v13;
        v15 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v15 == i)
          {

            v4 = v21;
            v2 = v22;
            v5 = v20;
            v6 = v23;
            goto LABEL_2;
          }

          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1AC590720](i, v14);
          }

          else
          {
            if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v17 deleteParameterId];
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v6 = v23;
    }

    else
    {
    }
  }
}

void sub_1A9C8C3A8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 expressionName];
    v7 = [v6 structuredSearch];

    v8 = [v7 returnType];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8C504(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 expressionName];
    v7 = [v6 structuredSearch];

    v8 = [v7 returnType];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8C680(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8C770(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8C860(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8C950(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 context];
    [v6 deleteToolId];
  }
}

void sub_1A9C8CA2C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 primitive];

    v10 = [v9 app];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8CB84(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 enumeration];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8CCFC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 entity];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8CE74(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 value];
    v9 = [v8 query];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8CFEC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 candidate];
    v7 = [v6 value];

    v8 = [v7 collection];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8D148(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_31;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_30;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v29 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_29;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 primitive];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 app];

              if (v23)
              {
                [v23 deleteBundleId];
              }
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8D390(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 enumeration];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8D5FC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 entity];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8D868(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_authenticationLevel;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[127]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 value];

      if (v13 && (v14 = [v13 collection], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_authenticationLevel;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 query];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_authenticationLevel;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8DAD4(uint64_t a1)
{
  v5 = 0;
  v22 = a1 & 0xC000000000000001;
  v23 = sub_1A9C8B650();
  v19 = a1;
  v20 = a1 + 32;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
LABEL_2:
    if (v5 == v23)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v22)
    {
      v6 = MEMORY[0x1AC590720](v5, v19);
    }

    else
    {
      if (v5 >= *(v21 + 16))
      {
        goto LABEL_23;
      }

      v6 = *(v20 + 8 * v5);
    }

    v7 = v6;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      break;
    }

    v9 = sub_1A9CAE4E0();
    if (v9)
    {
      v10 = v9;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_85();
      while (1)
      {
        if (v7 == v1)
        {

          goto LABEL_2;
        }

        if (v3)
        {
          MEMORY[0x1AC590720](v1, v10);
        }

        else
        {
          if (v1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v10 + 8 * v1 + 32);
        }

        OUTLINED_FUNCTION_122();
        if (v8)
        {
          break;
        }

        v12 = [v2 candidate];
        v13 = [v12 value];

        v14 = [v13 value];
        OUTLINED_FUNCTION_82();
        v16 = [v14 v15];

        v17 = [v16 typeIdentifier];
        v18 = [v17 custom];

        [v18 deleteBundleId];
        ++v1;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1A9C8DCF8(uint64_t a1, SEL *a2, uint64_t a3, SEL *a4)
{
  v6 = 0;
  v25 = a1 & 0xC000000000000001;
  v26 = sub_1A9C8B650();
  v22 = a1;
  v23 = a1 + 32;
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v6 != v26)
  {
    if (v25)
    {
      v7 = MEMORY[0x1AC590720](v6, v22);
    }

    else
    {
      if (v6 >= *(v24 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v23 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_22;
    }

    v10 = sub_1A9CAE4E0();
    if (v10)
    {
      v11 = v10;
      v27 = v6;
      v12 = sub_1A9C8B650();
      for (i = 0; ; ++i)
      {
        if (v12 == i)
        {

          v6 = v27;
          goto LABEL_2;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1AC590720](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v16 = [v14 candidate];
        v17 = [v16 value];

        v18 = [v17 *a2];
        OUTLINED_FUNCTION_82();
        v20 = [v18 v19];

        v21 = [v20 *a4];
        [v21 deleteBundleId];
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }
}

void sub_1A9C8DF20(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CA9CA8();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C8DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_75();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_120();
  v27 = v26;
  v29 = v28();
  v30 = 0;
  while (1)
  {
    if (v29 == v30)
    {
LABEL_10:
      OUTLINED_FUNCTION_74();
      return;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1AC590720](v30, v27);
    }

    else
    {
      if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v31 = *(v27 + 8 * v30 + 32);
    }

    OUTLINED_FUNCTION_122();
    if (v32)
    {
      break;
    }

    a10 = v23;
    v20(&a10, v21);

    ++v30;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1A9C8E0A4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 success];
    v9 = [v8 returnValue];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8E240(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 success];
    v9 = [v8 returnValue];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8E3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void **, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_136();
  v21 = v9;
  v22 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v6 == v7)
    {
LABEL_10:
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v18)
    {
      break;
    }

    v20 = v8;
    a5(&v20, v14, v12);

    ++v7;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1A9C8E4A0()
{
  OUTLINED_FUNCTION_136();
  v5 = v4;
  sub_1A9C8B650();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v1 == v2)
    {
LABEL_10:
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1AC590720](v2, v5);
    }

    else
    {
      if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v5 + 8 * v2 + 32);
    }

    OUTLINED_FUNCTION_59();
    if (v7)
    {
      break;
    }

    sub_1A9CAA33C();

    ++v2;
    if (v0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1A9C8E56C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 success];
    v9 = [v8 followUpAction];

    v10 = [v9 action];
    v11 = [v10 linkAction];

    [v11 deleteBundleId];
  }
}

void sub_1A9C8E6E8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 actionConfirmation];
    v9 = [v8 systemStyle];

    v10 = [v9 generativeAIEnablement];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8E844(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterConfirmation];
    v9 = [v8 item];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8E9E0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterConfirmation];
    v9 = [v8 item];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8EB7C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 parameterDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 value];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 primitive];

              if (v23)
              {
                v24 = [v23 app];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8EDE8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 parameterDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 collection];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8F054(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterNotAllowed];
    v9 = [v8 value];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F1EC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterNotAllowed];
    v9 = [v8 value];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F388(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterCandidatesNotFounds];
    v9 = [v8 value];

    v10 = [v9 value];
    v11 = [v10 primitive];

    v12 = [v11 app];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F520(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v33 = a4;
  OUTLINED_FUNCTION_136();
  v30 = v4;
  v31 = v8;
  v10 = v9;
  v12 = v11;
  sub_1A9C8B650();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v5 == v6)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v13)
    {
      break;
    }

    v14 = [v7 payload];
    v15 = [v14 outcome];

    v16 = [v15 *v10];
    v17 = [v16 *v31];

    v18 = [v17 value];
    v27 = OUTLINED_FUNCTION_105(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33);

    v28 = [v27 typeIdentifier];
    v29 = [v28 custom];

    [v29 deleteBundleId];
    ++v6;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C8F6B0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 parameterCandidatesNotFounds];
    v9 = [v8 value];

    v10 = [v9 collection];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C8F84C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 actionRequirement];
    v9 = [v8 systemRequirement];

    v10 = [v9 protectedAppApprovalRequired];
    [v10 deleteBundleId];
  }
}

void sub_1A9C8F9A8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 payload];
    v7 = [v6 outcome];

    v8 = [v7 toolDisambiguation];
    [v8 deleteAssistantSchemaKind];
  }
}

void sub_1A9C8FAC4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  v6 = a1 + 32;
  v22 = a1 & 0xC000000000000001;
  v23 = v2;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v20);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    v10 = [v7 payload];
    if (v10 && (v11 = v10, v12 = [v10 outcome], v11, v12) && (v13 = objc_msgSend(v12, sel_toolDisambiguation), v12, v13))
    {
      v14 = sub_1A9CAE468();
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v16 == i)
          {

            v4 = v22;
            v2 = v23;
            v5 = v21;
            v6 = v24;
            goto LABEL_2;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1AC590720](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(v15 + 8 * i + 32);
          }

          v19 = v18;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v18 deleteToolId];
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = v24;
    }

    else
    {
    }
  }
}

void sub_1A9C8FCB4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 valueDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 value];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 primitive];

              if (v23)
              {
                v24 = [v23 app];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C8FF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_127();
  v15 = v14;
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_83();
  v16 = &selRef_numberOfActionsBefore;
  v40 = v17;
  v41 = v15;
  v38 = v13;
  v39 = v11;
  v37 = v9;
  while (1)
  {
LABEL_2:
    if (v12 == v10)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v11)
    {
      v18 = MEMORY[0x1AC590720](v12, a9);
    }

    else
    {
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_27;
      }

      v18 = *(v9 + 8 * v12);
    }

    v19 = v18;
    if (__OFADD__(v12++, 1))
    {
      break;
    }

    v21 = [v18 v16[172]];
    if (v21)
    {
      v22 = v21;
      v42 = v19;
      v23 = [v21 outcome];

      if (v23)
      {
        v24 = [v23 *v15];

        if (v24)
        {
          v25 = sub_1A9CAE468();
          if (v25)
          {
            v26 = v25;
            sub_1A9C8B650();
            OUTLINED_FUNCTION_60();
            while (1)
            {
              if (v13 == v16)
              {

                v10 = v40;
                v15 = v41;
                v13 = v38;
                v11 = v39;
                v9 = v37;
                v16 = &selRef_numberOfActionsBefore;
                goto LABEL_2;
              }

              if (v15)
              {
                v36 = OUTLINED_FUNCTION_95();
                v28 = MEMORY[0x1AC590720](v36);
              }

              else
              {
                if (v16 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_25;
                }

                OUTLINED_FUNCTION_94();
                v28 = v27;
              }

              v29 = v28;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              v30 = [v28 value];
              OUTLINED_FUNCTION_82();
              v33 = [v31 v32];

              v34 = [v33 typeIdentifier];
              v35 = [v34 custom];

              [v35 deleteBundleId];
              v16 = (v16 + 1);
            }

            __break(1u);
LABEL_25:
            __break(1u);
            break;
          }
        }
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1A9C90154(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v28 = a1 & 0xC000000000000001;
  v29 = v2;
  v26 = a1 + 32;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v25);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_31;
    }

    v11 = [v8 v7[172]];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v13 = [v11 outcome];

      if (v13 && (v14 = [v13 valueDisambiguation], v13, v14))
      {
        v15 = sub_1A9CAE468();
        if (v15)
        {
          v16 = v15;
          v17 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v17 == i)
            {

              v4 = v28;
              v2 = v29;
              v6 = v26;
              v5 = v27;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1AC590720](i, v16);
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v21 = [v19 collection];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 typeIdentifier];

              if (v23)
              {
                v24 = [v23 custom];

                if (v24)
                {
                  [v24 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v7 = &selRef_numberOfActionsBefore;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C903C0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 value];
    v7 = [v6 value];

    v8 = [v7 enumeration];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C90518(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 value];
    v7 = [v6 value];

    v8 = [v7 entity];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C90670(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 value];
    v7 = [v6 value];

    v8 = [v7 query];
    v9 = [v8 typeIdentifier];

    v10 = [v9 custom];
    [v10 deleteBundleId];
  }
}

void sub_1A9C907C8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v26 = a1 & 0xC000000000000001;
  v27 = v2;
  v24 = a1 + 32;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v23);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_28;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v28 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v26;
              v2 = v27;
              v6 = v24;
              v5 = v25;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 primitive];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 app];

              if (v22)
              {
                [v22 deleteBundleId];
              }
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C909DC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 enumeration];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C90C14(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 entity];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C90E4C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_unsupportedLanguageDetected;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[143]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 collection];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_unsupportedLanguageDetected;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 query];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C91084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v32 = a5;
  OUTLINED_FUNCTION_136();
  v29 = v5;
  v30 = v9;
  v11 = v10;
  v13 = v12;
  v14();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v6 == v7)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      OUTLINED_FUNCTION_123();
      if (v15)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v16)
    {
      break;
    }

    v17 = [v8 value];
    v18 = [v17 *v11];

    v19 = [v18 *v30];
    v28 = OUTLINED_FUNCTION_105(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32);

    [v28 deleteBundleId];
    ++v7;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C91194(uint64_t a1)
{
  sub_1A9C8B650();
  OUTLINED_FUNCTION_57();
  v18 = a1;
  OUTLINED_FUNCTION_117();
LABEL_2:
  while (v3 != v1)
  {
    if (v2)
    {
      v8 = MEMORY[0x1AC590720](v3, v18);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(a1 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_26;
    }

    if ([v8 v5[239]])
    {
      v11 = sub_1A9CAE468();
      if (v11)
      {
        v12 = v11;
        v23 = v9;
        sub_1A9C8B650();
        OUTLINED_FUNCTION_126();
        while (1)
        {
          if (a1 == v1)
          {

            v2 = v21;
            v1 = v22;
            a1 = v19;
            v4 = v20;
            v5 = &selRef_clearMetrics;
            goto LABEL_2;
          }

          if (v6)
          {
            v13 = MEMORY[0x1AC590720](v1, v12);
          }

          else
          {
            if (v1 >= *(v2 + 16))
            {
              goto LABEL_25;
            }

            v13 = *(v12 + 8 * v1 + 32);
          }

          v14 = v13;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          v15 = [v13 primitive];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 app];

            if (v17)
            {
              [v17 deleteBundleId];
            }
          }

          ++v1;
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }
    }
  }
}

void sub_1A9C91350(uint64_t a1, SEL *a2)
{
  sub_1A9C8B650();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_78();
  v21 = a1;
  v8 = (a1 + 32);
  v9 = &selRef_clearMetrics;
  v24 = v4;
  v25 = v10;
  v22 = (a1 + 32);
  v23 = v5;
  while (1)
  {
LABEL_2:
    if (v3 == v2)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v4)
    {
      v11 = MEMORY[0x1AC590720](v3, v21);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_28;
      }

      v11 = v8[v3];
    }

    v12 = v11;
    v13 = __OFADD__(v3++, 1);
    if (v13)
    {
      break;
    }

    if ([v11 v9[239]])
    {
      v14 = sub_1A9CAE468();
      if (v14)
      {
        v15 = v14;
        v26 = v3;
        sub_1A9C8B650();
        OUTLINED_FUNCTION_85();
        while (1)
        {
          if (v2 == v5)
          {

            v4 = v24;
            v2 = v25;
            v3 = v26;
            v8 = v22;
            v5 = v23;
            v9 = &selRef_clearMetrics;
            goto LABEL_2;
          }

          if (v12)
          {
            MEMORY[0x1AC590720](v5, v15);
          }

          else
          {
            if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v16 = *(v15 + 8 * v5 + 32);
          }

          OUTLINED_FUNCTION_122();
          if (v13)
          {
            break;
          }

          v17 = [v8 *a2];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 typeIdentifier];

            if (v19)
            {
              v20 = [v19 custom];

              if (v20)
              {
                [v20 deleteBundleId];
              }
            }
          }

          ++v5;
        }

        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1A9C9153C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C916B8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C91854(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C919F0(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C91B8C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 returnValue];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C91D08(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C91DF8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C91EE8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C91FD8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 success];

    v8 = [v7 followUpAction];
    v9 = [v8 action];

    v10 = [v9 linkAction];
    [v10 deleteBundleId];
  }
}

void sub_1A9C92134(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v31 = a4;
  OUTLINED_FUNCTION_136();
  v28 = v4;
  v29 = v8;
  v10 = v9;
  v12 = v11;
  sub_1A9C8B650();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v5 == v6)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v13)
    {
      break;
    }

    v14 = [v7 outcome];
    v15 = [v14 *v10];

    v16 = OUTLINED_FUNCTION_98();
    v18 = [v16 v17];

    v27 = OUTLINED_FUNCTION_105(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31);
    [v27 deleteBundleId];

    ++v6;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C92240(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C923BC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C92558(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C926F4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C92890(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterConfirmation];

    v8 = [v7 item];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C92A0C(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C92AFC(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C92BEC(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C92CDC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 parameterDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 value];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 primitive];

              if (v22)
              {
                v23 = [v22 app];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C92F14(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 parameterDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 collection];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C9314C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C932C4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C9345C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C935F4(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C9378C(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterNotAllowed];

    v8 = [v7 value];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C93908(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C939F8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C93AE8(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C93BD8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 primitive];
    v11 = [v10 app];

    [v11 deleteBundleId];
  }
}

void sub_1A9C93D50(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 enumeration];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C93EE8(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 entity];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C94080(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 value];

    v10 = [v9 query];
    v11 = [v10 typeIdentifier];

    v12 = [v11 custom];
    [v12 deleteBundleId];
  }
}

void sub_1A9C94218(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 outcome];
    v7 = [v6 parameterCandidatesNotFounds];

    v8 = [v7 value];
    v9 = [v8 collection];

    v10 = [v9 typeIdentifier];
    v11 = [v10 custom];

    [v11 deleteBundleId];
  }
}

void sub_1A9C94394(uint64_t a1, void (*a2)(void), SEL *a3, SEL *a4, SEL *a5)
{
  a2();
  OUTLINED_FUNCTION_54();
  v11 = a1 & 0xC000000000000001;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1 + 32;
  v35 = a4;
  v36 = a5;
  v33 = v13;
  v34 = a3;
  v32 = a1 & 0xC000000000000001;
LABEL_2:
  while (v6 != v5)
  {
    if (v11)
    {
      v14 = MEMORY[0x1AC590720](v6, v31);
    }

    else
    {
      if (v6 >= *(v12 + 16))
      {
        goto LABEL_32;
      }

      v14 = *(v38 + 8 * v6);
    }

    v15 = v14;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v17 = [v14 *a3];
    if (v17)
    {
      v18 = v17;
      v39 = v15;
      v19 = [v17 *a4];

      if (v19 && (v20 = [v19 *a5], v19, v20) && (v21 = objc_msgSend(v20, sel_collection), v20, v21))
      {
        v22 = sub_1A9CAE468();
        if (v22)
        {
          v23 = v22;
          v24 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v24 == i)
            {

              a4 = v35;
              a5 = v36;
              v5 = v33;
              a3 = v34;
              v11 = v32;
              v12 = v37;
              goto LABEL_2;
            }

            if ((v23 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x1AC590720](i, v23);
            }

            else
            {
              if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v26 = *(v23 + 8 * i + 32);
            }

            v27 = v26;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v28 = [v26 primitive];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 app];

              if (v30)
              {
                [v30 deleteBundleId];
              }
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v12 = v37;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1A9C94610(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C94700(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C947F0(uint64_t a1)
{
  v3 = sub_1A9C8B650();
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC590720](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1A9CAA9E4();

    if (v1)
    {
      return;
    }
  }
}

void sub_1A9C948E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  OUTLINED_FUNCTION_136();
  v18 = v8;
  v10 = v9;
  v12 = v11;
  v13();
  OUTLINED_FUNCTION_54();
  while (1)
  {
    if (v5 == v6)
    {
      OUTLINED_FUNCTION_68();
      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_109();
    }

    else
    {
      OUTLINED_FUNCTION_123();
      if (v14)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_59();
    if (v15)
    {
      break;
    }

    v16 = [v7 *v10];
    v17 = [v16 *v18];

    [v17 *a5];
    ++v6;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C949BC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v19 = a1;
  v6 = a1 + 32;
  v21 = a1 & 0xC000000000000001;
  v22 = v2;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = a1 + 32;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v7 = MEMORY[0x1AC590720](v3, v19);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_25;
    }

    v10 = [v7 outcome];
    if (v10 && (v11 = v10, v12 = [v10 toolDisambiguation], v11, v12))
    {
      v13 = sub_1A9CAE468();
      if (v13)
      {
        v14 = v13;
        v15 = sub_1A9C8B650();
        for (i = 0; ; ++i)
        {
          if (v15 == i)
          {

            v4 = v21;
            v2 = v22;
            v5 = v20;
            v6 = v23;
            goto LABEL_2;
          }

          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1AC590720](i, v14);
          }

          else
          {
            if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v17 = *(v14 + 8 * i + 32);
          }

          v18 = v17;
          if (__OFADD__(i, 1))
          {
            break;
          }

          [v17 deleteToolId];
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v6 = v23;
    }

    else
    {
    }
  }
}

void sub_1A9C94B88(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 valueDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 value];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 primitive];

              if (v22)
              {
                v23 = [v22 app];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C94DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_127();
  v15 = v14;
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_83();
  v38 = v16;
  v39 = v15;
  v36 = v13;
  v37 = v11;
  v35 = v9;
  while (1)
  {
LABEL_2:
    if (v12 == v10)
    {
      OUTLINED_FUNCTION_58();
      return;
    }

    if (v11)
    {
      v17 = MEMORY[0x1AC590720](v12, a9);
    }

    else
    {
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_26;
      }

      v17 = *(v9 + 8 * v12);
    }

    v18 = v17;
    if (__OFADD__(v12++, 1))
    {
      break;
    }

    v20 = [v17 outcome];
    if (v20)
    {
      v21 = v20;
      v40 = v18;
      v22 = [v20 *v15];

      if (v22)
      {
        v23 = sub_1A9CAE468();
        if (v23)
        {
          v24 = v23;
          v25 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v25 == i)
            {

              v10 = v38;
              v15 = v39;
              v13 = v36;
              v11 = v37;
              v9 = v35;
              goto LABEL_2;
            }

            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x1AC590720](i, v24);
            }

            else
            {
              if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v27 = *(v24 + 8 * i + 32);
            }

            v28 = v27;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v29 = [v27 value];
            OUTLINED_FUNCTION_82();
            v32 = [v30 v31];

            v33 = [v32 typeIdentifier];
            v34 = [v33 custom];

            [v34 deleteBundleId];
          }

          __break(1u);
LABEL_24:
          __break(1u);
          break;
        }
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1A9C94FDC(uint64_t a1)
{
  v2 = sub_1A9C8B650();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v6 = a1 + 32;
  v7 = &selRef_numberOfActionsBefore;
  v27 = a1 & 0xC000000000000001;
  v28 = v2;
  v25 = a1 + 32;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v3 != v2)
  {
    if (v4)
    {
      v8 = MEMORY[0x1AC590720](v3, v24);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_29;
    }

    v11 = [v8 v7[113]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 valueDisambiguation];

      if (v13)
      {
        v29 = v9;
        v14 = sub_1A9CAE468();
        if (v14)
        {
          v15 = v14;
          v16 = sub_1A9C8B650();
          for (i = 0; ; ++i)
          {
            if (v16 == i)
            {

              v4 = v27;
              v2 = v28;
              v6 = v25;
              v5 = v26;
              v7 = &selRef_numberOfActionsBefore;
              goto LABEL_2;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1AC590720](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v18 = *(v15 + 8 * i + 32);
            }

            v19 = v18;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v20 = [v18 collection];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 typeIdentifier];

              if (v22)
              {
                v23 = [v22 custom];

                if (v23)
                {
                  [v23 deleteBundleId];
                }
              }
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }
    }
  }
}

void sub_1A9C95214(uint64_t a1, void (*a2)(void))
{
  a2();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_114();
  while (v2 != v3)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_88();
    }

    else
    {
      if (v3 >= *(v6 + 16))
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_65();
    if (v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v4 deleteToolId];

    ++v3;
  }
}

uint64_t sub_1A9C952F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SISchemaDeviceSensitivityState(0);
  v4 = v3;
  v5 = sub_1A9CAE5B8();
  v6 = MEMORY[0x1AC590530](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1A9CAE240(&v11, *(a1 + v8));
      v8 += 4;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

uint64_t sub_1A9C9544C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DD0;
  OUTLINED_FUNCTION_27();
  *(v5 + 32) = 0xD00000000000001ALL;
  *(v5 + 40) = v6;
  sub_1A9C952F4(a1);
  OUTLINED_FUNCTION_27();
  *(inited + 48) = v7;
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = v8;
  *(inited + 72) = sub_1A9C952F4(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

uint64_t sub_1A9C95534(uint64_t a1, uint64_t a2, void *a3)
{
  if ((sub_1A9CAE168(a2, a1) & 1) == 0 && (sub_1A9CAE168(a3, a1) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_110([v3 eventMetadata]);

  return 1;
}

uint64_t static ASRSchemaASRClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DE0;
  *(inited + 32) = &unk_1F1DD2798;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DD27C0);
  *(inited + 48) = &unk_1F1DD27E8;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DD2810);
  *(inited + 64) = &unk_1F1DD2838;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DD2860);
  *(inited + 80) = &unk_1F1DD2888;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DD28B0);
  *(inited + 96) = &unk_1F1DD28D8;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DD2908);
  *(inited + 112) = &unk_1F1DD2930;
  *(inited + 120) = sub_1A9C952F4(&unk_1F1DD2968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static ASRSchemaASRClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DE0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF1D0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF1F8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDF220);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDF248);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_91(v9, v10);
  sub_1A9C952F4(&unk_1F1DDF270);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_90(v11, v12);
  inited[10].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall ASRSchemaASRClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  v7 = v6;
  if (sub_1A9CAE168(&unk_1F1DDC2D0, v6))
  {
    v8 = [v1 packageGenerated];
LABEL_9:
    v9 = v8;
    [v9 deleteLoggableSharedUserId];

    goto LABEL_10;
  }

  if (sub_1A9CAE168(&unk_1F1DDC2F8, v7))
  {
    v8 = [v1 intermediateUtteranceInfoTier1];
    goto LABEL_9;
  }

  if (sub_1A9CAE168(&unk_1F1DDC320, v7))
  {
    v8 = [v1 finalAudioPacketContainingSpeechReceived];
    goto LABEL_9;
  }

  if (sub_1A9CAE168(&unk_1F1DDC348, v7))
  {
    v8 = [v1 finalAudioPacketContainingSpeechReadyUpstream];
    goto LABEL_9;
  }

  if (sub_1A9CAE168(&unk_1F1DDC370, v7))
  {
    v11 = [v1 contextualEntityRetrievalContext];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    v13 = [v11 startedOrChanged];

    if (!v13 || !sub_1A9CAE468())
    {
      goto LABEL_10;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v13 != v2)
    {
      if (v4)
      {
        v16 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v16);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v14)
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v15)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      [v3 deleteBundleId];

      ++v2;
    }
  }

  else
  {
    if ((sub_1A9CAE168(&unk_1F1DDC3A0, v7) & 1) == 0)
    {
      goto LABEL_10;
    }

    v17 = [v1 contextualEntityRetrievalContext];
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = v17;
    v19 = [v17 ended];

    if (!v19 || !sub_1A9CAE468())
    {
      goto LABEL_10;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_78();
    while (v19 != v2)
    {
      if (v5)
      {
        v22 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v22);
      }

      else
      {
        OUTLINED_FUNCTION_116();
        if (v14)
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v15)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v20 = [v3 entityType];
      if (v20)
      {
        v21 = v20;
        [v20 deleteBundleId];
      }

      ++v2;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_20();
  return result;
}

uint64_t static CDASchemaCDAClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  *(inited + 32) = &unk_1F1DD2990;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DD29B8);
  *(inited + 48) = &unk_1F1DD29E0;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DD2A10);
  *(inited + 64) = &unk_1F1DD2A38;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DD2A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static CDASchemaCDAClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DF0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF2C0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF2E8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  inited[6].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall CDASchemaCDAClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_137();
  v6 = v5;
  if (sub_1A9CAE168(&unk_1F1DDC3D8, v5))
  {
    v7 = [v1 userFeedbackCompleted];
    [v7 deleteExpectedWinnerSiriSpeechId];
  }

  else
  {
    if (sub_1A9CAE168(&unk_1F1DDC400, v6))
    {
      if (![v1 userFeedbackParticipantCollectionReported] || !sub_1A9CAE468())
      {
        goto LABEL_26;
      }

      sub_1A9C8B650();
      OUTLINED_FUNCTION_10_1();
      while (v1 != v2)
      {
        if (v4)
        {
          v11 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v11);
        }

        else
        {
          OUTLINED_FUNCTION_44();
          if (v9)
          {
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v10)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v3 deleteSiriSpeechId];

        ++v2;
      }
    }

    else
    {
      if ((sub_1A9CAE168(&unk_1F1DDC430, v6) & 1) == 0 || ![v1 userFeedbackParticipantCollectionReported] || !sub_1A9CAE468())
      {
        goto LABEL_26;
      }

      sub_1A9C8B650();
      OUTLINED_FUNCTION_10_1();
      while (v1 != v2)
      {
        if (v4)
        {
          v12 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v12);
        }

        else
        {
          OUTLINED_FUNCTION_44();
          if (v9)
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v10)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        [v3 deleteHalTargetSiriSpeechId];

        ++v2;
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_135();
  return result;
}

uint64_t static CNVSchemaCNVClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall CNVSchemaCNVClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_137();
  if ((OUTLINED_FUNCTION_84(&unk_1F1DDC460, v6) & 1) != 0 && [v1 actionCandidatesGeneratedTier1] && (v7 = sub_1A9CAE468()) != 0)
  {
    v8 = v7;
    sub_1A9C8B650();
    OUTLINED_FUNCTION_113();
    while (1)
    {
      if (v2 == v3)
      {

        goto LABEL_13;
      }

      if (v5)
      {
        v13 = OUTLINED_FUNCTION_124();
        MEMORY[0x1AC590720](v13);
      }

      else
      {
        OUTLINED_FUNCTION_115();
        if (v10)
        {
          goto LABEL_15;
        }

        v11 = *(v8 + 8 * v3 + 32);
      }

      OUTLINED_FUNCTION_1_3();
      if (v12)
      {
        break;
      }

      [v4 deleteAppBundleId];

      ++v3;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_135();
  }

  return result;
}

uint64_t static SISchemaClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736E10;
  *(inited + 32) = &unk_1F1DD1E50;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DD1E78);
  *(inited + 48) = &unk_1F1DD1EA0;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DD1EC8);
  *(inited + 64) = &unk_1F1DD1EF0;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DD1F18);
  *(inited + 80) = &unk_1F1DD1F40;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DD1F70);
  *(inited + 96) = &unk_1F1DD1F98;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DD1FC0);
  *(inited + 112) = &unk_1F1DD1FE8;
  *(inited + 120) = sub_1A9C952F4(&unk_1F1DD2010);
  *(inited + 128) = &unk_1F1DD2038;
  *(inited + 136) = sub_1A9C952F4(&unk_1F1DD2060);
  *(inited + 144) = &unk_1F1DD2088;
  *(inited + 152) = sub_1A9C952F4(&unk_1F1DD20B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static SISchemaClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E10);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF360);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF388);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDF3B0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDF3D8);
  OUTLINED_FUNCTION_27();
  inited[7].n128_u64[1] = v9;
  inited[8].n128_u64[0] = 26;
  inited[8].n128_u64[1] = v10;
  sub_1A9C952F4(&unk_1F1DDF400);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_90(v11, v12);
  sub_1A9C952F4(&unk_1F1DDF428);
  OUTLINED_FUNCTION_27();
  inited[10].n128_u64[1] = v13;
  inited[11].n128_u64[0] = 30;
  inited[11].n128_u64[1] = v14;
  inited[12].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF450);
  strcpy(&inited[12].n128_i8[8], "uufrSelected");
  inited[13].n128_u8[5] = 0;
  inited[13].n128_u16[3] = -5120;
  inited[13].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall SISchemaClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if (sub_1A9CAE168(&unk_1F1DDBDE8, tagPath._rawValue))
  {
    v3 = [v1 eventMetadata];
LABEL_5:
    v4 = v3;
    [v4 deleteSiriDeviceID];
LABEL_6:

    return 1;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE10, tagPath._rawValue))
  {
    v3 = [v1 deviceFixedContext];
    goto LABEL_5;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE38, tagPath._rawValue))
  {
    v4 = [v1 deviceFixedContext];
    [v4 deleteSpeechID];
    goto LABEL_6;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE60, tagPath._rawValue))
  {
    v6 = [v1 invocation];
    v7 = [v6 typeToSiriContext];

    [v7 deleteBackgroundAppBundleId];
    return 1;
  }

  if (sub_1A9CAE168(&unk_1F1DDBE90, tagPath._rawValue))
  {
    v8 = [v1 uufrShown];
LABEL_16:
    v4 = v8;
    [v4 deleteDialogIdentifier];
    goto LABEL_6;
  }

  if (sub_1A9CAE168(&unk_1F1DDBEB8, tagPath._rawValue))
  {
    v8 = [v1 uufrSaid];
    goto LABEL_16;
  }

  if (sub_1A9CAE168(&unk_1F1DDBEE0, tagPath._rawValue))
  {
    v4 = [v1 ueiUUFRReady];
    [v4 deleteDialogIdentifiers];
    goto LABEL_6;
  }

  if (sub_1A9CAE168(&unk_1F1DDBF08, tagPath._rawValue))
  {
    [v1 deleteUufrSelected];
    return 1;
  }

  return 0;
}

uint64_t static DIMSchemaDIMClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall DIMSchemaDIMClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if (OUTLINED_FUNCTION_84(&unk_1F1DDC490, tagPath._rawValue))
  {
    [v2 deleteSiriAccountInformation];
  }

  return v1 & 1;
}

uint64_t static DUSchemaDUEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DD0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF4C8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  inited[4].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall DUSchemaDUEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if ((sub_1A9CAE168(&unk_1F1DDBD00, tagPath._rawValue) & 1) == 0 && (sub_1A9CAE168(&unk_1F1DDBD28, tagPath._rawValue) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_110([v1 speechAudioRecord]);

  return 1;
}

uint64_t static SISchemaDailyDeviceStatus.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  *(inited + 32) = &unk_1F1DDAAB8;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDAAE0);
  *(inited + 48) = &unk_1F1DDAB08;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDAB30);
  *(inited + 64) = &unk_1F1DDAB58;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDAB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static SISchemaDailyDeviceStatus.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  strcpy((inited + 32), "siriDeviceID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_1A9C952F4(&unk_1F1DDF518);
  strcpy((inited + 56), "siriSpeechID");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDF540);
  strcpy((inited + 80), "sharedUserId");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = sub_1A9C952F4(&unk_1F1DDF568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall SISchemaDailyDeviceStatus.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if ((sub_1A9CAE168(&unk_1F1DDC680, tagPath._rawValue) & 1) == 0 && (sub_1A9CAE168(&unk_1F1DDC6A8, tagPath._rawValue) & 1) == 0 && (sub_1A9CAE168(&unk_1F1DDC6D0, tagPath._rawValue) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_98();
  [v2 v3];
  return 1;
}

uint64_t static ExecutorSiriSchemaExecutorClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736DD0);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF590);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  inited[4].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall ExecutorSiriSchemaExecutorClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  if (sub_1A9CAE168(&unk_1F1DDBCA0, tagPath._rawValue))
  {
    v3 = &selRef_deleteFollowUpActionBundleId;
    v4 = &selRef_success;
LABEL_5:
    v5 = [v1 executorRequestContext];
    v6 = [v5 ended];

    v7 = [v6 *v4];
    [v7 *v3];

    return 1;
  }

  if (sub_1A9CAE168(&unk_1F1DDBCD0, tagPath._rawValue))
  {
    v3 = &selRef_deleteAssistantSchemaKind;
    v4 = &selRef_toolDisambiguation;
    goto LABEL_5;
  }

  return 0;
}

uint64_t static FLOWSchemaFLOWClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  *(inited + 32) = &unk_1F1DDA858;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDA888);
  *(inited + 48) = &unk_1F1DDA8B0;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDA8D8);
  *(inited + 64) = &unk_1F1DDA900;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDA930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static FLOWSchemaFLOWClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736DF0;
  OUTLINED_FUNCTION_27();
  *(v1 + 32) = 0xD000000000000046;
  *(v1 + 40) = v2;
  v3 = sub_1A9C952F4(&unk_1F1DDF5E0);
  OUTLINED_FUNCTION_26(v3, "smsAttachmentMetadataTier1.foregroundAppBundleId");
  sub_1A9C952F4(&unk_1F1DDF608);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v4, v5);
  *(inited + 96) = sub_1A9C952F4(&unk_1F1DDF630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall FLOWSchemaFLOWClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  v6 = v5;
  if ((sub_1A9CAE168(&unk_1F1DDC538, v5) & 1) == 0)
  {
    if (sub_1A9CAE168(&unk_1F1DDC568, v6))
    {
      v13 = [v1 smsAttachmentMetadataTier1];
      [v13 deleteForegroundAppBundleId];
    }

    else
    {
      if ((sub_1A9CAE168(&unk_1F1DDC590, v6) & 1) == 0)
      {
        goto LABEL_20;
      }

      v14 = [v1 flowDomainExecutionContext];
      v15 = [v14 startedOrChanged];

      v13 = [v15 domainExecutionMetadata];
      [v13 deleteDomainExecutionAppIntentBundleID];
    }

LABEL_20:
    OUTLINED_FUNCTION_20();
    return result;
  }

  if (![v1 flowStep] || !sub_1A9CAE468())
  {
    goto LABEL_20;
  }

  sub_1A9C8B650();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_78();
  while (1)
  {
    if (v1 == v2)
    {

      goto LABEL_20;
    }

    if (v4)
    {
      v12 = OUTLINED_FUNCTION_38();
      MEMORY[0x1AC590720](v12);
    }

    else
    {
      OUTLINED_FUNCTION_116();
      if (v8)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_67();
    }

    OUTLINED_FUNCTION_37();
    if (v9)
    {
      break;
    }

    v10 = [v3 informationPluginContext];
    if (v10)
    {
      v11 = v10;
      [v10 deleteExecutedPegasusDomain];
    }

    ++v2;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

uint64_t static FLOWSchemaFLOWServerEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E00);
  OUTLINED_FUNCTION_55(v1, v2);
  inited[3].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall FLOWSchemaFLOWServerEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  if ((OUTLINED_FUNCTION_84(&unk_1F1DDC5C0, v5) & 1) != 0 && [v1 flowStep] && (v6 = sub_1A9CAE468()) != 0)
  {
    v7 = v6;
    v8 = sub_1A9C8B650();
    v9 = 0;
    OUTLINED_FUNCTION_114();
    while (1)
    {
      if (v8 == v9)
      {

        goto LABEL_15;
      }

      if (v3)
      {
        v15 = OUTLINED_FUNCTION_124();
        MEMORY[0x1AC590720](v15);
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      OUTLINED_FUNCTION_1_3();
      if (v12)
      {
        break;
      }

      v13 = [v2 informationPluginContext];
      if (v13)
      {
        v14 = v13;
        [v13 deleteExecutedPegasusDomain];
      }

      ++v9;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_20();
  }

  return result;
}

uint64_t static GRPSchemaGroupedMessagesClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736E20;
  *(inited + 32) = &unk_1F1DDAF48;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDAF80);
  *(inited + 48) = &unk_1F1DDAFA8;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDAFE0);
  *(inited + 64) = &unk_1F1DDB008;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDB040);
  *(inited + 80) = &unk_1F1DDB068;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DDB0A0);
  *(inited + 96) = &unk_1F1DDB0C8;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DDB100);
  *(inited + 112) = &unk_1F1DDB128;
  *(inited + 120) = sub_1A9C952F4(&unk_1F1DDB160);
  *(inited + 128) = &unk_1F1DDB188;
  *(inited + 136) = sub_1A9C952F4(&unk_1F1DDB1C0);
  *(inited + 144) = &unk_1F1DDB1E8;
  *(inited + 152) = sub_1A9C952F4(&unk_1F1DDB218);
  *(inited + 160) = &unk_1F1DDB240;
  *(inited + 168) = sub_1A9C952F4(&unk_1F1DDB280);
  *(inited + 176) = &unk_1F1DDB2A8;
  *(inited + 184) = sub_1A9C952F4(&unk_1F1DDB2E0);
  *(inited + 192) = &unk_1F1DDB308;
  *(inited + 200) = sub_1A9C952F4(&unk_1F1DDB348);
  *(inited + 208) = &unk_1F1DDB370;
  *(inited + 216) = sub_1A9C952F4(&unk_1F1DDB3A0);
  *(inited + 224) = &unk_1F1DDB3C8;
  *(inited + 232) = sub_1A9C952F4(&unk_1F1DDB400);
  *(inited + 240) = &unk_1F1DDB428;
  *(inited + 248) = sub_1A9C952F4(&unk_1F1DDB468);
  *(inited + 256) = &unk_1F1DDB490;
  *(inited + 264) = sub_1A9C952F4(&unk_1F1DDB4C8);
  *(inited + 272) = &unk_1F1DDB4F0;
  *(inited + 280) = sub_1A9C952F4(&unk_1F1DDB530);
  *(inited + 288) = &unk_1F1DDB558;
  *(inited + 296) = sub_1A9C952F4(&unk_1F1DDB590);
  *(inited + 304) = &unk_1F1DDB5B8;
  *(inited + 312) = sub_1A9C952F4(&unk_1F1DDB5F0);
  *(inited + 320) = &unk_1F1DDB618;
  *(inited + 328) = sub_1A9C952F4(&unk_1F1DDB650);
  *(inited + 336) = &unk_1F1DDB678;
  *(inited + 344) = sub_1A9C952F4(&unk_1F1DDB6B0);
  *(inited + 352) = &unk_1F1DDB6D8;
  *(inited + 360) = sub_1A9C952F4(&unk_1F1DDB718);
  *(inited + 368) = &unk_1F1DDB740;
  *(inited + 376) = sub_1A9C952F4(&unk_1F1DDB780);
  *(inited + 384) = &unk_1F1DDB7A8;
  *(inited + 392) = sub_1A9C952F4(&unk_1F1DDB7E0);
  *(inited + 400) = &unk_1F1DDB808;
  *(inited + 408) = sub_1A9C952F4(&unk_1F1DDB840);
  *(inited + 416) = &unk_1F1DDB868;
  *(inited + 424) = sub_1A9C952F4(&unk_1F1DDB8A0);
  *(inited + 432) = &unk_1F1DDB8C8;
  *(inited + 440) = sub_1A9C952F4(&unk_1F1DDB900);
  *(inited + 448) = &unk_1F1DDB928;
  *(inited + 456) = sub_1A9C952F4(&unk_1F1DDB968);
  *(inited + 464) = &unk_1F1DDB990;
  *(inited + 472) = sub_1A9C952F4(&unk_1F1DDB9C8);
  *(inited + 480) = &unk_1F1DDB9F0;
  *(inited + 488) = sub_1A9C952F4(&unk_1F1DDBA28);
  *(inited + 496) = &unk_1F1DDBA50;
  *(inited + 504) = sub_1A9C952F4(&unk_1F1DDBA88);
  *(inited + 512) = &unk_1F1DDBAB0;
  *(inited + 520) = sub_1A9C952F4(&unk_1F1DDBAE8);
  *(inited + 528) = &unk_1F1DDBB10;
  *(inited + 536) = sub_1A9C952F4(&unk_1F1DDBB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static GRPSchemaGroupedMessagesClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E20);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDF6A8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDF6D0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDF6F8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDF720);
  OUTLINED_FUNCTION_27();
  inited[7].n128_u64[1] = v9;
  inited[8].n128_u64[0] = 76;
  inited[8].n128_u64[1] = v10;
  sub_1A9C952F4(&unk_1F1DDF748);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_90(v11, v12);
  sub_1A9C952F4(&unk_1F1DDF770);
  OUTLINED_FUNCTION_27();
  inited[10].n128_u64[1] = v13;
  inited[11].n128_u64[0] = 80;
  inited[11].n128_u64[1] = v14;
  sub_1A9C952F4(&unk_1F1DDF798);
  OUTLINED_FUNCTION_27();
  inited[12].n128_u64[0] = v15;
  inited[12].n128_u64[1] = 62;
  inited[13].n128_u64[0] = v16;
  sub_1A9C952F4(&unk_1F1DDF7C0);
  OUTLINED_FUNCTION_27();
  inited[13].n128_u64[1] = v17;
  inited[14].n128_u64[0] = 121;
  inited[14].n128_u64[1] = v18;
  sub_1A9C952F4(&unk_1F1DDF7E8);
  OUTLINED_FUNCTION_27();
  inited[15].n128_u64[0] = v19;
  inited[15].n128_u64[1] = 99;
  inited[16].n128_u64[0] = v20;
  sub_1A9C952F4(&unk_1F1DDF810);
  OUTLINED_FUNCTION_27();
  inited[16].n128_u64[1] = v21;
  inited[17].n128_u64[0] = 151;
  inited[17].n128_u64[1] = v22;
  sub_1A9C952F4(&unk_1F1DDF838);
  OUTLINED_FUNCTION_27();
  inited[18].n128_u64[0] = v23;
  inited[18].n128_u64[1] = 72;
  inited[19].n128_u64[0] = v24;
  sub_1A9C952F4(&unk_1F1DDF860);
  OUTLINED_FUNCTION_27();
  inited[19].n128_u64[1] = v25;
  inited[20].n128_u64[0] = 105;
  inited[20].n128_u64[1] = v26;
  sub_1A9C952F4(&unk_1F1DDF888);
  OUTLINED_FUNCTION_27();
  inited[21].n128_u64[0] = v27;
  inited[21].n128_u64[1] = 105;
  inited[22].n128_u64[0] = v28;
  sub_1A9C952F4(&unk_1F1DDF8B0);
  OUTLINED_FUNCTION_27();
  inited[22].n128_u64[1] = v29;
  inited[23].n128_u64[0] = 94;
  inited[23].n128_u64[1] = v30;
  sub_1A9C952F4(&unk_1F1DDF8D8);
  OUTLINED_FUNCTION_27();
  inited[24].n128_u64[0] = v31;
  inited[24].n128_u64[1] = 108;
  inited[25].n128_u64[0] = v32;
  sub_1A9C952F4(&unk_1F1DDF900);
  OUTLINED_FUNCTION_27();
  inited[25].n128_u64[1] = v33;
  inited[26].n128_u64[0] = 87;
  inited[26].n128_u64[1] = v34;
  sub_1A9C952F4(&unk_1F1DDF928);
  OUTLINED_FUNCTION_27();
  inited[27].n128_u64[0] = v35;
  inited[27].n128_u64[1] = 101;
  inited[28].n128_u64[0] = v36;
  sub_1A9C952F4(&unk_1F1DDF950);
  OUTLINED_FUNCTION_27();
  inited[28].n128_u64[1] = v37;
  inited[29].n128_u64[0] = 111;
  inited[29].n128_u64[1] = v38;
  sub_1A9C952F4(&unk_1F1DDF978);
  OUTLINED_FUNCTION_27();
  inited[30].n128_u64[0] = v39;
  inited[30].n128_u64[1] = 116;
  inited[31].n128_u64[0] = v40;
  sub_1A9C952F4(&unk_1F1DDF9A0);
  OUTLINED_FUNCTION_27();
  inited[31].n128_u64[1] = v41;
  inited[32].n128_u64[0] = 128;
  inited[32].n128_u64[1] = v42;
  inited[33].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDF9C8);
  OUTLINED_FUNCTION_27();
  inited[33].n128_u64[1] = 130;
  inited[34].n128_u64[0] = v43;
  inited[34].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDF9F0);
  OUTLINED_FUNCTION_27();
  inited[35].n128_u64[0] = 126;
  inited[35].n128_u64[1] = v44;
  inited[36].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFA18);
  OUTLINED_FUNCTION_27();
  inited[36].n128_u64[1] = 91;
  inited[37].n128_u64[0] = v45;
  inited[37].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFA40);
  OUTLINED_FUNCTION_27();
  inited[38].n128_u64[0] = 87;
  inited[38].n128_u64[1] = v46;
  inited[39].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFA68);
  OUTLINED_FUNCTION_27();
  inited[39].n128_u64[1] = 107;
  inited[40].n128_u64[0] = v47;
  inited[40].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFA90);
  OUTLINED_FUNCTION_27();
  inited[41].n128_u64[0] = 101;
  inited[41].n128_u64[1] = v48;
  inited[42].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFAB8);
  OUTLINED_FUNCTION_27();
  inited[42].n128_u64[1] = 98;
  inited[43].n128_u64[0] = v49;
  inited[43].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFAE0);
  OUTLINED_FUNCTION_27();
  inited[44].n128_u64[0] = 129;
  inited[44].n128_u64[1] = v50;
  inited[45].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFB08);
  OUTLINED_FUNCTION_27();
  inited[45].n128_u64[1] = 138;
  inited[46].n128_u64[0] = v51;
  inited[46].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFB30);
  OUTLINED_FUNCTION_27();
  inited[47].n128_u64[0] = 82;
  inited[47].n128_u64[1] = v52;
  inited[48].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFB58);
  OUTLINED_FUNCTION_27();
  inited[48].n128_u64[1] = 74;
  inited[49].n128_u64[0] = v53;
  inited[49].n128_u64[1] = sub_1A9C952F4(&unk_1F1DDFB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall GRPSchemaGroupedMessagesClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_21();
  v9 = v8;
  if (sub_1A9CAE168(&unk_1F1DDC8E0, v8))
  {
    v10 = sub_1A9C8B5AC(v1);
    if (v10)
    {
      v9 = v10;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      while (v1 != v2)
      {
        if (v7)
        {
          v14 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v14);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_109;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v13 = [v3 siriEventTypeUnion];
        if (v13)
        {
          v4 = OUTLINED_FUNCTION_104(v13);

          if (v4)
          {
            v5 = [v4 eventMetadata];

            if (v5)
            {
              [v5 deleteSiriDeviceID];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC918, v9))
  {
    v15 = sub_1A9C8B5AC(v1);
    if (v15)
    {
      v9 = v15;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v17 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v17);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_136;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v16 = [v3 siriEventTypeUnion];
        if (v16)
        {
          v4 = OUTLINED_FUNCTION_104(v16);

          if (v4)
          {
            v5 = [v4 deviceFixedContext];

            if (v5)
            {
              [v5 deleteSiriDeviceID];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC950, v9))
  {
    if (sub_1A9C8B5AC(v1))
    {
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      while (v1 != v2)
      {
        if (v7)
        {
          v20 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v20);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_152;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_381;
        }

        v18 = [v3 siriEventTypeUnion];
        if (v18)
        {
          v19 = OUTLINED_FUNCTION_104(v18);

          if (v19)
          {
            v5 = [v19 deviceFixedContext];

            if (v5)
            {
              [v5 deleteSpeechID];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC988, v9))
  {
    v21 = sub_1A9C8B5AC(v1);
    if (v21)
    {
      v9 = v21;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = &selRef_dataSourceIndex;
      while (v1 != v2)
      {
        if (v7)
        {
          v24 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v24);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_165;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v22 = [v3 siriEventTypeUnion];
        v23 = [v22 ueiClientEvent];

        v4 = [v23 invocation];
        v5 = [v4 typeToSiriContext];

        [v5 deleteBackgroundAppBundleId];
        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC9C0, v9))
  {
    v25 = sub_1A9C8B5AC(v1);
    if (v25)
    {
      v9 = v25;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v27 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v27);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_180;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        v26 = [v3 siriEventTypeUnion];
        if (v26)
        {
          v4 = OUTLINED_FUNCTION_104(v26);

          if (v4)
          {
            v5 = [v4 uufrShown];

            if (v5)
            {
              [v5 deleteDialogIdentifier];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC9F8, v9))
  {
    v28 = sub_1A9C8B5AC(v1);
    if (v28)
    {
      v9 = v28;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v30 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v30);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_192;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v29 = [v3 siriEventTypeUnion];
        if (v29)
        {
          v4 = OUTLINED_FUNCTION_104(v29);

          if (v4)
          {
            v5 = [v4 uufrSaid];

            if (v5)
            {
              [v5 deleteDialogIdentifier];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDCA30, v9))
  {
    v31 = sub_1A9C8B5AC(v1);
    if (v31)
    {
      v9 = v31;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_13_0();
      v6 = 0x1FC243000;
      while (v1 != v2)
      {
        if (v7)
        {
          v33 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v33);
        }

        else
        {
          OUTLINED_FUNCTION_47();
          if (v11)
          {
            goto LABEL_206;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        v32 = [v3 siriEventTypeUnion];
        if (v32)
        {
          v4 = OUTLINED_FUNCTION_104(v32);

          if (v4)
          {
            v5 = [v4 ueiUUFRReady];

            if (v5)
            {
              [v5 deleteDialogIdentifiers];
            }
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

  else
  {
    if ((sub_1A9CAE168(&unk_1F1DDCA68, v9) & 1) == 0)
    {
LABEL_110:
      v6 = &selRef_domainContexts;
      if (sub_1A9CAE168(&unk_1F1DDCA98, v9))
      {
        v37 = sub_1A9C8B5AC(v1);
        if (!v37)
        {
          goto LABEL_382;
        }

        v38 = v37;
        sub_1A9C8B650();
        OUTLINED_FUNCTION_36();
        v39 = v38 & 0xC000000000000001;
        v40 = v38 & 0xFFFFFFFFFFFFFF8;
        *&v191 = v38;
        v195 = (v38 + 32);
        v9 = &selRef_generatedSuggestion;
        *&v194 = v41;
        *&v193 = v39;
        *&v192 = v40;
LABEL_113:
        while (v2 != v1)
        {
          if (v39)
          {
            v42 = MEMORY[0x1AC590720](v2, v191);
          }

          else
          {
            if (v2 >= *(v40 + 16))
            {
              goto LABEL_230;
            }

            v42 = v195[v2];
          }

          v5 = v42;
          v12 = __OFADD__(v2++, 1);
          if (v12)
          {
            __break(1u);
LABEL_230:
            __break(1u);
            goto LABEL_231;
          }

          v43 = [v42 siriEventTypeUnion];
          if (v43)
          {
            v7 = v43;
            v44 = [v43 *(v6 + 3256)];

            if (v44)
            {
              v4 = [v44 flowStep];

              if (v4)
              {
                v45 = sub_1A9CAE468();
                if (v45)
                {
                  v7 = v45;
                  v46 = sub_1A9C8B650();
                  v47 = 0;
                  v6 = v7 & 0xC000000000000001;
                  v1 = (v7 & 0xFFFFFFFFFFFFFF8);
                  while (1)
                  {
                    if (v46 == v47)
                    {

                      v6 = 0x1E78F8000;
                      v1 = v194;
                      v39 = v193;
                      v40 = v192;
                      goto LABEL_113;
                    }

                    if (v6)
                    {
                      v51 = OUTLINED_FUNCTION_95();
                      MEMORY[0x1AC590720](v51);
                    }

                    else
                    {
                      if (v47 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_204;
                      }

                      OUTLINED_FUNCTION_94();
                      v49 = v48;
                    }

                    OUTLINED_FUNCTION_125();
                    if (v12)
                    {
                      break;
                    }

                    v50 = [v44 informationPluginContext];
                    if (v50)
                    {
                      v4 = v50;
                      [v50 deleteExecutedPegasusDomain];
                    }

                    ++v47;
                  }

                  __break(1u);
LABEL_204:
                  __break(1u);
                  goto LABEL_205;
                }
              }
            }
          }
        }
      }

      else
      {
LABEL_137:
        if (sub_1A9CAE168(&unk_1F1DDCAD8, v9))
        {
          v52 = sub_1A9C8B5AC(v1);
          if (!v52)
          {
            goto LABEL_382;
          }

          v9 = v52;
          sub_1A9C8B650();
          OUTLINED_FUNCTION_36();
          v7 = v9 & 0xC000000000000001;
          v6 = v9 & 0xFFFFFFFFFFFFFF8;
          while (v1 != v2)
          {
            if (v7)
            {
              v54 = OUTLINED_FUNCTION_38();
              MEMORY[0x1AC590720](v54);
            }

            else
            {
              OUTLINED_FUNCTION_116();
              if (v11)
              {
                goto LABEL_246;
              }

              OUTLINED_FUNCTION_67();
            }

            OUTLINED_FUNCTION_37();
            if (v12)
            {
              __break(1u);
LABEL_246:
              __break(1u);
              goto LABEL_247;
            }

            v53 = [v3 siriEventTypeUnion];
            if (v53)
            {
              v5 = v53;
              v4 = [v53 flowClientEvent];

              if (v4)
              {
                v5 = [v4 smsAttachmentMetadataTier1];

                if (v5)
                {
                  [v5 deleteForegroundAppBundleId];
                }
              }
            }

            ++v2;
          }
        }

        else if (sub_1A9CAE168(&unk_1F1DDCB10, v9))
        {
          v55 = sub_1A9C8B5AC(v1);
          if (!v55)
          {
            goto LABEL_382;
          }

          v9 = v55;
          sub_1A9C8B650();
          OUTLINED_FUNCTION_13_0();
          while (v1 != v2)
          {
            if (v7)
            {
              v59 = OUTLINED_FUNCTION_38();
              MEMORY[0x1AC590720](v59);
            }

            else
            {
              OUTLINED_FUNCTION_47();
              if (v11)
              {
                goto LABEL_262;
              }

              OUTLINED_FUNCTION_67();
            }

            OUTLINED_FUNCTION_37();
            if (v12)
            {
              __break(1u);
LABEL_262:
              __break(1u);
              goto LABEL_263;
            }

            v56 = [v3 siriEventTypeUnion];
            v57 = [v56 *(v6 + 3256)];

            v58 = [v57 flowDomainExecutionContext];
            v5 = [v58 startedOrChanged];

            v4 = [v5 domainExecutionMetadata];
            [v4 deleteDomainExecutionAppIntentBundleID];

            ++v2;
          }
        }

        else
        {
LABEL_166:
          if (sub_1A9CAE168(&unk_1F1DDCB50, v9))
          {
            v60 = sub_1A9C8B5AC(v1);
            if (!v60)
            {
              goto LABEL_382;
            }

            v9 = v60;
            sub_1A9C8B650();
            OUTLINED_FUNCTION_36();
            OUTLINED_FUNCTION_79();
            while (v1 != v2)
            {
              if (v6)
              {
                v63 = OUTLINED_FUNCTION_38();
                MEMORY[0x1AC590720](v63);
              }

              else
              {
                OUTLINED_FUNCTION_92();
                if (v11)
                {
                  goto LABEL_278;
                }

                OUTLINED_FUNCTION_67();
              }

              OUTLINED_FUNCTION_37();
              if (v12)
              {
                __break(1u);
LABEL_278:
                __break(1u);
                goto LABEL_279;
              }

              v61 = [v3 siriEventTypeUnion];
              if (v61)
              {
                v4 = v61;
                v62 = [v61 dimClientEvent];

                if (v62)
                {
                  [v62 deleteSiriAccountInformation];
                }
              }

              ++v2;
            }
          }

          else
          {
LABEL_181:
            if (sub_1A9CAE168(&unk_1F1DDCB80, v9))
            {
              v64 = sub_1A9C8B5AC(v1);
              if (!v64)
              {
                goto LABEL_382;
              }

              v9 = v64;
              sub_1A9C8B650();
              OUTLINED_FUNCTION_13_0();
              v6 = &selRef_setUserPresenceSourceCaptured_;
              while (v1 != v2)
              {
                if (v7)
                {
                  v67 = OUTLINED_FUNCTION_38();
                  MEMORY[0x1AC590720](v67);
                }

                else
                {
                  OUTLINED_FUNCTION_47();
                  if (v11)
                  {
                    goto LABEL_294;
                  }

                  OUTLINED_FUNCTION_67();
                }

                OUTLINED_FUNCTION_37();
                if (v12)
                {
                  __break(1u);
LABEL_294:
                  __break(1u);
                  goto LABEL_295;
                }

                v65 = [v3 siriEventTypeUnion];
                v66 = [v65 nlxClientEvent];

                v4 = [v66 cdmRequestContext];
                v5 = [v4 startedOrChanged];

                [v5 deleteLoggableSharedUserId];
                ++v2;
              }
            }

            else
            {
LABEL_193:
              v195 = v1;
              v2 = 0;
              v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400860);
              inited = swift_initStackObject();
              v193 = xmmword_1AA736E30;
              v194 = xmmword_1AA736E40;
              *(inited + 16) = xmmword_1AA736E30;
              *(inited + 32) = xmmword_1AA736E40;
              *(inited + 48) = 0x300000002;
              *(inited + 56) = 1;
              OUTLINED_FUNCTION_23(inited);
              if (v4)
              {
                v69 = sub_1A9C8B5AC(v195);
                if (!v69)
                {
                  goto LABEL_382;
                }

                v9 = v69;
                sub_1A9C8B650();
                OUTLINED_FUNCTION_118();
                OUTLINED_FUNCTION_79();
                v4 = &selRef_userScores;
                while (v1 != inited)
                {
                  if (v6)
                  {
                    OUTLINED_FUNCTION_3_1();
                  }

                  else
                  {
                    if (inited >= *(v7 + 16))
                    {
                      goto LABEL_306;
                    }

                    v70 = OUTLINED_FUNCTION_5_1();
                  }

                  v5 = v70;
                  if (__OFADD__(inited, 1))
                  {
                    __break(1u);
LABEL_306:
                    __break(1u);
                    goto LABEL_307;
                  }

                  v196[0] = v70;
                  sub_1A9C997CC(v196);

                  ++inited;
                }
              }

              else
              {
LABEL_207:
                v71 = swift_initStackObject();
                v192 = xmmword_1AA736DE0;
                *(v71 + 16) = xmmword_1AA736DE0;
                *(v71 + 32) = v194;
                *(v71 + 48) = 0x800000002;
                OUTLINED_FUNCTION_23(v71);
                if (v4)
                {
                  v72 = sub_1A9C8B5AC(v195);
                  if (!v72)
                  {
                    goto LABEL_382;
                  }

                  v9 = v72;
                  sub_1A9C8B650();
                  OUTLINED_FUNCTION_13_0();
                  v6 = &selRef_domainContexts;
                  while (v1 != v2)
                  {
                    if (v7)
                    {
                      v75 = OUTLINED_FUNCTION_38();
                      MEMORY[0x1AC590720](v75);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_47();
                      if (v11)
                      {
                        goto LABEL_318;
                      }

                      OUTLINED_FUNCTION_67();
                    }

                    OUTLINED_FUNCTION_37();
                    if (v12)
                    {
                      __break(1u);
LABEL_318:
                      __break(1u);
                      goto LABEL_319;
                    }

                    v73 = [v71 siriEventTypeUnion];
                    v74 = [v73 orchClientEvent];

                    v4 = [v74 muxBridgeContext];
                    v5 = [v4 ended];

                    [v5 deleteSelectedSharedUserId];
                    ++v2;
                  }
                }

                else
                {
LABEL_219:
                  v76 = swift_initStackObject();
                  *(v76 + 16) = v193;
                  *(v76 + 32) = v194;
                  *(v76 + 48) = 0xC00000002;
                  *(v76 + 56) = 1;
                  OUTLINED_FUNCTION_23(v76);
                  if (v4)
                  {
                    v77 = sub_1A9C8B5AC(v195);
                    if (!v77)
                    {
                      goto LABEL_382;
                    }

                    v9 = v77;
                    sub_1A9C8B650();
                    OUTLINED_FUNCTION_118();
                    OUTLINED_FUNCTION_79();
                    v4 = &selRef_voiceIdScores;
                    while (v1 != v76)
                    {
                      if (v6)
                      {
                        OUTLINED_FUNCTION_3_1();
                      }

                      else
                      {
                        if (v76 >= *(v7 + 16))
                        {
                          goto LABEL_330;
                        }

                        v78 = OUTLINED_FUNCTION_5_1();
                      }

                      v5 = v78;
                      if (__OFADD__(v76, 1))
                      {
                        __break(1u);
LABEL_330:
                        __break(1u);
                        goto LABEL_331;
                      }

                      v196[0] = v78;
                      sub_1A9C997CC(v196);

                      ++v76;
                    }
                  }

                  else
                  {
LABEL_231:
                    v79 = swift_initStackObject();
                    v194 = xmmword_1AA736E50;
                    *(v79 + 16) = xmmword_1AA736E50;
                    *(v79 + 32) = xmmword_1AA736E60;
                    v5 = 4;
                    *(v79 + 48) = 4;
                    OUTLINED_FUNCTION_23(v79);
                    if (v4)
                    {
                      v80 = sub_1A9C8B5AC(v195);
                      if (!v80)
                      {
                        goto LABEL_382;
                      }

                      v9 = v80;
                      sub_1A9C8B650();
                      OUTLINED_FUNCTION_13_0();
                      while (v1 != v2)
                      {
                        if (v7)
                        {
                          v82 = OUTLINED_FUNCTION_38();
                          MEMORY[0x1AC590720](v82);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_47();
                          if (v11)
                          {
                            goto LABEL_342;
                          }

                          OUTLINED_FUNCTION_67();
                        }

                        OUTLINED_FUNCTION_37();
                        if (v12)
                        {
                          __break(1u);
LABEL_342:
                          __break(1u);
                          goto LABEL_343;
                        }

                        v81 = [v79 siriEventTypeUnion];
                        if (v81)
                        {
                          v4 = OUTLINED_FUNCTION_132(v81);

                          if (v4)
                          {
                            v5 = [v4 packageGenerated];

                            if (v5)
                            {
                              [v5 deleteLoggableSharedUserId];
                            }
                          }
                        }

                        ++v2;
                      }
                    }

                    else
                    {
LABEL_247:
                      v83 = swift_initStackObject();
                      v91 = OUTLINED_FUNCTION_63(v83, xmmword_1AA736E70, v84, v85, v86, v87, v88, v89, v90, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                      *(v91 + 48) = v5;
                      OUTLINED_FUNCTION_23(v91);
                      if (v4)
                      {
                        v92 = sub_1A9C8B5AC(v195);
                        if (!v92)
                        {
                          goto LABEL_382;
                        }

                        v9 = v92;
                        sub_1A9C8B650();
                        OUTLINED_FUNCTION_13_0();
                        while (v1 != v2)
                        {
                          if (v7)
                          {
                            v94 = OUTLINED_FUNCTION_38();
                            MEMORY[0x1AC590720](v94);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_47();
                            if (v11)
                            {
                              goto LABEL_347;
                            }

                            OUTLINED_FUNCTION_67();
                          }

                          OUTLINED_FUNCTION_37();
                          if (v12)
                          {
                            __break(1u);
LABEL_347:
                            __break(1u);
                            goto LABEL_348;
                          }

                          v93 = [v83 siriEventTypeUnion];
                          if (v93)
                          {
                            v4 = OUTLINED_FUNCTION_132(v93);

                            if (v4)
                            {
                              v5 = [v4 intermediateUtteranceInfoTier1];

                              if (v5)
                              {
                                [v5 deleteLoggableSharedUserId];
                              }
                            }
                          }

                          ++v2;
                        }
                      }

                      else
                      {
LABEL_263:
                        v95 = swift_initStackObject();
                        v103 = OUTLINED_FUNCTION_63(v95, xmmword_1AA736E80, v96, v97, v98, v99, v100, v101, v102, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                        *(v103 + 48) = 2;
                        OUTLINED_FUNCTION_23(v103);
                        if (v4)
                        {
                          v104 = sub_1A9C8B5AC(v195);
                          if (!v104)
                          {
                            goto LABEL_382;
                          }

                          v9 = v104;
                          sub_1A9C8B650();
                          OUTLINED_FUNCTION_13_0();
                          while (v1 != v2)
                          {
                            if (v7)
                            {
                              v106 = OUTLINED_FUNCTION_38();
                              MEMORY[0x1AC590720](v106);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_47();
                              if (v11)
                              {
                                goto LABEL_352;
                              }

                              OUTLINED_FUNCTION_67();
                            }

                            OUTLINED_FUNCTION_37();
                            if (v12)
                            {
                              __break(1u);
LABEL_352:
                              __break(1u);
                              goto LABEL_353;
                            }

                            v105 = [v95 siriEventTypeUnion];
                            if (v105)
                            {
                              v4 = OUTLINED_FUNCTION_132(v105);

                              if (v4)
                              {
                                v5 = [v4 finalAudioPacketContainingSpeechReceived];

                                if (v5)
                                {
                                  [v5 deleteLoggableSharedUserId];
                                }
                              }
                            }

                            ++v2;
                          }
                        }

                        else
                        {
LABEL_279:
                          v107 = swift_initStackObject();
                          v115 = OUTLINED_FUNCTION_63(v107, xmmword_1AA736E90, v108, v109, v110, v111, v112, v113, v114, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                          v5 = 1;
                          *(v115 + 48) = 1;
                          OUTLINED_FUNCTION_23(v115);
                          if (v4)
                          {
                            v116 = sub_1A9C8B5AC(v195);
                            if (!v116)
                            {
                              goto LABEL_382;
                            }

                            v9 = v116;
                            sub_1A9C8B650();
                            OUTLINED_FUNCTION_13_0();
                            while (v1 != v2)
                            {
                              if (v7)
                              {
                                v118 = OUTLINED_FUNCTION_38();
                                MEMORY[0x1AC590720](v118);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_47();
                                if (v11)
                                {
                                  goto LABEL_357;
                                }

                                OUTLINED_FUNCTION_67();
                              }

                              OUTLINED_FUNCTION_37();
                              if (v12)
                              {
                                __break(1u);
LABEL_357:
                                __break(1u);
                                goto LABEL_358;
                              }

                              v117 = [v107 siriEventTypeUnion];
                              if (v117)
                              {
                                v4 = OUTLINED_FUNCTION_132(v117);

                                if (v4)
                                {
                                  v5 = [v4 finalAudioPacketContainingSpeechReadyUpstream];

                                  if (v5)
                                  {
                                    [v5 deleteLoggableSharedUserId];
                                  }
                                }
                              }

                              ++v2;
                            }
                          }

                          else
                          {
LABEL_295:
                            v119 = swift_initStackObject();
                            *(v119 + 16) = v193;
                            *(v119 + 32) = xmmword_1AA736EA0;
                            v191 = xmmword_1AA736EA0;
                            *(v119 + 48) = 0x800000001;
                            *(v119 + 56) = v5;
                            OUTLINED_FUNCTION_23(v119);
                            if (v4)
                            {
                              v120 = sub_1A9C8B5AC(v195);
                              if (!v120)
                              {
                                goto LABEL_382;
                              }

                              v9 = v120;
                              sub_1A9C8B650();
                              OUTLINED_FUNCTION_118();
                              OUTLINED_FUNCTION_78();
                              while (v1 != v119)
                              {
                                if (v5)
                                {
                                  OUTLINED_FUNCTION_3_1();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_115();
                                  if (v11)
                                  {
                                    goto LABEL_362;
                                  }

                                  OUTLINED_FUNCTION_5_1();
                                }

                                OUTLINED_FUNCTION_1_3();
                                if (v12)
                                {
                                  __break(1u);
LABEL_362:
                                  __break(1u);
                                  goto LABEL_363;
                                }

                                v196[0] = v4;
                                sub_1A9C99914(v196);

                                ++v119;
                              }
                            }

                            else
                            {
LABEL_307:
                              v121 = swift_initStackObject();
                              *(v121 + 16) = xmmword_1AA736E10;
                              *(v121 + 32) = v191;
                              OUTLINED_FUNCTION_22(v121, xmmword_1AA736EB0);
                              if (v4)
                              {
                                v122 = sub_1A9C8B5AC(v195);
                                if (!v122)
                                {
                                  goto LABEL_382;
                                }

                                v9 = v122;
                                sub_1A9C8B650();
                                OUTLINED_FUNCTION_118();
                                OUTLINED_FUNCTION_78();
                                while (v1 != v121)
                                {
                                  if (v5)
                                  {
                                    OUTLINED_FUNCTION_3_1();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_115();
                                    if (v11)
                                    {
                                      __break(1u);
LABEL_367:
                                      __break(1u);
                                      goto LABEL_368;
                                    }

                                    OUTLINED_FUNCTION_5_1();
                                  }

                                  OUTLINED_FUNCTION_1_3();
                                  if (v12)
                                  {
                                    goto LABEL_367;
                                  }

                                  v196[0] = v4;
                                  sub_1A9C99A80(v196);

                                  ++v121;
                                }
                              }

                              else
                              {
LABEL_319:
                                v123 = swift_initStackObject();
                                v131 = OUTLINED_FUNCTION_63(v123, xmmword_1AA736EC0, v124, v125, v126, v127, v128, v129, v130, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                *(v131 + 48) = 2;
                                OUTLINED_FUNCTION_23(v131);
                                if (v4)
                                {
                                  v132 = sub_1A9C8B5AC(v195);
                                  if (!v132)
                                  {
                                    goto LABEL_382;
                                  }

                                  v9 = v132;
                                  sub_1A9C8B650();
                                  OUTLINED_FUNCTION_36();
                                  OUTLINED_FUNCTION_79();
                                  while (v1 != v2)
                                  {
                                    if (v6)
                                    {
                                      v135 = OUTLINED_FUNCTION_38();
                                      MEMORY[0x1AC590720](v135);
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_92();
                                      if (v11)
                                      {
                                        __break(1u);
LABEL_372:
                                        __break(1u);
                                        goto LABEL_373;
                                      }

                                      OUTLINED_FUNCTION_67();
                                    }

                                    OUTLINED_FUNCTION_37();
                                    if (v12)
                                    {
                                      goto LABEL_372;
                                    }

                                    v133 = [v123 siriEventTypeUnion];
                                    v134 = [v133 mhClientEvent];

                                    v4 = [v134 assistantDaemonAudioRecordingInterruptionStartedTier1];
                                    [v4 deleteActiveSessionDisplayIds];

                                    ++v2;
                                  }
                                }

                                else
                                {
LABEL_331:
                                  v136 = swift_initStackObject();
                                  v144 = OUTLINED_FUNCTION_63(v136, xmmword_1AA736ED0, v137, v138, v139, v140, v141, v142, v143, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                  *(v144 + 48) = v5;
                                  OUTLINED_FUNCTION_23(v144);
                                  if (v4)
                                  {
                                    v145 = sub_1A9C8B5AC(v195);
                                    if (!v145)
                                    {
                                      goto LABEL_382;
                                    }

                                    v9 = v145;
                                    sub_1A9C8B650();
                                    OUTLINED_FUNCTION_36();
                                    OUTLINED_FUNCTION_79();
                                    while (v1 != v2)
                                    {
                                      if (v6)
                                      {
                                        v149 = OUTLINED_FUNCTION_38();
                                        MEMORY[0x1AC590720](v149);
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_92();
                                        if (v11)
                                        {
                                          __break(1u);
LABEL_377:
                                          __break(1u);
                                          goto LABEL_378;
                                        }

                                        OUTLINED_FUNCTION_67();
                                      }

                                      OUTLINED_FUNCTION_37();
                                      if (v12)
                                      {
                                        goto LABEL_377;
                                      }

                                      v146 = [v136 siriEventTypeUnion];
                                      v147 = [v146 mhClientEvent];

                                      v148 = [v147 applicationPlaybackAttempted];
                                      [v148 deleteAppBundleName];

                                      ++v2;
                                    }
                                  }

                                  else
                                  {
LABEL_343:
                                    v150 = swift_initStackObject();
                                    v158 = OUTLINED_FUNCTION_63(v150, xmmword_1AA736EE0, v151, v152, v153, v154, v155, v156, v157, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                    *(v158 + 48) = v5;
                                    OUTLINED_FUNCTION_23(v158);
                                    if (v4)
                                    {
                                      v159 = sub_1A9C8B5AC(v195);
                                      if (!v159)
                                      {
                                        goto LABEL_382;
                                      }

                                      sub_1A9C8B75C(v159);
                                    }

                                    else
                                    {
LABEL_348:
                                      v160 = swift_initStackObject();
                                      *(v160 + 16) = v192;
                                      *(v160 + 32) = xmmword_1AA736EF0;
                                      *(v160 + 48) = 0x200000001;
                                      OUTLINED_FUNCTION_23(v160);
                                      if (v4)
                                      {
                                        v161 = sub_1A9C8B5AC(v195);
                                        if (!v161)
                                        {
                                          goto LABEL_382;
                                        }

                                        sub_1A9C8B878(v161);
                                      }

                                      else
                                      {
LABEL_353:
                                        v162 = swift_initStackObject();
                                        *(v162 + 16) = v193;
                                        *(v162 + 32) = xmmword_1AA736F00;
                                        *(v162 + 48) = 0x400000003;
                                        *(v162 + 56) = 1;
                                        OUTLINED_FUNCTION_23(v162);
                                        if (v4)
                                        {
                                          v163 = sub_1A9C8B5AC(v195);
                                          if (!v163)
                                          {
                                            goto LABEL_382;
                                          }

                                          sub_1A9C8BA68(v163);
                                        }

                                        else
                                        {
LABEL_358:
                                          v164 = swift_initStackObject();
                                          v172 = OUTLINED_FUNCTION_63(v164, xmmword_1AA736F10, v165, v166, v167, v168, v169, v170, v171, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                          *(v172 + 48) = 4;
                                          OUTLINED_FUNCTION_23(v172);
                                          if (v4)
                                          {
                                            v173 = sub_1A9C8B5AC(v195);
                                            if (!v173)
                                            {
                                              goto LABEL_382;
                                            }

                                            sub_1A9C8BBC4(v173);
                                          }

                                          else
                                          {
LABEL_363:
                                            v174 = swift_initStackObject();
                                            *(v174 + 16) = v192;
                                            *(v174 + 32) = xmmword_1AA736F20;
                                            v193 = xmmword_1AA736F20;
                                            *(v174 + 48) = 0x100000002;
                                            OUTLINED_FUNCTION_23(v174);
                                            if (v4)
                                            {
                                              v175 = sub_1A9C8B5AC(v195);
                                              if (!v175)
                                              {
                                                goto LABEL_382;
                                              }

                                              sub_1A9C8BCE0(v175);
                                            }

                                            else
                                            {
LABEL_368:
                                              v176 = swift_initStackObject();
                                              *(v176 + 16) = v192;
                                              *(v176 + 32) = v193;
                                              *(v176 + 48) = 0x400000002;
                                              OUTLINED_FUNCTION_23(v176);
                                              if (v4)
                                              {
                                                v177 = sub_1A9C8B5AC(v195);
                                                if (!v177)
                                                {
                                                  goto LABEL_382;
                                                }

                                                sub_1A9C8BED0(v177);
                                              }

                                              else
                                              {
LABEL_373:
                                                v178 = swift_allocObject();
                                                v186 = OUTLINED_FUNCTION_63(v178, xmmword_1AA736F30, v179, v180, v181, v182, v183, v184, v185, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194);
                                                *(v186 + 48) = 2;
                                                OUTLINED_FUNCTION_23(v186);
                                                if (v4)
                                                {
                                                  v187 = sub_1A9C8B5AC(v195);
                                                  if (!v187)
                                                  {
                                                    goto LABEL_382;
                                                  }

                                                  sub_1A9C8C0C0(v187);
                                                }

                                                else
                                                {
LABEL_378:
                                                  v188 = swift_initStackObject();
                                                  *(v188 + 16) = xmmword_1AA736F40;
                                                  *(v188 + 32) = xmmword_1AA736F50;
                                                  OUTLINED_FUNCTION_84(v188, v9);

                                                  if ((v9 & 1) == 0)
                                                  {
                                                    goto LABEL_382;
                                                  }

                                                  v189 = sub_1A9C8B5AC(v195);
                                                  if (!v189)
                                                  {
                                                    goto LABEL_382;
                                                  }

                                                  sub_1A9C948E0(v189, sub_1A9C8B650, &selRef_siriEventTypeUnion, &selRef_rfgClientEvent, &selRef_deleteVisualResponseShownTier1);
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

LABEL_381:

      goto LABEL_382;
    }

    v34 = sub_1A9C8B5AC(v1);
    if (v34)
    {
      v9 = v34;
      sub_1A9C8B650();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_79();
      while (v1 != v2)
      {
        if (v6)
        {
          v36 = OUTLINED_FUNCTION_38();
          MEMORY[0x1AC590720](v36);
        }

        else
        {
          OUTLINED_FUNCTION_92();
          if (v11)
          {
            goto LABEL_218;
          }

          OUTLINED_FUNCTION_67();
        }

        OUTLINED_FUNCTION_37();
        if (v12)
        {
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        v35 = [v3 siriEventTypeUnion];
        if (v35)
        {
          v4 = v35;
          v5 = [v35 ueiClientEvent];

          if (v5)
          {
            [v5 deleteUufrSelected];
          }
        }

        ++v2;
      }

      goto LABEL_381;
    }
  }

LABEL_382:
  OUTLINED_FUNCTION_20();
  return result;
}

void sub_1A9C997CC(uint64_t a1)
{
  v4 = [OUTLINED_FUNCTION_93(a1) siriEventTypeUnion];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 orchClientEvent];

    if (v6)
    {
      v7 = [v6 muxBridgeContext];

      if (v7)
      {
        v8 = [v7 ended];

        if (v8)
        {
          OUTLINED_FUNCTION_124();
          if (sub_1A9CAE468())
          {
            sub_1A9C8B650();
            OUTLINED_FUNCTION_61();
            OUTLINED_FUNCTION_114();
            while (1)
            {
              if (v8 == v7)
              {

                return;
              }

              if (v2)
              {
                OUTLINED_FUNCTION_88();
              }

              else
              {
                if (v7 >= *(v3 + 16))
                {
                  goto LABEL_17;
                }

                OUTLINED_FUNCTION_87();
              }

              OUTLINED_FUNCTION_65();
              if (v9)
              {
                break;
              }

              [v1 deleteLoggableSharedUserId];

              ++v7;
            }

            __break(1u);
LABEL_17:
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1A9C99914(id *a1)
{
  v1 = [*a1 siriEventTypeUnion];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asrClientEvent];

    if (v3)
    {
      v4 = [v3 contextualEntityRetrievalContext];

      if (v4)
      {
        v5 = [v4 startedOrChanged];

        if (v5)
        {
          v6 = sub_1A9CAE468();
          if (v6)
          {
            v7 = v6;
            v8 = sub_1A9C8B650();
            for (i = 0; ; ++i)
            {
              if (v8 == i)
              {

                return;
              }

              if ((v7 & 0xC000000000000001) != 0)
              {
                v10 = MEMORY[0x1AC590720](i, v7);
              }

              else
              {
                if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_17;
                }

                v10 = *(v7 + 8 * i + 32);
              }

              v11 = v10;
              if (__OFADD__(i, 1))
              {
                break;
              }

              [v10 deleteBundleId];
            }

            __break(1u);
LABEL_17:
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1A9C99A80(id *a1)
{
  v1 = [*a1 siriEventTypeUnion];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asrClientEvent];

    if (v3)
    {
      v4 = [v3 contextualEntityRetrievalContext];

      if (v4)
      {
        v5 = [v4 ended];

        if (v5)
        {
          v6 = sub_1A9CAE468();
          if (v6)
          {
            v7 = v6;
            v8 = sub_1A9C8B650();
            for (i = 0; ; ++i)
            {
              if (v8 == i)
              {

                return;
              }

              if ((v7 & 0xC000000000000001) != 0)
              {
                v10 = MEMORY[0x1AC590720](i, v7);
              }

              else
              {
                if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_19;
                }

                v10 = *(v7 + 8 * i + 32);
              }

              v11 = v10;
              if (__OFADD__(i, 1))
              {
                break;
              }

              v12 = [v10 entityType];
              if (v12)
              {
                v13 = v12;
                [v12 deleteBundleId];
              }
            }

            __break(1u);
LABEL_19:
            __break(1u);
          }
        }
      }
    }
  }
}

uint64_t static IDENTITYSchemaIDENTITYClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AA736E50;
  *(inited + 32) = &unk_1F1DDAD90;
  *(inited + 40) = sub_1A9C952F4(&unk_1F1DDADC0);
  *(inited + 48) = &unk_1F1DDADE8;
  *(inited + 56) = sub_1A9C952F4(&unk_1F1DDAE18);
  *(inited + 64) = &unk_1F1DDAE40;
  *(inited + 72) = sub_1A9C952F4(&unk_1F1DDAE70);
  *(inited + 80) = &unk_1F1DDAE98;
  *(inited + 88) = sub_1A9C952F4(&unk_1F1DDAEC8);
  *(inited + 96) = &unk_1F1DDAEF0;
  *(inited + 104) = sub_1A9C952F4(&unk_1F1DDAF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();
  return sub_1AA6519B4();
}

uint64_t static IDENTITYSchemaIDENTITYClientEvent.sensitiveKvcPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400858);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_21_0(inited, xmmword_1AA736E50);
  OUTLINED_FUNCTION_51(v1, v2);
  sub_1A9C952F4(&unk_1F1DDFBA8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_50(v3, v4);
  sub_1A9C952F4(&unk_1F1DDFBD0);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_49(v5, v6);
  sub_1A9C952F4(&unk_1F1DDFBF8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76(v7, v8);
  sub_1A9C952F4(&unk_1F1DDFC20);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_91(v9, v10);
  inited[9].n128_u64[0] = sub_1A9C952F4(&unk_1F1DDFC48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  return sub_1AA6519B4();
}

Swift::Bool __swiftcall IDENTITYSchemaIDENTITYClientEvent.deleteSensitiveField(tagPath:)(Swift::OpaquePointer tagPath)
{
  OUTLINED_FUNCTION_137();
  v6 = v5;
  if (sub_1A9CAE168(&unk_1F1DDC7F0, v5))
  {
    v7 = [v1 scoreCardsGenerated];
    if (!v7)
    {
      goto LABEL_62;
    }

    v8 = v7;
    v9 = [v7 voiceScoreCard];

    if (!v9 || !sub_1A9CAE468())
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v9 != v2)
    {
      if (v4)
      {
        v13 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v13);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC820, v6))
  {
    v14 = [v1 scoreCardsGenerated];
    if (!v14)
    {
      goto LABEL_62;
    }

    v15 = v14;
    v16 = [v14 identityScoreCard];

    if (!v16 || !sub_1A9CAE468())
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v16 != v2)
    {
      if (v4)
      {
        v17 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v17);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC850, v6))
  {
    v18 = [v1 firstVoiceIdSubmitted];
    if (!v18)
    {
      goto LABEL_62;
    }

    v19 = v18;
    v20 = [v18 voiceScoreCard];

    if (!v20 || !sub_1A9CAE468())
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v20 != v2)
    {
      if (v4)
      {
        v21 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v21);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_69;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else if (sub_1A9CAE168(&unk_1F1DDC880, v6))
  {
    v22 = [v1 firstIdentityReceived];
    if (!v22)
    {
      goto LABEL_62;
    }

    v23 = v22;
    v24 = [v22 identityScoreCard];

    if (!v24 || !sub_1A9CAE468())
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v24 != v2)
    {
      if (v4)
      {
        v25 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v25);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

  else
  {
    if ((sub_1A9CAE168(&unk_1F1DDC8B0, v6) & 1) == 0)
    {
      goto LABEL_62;
    }

    v26 = [v1 resultCandidateReceived];
    if (!v26)
    {
      goto LABEL_62;
    }

    v27 = v26;
    v28 = [v26 identityScoreCard];

    if (!v28 || !sub_1A9CAE468())
    {
      goto LABEL_62;
    }

    sub_1A9C8B650();
    OUTLINED_FUNCTION_10_1();
    while (v28 != v2)
    {
      if (v4)
      {
        v29 = OUTLINED_FUNCTION_38();
        MEMORY[0x1AC590720](v29);
      }

      else
      {
        OUTLINED_FUNCTION_44();
        if (v11)
        {
          goto LABEL_73;
        }

        OUTLINED_FUNCTION_67();
      }

      OUTLINED_FUNCTION_37();
      if (v12)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_101();

      ++v2;
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_135();
  return result;
}

uint64_t static IFTSchemaIFTClientEvent.sensitiveTagPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400840);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AA736F60;
  *(v0 + 32) = &unk_1F1DD2B38;
  *(v0 + 40) = sub_1A9C952F4(&unk_1F1DD2B70);
  *(v0 + 48) = &unk_1F1DD2B98;
  *(v0 + 56) = sub_1A9C952F4(&unk_1F1DD2BD0);
  *(v0 + 64) = &unk_1F1DD2BF8;
  *(v0 + 72) = sub_1A9C952F4(&unk_1F1DD2C30);
  *(v0 + 80) = &unk_1F1DD2C58;
  *(v0 + 88) = sub_1A9C952F4(&unk_1F1DD2C90);
  *(v0 + 96) = &unk_1F1DD2CB8;
  *(v0 + 104) = sub_1A9C952F4(&unk_1F1DD2CF0);
  *(v0 + 112) = &unk_1F1DD2D18;
  *(v0 + 120) = sub_1A9C952F4(&unk_1F1DD2D58);
  *(v0 + 128) = &unk_1F1DD2D80;
  *(v0 + 136) = sub_1A9C952F4(&unk_1F1DD2DC8);
  *(v0 + 144) = &unk_1F1DD2DF0;
  *(v0 + 152) = sub_1A9C952F4(&unk_1F1DD2E38);
  *(v0 + 160) = &unk_1F1DD2E60;
  *(v0 + 168) = sub_1A9C952F4(&unk_1F1DD2EB0);
  *(v0 + 176) = &unk_1F1DD2ED8;
  *(v0 + 184) = sub_1A9C952F4(&unk_1F1DD2F28);
  *(v0 + 192) = &unk_1F1DD2F50;
  *(v0 + 200) = sub_1A9C952F4(&unk_1F1DD2FA0);
  *(v0 + 208) = &unk_1F1DD2FC8;
  *(v0 + 216) = sub_1A9C952F4(&unk_1F1DD2FF0);
  *(v0 + 224) = &unk_1F1DD3018;
  *(v0 + 232) = sub_1A9C952F4(&unk_1F1DD3048);
  *(v0 + 240) = &unk_1F1DD3070;
  *(v0 + 248) = sub_1A9C952F4(&unk_1F1DD30A0);
  *(v0 + 256) = &unk_1F1DD30C8;
  *(v0 + 264) = sub_1A9C952F4(&unk_1F1DD30F0);
  *(v0 + 272) = &unk_1F1DD3118;
  *(v0 + 280) = sub_1A9C952F4(&unk_1F1DD3160);
  *(v0 + 288) = &unk_1F1DD3188;
  *(v0 + 296) = sub_1A9C952F4(&unk_1F1DD31D0);
  *(v0 + 304) = &unk_1F1DD31F8;
  *(v0 + 312) = sub_1A9C952F4(&unk_1F1DD3240);
  *(v0 + 320) = &unk_1F1DD3268;
  *(v0 + 328) = sub_1A9C952F4(&unk_1F1DD32B0);
  *(v0 + 336) = &unk_1F1DD32D8;
  *(v0 + 344) = sub_1A9C952F4(&unk_1F1DD3320);
  *(v0 + 352) = &unk_1F1DD3348;
  *(v0 + 360) = sub_1A9C952F4(&unk_1F1DD3390);
  *(v0 + 368) = &unk_1F1DD33B8;
  *(v0 + 376) = sub_1A9C952F4(&unk_1F1DD3408);
  *(v0 + 384) = &unk_1F1DD3430;
  *(v0 + 392) = sub_1A9C952F4(&unk_1F1DD3480);
  *(v0 + 400) = &unk_1F1DD34A8;
  *(v0 + 408) = sub_1A9C952F4(&unk_1F1DD34F8);
  *(v0 + 416) = &unk_1F1DD3520;
  *(v0 + 424) = sub_1A9C952F4(&unk_1F1DD3568);
  *(v0 + 432) = &unk_1F1DD3590;
  *(v0 + 440) = sub_1A9C952F4(&unk_1F1DD35D8);
  *(v0 + 448) = &unk_1F1DD3600;
  *(v0 + 456) = sub_1A9C952F4(&unk_1F1DD3648);
  *(v0 + 464) = &unk_1F1DD3670;
  *(v0 + 472) = sub_1A9C952F4(&unk_1F1DD36B8);
  *(v0 + 480) = &unk_1F1DD36E0;
  *(v0 + 488) = sub_1A9C952F4(&unk_1F1DD3728);
  *(v0 + 496) = &unk_1F1DD3750;
  *(v0 + 504) = sub_1A9C952F4(&unk_1F1DD3798);
  *(v0 + 512) = &unk_1F1DD37C0;
  *(v0 + 520) = sub_1A9C952F4(&unk_1F1DD3810);
  *(v0 + 528) = &unk_1F1DD3838;
  *(v0 + 536) = sub_1A9C952F4(&unk_1F1DD3888);
  *(v0 + 544) = &unk_1F1DD38B0;
  *(v0 + 552) = sub_1A9C952F4(&unk_1F1DD3900);
  *(v0 + 560) = &unk_1F1DD3928;
  *(v0 + 568) = sub_1A9C952F4(&unk_1F1DD3970);
  *(v0 + 576) = &unk_1F1DD3998;
  *(v0 + 584) = sub_1A9C952F4(&unk_1F1DD39E8);
  *(v0 + 592) = &unk_1F1DD3A10;
  *(v0 + 600) = sub_1A9C952F4(&unk_1F1DD3A60);
  *(v0 + 608) = &unk_1F1DD3A88;
  *(v0 + 616) = sub_1A9C952F4(&unk_1F1DD3AD8);
  *(v0 + 624) = &unk_1F1DD3B00;
  *(v0 + 632) = sub_1A9C952F4(&unk_1F1DD3B48);
  *(v0 + 640) = &unk_1F1DD3B70;
  *(v0 + 648) = sub_1A9C952F4(&unk_1F1DD3BC0);
  *(v0 + 656) = &unk_1F1DD3BE8;
  *(v0 + 664) = sub_1A9C952F4(&unk_1F1DD3C38);
  *(v0 + 672) = &unk_1F1DD3C60;
  *(v0 + 680) = sub_1A9C952F4(&unk_1F1DD3CB0);
  *(v0 + 688) = &unk_1F1DD3CD8;
  *(v0 + 696) = sub_1A9C952F4(&unk_1F1DD3D28);
  *(v0 + 704) = &unk_1F1DD3D50;
  *(v0 + 712) = sub_1A9C952F4(&unk_1F1DD3D98);
  *(v0 + 720) = &unk_1F1DD3DC0;
  *(v0 + 728) = sub_1A9C952F4(&unk_1F1DD3E00);
  *(v0 + 736) = &unk_1F1DD3E28;
  *(v0 + 744) = sub_1A9C952F4(&unk_1F1DD3E70);
  *(v0 + 752) = &unk_1F1DD3E98;
  *(v0 + 760) = sub_1A9C952F4(&unk_1F1DD3EE8);
  *(v0 + 768) = &unk_1F1DD3F10;
  *(v0 + 776) = sub_1A9C952F4(&unk_1F1DD3F60);
  *(v0 + 784) = &unk_1F1DD3F88;
  *(v0 + 792) = sub_1A9C952F4(&unk_1F1DD3FD8);
  *(v0 + 800) = &unk_1F1DD4000;
  *(v0 + 808) = sub_1A9C952F4(&unk_1F1DD4048);
  *(v0 + 816) = &unk_1F1DD4070;
  *(v0 + 824) = sub_1A9C952F4(&unk_1F1DD40C0);
  *(v0 + 832) = &unk_1F1DD40E8;
  *(v0 + 840) = sub_1A9C952F4(&unk_1F1DD4138);
  *(v0 + 848) = &unk_1F1DD4160;
  *(v0 + 856) = sub_1A9C952F4(&unk_1F1DD41B0);
  *(v0 + 864) = &unk_1F1DD41D8;
  *(v0 + 872) = sub_1A9C952F4(&unk_1F1DD4228);
  *(v0 + 880) = &unk_1F1DD4250;
  *(v0 + 888) = sub_1A9C952F4(&unk_1F1DD4298);
  *(v0 + 896) = &unk_1F1DD42C0;
  *(v0 + 904) = sub_1A9C952F4(&unk_1F1DD4310);
  *(v0 + 912) = &unk_1F1DD4338;
  *(v0 + 920) = sub_1A9C952F4(&unk_1F1DD4388);
  *(v0 + 928) = &unk_1F1DD43B0;
  *(v0 + 936) = sub_1A9C952F4(&unk_1F1DD4400);
  *(v0 + 944) = &unk_1F1DD4428;
  *(v0 + 952) = sub_1A9C952F4(&unk_1F1DD4470);
  *(v0 + 960) = &unk_1F1DD4498;
  *(v0 + 968) = sub_1A9C952F4(&unk_1F1DD44E8);
  *(v0 + 976) = &unk_1F1DD4510;
  *(v0 + 984) = sub_1A9C952F4(&unk_1F1DD4560);
  *(v0 + 992) = &unk_1F1DD4588;
  *(v0 + 1000) = sub_1A9C952F4(&unk_1F1DD45D8);
  *(v0 + 1008) = &unk_1F1DD4600;
  *(v0 + 1016) = sub_1A9C952F4(&unk_1F1DD4650);
  *(v0 + 1024) = &unk_1F1DD4678;
  *(v0 + 1032) = sub_1A9C952F4(&unk_1F1DD46C0);
  *(v0 + 1040) = &unk_1F1DD46E8;
  *(v0 + 1048) = sub_1A9C952F4(&unk_1F1DD4738);
  *(v0 + 1056) = &unk_1F1DD4760;
  *(v0 + 1064) = sub_1A9C952F4(&unk_1F1DD47B0);
  *(v0 + 1072) = &unk_1F1DD47D8;
  *(v0 + 1080) = sub_1A9C952F4(&unk_1F1DD4828);
  *(v0 + 1088) = &unk_1F1DD4850;
  *(v0 + 1096) = sub_1A9C952F4(&unk_1F1DD4898);
  *(v0 + 1104) = &unk_1F1DD48C0;
  *(v0 + 1112) = sub_1A9C952F4(&unk_1F1DD4910);
  *(v0 + 1120) = &unk_1F1DD4938;
  *(v0 + 1128) = sub_1A9C952F4(&unk_1F1DD4988);
  *(v0 + 1136) = &unk_1F1DD49B0;
  *(v0 + 1144) = sub_1A9C952F4(&unk_1F1DD4A00);
  *(v0 + 1152) = &unk_1F1DD4A28;
  *(v0 + 1160) = sub_1A9C952F4(&unk_1F1DD4A78);
  *(v0 + 1168) = &unk_1F1DD4AA0;
  *(v0 + 1176) = sub_1A9C952F4(&unk_1F1DD4AE8);
  *(v0 + 1184) = &unk_1F1DD4B10;
  *(v0 + 1192) = sub_1A9C952F4(&unk_1F1DD4B60);
  *(v0 + 1200) = &unk_1F1DD4B88;
  *(v0 + 1208) = sub_1A9C952F4(&unk_1F1DD4BD8);
  *(v0 + 1216) = &unk_1F1DD4C00;
  *(v0 + 1224) = sub_1A9C952F4(&unk_1F1DD4C50);
  *(v0 + 1232) = &unk_1F1DD4C78;
  *(v0 + 1240) = sub_1A9C952F4(&unk_1F1DD4CC0);
  *(v0 + 1248) = &unk_1F1DD4CE8;
  *(v0 + 1256) = sub_1A9C952F4(&unk_1F1DD4D38);
  *(v0 + 1264) = &unk_1F1DD4D60;
  *(v0 + 1272) = sub_1A9C952F4(&unk_1F1DD4DB0);
  *(v0 + 1280) = &unk_1F1DD4DD8;
  *(v0 + 1288) = sub_1A9C952F4(&unk_1F1DD4E28);
  *(v0 + 1296) = &unk_1F1DD4E50;
  *(v0 + 1304) = sub_1A9C952F4(&unk_1F1DD4EA0);
  *(v0 + 1312) = &unk_1F1DD4EC8;
  *(v0 + 1320) = sub_1A9C952F4(&unk_1F1DD4F08);
  *(v0 + 1328) = &unk_1F1DD4F30;
  *(v0 + 1336) = sub_1A9C952F4(&unk_1F1DD4F68);
  *(v0 + 1344) = &unk_1F1DD4F90;
  *(v0 + 1352) = sub_1A9C952F4(&unk_1F1DD4FD0);
  *(v0 + 1360) = &unk_1F1DD4FF8;
  *(v0 + 1368) = sub_1A9C952F4(&unk_1F1DD5040);
  *(v0 + 1376) = &unk_1F1DD5068;
  *(v0 + 1384) = sub_1A9C952F4(&unk_1F1DD50B8);
  *(v0 + 1392) = &unk_1F1DD50E0;
  *(v0 + 1400) = sub_1A9C952F4(&unk_1F1DD5130);
  *(v0 + 1408) = &unk_1F1DD5158;
  *(v0 + 1416) = sub_1A9C952F4(&unk_1F1DD51A8);
  *(v0 + 1424) = &unk_1F1DD51D0;
  *(v0 + 1432) = sub_1A9C952F4(&unk_1F1DD5218);
  *(v0 + 1440) = &unk_1F1DD5240;
  *(v0 + 1448) = sub_1A9C952F4(&unk_1F1DD5290);
  *(v0 + 1456) = &unk_1F1DD52B8;
  *(v0 + 1464) = sub_1A9C952F4(&unk_1F1DD5308);
  *(v0 + 1472) = &unk_1F1DD5330;
  *(v0 + 1480) = sub_1A9C952F4(&unk_1F1DD5380);
  *(v0 + 1488) = &unk_1F1DD53A8;
  *(v0 + 1496) = sub_1A9C952F4(&unk_1F1DD53F8);
  *(v0 + 1504) = &unk_1F1DD5420;
  *(v0 + 1512) = sub_1A9C952F4(&unk_1F1DD5450);
  *(v0 + 1520) = &unk_1F1DD5478;
  *(v0 + 1528) = sub_1A9C952F4(&unk_1F1DD54A0);
  *(v0 + 1536) = &unk_1F1DD54C8;
  *(v0 + 1544) = sub_1A9C952F4(&unk_1F1DD54F0);
  *(v0 + 1552) = &unk_1F1DD5518;
  *(v0 + 1560) = sub_1A9C952F4(&unk_1F1DD5540);
  *(v0 + 1568) = &unk_1F1DD5568;
  *(v0 + 1576) = sub_1A9C952F4(&unk_1F1DD55A8);
  *(v0 + 1584) = &unk_1F1DD55D0;
  *(v0 + 1592) = sub_1A9C952F4(&unk_1F1DD5618);
  *(v0 + 1600) = &unk_1F1DD5640;
  *(v0 + 1608) = sub_1A9C952F4(&unk_1F1DD5688);
  *(v0 + 1616) = &unk_1F1DD56B0;
  *(v0 + 1624) = sub_1A9C952F4(&unk_1F1DD56F8);
  *(v0 + 1632) = &unk_1F1DD5720;
  *(v0 + 1640) = sub_1A9C952F4(&unk_1F1DD5760);
  *(v0 + 1648) = &unk_1F1DD5788;
  *(v0 + 1656) = sub_1A9C952F4(&unk_1F1DD57D0);
  *(v0 + 1664) = &unk_1F1DD57F8;
  *(v0 + 1672) = sub_1A9C952F4(&unk_1F1DD5840);
  *(v0 + 1680) = &unk_1F1DD5868;
  *(v0 + 1688) = sub_1A9C952F4(&unk_1F1DD58B0);
  *(v0 + 1696) = &unk_1F1DD58D8;
  *(v0 + 1704) = sub_1A9C952F4(&unk_1F1DD5920);
  *(v0 + 1712) = &unk_1F1DD5948;
  *(v0 + 1720) = sub_1A9C952F4(&unk_1F1DD5990);
  *(v0 + 1728) = &unk_1F1DD59B8;
  *(v0 + 1736) = sub_1A9C952F4(&unk_1F1DD5A00);
  *(v0 + 1744) = &unk_1F1DD5A28;
  *(v0 + 1752) = sub_1A9C952F4(&unk_1F1DD5A70);
  *(v0 + 1760) = &unk_1F1DD5A98;
  *(v0 + 1768) = sub_1A9C952F4(&unk_1F1DD5AE0);
  *(v0 + 1776) = &unk_1F1DD5B08;
  *(v0 + 1784) = sub_1A9C952F4(&unk_1F1DD5B50);
  *(v0 + 1792) = &unk_1F1DD5B78;
  *(v0 + 1800) = sub_1A9C952F4(&unk_1F1DD5BC0);
  *(v0 + 1808) = &unk_1F1DD5BE8;
  *(v0 + 1816) = sub_1A9C952F4(&unk_1F1DD5C38);
  *(v0 + 1824) = &unk_1F1DD5C60;
  *(v0 + 1832) = sub_1A9C952F4(&unk_1F1DD5CB0);
  *(v0 + 1840) = &unk_1F1DD5CD8;
  *(v0 + 1848) = sub_1A9C952F4(&unk_1F1DD5D28);
  *(v0 + 1856) = &unk_1F1DD5D50;
  *(v0 + 1864) = sub_1A9C952F4(&unk_1F1DD5D90);
  *(v0 + 1872) = &unk_1F1DD5DB8;
  *(v0 + 1880) = sub_1A9C952F4(&unk_1F1DD5DF8);
  *(v0 + 1888) = &unk_1F1DD5E20;
  *(v0 + 1896) = sub_1A9C952F4(&unk_1F1DD5E68);
  *(v0 + 1904) = &unk_1F1DD5E90;
  *(v0 + 1912) = sub_1A9C952F4(&unk_1F1DD5ED8);
  *(v0 + 1920) = &unk_1F1DD5F00;
  *(v0 + 1928) = sub_1A9C952F4(&unk_1F1DD5F48);
  *(v0 + 1936) = &unk_1F1DD5F70;
  *(v0 + 1944) = sub_1A9C952F4(&unk_1F1DD5FB8);
  *(v0 + 1952) = &unk_1F1DD5FE0;
  *(v0 + 1960) = sub_1A9C952F4(&unk_1F1DD6028);
  *(v0 + 1968) = &unk_1F1DD6050;
  *(v0 + 1976) = sub_1A9C952F4(&unk_1F1DD6098);
  *(v0 + 1984) = &unk_1F1DD60C0;
  *(v0 + 1992) = sub_1A9C952F4(&unk_1F1DD6110);
  *(v0 + 2000) = &unk_1F1DD6138;
  *(v0 + 2008) = sub_1A9C952F4(&unk_1F1DD6188);
  *(v0 + 2016) = &unk_1F1DD61B0;
  *(v0 + 2024) = sub_1A9C952F4(&unk_1F1DD6200);
  *(v0 + 2032) = &unk_1F1DD6228;
  *(v0 + 2040) = sub_1A9C952F4(&unk_1F1DD6270);
  *(v0 + 2048) = &unk_1F1DD6298;
  *(v0 + 2056) = sub_1A9C952F4(&unk_1F1DD62E0);
  *(v0 + 2064) = &unk_1F1DD6308;
  *(v0 + 2072) = sub_1A9C952F4(&unk_1F1DD6350);
  *(v0 + 2080) = &unk_1F1DD6378;
  *(v0 + 2088) = sub_1A9C952F4(&unk_1F1DD63C0);
  *(v0 + 2096) = &unk_1F1DD63E8;
  *(v0 + 2104) = sub_1A9C952F4(&unk_1F1DD6430);
  *(v0 + 2112) = &unk_1F1DD6458;
  *(v0 + 2120) = sub_1A9C952F4(&unk_1F1DD64A0);
  *(v0 + 2128) = &unk_1F1DD64C8;
  *(v0 + 2136) = sub_1A9C952F4(&unk_1F1DD6518);
  *(v0 + 2144) = &unk_1F1DD6540;
  *(v0 + 2152) = sub_1A9C952F4(&unk_1F1DD6590);
  *(v0 + 2160) = &unk_1F1DD65B8;
  *(v0 + 2168) = sub_1A9C952F4(&unk_1F1DD6608);
  *(v0 + 2176) = &unk_1F1DD6630;
  *(v0 + 2184) = sub_1A9C952F4(&unk_1F1DD6678);
  *(v0 + 2192) = &unk_1F1DD66A0;
  *(v0 + 2200) = sub_1A9C952F4(&unk_1F1DD66E8);
  *(v0 + 2208) = &unk_1F1DD6710;
  *(v0 + 2216) = sub_1A9C952F4(&unk_1F1DD6758);
  *(v0 + 2224) = &unk_1F1DD6780;
  *(v0 + 2232) = sub_1A9C952F4(&unk_1F1DD67C8);
  *(v0 + 2240) = &unk_1F1DD67F0;
  *(v0 + 2248) = sub_1A9C952F4(&unk_1F1DD6838);
  *(v0 + 2256) = &unk_1F1DD6860;
  *(v0 + 2264) = sub_1A9C952F4(&unk_1F1DD68A8);
  *(v0 + 2272) = &unk_1F1DD68D0;
  *(v0 + 2280) = sub_1A9C952F4(&unk_1F1DD6920);
  *(v0 + 2288) = &unk_1F1DD6948;
  *(v0 + 2296) = sub_1A9C952F4(&unk_1F1DD6998);
  *(v0 + 2304) = &unk_1F1DD69C0;
  *(v0 + 2312) = sub_1A9C952F4(&unk_1F1DD6A10);
  *(v0 + 2320) = &unk_1F1DD6A38;
  *(v0 + 2328) = sub_1A9C952F4(&unk_1F1DD6A80);
  *(v0 + 2336) = &unk_1F1DD6AA8;
  *(v0 + 2344) = sub_1A9C952F4(&unk_1F1DD6AF0);
  *(v0 + 2352) = &unk_1F1DD6B18;
  *(v0 + 2360) = sub_1A9C952F4(&unk_1F1DD6B60);
  *(v0 + 2368) = &unk_1F1DD6B88;
  *(v0 + 2376) = sub_1A9C952F4(&unk_1F1DD6BD0);
  *(v0 + 2384) = &unk_1F1DD6BF8;
  *(v0 + 2392) = sub_1A9C952F4(&unk_1F1DD6C40);
  *(v0 + 2400) = &unk_1F1DD6C68;
  *(v0 + 2408) = sub_1A9C952F4(&unk_1F1DD6CB0);
  *(v0 + 2416) = &unk_1F1DD6CD8;
  *(v0 + 2424) = sub_1A9C952F4(&unk_1F1DD6D28);
  *(v0 + 2432) = &unk_1F1DD6D50;
  *(v0 + 2440) = sub_1A9C952F4(&unk_1F1DD6DA0);
  *(v0 + 2448) = &unk_1F1DD6DC8;
  *(v0 + 2456) = sub_1A9C952F4(&unk_1F1DD6E18);
  *(v0 + 2464) = &unk_1F1DD6E40;
  *(v0 + 2472) = sub_1A9C952F4(&unk_1F1DD6E80);
  *(v0 + 2480) = &unk_1F1DD6EA8;
  *(v0 + 2488) = sub_1A9C952F4(&unk_1F1DD6EE0);
  *(v0 + 2496) = &unk_1F1DD6F08;
  *(v0 + 2504) = sub_1A9C952F4(&unk_1F1DD6F40);
  *(v0 + 2512) = &unk_1F1DD6F68;
  *(v0 + 2520) = sub_1A9C952F4(&unk_1F1DD6FB0);
  *(v0 + 2528) = &unk_1F1DD6FD8;
  *(v0 + 2536) = sub_1A9C952F4(&unk_1F1DD7020);
  *(v0 + 2544) = &unk_1F1DD7048;
  *(v0 + 2552) = sub_1A9C952F4(&unk_1F1DD7090);
  *(v0 + 2560) = &unk_1F1DD70B8;
  *(v0 + 2568) = sub_1A9C952F4(&unk_1F1DD7100);
  *(v0 + 2576) = &unk_1F1DD7128;
  *(v0 + 2584) = sub_1A9C952F4(&unk_1F1DD7170);
  *(v0 + 2592) = &unk_1F1DD7198;
  *(v0 + 2600) = sub_1A9C952F4(&unk_1F1DD71E0);
  *(v0 + 2608) = &unk_1F1DD7208;
  *(v0 + 2616) = sub_1A9C952F4(&unk_1F1DD7258);
  *(v0 + 2624) = &unk_1F1DD7280;
  *(v0 + 2632) = sub_1A9C952F4(&unk_1F1DD72D0);
  *(v0 + 2640) = &unk_1F1DD72F8;
  *(v0 + 2648) = sub_1A9C952F4(&unk_1F1DD7348);
  *(v0 + 2656) = &unk_1F1DD7370;
  *(v0 + 2664) = sub_1A9C952F4(&unk_1F1DD7398);
  *(v0 + 2672) = &unk_1F1DD73C0;
  *(v0 + 2680) = sub_1A9C952F4(&unk_1F1DD7400);
  *(v0 + 2688) = &unk_1F1DD7428;
  *(v0 + 2696) = sub_1A9C952F4(&unk_1F1DD7470);
  *(v0 + 2704) = &unk_1F1DD7498;
  *(v0 + 2712) = sub_1A9C952F4(&unk_1F1DD74E0);
  *(v0 + 2720) = &unk_1F1DD7508;
  *(v0 + 2728) = sub_1A9C952F4(&unk_1F1DD7550);
  *(v0 + 2736) = &unk_1F1DD7578;
  *(v0 + 2744) = sub_1A9C952F4(&unk_1F1DD75B8);
  *(v0 + 2752) = &unk_1F1DD75E0;
  *(v0 + 2760) = sub_1A9C952F4(&unk_1F1DD7628);
  *(v0 + 2768) = &unk_1F1DD7650;
  *(v0 + 2776) = sub_1A9C952F4(&unk_1F1DD7698);
  *(v0 + 2784) = &unk_1F1DD76C0;
  *(v0 + 2792) = sub_1A9C952F4(&unk_1F1DD7708);
  *(v0 + 2800) = &unk_1F1DD7730;
  *(v0 + 2808) = sub_1A9C952F4(&unk_1F1DD7778);
  *(v0 + 2816) = &unk_1F1DD77A0;
  *(v0 + 2824) = sub_1A9C952F4(&unk_1F1DD77E0);
  *(v0 + 2832) = &unk_1F1DD7808;
  *(v0 + 2840) = sub_1A9C952F4(&unk_1F1DD7840);
  *(v0 + 2848) = &unk_1F1DD7868;
  *(v0 + 2856) = sub_1A9C952F4(&unk_1F1DD78A8);
  *(v0 + 2864) = &unk_1F1DD78D0;
  *(v0 + 2872) = sub_1A9C952F4(&unk_1F1DD7918);
  *(v0 + 2880) = &unk_1F1DD7940;
  *(v0 + 2888) = sub_1A9C952F4(&unk_1F1DD7988);
  *(v0 + 2896) = &unk_1F1DD79B0;
  *(v0 + 2904) = sub_1A9C952F4(&unk_1F1DD79F8);
  *(v0 + 2912) = &unk_1F1DD7A20;
  *(v0 + 2920) = sub_1A9C952F4(&unk_1F1DD7A60);
  *(v0 + 2928) = &unk_1F1DD7A88;
  *(v0 + 2936) = sub_1A9C952F4(&unk_1F1DD7AD0);
  *(v0 + 2944) = &unk_1F1DD7AF8;
  *(v0 + 2952) = sub_1A9C952F4(&unk_1F1DD7B40);
  *(v0 + 2960) = &unk_1F1DD7B68;
  *(v0 + 2968) = sub_1A9C952F4(&unk_1F1DD7BB0);
  *(v0 + 2976) = &unk_1F1DD7BD8;
  *(v0 + 2984) = sub_1A9C952F4(&unk_1F1DD7C20);
  *(v0 + 2992) = &unk_1F1DD7C48;
  *(v0 + 3000) = sub_1A9C952F4(&unk_1F1DD7C88);
  *(v0 + 3008) = &unk_1F1DD7CB0;
  *(v0 + 3016) = sub_1A9C952F4(&unk_1F1DD7CF8);
  *(v0 + 3024) = &unk_1F1DD7D20;
  *(v0 + 3032) = sub_1A9C952F4(&unk_1F1DD7D68);
  *(v0 + 3040) = &unk_1F1DD7D90;
  *(v0 + 3048) = sub_1A9C952F4(&unk_1F1DD7DD8);
  *(v0 + 3056) = &unk_1F1DD7E00;
  *(v0 + 3064) = sub_1A9C952F4(&unk_1F1DD7E40);
  *(v0 + 3072) = &unk_1F1DD7E68;
  *(v0 + 3080) = sub_1A9C952F4(&unk_1F1DD7EB0);
  *(v0 + 3088) = &unk_1F1DD7ED8;
  *(v0 + 3096) = sub_1A9C952F4(&unk_1F1DD7F20);
  *(v0 + 3104) = &unk_1F1DD7F48;
  *(v0 + 3112) = sub_1A9C952F4(&unk_1F1DD7F90);
  *(v0 + 3120) = &unk_1F1DD7FB8;
  *(v0 + 3128) = sub_1A9C952F4(&unk_1F1DD8000);
  *(v0 + 3136) = &unk_1F1DD8028;
  *(v0 + 3144) = sub_1A9C952F4(&unk_1F1DD8068);
  *(v0 + 3152) = &unk_1F1DD8090;
  *(v0 + 3160) = sub_1A9C952F4(&unk_1F1DD80D8);
  *(v0 + 3168) = &unk_1F1DD8100;
  *(v0 + 3176) = sub_1A9C952F4(&unk_1F1DD8148);
  *(v0 + 3184) = &unk_1F1DD8170;
  *(v0 + 3192) = sub_1A9C952F4(&unk_1F1DD81B8);
  *(v0 + 3200) = &unk_1F1DD81E0;
  *(v0 + 3208) = sub_1A9C952F4(&unk_1F1DD8220);
  *(v0 + 3216) = &unk_1F1DD8248;
  *(v0 + 3224) = sub_1A9C952F4(&unk_1F1DD8290);
  *(v0 + 3232) = &unk_1F1DD82B8;
  *(v0 + 3240) = sub_1A9C952F4(&unk_1F1DD8300);
  *(v0 + 3248) = &unk_1F1DD8328;
  *(v0 + 3256) = sub_1A9C952F4(&unk_1F1DD8370);
  *(v0 + 3264) = &unk_1F1DD8398;
  *(v0 + 3272) = sub_1A9C952F4(&unk_1F1DD83E0);
  *(v0 + 3280) = &unk_1F1DD8408;
  *(v0 + 3288) = sub_1A9C952F4(&unk_1F1DD8448);
  *(v0 + 3296) = &unk_1F1DD8470;
  *(v0 + 3304) = sub_1A9C952F4(&unk_1F1DD84B8);
  *(v0 + 3312) = &unk_1F1DD84E0;
  *(v0 + 3320) = sub_1A9C952F4(&unk_1F1DD8528);
  *(v0 + 3328) = &unk_1F1DD8550;
  *(v0 + 3336) = sub_1A9C952F4(&unk_1F1DD8598);
  *(v0 + 3344) = &unk_1F1DD85C0;
  *(v0 + 3352) = sub_1A9C952F4(&unk_1F1DD8600);
  *(v0 + 3360) = &unk_1F1DD8628;
  *(v0 + 3368) = sub_1A9C952F4(&unk_1F1DD8670);
  *(v0 + 3376) = &unk_1F1DD8698;
  *(v0 + 3384) = sub_1A9C952F4(&unk_1F1DD86E0);
  *(v0 + 3392) = &unk_1F1DD8708;
  *(v0 + 3400) = sub_1A9C952F4(&unk_1F1DD8750);
  *(v0 + 3408) = &unk_1F1DD8778;
  *(v0 + 3416) = sub_1A9C952F4(&unk_1F1DD87C0);
  *(v0 + 3424) = &unk_1F1DD87E8;
  *(v0 + 3432) = sub_1A9C952F4(&unk_1F1DD8820);
  *(v0 + 3440) = &unk_1F1DD8848;
  *(v0 + 3448) = sub_1A9C952F4(&unk_1F1DD8878);
  *(v0 + 3456) = &unk_1F1DD88A0;
  *(v0 + 3464) = sub_1A9C952F4(&unk_1F1DD88D8);
  *(v0 + 3472) = &unk_1F1DD8900;
  *(v0 + 3480) = sub_1A9C952F4(&unk_1F1DD8940);
  *(v0 + 3488) = &unk_1F1DD8968;
  *(v0 + 3496) = sub_1A9C952F4(&unk_1F1DD89B0);
  *(v0 + 3504) = &unk_1F1DD89D8;
  *(v0 + 3512) = sub_1A9C952F4(&unk_1F1DD8A20);
  *(v0 + 3520) = &unk_1F1DD8A48;
  *(v0 + 3528) = sub_1A9C952F4(&unk_1F1DD8A90);
  *(v0 + 3536) = &unk_1F1DD8AB8;
  *(v0 + 3544) = sub_1A9C952F4(&unk_1F1DD8AF8);
  *(v0 + 3552) = &unk_1F1DD8B20;
  *(v0 + 3560) = sub_1A9C952F4(&unk_1F1DD8B68);
  *(v0 + 3568) = &unk_1F1DD8B90;
  *(v0 + 3576) = sub_1A9C952F4(&unk_1F1DD8BD8);
  *(v0 + 3584) = &unk_1F1DD8C00;
  *(v0 + 3592) = sub_1A9C952F4(&unk_1F1DD8C48);
  *(v0 + 3600) = &unk_1F1DD8C70;
  *(v0 + 3608) = sub_1A9C952F4(&unk_1F1DD8CB8);
  *(v0 + 3616) = &unk_1F1DD8CE0;
  *(v0 + 3624) = sub_1A9C952F4(&unk_1F1DD8D28);
  *(v0 + 3632) = &unk_1F1DD8D50;
  *(v0 + 3640) = sub_1A9C952F4(&unk_1F1DD8D98);
  *(v0 + 3648) = &unk_1F1DD8DC0;
  *(v0 + 3656) = sub_1A9C952F4(&unk_1F1DD8E08);
  *(v0 + 3664) = &unk_1F1DD8E30;
  *(v0 + 3672) = sub_1A9C952F4(&unk_1F1DD8E78);
  *(v0 + 3680) = &unk_1F1DD8EA0;
  *(v0 + 3688) = sub_1A9C952F4(&unk_1F1DD8EE8);
  *(v0 + 3696) = &unk_1F1DD8F10;
  *(v0 + 3704) = sub_1A9C952F4(&unk_1F1DD8F58);
  *(v0 + 3712) = &unk_1F1DD8F80;
  *(v0 + 3720) = sub_1A9C952F4(&unk_1F1DD8FD0);
  *(v0 + 3728) = &unk_1F1DD8FF8;
  *(v0 + 3736) = sub_1A9C952F4(&unk_1F1DD9048);
  *(v0 + 3744) = &unk_1F1DD9070;
  *(v0 + 3752) = sub_1A9C952F4(&unk_1F1DD90C0);
  *(v0 + 3760) = &unk_1F1DD90E8;
  *(v0 + 3768) = sub_1A9C952F4(&unk_1F1DD9128);
  *(v0 + 3776) = &unk_1F1DD9150;
  *(v0 + 3784) = sub_1A9C952F4(&unk_1F1DD9190);
  *(v0 + 3792) = &unk_1F1DD91B8;
  *(v0 + 3800) = sub_1A9C952F4(&unk_1F1DD9200);
  *(v0 + 3808) = &unk_1F1DD9228;
  *(v0 + 3816) = sub_1A9C952F4(&unk_1F1DD9270);
  *(v0 + 3824) = &unk_1F1DD9298;
  *(v0 + 3832) = sub_1A9C952F4(&unk_1F1DD92E0);
  *(v0 + 3840) = &unk_1F1DD9308;
  *(v0 + 3848) = sub_1A9C952F4(&unk_1F1DD9350);
  *(v0 + 3856) = &unk_1F1DD9378;
  *(v0 + 3864) = sub_1A9C952F4(&unk_1F1DD93C0);
  *(v0 + 3872) = &unk_1F1DD93E8;
  *(v0 + 3880) = sub_1A9C952F4(&unk_1F1DD9430);
  *(v0 + 3888) = &unk_1F1DD9458;
  *(v0 + 3896) = sub_1A9C952F4(&unk_1F1DD94A8);
  *(v0 + 3904) = &unk_1F1DD94D0;
  *(v0 + 3912) = sub_1A9C952F4(&unk_1F1DD9520);
  *(v0 + 3920) = &unk_1F1DD9548;
  *(v0 + 3928) = sub_1A9C952F4(&unk_1F1DD9598);
  *(v0 + 3936) = &unk_1F1DD95C0;
  *(v0 + 3944) = sub_1A9C952F4(&unk_1F1DD9608);
  *(v0 + 3952) = &unk_1F1DD9630;
  *(v0 + 3960) = sub_1A9C952F4(&unk_1F1DD9678);
  *(v0 + 3968) = &unk_1F1DD96A0;
  *(v0 + 3976) = sub_1A9C952F4(&unk_1F1DD96E8);
  *(v0 + 3984) = &unk_1F1DD9710;
  *(v0 + 3992) = sub_1A9C952F4(&unk_1F1DD9758);
  *(v0 + 4000) = &unk_1F1DD9780;
  *(v0 + 4008) = sub_1A9C952F4(&unk_1F1DD97C8);
  *(v0 + 4016) = &unk_1F1DD97F0;
  *(v0 + 4024) = sub_1A9C952F4(&unk_1F1DD9838);
  *(v0 + 4032) = &unk_1F1DD9860;
  *(v0 + 4040) = sub_1A9C952F4(&unk_1F1DD98B0);
  *(v0 + 4048) = &unk_1F1DD98D8;
  *(v0 + 4056) = sub_1A9C952F4(&unk_1F1DD9928);
  *(v0 + 4064) = &unk_1F1DD9950;
  *(v0 + 4072) = sub_1A9C952F4(&unk_1F1DD99A0);
  *(v0 + 4080) = &unk_1F1DD99C8;
  *(v0 + 4088) = sub_1A9C952F4(&unk_1F1DD9A10);
  *(v0 + 4096) = &unk_1F1DD9A38;
  *(v0 + 4104) = sub_1A9C952F4(&unk_1F1DD9A80);
  *(v0 + 4112) = &unk_1F1DD9AA8;
  *(v0 + 4120) = sub_1A9C952F4(&unk_1F1DD9AF0);
  *(v0 + 4128) = &unk_1F1DD9B18;
  *(v0 + 4136) = sub_1A9C952F4(&unk_1F1DD9B60);
  *(v0 + 4144) = &unk_1F1DD9B88;
  *(v0 + 4152) = sub_1A9C952F4(&unk_1F1DD9BD0);
  *(v0 + 4160) = &unk_1F1DD9BF8;
  *(v0 + 4168) = sub_1A9C952F4(&unk_1F1DD9C40);
  *(v0 + 4176) = &unk_1F1DD9C68;
  *(v0 + 4184) = sub_1A9C952F4(&unk_1F1DD9CB8);
  *(v0 + 4192) = &unk_1F1DD9CE0;
  *(v0 + 4200) = sub_1A9C952F4(&unk_1F1DD9D30);
  *(v0 + 4208) = &unk_1F1DD9D58;
  *(v0 + 4216) = sub_1A9C952F4(&unk_1F1DD9DA8);
  *(v0 + 4224) = &unk_1F1DD9DD0;
  *(v0 + 4232) = sub_1A9C952F4(&unk_1F1DD9E18);
  *(v0 + 4240) = &unk_1F1DD9E40;
  *(v0 + 4248) = sub_1A9C952F4(&unk_1F1DD9E88);
  *(v0 + 4256) = &unk_1F1DD9EB0;
  *(v0 + 4264) = sub_1A9C952F4(&unk_1F1DD9EF8);
  *(v0 + 4272) = &unk_1F1DD9F20;
  *(v0 + 4280) = sub_1A9C952F4(&unk_1F1DD9F68);
  *(v0 + 4288) = &unk_1F1DD9F90;
  *(v0 + 4296) = sub_1A9C952F4(&unk_1F1DD9FD8);
  *(v0 + 4304) = &unk_1F1DDA000;
  *(v0 + 4312) = sub_1A9C952F4(&unk_1F1DDA048);
  *(v0 + 4320) = &unk_1F1DDA070;
  *(v0 + 4328) = sub_1A9C952F4(&unk_1F1DDA0C0);
  *(v0 + 4336) = &unk_1F1DDA0E8;
  *(v0 + 4344) = sub_1A9C952F4(&unk_1F1DDA138);
  *(v0 + 4352) = &unk_1F1DDA160;
  *(v0 + 4360) = sub_1A9C952F4(&unk_1F1DDA1B0);
  *(v0 + 4368) = &unk_1F1DDA1D8;
  *(v0 + 4376) = sub_1A9C952F4(&unk_1F1DDA218);
  *(v0 + 4384) = &unk_1F1DDA240;
  *(v0 + 4392) = sub_1A9C952F4(&unk_1F1DDA278);
  *(v0 + 4400) = &unk_1F1DDA2A0;
  *(v0 + 4408) = sub_1A9C952F4(&unk_1F1DDA2D8);
  *(v0 + 4416) = &unk_1F1DDA300;
  *(v0 + 4424) = sub_1A9C952F4(&unk_1F1DDA348);
  *(v0 + 4432) = &unk_1F1DDA370;
  *(v0 + 4440) = sub_1A9C952F4(&unk_1F1DDA3B8);
  *(v0 + 4448) = &unk_1F1DDA3E0;
  *(v0 + 4456) = sub_1A9C952F4(&unk_1F1DDA428);
  *(v0 + 4464) = &unk_1F1DDA450;
  *(v0 + 4472) = sub_1A9C952F4(&unk_1F1DDA498);
  *(v0 + 4480) = &unk_1F1DDA4C0;
  *(v0 + 4488) = sub_1A9C952F4(&unk_1F1DDA508);
  *(v0 + 4496) = &unk_1F1DDA530;
  *(v0 + 4504) = sub_1A9C952F4(&unk_1F1DDA578);
  *(v0 + 4512) = &unk_1F1DDA5A0;
  *(v0 + 4520) = sub_1A9C952F4(&unk_1F1DDA5F0);
  *(v0 + 4528) = &unk_1F1DDA618;
  *(v0 + 4536) = sub_1A9C952F4(&unk_1F1DDA668);
  *(v0 + 4544) = &unk_1F1DDA690;
  *(v0 + 4552) = sub_1A9C952F4(&unk_1F1DDA6E0);
  *(v0 + 4560) = &unk_1F1DDA708;
  *(v0 + 4568) = sub_1A9C952F4(&unk_1F1DDA738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB400850);
  sub_1A9CAE1C4();
  OUTLINED_FUNCTION_12_1();

  return sub_1AA6519B4();
}