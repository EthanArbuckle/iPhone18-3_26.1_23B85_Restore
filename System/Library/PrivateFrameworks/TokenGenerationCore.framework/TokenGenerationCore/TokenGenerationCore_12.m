void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for Prompt.PromptMarker(0);
  v9 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          outlined init with copy of Prompt.PromptFragment(v39 + v38, v27, type metadata accessor for Prompt.PromptMarker);
          v43 = v27;
          v44 = v59;
          outlined init with copy of Prompt.PromptFragment(v40, v59, type metadata accessor for Prompt.PromptMarker);
          v45 = closure #1 in Prompt.promptFragments()(v43, v44);
          if (v37)
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v44, type metadata accessor for Prompt.PromptMarker);
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v43, type metadata accessor for Prompt.PromptMarker);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v44, type metadata accessor for Prompt.PromptMarker);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v43, type metadata accessor for Prompt.PromptMarker);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        outlined init with copy of Prompt.PromptFragment(a2, v19, type metadata accessor for Prompt.PromptMarker);
        outlined init with copy of Prompt.PromptFragment(a4, v15, type metadata accessor for Prompt.PromptMarker);
        v31 = closure #1 in Prompt.promptFragments()(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v33, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v19, type metadata accessor for Prompt.PromptMarker);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v15, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v19, type metadata accessor for Prompt.PromptMarker);
    }
  }

LABEL_62:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v67, &v66, &v65);
}

{
  v8 = type metadata accessor for Prompt.Attachment(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v41 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v54 = a1;
  v53 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v45 = a4;
      v46 = a1;
      v49 = v8;
      v44 = -v14;
      do
      {
        v42 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v47 = a2;
        v48 = a2 + v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v54 = v29;
            v52 = v42;
            goto LABEL_60;
          }

          v32 = a3;
          v43 = v26;
          a3 += v27;
          v33 = v28 + v27;
          v34 = v50;
          outlined init with copy of Prompt.Turn(v28 + v27, v50, type metadata accessor for Prompt.Attachment);
          v35 = v51;
          outlined init with copy of Prompt.Turn(v30, v51, type metadata accessor for Prompt.Attachment);
          v36 = *(v8 + 24);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          outlined destroy of Prompt.ResponseFormat(v35, type metadata accessor for Prompt.Attachment);
          outlined destroy of Prompt.ResponseFormat(v34, type metadata accessor for Prompt.Attachment);
          if (v37 < v38)
          {
            break;
          }

          v26 = v33;
          if (v32 < v28 || a3 >= v28)
          {
            v31 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v30 = v48;
            v8 = v31;
            v27 = v44;
          }

          else
          {
            v30 = v48;
            v8 = v49;
            v27 = v44;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          a1 = v46;
          v29 = v47;
          if (v33 <= v45)
          {
            a2 = v47;
            goto LABEL_59;
          }
        }

        v39 = v45;
        if (v32 < v47 || a3 >= v47)
        {
          a2 = v48;
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v43;
          v27 = v44;
        }

        else
        {
          v40 = v32 == v47;
          a2 = v48;
          v8 = v49;
          v26 = v43;
          v27 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v28 > v39);
    }

LABEL_59:
    v54 = a2;
    v52 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v52 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = a3;
      v49 = v8;
      do
      {
        v20 = v50;
        outlined init with copy of Prompt.Turn(a2, v50, type metadata accessor for Prompt.Attachment);
        v21 = v51;
        outlined init with copy of Prompt.Turn(a4, v51, type metadata accessor for Prompt.Attachment);
        v22 = *(v8 + 24);
        v23 = *(v20 + v22);
        v24 = *(v21 + v22);
        outlined destroy of Prompt.ResponseFormat(v21, type metadata accessor for Prompt.Attachment);
        outlined destroy of Prompt.ResponseFormat(v20, type metadata accessor for Prompt.Attachment);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            v8 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v25 = v47;
          }

          else
          {
            v25 = v47;
            v8 = v49;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = a4 + v14;
          a4 += v14;
        }

        else if (a1 < a2 || a1 >= a2 + v14)
        {
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v14;
          v25 = v47;
        }

        else
        {
          v25 = v47;
          v8 = v49;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v54 = a1;
      }

      while (a4 < v48 && a2 < v25);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v54, &v53, &v52);
}

{
  v64 = type metadata accessor for Prompt.PromptMarker(0);
  v9 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v39 + v38, v27, type metadata accessor for Prompt.PromptMarker);
          v43 = v27;
          v44 = v59;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v40, v59, type metadata accessor for Prompt.PromptMarker);
          v45 = closure #1 in Prompt.init(_:)(v43, v44);
          if (v37)
          {
            outlined destroy of Prompt.Turn(v44, type metadata accessor for Prompt.PromptMarker);
            outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          outlined destroy of Prompt.Turn(v44, type metadata accessor for Prompt.PromptMarker);
          outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(a2, v19, type metadata accessor for Prompt.PromptMarker);
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(a4, v15, type metadata accessor for Prompt.PromptMarker);
        v31 = closure #1 in Prompt.init(_:)(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        outlined destroy of Prompt.Turn(v33, type metadata accessor for Prompt.PromptMarker);
        outlined destroy of Prompt.Turn(v19, type metadata accessor for Prompt.PromptMarker);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      outlined destroy of Prompt.Turn(v15, type metadata accessor for Prompt.PromptMarker);
      outlined destroy of Prompt.Turn(v19, type metadata accessor for Prompt.PromptMarker);
    }
  }

LABEL_62:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v67, &v66, &v65, type metadata accessor for Prompt.PromptMarker);
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVyS2SG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SSTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2SIsgnndzo_Tf1nc_n157_s15TokenGeneration6PromptV28getLocalizationOverrideValue4from5token6localeSSSgSDyAC07SpecialA0VSDyS2SGG_AJ10Foundation6LocaleVSgtFZSbSS3key_SS5valuet_tXEfU_Tf1nnc_n(v9, v4, v2);
  result = MEMORY[0x1AC57DBF0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 16 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVyS2SG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SSTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2SIsgnndzo_Tf1nc_n157_s15TokenGeneration6PromptV28getLocalizationOverrideValue4from5token6localeSSSgSDyAC07SpecialA0VSDyS2SGG_AJ10Foundation6LocaleVSgtFZSbSS3key_SS5valuet_tXEfU_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static Prompt.ImageEmbeddingAttachment.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[4];
  v3 = a1[5];
  v6 = a2[4];
  v5 = a2[5];
  v7 = a2[3];
  v8 = a1[3];
  v9 = specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]);
  result = 0;
  if ((v9 & 1) != 0 && v8 == v7)
  {
    if (v4 == v6 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t specialized static Prompt.ResponseFormat.SchemaDetails.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_13:
  v8 = *(type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0) + 24);

  return MEMORY[0x1EEE0AC58](a1 + v8, a2 + v8);
}

uint64_t specialized static Prompt.ResponseFormat.GrammarDetails.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v6 && (v2 == v7 && v4 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized static Prompt.ResponseFormat.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v34[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v34[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v34[-2] - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMd, &_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34[-2] - v17;
  v20 = &v34[-2] + *(v19 + 56) - v17;
  outlined init with copy of Prompt.PromptFragment(a1, &v34[-2] - v17, type metadata accessor for Prompt.ResponseFormat.Kind);
  outlined init with copy of Prompt.PromptFragment(a2, v20, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Prompt.PromptFragment(v18, v11, type metadata accessor for Prompt.ResponseFormat.Kind);
    v21 = v11[1];
    v22 = v11[3];
    v23 = v11[5];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v11[4];
      v25 = v11[2];
      v26 = *v11;
      v27 = *v20;
      v28 = *(v20 + 1);
      v29 = *(v20 + 2);
      v30 = *(v20 + 5);
      v37[0] = v26;
      v37[1] = v21;
      v37[2] = v25;
      v37[3] = v22;
      v37[4] = v24;
      v37[5] = v23;
      v34[0] = v27;
      v34[1] = v28;
      v34[2] = v29;
      v33 = *(v20 + 24);
      v35 = v33;
      v36 = v30;
      v31 = specialized static Prompt.ResponseFormat.GrammarDetails.== infix(_:_:)(v37, v34);

LABEL_9:
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v18, type metadata accessor for Prompt.ResponseFormat.Kind);
      return v31 & 1;
    }
  }

  else
  {
    outlined init with copy of Prompt.PromptFragment(v18, v14, type metadata accessor for Prompt.ResponseFormat.Kind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v20, v7, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
      v31 = specialized static Prompt.ResponseFormat.SchemaDetails.== infix(_:_:)(v14, v7);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v7, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v14, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
      goto LABEL_9;
    }

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v14, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMd, &_s15TokenGeneration6PromptV14ResponseFormatV4KindO_AGtMR);
  v31 = 0;
  return v31 & 1;
}

BOOL specialized static Prompt.Rendering.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v24 = a1[8];
  v20 = a1[9];
  v19 = a1[10];
  v15 = a1[12];
  v16 = a1[11];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v21 = a2[6];
  v22 = a1[6];
  v23 = a2[8];
  v17 = a2[10];
  v18 = a2[9];
  v13 = a2[12];
  v14 = a2[11];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, v10) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v5, v9) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v22 != v21 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  return (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v24, v23) & 1) != 0 && (v20 == v18 && v19 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v16 == v14 && v15 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

uint64_t specialized static Prompt.AttachmentContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v64 = a2;
  v3 = type metadata accessor for Prompt.ResponseFormat(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.AttachmentContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v62 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v62 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v62 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV17AttachmentContentO_AEtMd, &_s15TokenGeneration6PromptV17AttachmentContentO_AEtMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v62 + *(v30 + 56) - v29;
  v32 = a1;
  v33 = &v62 - v29;
  outlined init with copy of Prompt.PromptFragment(v32, &v62 - v29, type metadata accessor for Prompt.AttachmentContent);
  outlined init with copy of Prompt.PromptFragment(v64, v31, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of Prompt.PromptFragment(v33, v23, type metadata accessor for Prompt.AttachmentContent);
        v41 = *(v23 + 1);
        v40 = *(v23 + 2);
        v42 = *(v23 + 5);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v43 = *v31;
          v44 = *(v31 + 1);
          v45 = *(v31 + 4);
          v46 = *(v31 + 5);
          LOBYTE(v69[0]) = *v23;
          v69[1] = v41;
          v69[2] = v40;
          v70 = *(v23 + 24);
          v71 = v42;
          LOBYTE(v65[0]) = v43;
          v65[1] = v44;
          v64 = *(v31 + 1);
          v66 = v64;
          v67 = v45;
          v68 = v46;
          v47 = specialized static Prompt.ImageEmbeddingAttachment.== infix(_:_:)(v69, v65);
          outlined consume of Data._Representation(v44, v64);

          outlined consume of Data._Representation(v41, v40);
LABEL_23:

          goto LABEL_24;
        }

        outlined consume of Data._Representation(v41, v40);
LABEL_28:

        goto LABEL_29;
      }

      outlined init with copy of Prompt.PromptFragment(v33, v20, type metadata accessor for Prompt.AttachmentContent);
      v51 = *v20;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v52 = *v31;
        type metadata accessor for NSObject();
        v47 = static NSObject.== infix(_:_:)();

        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of Prompt.PromptFragment(v33, v26, type metadata accessor for Prompt.AttachmentContent);
      v50 = *(v26 + 1);
      v49 = *(v26 + 2);
      if (!swift_getEnumCaseMultiPayload())
      {
        v58 = *v31;
        v59 = *(v31 + 1);
        v60 = *(v31 + 2);
        if (*v26 == v58)
        {
          v61 = specialized static Data.== infix(_:_:)(v50, v49, v59, v60);
          outlined consume of Data._Representation(v59, v60);
          outlined consume of Data._Representation(v50, v49);
          if (v61)
          {
            goto LABEL_37;
          }
        }

        else
        {
          outlined consume of Data._Representation(v59, v60);
          outlined consume of Data._Representation(v50, v49);
        }

        goto LABEL_38;
      }

      outlined consume of Data._Representation(v50, v49);
    }

LABEL_29:
    outlined destroy of [Regex2BNF.CharacterPredicate](v33, &_s15TokenGeneration6PromptV17AttachmentContentO_AEtMd, &_s15TokenGeneration6PromptV17AttachmentContentO_AEtMR);
LABEL_30:
    v47 = 0;
    return v47 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      outlined init with copy of Prompt.PromptFragment(v33, v12, type metadata accessor for Prompt.AttachmentContent);
      v48 = *v12;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v47 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ29GenerativeFunctionsFoundation4ToolV_Tt1g5(v48, *v31);

        goto LABEL_23;
      }
    }

    else
    {
      outlined init with copy of Prompt.PromptFragment(v33, v9, type metadata accessor for Prompt.AttachmentContent);
      v56 = *v9;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v47 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV8ToolCallV_Tt1g5(v56, *v31);

        goto LABEL_23;
      }
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 3)
  {
    outlined init with copy of Prompt.PromptFragment(v33, v17, type metadata accessor for Prompt.AttachmentContent);
    v35 = *v17;
    v36 = v17[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v37 = *v31;
      v38 = *(v31 + 1);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs7Float16V_Tt1g5(v35, v37))
      {
        v39 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v36, v38);

        if ((v39 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_37:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v33, type metadata accessor for Prompt.AttachmentContent);
        v47 = 1;
        return v47 & 1;
      }

LABEL_38:
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v33, type metadata accessor for Prompt.AttachmentContent);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v53 = v63;
  outlined init with copy of Prompt.PromptFragment(v33, v63, type metadata accessor for Prompt.AttachmentContent);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v53, type metadata accessor for Prompt.ResponseFormat);
    goto LABEL_29;
  }

  v54 = v31;
  v55 = v62;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v54, v62, type metadata accessor for Prompt.ResponseFormat);
  v47 = specialized static Prompt.ResponseFormat.Kind.== infix(_:_:)(v53, v55);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v55, type metadata accessor for Prompt.ResponseFormat);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v53, type metadata accessor for Prompt.ResponseFormat);
LABEL_24:
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v33, type metadata accessor for Prompt.AttachmentContent);
  return v47 & 1;
}

uint64_t specialized static Prompt.SpecialToken.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = v8;
  v33 = type metadata accessor for Prompt.SpecialToken(0);
  v17 = *(v33 + 20);
  v18 = *(v13 + 48);
  outlined init with copy of (String, Any)(a1 + v17, v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of (String, Any)(a2 + v17, &v16[v18], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of (String, Any)(v16, v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = &v16[v18];
      v23 = v32;
      (*(v5 + 32))(v32, v22, v4);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v23, v4);
      v25(v12, v4);
      outlined destroy of [Regex2BNF.CharacterPredicate](v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    outlined destroy of [Regex2BNF.CharacterPredicate](v16, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
LABEL_13:
  v26 = v33;
  v27 = *(v33 + 24);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (v31 && (*v28 == *v30 && v29 == v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_20;
    }
  }

  else if (!v31)
  {
LABEL_20:
    v20 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
    return v20 & 1;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t outlined init with copy of Prompt.PromptFragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.PreprocessedImageAttachment and conformance Prompt.PreprocessedImageAttachment);
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Rule and conformance Rule();
  result = MEMORY[0x1AC57C380](v2, &type metadata for Rule, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      specialized Set._Variant.insert(_:)(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_s10ArraySliceVyAFGTt0g5Tf4gX_n(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = lazy protocol witness table accessor for type Rule and conformance Rule();
  result = MEMORY[0x1AC57C380](v4, &type metadata for Rule, v7);
  v16 = result;
  v8 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = a2;
    }

    v10 = v9 - a2;
    v11 = (v6 + 24 * a2 + 8);
    while (v10)
    {
      v13 = *v11;
      v12 = v11[1];
      v14 = *(v11 - 1);

      specialized Set._Variant.insert(_:)(&v15, v14, v13, v12);

      --v10;
      v11 += 3;
      if (!--v8)
      {
        return v16;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  result = MEMORY[0x1AC57C380](v2, &type metadata for NonTerminalSymbol, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      specialized Set._Variant.insert(_:)(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation12CharacterSetV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8]);
  result = MEMORY[0x1AC57C380](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SaySJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC57C380](v2, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E5EE8]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized static Prompt.getLocalizationOverrideValue(from:token:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v20)
    {
      v21 = *(*(a1 + 56) + 8 * v19);
      outlined init with copy of (String, Any)(a3, v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Log.prompt);
        outlined init with copy of Prompt.PromptFragment(a2, v9, type metadata accessor for Prompt.SpecialToken);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v44 = v26;
          *v25 = 136642819;
          v27 = *v9;
          v28 = v9[1];

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.SpecialToken);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v44);

          *(v25 + 4) = v29;
          _os_log_impl(&dword_1A8E85000, v23, v24, "Locale is not provided hence could not find localization override for special token: %{sensitive}s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x1AC57DBF0](v26, -1, -1);
          MEMORY[0x1AC57DBF0](v25, -1, -1);
        }

        else
        {

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v9, type metadata accessor for Prompt.SpecialToken);
        }
      }

      else
      {
        (*(v15 + 32))(v18, v13, v14);

        v31 = specialized _NativeDictionary.filter(_:)(v30);

        v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(v32);
        specialized Set._Variant.insert(_:)(&v44, 28261, 0xE200000000000000);

        v33 = closure #2 in static Prompt.getLocalizationOverrideValue(from:token:locale:)(&v45);
        v35 = v34;

        if (!v35)
        {
          (*(v15 + 8))(v18, v14);

          return v33;
        }

        if (*(v31 + 16))
        {
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v35);
          v38 = v37;

          if (v38)
          {
            v39 = (*(v31 + 56) + 16 * v36);
            v41 = *v39;
            v40 = v39[1];
            v42 = *(v15 + 8);

            v42(v18, v14);

            return v41;
          }
        }

        else
        {
        }

        (*(v15 + 8))(v18, v14);
      }
    }
  }

  return 0;
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, uint64_t *a2)
{
  v61 = type metadata accessor for Prompt.Attachment(0);
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v54 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = v52 - v8;
  v9 = type metadata accessor for Prompt.Delimiter(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v52 - v15;
  v17 = *a2;
  v57 = a2[1];
  v58 = v17;
  v18 = a2[2];
  v59 = a2[3];
  v19 = *a1;
  v20 = a1[1];
  result = String.count.getter();
  v22 = a1 + 3;
  v23 = a1 + 2;
  v24 = *(a1[2] + 16);
  v25 = *(a1[3] + 16);
  v62 = v24 + v25;
  v63 = result;
  if (!__OFADD__(v24, v25))
  {
    v56 = a1;
    v26 = *(v18 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    v55 = v22;
    if (v26)
    {
      v52[1] = v23;
      v53 = v4;
      v64 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
      v27 = v64;
      v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v29 = v18 + v28;
      v30 = *(v10 + 72);
      while (1)
      {
        outlined init with copy of Prompt.PromptFragment(v29, v13, type metadata accessor for Prompt.Delimiter);
        result = outlined init with copy of Prompt.PromptFragment(v13, v16, type metadata accessor for Prompt.SpecialToken);
        v31 = *&v13[*(v9 + 20)];
        v32 = v31 + v63;
        if (__OFADD__(v31, v63))
        {
          break;
        }

        v33 = *&v13[*(v9 + 24)];
        result = _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v13, type metadata accessor for Prompt.Delimiter);
        v34 = v33 + v62;
        if (__OFADD__(v33, v62))
        {
          goto LABEL_19;
        }

        *&v16[*(v9 + 20)] = v32;
        *&v16[*(v9 + 24)] = v34;
        v64 = v27;
        v36 = *(v27 + 16);
        v35 = *(v27 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
          v27 = v64;
        }

        *(v27 + 16) = v36 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v16, v27 + v28 + v36 * v30, type metadata accessor for Prompt.Delimiter);
        v29 += v30;
        if (!--v26)
        {
          v4 = v53;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
LABEL_10:
      specialized Array.append<A>(contentsOf:)(v27);
      v37 = v59;
      v38 = v60;
      v39 = *(v59 + 16);
      v40 = MEMORY[0x1E69E7CC0];
      v41 = v61;
      if (!v39)
      {
LABEL_17:
        specialized Array.append<A>(contentsOf:)(v40);
        return MEMORY[0x1AC57C120](v58, v57);
      }

      v64 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
      v40 = v64;
      v42 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v43 = v37 + v42;
      v44 = *(v4 + 72);
      v45 = v54;
      while (1)
      {
        outlined init with copy of Prompt.PromptFragment(v43, v45, type metadata accessor for Prompt.Attachment);
        result = outlined init with copy of Prompt.PromptFragment(v45, v38, type metadata accessor for Prompt.AttachmentContent);
        v46 = *(v45 + *(v41 + 20));
        v47 = v46 + v63;
        if (__OFADD__(v46, v63))
        {
          break;
        }

        v48 = *(v45 + *(v41 + 24));
        result = _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v45, type metadata accessor for Prompt.Attachment);
        v49 = v48 + v62;
        if (__OFADD__(v48, v62))
        {
          goto LABEL_21;
        }

        *(v38 + *(v41 + 20)) = v47;
        *(v38 + *(v41 + 24)) = v49;
        v64 = v40;
        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        if (v51 >= v50 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1);
          v40 = v64;
        }

        *(v40 + 16) = v51 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v38, v40 + v42 + v51 * v44, type metadata accessor for Prompt.Attachment);
        v43 += v44;
        if (!--v39)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v3 = *a2;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v4 = MEMORY[0x1E69E7CC0];
  v8[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v8[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v4);
  v7 = v3;
  v5.surface.super.isa = &v7;
  Prompt.StringInterpolation.appendInterpolation(imageSurface:)(v5);
  specialized static Prompt.+= infix(_:_:)(a1, v8);
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v4 = MEMORY[0x1E69E7CC0];
  v6[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v6[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v4);
  Prompt.StringInterpolation.appendInterpolation(token:)(a2);
  specialized static Prompt.+= infix(_:_:)(a1, v6);
}

{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0, v6);
  v9 = MEMORY[0x1E69E7CC0];
  v11[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v11[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v9);
  outlined init with copy of Prompt.PromptFragment(a2, v8, type metadata accessor for Prompt.ResponseFormat);
  swift_storeEnumTagMultiPayload();
  Prompt.StringInterpolation.appendInterpolation(attachment:)(v8);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v8, type metadata accessor for Prompt.AttachmentContent);
  specialized static Prompt.+= infix(_:_:)(a1, v11);
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, char *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v6 = MEMORY[0x1E69E7CC0];
  v11[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v11[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v6);
  v8[0] = v3;
  v9 = v4;
  v10 = v5;
  Prompt.StringInterpolation.appendInterpolation(image:)(v8);
  specialized static Prompt.+= infix(_:_:)(a1, v11);
}

{
  v4 = *a2;
  v5 = *(a2 + 5);
  v13 = 0;
  *&v14 = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v6 = MEMORY[0x1E69E7CC0];
  *(&v14 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v6);
  LOBYTE(v9) = v4;
  v7 = *(a2 + 8);
  v11 = *(a2 + 24);
  v10 = v7;
  v12 = v5;
  Prompt.StringInterpolation.appendInterpolation(imageEmbedding:)(&v9);
  v9 = v13;
  v10 = v14;
  *&v11 = v15;
  specialized static Prompt.+= infix(_:_:)(a1, &v9);
}

uint64_t specialized static Prompt.+= infix(_:_:)(void *a1, __int128 *a2)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  MEMORY[0x1AC57C060](0);
  v4 = MEMORY[0x1E69E7CC0];
  v7[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v7[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v4);
  v6 = *a2;
  Prompt.StringInterpolation.appendInterpolation(preprocessedImage:)(&v6);
  specialized static Prompt.+= infix(_:_:)(a1, v7);
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding;
  if (!lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment and conformance Prompt.ImageEmbeddingAttachment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format;
  if (!lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageAttachment and conformance Prompt.ImageAttachment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment()
{
  result = lazy protocol witness table cache variable for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment;
  if (!lazy protocol witness table cache variable for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ImageSurfaceAttachment and conformance Prompt.ImageSurfaceAttachment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails()
{
  result = lazy protocol witness table cache variable for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails;
  if (!lazy protocol witness table cache variable for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ResponseFormat.GrammarDetails and conformance Prompt.ResponseFormat.GrammarDetails);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions;
  if (!lazy protocol witness table cache variable for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolDefinitions and conformance Prompt.ToolDefinitions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source()
{
  result = lazy protocol witness table cache variable for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source;
  if (!lazy protocol witness table cache variable for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Rendering.Source and conformance Prompt.Rendering.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.Rendering and conformance Prompt.Rendering()
{
  result = lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering;
  if (!lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt and conformance Prompt()
{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prompt and conformance Prompt;
  if (!lazy protocol witness table cache variable for type Prompt and conformance Prompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt and conformance Prompt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation()
{
  result = lazy protocol witness table cache variable for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation;
  if (!lazy protocol witness table cache variable for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.StringInterpolation and conformance Prompt.StringInterpolation);
  }

  return result;
}

void type metadata completion function for Prompt.SpecialToken()
{
  type metadata accessor for Locale?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Locale?()
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.ImageEmbeddingAttachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.ImageEmbeddingAttachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for Prompt.Delimiter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Prompt.AttachmentContent()
{
  type metadata accessor for Prompt.ResponseFormat(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [Prompt.ToolCall], &type metadata for Prompt.ToolCall, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for Prompt.ImageAttachment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.ImageAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for Prompt.ResponseFormat()
{
  result = type metadata accessor for Prompt.ResponseFormat.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Prompt.ResponseFormat.Kind()
{
  result = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Prompt.ResponseFormat.SchemaDetails()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Schema();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.ResponseFormat.GrammarDetails(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.ResponseFormat.GrammarDetails(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of (key: Prompt.SpecialToken, value: String)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of Prompt.PromptFragment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.PromptFragment(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall Prompt.RenderedPromptFragment.renderedText()()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v1, v9, type metadata accessor for Prompt.RenderedPromptFragment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of Prompt.RenderedSpecialToken(v9, v5, type metadata accessor for Prompt.RenderedSpecialToken);
      v12 = *v5;
      v11 = v5[1];

      outlined destroy of Prompt.RenderedPromptFragment(v5, type metadata accessor for Prompt.RenderedSpecialToken);
      v13 = v11;
      v14 = v12;
    }

    else
    {
      outlined destroy of Prompt.RenderedPromptFragment(v9, type metadata accessor for Prompt.RenderedPromptFragment);
      v14 = 0;
      v13 = 0xE000000000000000;
    }
  }

  else
  {
    v14 = *v9;
    v13 = v9[1];
  }

  result._object = v13;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t outlined destroy of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Prompt.RenderedSpecialToken.specialToken.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Prompt.RenderedSpecialToken(0) + 20);

  return outlined assign with take of Prompt.SpecialToken(a1, v3);
}

uint64_t outlined assign with take of Prompt.SpecialToken(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.SpecialToken(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static Prompt.RenderedSpecialToken.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Prompt.RenderedSpecialToken(0) + 20);

  return specialized static Prompt.SpecialToken.== infix(_:_:)((a1 + v5), (a2 + v5));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.RenderedSpecialToken(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return static Prompt.SpecialToken.== infix(_:_:)(a1 + v7, a2 + v7);
}

uint64_t specialized static Prompt.RenderedPromptFragment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v39 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v39 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v39 - v22;
  v25 = (&v39 + *(v24 + 56) - v22);
  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(a1, &v39 - v22, type metadata accessor for Prompt.RenderedPromptFragment);
  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(a2, v25, type metadata accessor for Prompt.RenderedPromptFragment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v23, v19, type metadata accessor for Prompt.RenderedPromptFragment);
    v29 = *v19;
    v28 = v19[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v29 == *v25 && v28 == v25[1])
      {
        v38 = v25[1];

        goto LABEL_30;
      }

      v36 = v25[1];
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_18:
    outlined destroy of (Prompt.RenderedPromptFragment, Prompt.RenderedPromptFragment)(v23);
LABEL_19:
    v31 = 0;
    return v31 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v23, v16, type metadata accessor for Prompt.RenderedPromptFragment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Prompt.RenderedSpecialToken(v25, v9, type metadata accessor for Prompt.RenderedSpecialToken);
      v27 = *v16 == *v9 && v16[1] == v9[1];
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Prompt.SpecialToken.== infix(_:_:)(v16 + *(v39 + 20), v9 + *(v39 + 20)))
      {
        outlined destroy of Prompt.RenderedPromptFragment(v9, type metadata accessor for Prompt.RenderedSpecialToken);
        outlined destroy of Prompt.RenderedPromptFragment(v16, type metadata accessor for Prompt.RenderedSpecialToken);
LABEL_30:
        outlined destroy of Prompt.RenderedPromptFragment(v23, type metadata accessor for Prompt.RenderedPromptFragment);
        v31 = 1;
        return v31 & 1;
      }

      outlined destroy of Prompt.RenderedPromptFragment(v9, type metadata accessor for Prompt.RenderedSpecialToken);
      outlined destroy of Prompt.RenderedPromptFragment(v16, type metadata accessor for Prompt.RenderedSpecialToken);
LABEL_28:
      outlined destroy of Prompt.RenderedPromptFragment(v23, type metadata accessor for Prompt.RenderedPromptFragment);
      goto LABEL_19;
    }

    v32 = type metadata accessor for Prompt.RenderedSpecialToken;
    v33 = v16;
    goto LABEL_17;
  }

  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v23, v13, type metadata accessor for Prompt.RenderedPromptFragment);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v32 = type metadata accessor for Prompt.AttachmentContent;
    v33 = v13;
LABEL_17:
    outlined destroy of Prompt.RenderedPromptFragment(v33, v32);
    goto LABEL_18;
  }

  v30 = v40;
  outlined init with take of Prompt.RenderedSpecialToken(v25, v40, type metadata accessor for Prompt.AttachmentContent);
  v31 = specialized static Prompt.AttachmentContent.== infix(_:_:)(v13, v30);
  outlined destroy of Prompt.RenderedPromptFragment(v30, type metadata accessor for Prompt.AttachmentContent);
  outlined destroy of Prompt.RenderedPromptFragment(v13, type metadata accessor for Prompt.AttachmentContent);
  outlined destroy of Prompt.RenderedPromptFragment(v23, type metadata accessor for Prompt.RenderedPromptFragment);
  return v31 & 1;
}

uint64_t type metadata completion function for Prompt.RenderedSpecialToken()
{
  result = type metadata accessor for Prompt.SpecialToken(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of (Prompt.RenderedPromptFragment, Prompt.RenderedPromptFragment)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Prompt.RenderedSpecialToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata completion function for Prompt.PromptMarker()
{
  result = type metadata accessor for Prompt.Attachment(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Prompt.Delimiter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v200 = a4;
  v191 = a2;
  v190 = a1;
  v6 = type metadata accessor for Prompt.ResponseFormat(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v202 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for Prompt.AttachmentContent(0);
  v9 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v225 = (&v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Prompt.Attachment(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v196 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v14 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v185 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v189 = &v167 - v18;
  v19 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v20 = *(v19 - 8);
  v212 = v19;
  v213 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v204 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v203 = (&v167 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v201 = (&v167 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v195 = (&v167 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v192 = (&v167 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v184 = (&v167 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v199 = (&v167 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v188 = &v167 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v187 = &v167 - v38;
  v39 = type metadata accessor for Prompt.Delimiter(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = (&v167 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for Prompt.PromptFragment(0);
  v214 = *(v43 - 8);
  v44 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = (&v167 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *a3;
  v48 = *v4;
  v49 = v4[1];
  v50 = v4[2];
  v51 = v4[3];
  v221 = *v4;
  v222 = v49;
  v223 = v50;
  v224 = v51;
  v52 = v211;
  v53 = Prompt.promptFragments()();
  if (v52)
  {
    return v47;
  }

  v169 = v51;
  v170 = v50;
  v171 = v49;
  v172 = v48;
  v197 = v47;
  v211 = v46;
  v209 = v43;
  v180 = v42;
  v210 = 0;
  v55 = *(v53 + 16);
  if (!v55)
  {

    v60 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_105;
  }

  v56 = 0;
  v57 = v214;
  v208 = v53 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
  v194 = partial apply for closure #4 in ToolCallingConvention.init(version:);
  v58 = closure #1 in ToolCallingConvention.init(version:)partial apply;
  if (v197)
  {
    v58 = closure #3 in ToolCallingConvention.init(version:)partial apply;
  }

  v193 = v58;
  v168 = (v213 + 56);
  v167 = (v213 + 48);
  v59 = v200;
  v183 = v200 + 64;
  v206 = v55;
  v174 = v55 - 1;
  v60 = MEMORY[0x1E69E7CC0];
  *&v54 = 136643331;
  v175 = v54;
  v47 = MEMORY[0x1E69E7CC0];
  v61 = v195;
  v62 = v196;
  v207 = v53;
LABEL_6:
  v173 = v47;
  v178 = 0;
  v63 = v56;
  v47 = v205;
  v64 = v225;
  while (1)
  {
    while (1)
    {
      if (v63 >= *(v53 + 16))
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v180, type metadata accessor for Prompt.Delimiter);
        goto LABEL_103;
      }

      v68 = v62;
      v69 = v211;
      _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v208 + *(v57 + 72) * v63, v211, type metadata accessor for Prompt.PromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 2)
      {
        break;
      }

      v71 = v69;
      v62 = v68;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v71, v68, type metadata accessor for Prompt.Attachment);
      _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v68, v64, type metadata accessor for Prompt.AttachmentContent);
      v72 = swift_getEnumCaseMultiPayload();
      if (v72 == 6)
      {
        v88 = specialized ToolCallingConvention.render(toolCalls:)(*v64, v194);
        v90 = v89;

        v91 = v203;
        *v203 = v88;
        v91[1] = v90;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        }

        v93 = v60[2];
        v92 = v60[3];
        v47 = v205;
        if (v93 >= v92 >> 1)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v92 > 1, v93 + 1, 1, v60);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v68, type metadata accessor for Prompt.Attachment);
        v60[2] = v93 + 1;
        v65 = v60 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v93;
        v66 = &v227;
LABEL_8:
        v67 = *(v66 - 32);
        goto LABEL_9;
      }

      if (v72 == 5)
      {
        v80 = v210;
        v81 = v193(*v64);
        v210 = v80;
        if (v80)
        {

          goto LABEL_102;
        }

        v83 = v81;
        v84 = v82;

        v85 = v201;
        *v201 = v83;
        v85[1] = v84;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        }

        v47 = v205;
        v87 = v60[2];
        v86 = v60[3];
        if (v87 >= v86 >> 1)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1, v60);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v68, type metadata accessor for Prompt.Attachment);
        v60[2] = v87 + 1;
        v65 = v60 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v87;
        v66 = &v226;
        goto LABEL_8;
      }

      if (v72 != 4)
      {
        _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v68, v204, type metadata accessor for Prompt.AttachmentContent);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        }

        v95 = v60[2];
        v94 = v60[3];
        if (v95 >= v94 >> 1)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v94 > 1, v95 + 1, 1, v60);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v68, type metadata accessor for Prompt.Attachment);
        v60[2] = v95 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v204, v60 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v95, type metadata accessor for Prompt.RenderedPromptFragment);
        v64 = v225;
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v225, type metadata accessor for Prompt.AttachmentContent);
        goto LABEL_10;
      }

      v73 = v64;
      v74 = v202;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v73, v202, type metadata accessor for Prompt.ResponseFormat);
      if ((v197 & 1) == 0)
      {

        type metadata accessor for GenerationError();
        v47 = v74;
        lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
        v161 = swift_allocError();
        *v162 = 0xD00000000000004ELL;
        v162[1] = 0x80000001A8FDA580;
        swift_storeEnumTagMultiPayload();
        v210 = v161;
        swift_willThrow();
        v163 = v74;
        goto LABEL_101;
      }

      v75 = v210;
      v76 = specialized ResponseFormatV6.render(format:)(v74);
      v210 = v75;
      if (v75)
      {

        v163 = v74;
LABEL_101:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v163, type metadata accessor for Prompt.ResponseFormat);
LABEL_102:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v68, type metadata accessor for Prompt.Attachment);

LABEL_103:

        return v47;
      }

      *v61 = v76;
      v61[1] = v77;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      }

      v79 = v60[2];
      v78 = v60[3];
      if (v79 >= v78 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1, v60);
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v202, type metadata accessor for Prompt.ResponseFormat);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v68, type metadata accessor for Prompt.Attachment);
      v60[2] = v79 + 1;
      v65 = v60 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v79;
      v67 = v61;
LABEL_9:
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v67, v65, type metadata accessor for Prompt.RenderedPromptFragment);
      v64 = v225;
LABEL_10:
      ++v63;
      v53 = v207;
      v57 = v214;
      if (v206 == v63)
      {
        goto LABEL_104;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      v96 = v211[1];
      v198 = *v211;
      v221 = v198;
      v222 = v96;
      v97 = 1 << *(v59 + 32);
      if (v97 < 64)
      {
        v98 = ~(-1 << v97);
      }

      else
      {
        v98 = -1;
      }

      v99 = v98 & *(v59 + 64);

      swift_beginAccess();
      v100 = 0;
      v101 = (v97 + 63) >> 6;
      v102 = v183;
      for (i = v101; ; v101 = i)
      {
        v103 = v199;
        if (!v99)
        {
          break;
        }

        v47 = v100;
LABEL_50:
        v104 = (v47 << 10) | (16 * __clz(__rbit64(v99)));
        v105 = *(v59 + 48) + v104;
        v106 = *v105;
        v107 = *(v105 + 8);
        v108 = (*(v59 + 56) + v104);
        v109 = *v108;
        v110 = v108[1];
        v219 = v198;
        v220 = v96;
        v181 = v106;
        v217 = v106;
        v218 = v107;
        v182 = v109;
        v215 = v109;
        v216 = v110;
        lazy protocol witness table accessor for type String and conformance String();

        v111 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v113 = v112;
        v198 = v111;
        v221 = v111;
        v222 = v112;

        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v99 &= v99 - 1;
        v114 = type metadata accessor for Logger();
        __swift_project_value_buffer(v114, static Log.tokenization);

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v176 = v116;
          v118 = v117;
          v177 = swift_slowAlloc();
          v219 = v177;
          *v118 = v175;
          v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v107, &v219);
          v181 = v115;
          v120 = v113;
          v121 = v119;

          *(v118 + 4) = v121;
          *(v118 + 12) = 2085;
          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v110, &v219);

          *(v118 + 14) = v122;
          *(v118 + 22) = 2085;

          v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v120, &v219);

          *(v118 + 24) = v123;
          v124 = v181;
          _os_log_impl(&dword_1A8E85000, v181, v176, "Text after substituting %{sensitive}s with %{sensitive}s: %{sensitive}s", v118, 0x20u);
          v125 = v177;
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v125, -1, -1);
          MEMORY[0x1AC57DBF0](v118, -1, -1);

          v100 = v47;
          v96 = v120;
        }

        else
        {

          v100 = v47;
          v96 = v113;
        }

        v59 = v200;
        v102 = v183;
      }

      while (1)
      {
        v47 = (v100 + 1);
        if (__OFADD__(v100, 1))
        {
          goto LABEL_112;
        }

        if (v47 >= v101)
        {
          break;
        }

        v99 = *(v102 + 8 * v47);
        ++v100;
        if (v99)
        {
          goto LABEL_50;
        }
      }

      v62 = v196;
      v61 = v195;
      if (v178)
      {
        v131 = v60[2];
        if (v131)
        {
          v182 = v96;
          v132 = (*(v213 + 80) + 32) & ~*(v213 + 80);
          v133 = *(v213 + 72) * (v131 - 1);
          _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v60 + v132 + v133, v103, type metadata accessor for Prompt.RenderedPromptFragment);
          if (!swift_getEnumCaseMultiPayload())
          {
            v151 = *v103;
            v152 = v103[1];
            v219 = v151;
            v220 = v152;

            MEMORY[0x1AC57C120](v198, v182);

            v153 = v220;
            v154 = v184;
            *v184 = v219;
            v154[1] = v153;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = specialized _ArrayBuffer._consumeAndCreateNew()(v60);
            }

            v64 = v225;
            result = v184;
            if (v131 > v60[2])
            {
              __break(1u);
              return result;
            }

            outlined assign with take of Prompt.RenderedPromptFragment(v184, v60 + v132 + v133);
            v59 = v200;
            v47 = v205;
            v62 = v196;
            goto LABEL_71;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v103, type metadata accessor for Prompt.RenderedPromptFragment);
          v59 = v200;
          v62 = v196;
          v96 = v182;
        }
      }

      v134 = v192;
      *v192 = v198;
      v134[1] = v96;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      }

      v47 = v205;
      v136 = v60[2];
      v135 = v60[3];
      v137 = v192;
      if (v136 >= v135 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v135 > 1, v136 + 1, 1, v60);
        v137 = v192;
      }

      v60[2] = v136 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v137, v60 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v136, type metadata accessor for Prompt.RenderedPromptFragment);
      v64 = v225;
LABEL_71:

      if (v174 == v63)
      {
        goto LABEL_104;
      }

      v178 = 0;
      goto LABEL_86;
    }

    v126 = v180;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v211, v180, type metadata accessor for Prompt.Delimiter);
    v127 = *v126;
    v128 = v126[1];
    v62 = v68;
    if (one-time initialization token for promptModule != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for Prompt.SpecialToken(0);
    v130 = __swift_project_value_buffer(v129, static Prompt.SpecialToken.promptModule);
    if (v127 == *v130 && v128 == v130[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v156 = v173;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v156 + 2) + 1, 1, v156);
      }

      v158 = *(v156 + 2);
      v157 = *(v156 + 3);
      v159 = v156;
      if (v158 >= v157 >> 1)
      {
        v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1, v156);
      }

      v56 = v63 + 1;
      *(v159 + 2) = v158 + 1;
      v160 = &v159[16 * v158];
      v47 = v159;
      *(v160 + 4) = v60;
      v160[40] = 0;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v180, type metadata accessor for Prompt.Delimiter);
      v53 = v207;
      v57 = v214;
      v60 = MEMORY[0x1E69E7CC0];
      if (v174 == v63)
      {

        goto LABEL_105;
      }

      goto LABEL_6;
    }

    if (*(v180 + *(v129 + 28)))
    {
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v180, type metadata accessor for Prompt.Delimiter);
      v47 = v205;
      if (v174 == v63)
      {
        goto LABEL_104;
      }

      v178 = 1;
      v64 = v225;
      goto LABEL_86;
    }

    v221 = v172;
    v222 = v171;
    v223 = v170;
    v224 = v169;
    v138 = v210;
    v139 = Prompt.renderSpecialToken(delimiter:tokenTable:localizationOverrideMap:)(v180, v190, v191);
    v47 = v205;
    v210 = v138;
    if (v138)
    {
      goto LABEL_113;
    }

    v141 = v139;
    v142 = v140;
    v143 = v59;
    if (String.count.getter() <= 0)
    {
      v145 = v189;
      v146 = v212;
      (*v168)(v189, 1, 1, v212);
    }

    else
    {
      v144 = v185;
      _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v180, &v185[*(v186 + 20)], type metadata accessor for Prompt.SpecialToken);
      *v144 = v141;
      v144[1] = v142;
      v145 = v189;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v144, v189, type metadata accessor for Prompt.RenderedSpecialToken);
      v146 = v212;
      swift_storeEnumTagMultiPayload();
      (*v168)(v145, 0, 1, v146);
    }

    v147 = (*v167)(v145, 1, v146);
    v64 = v225;
    if (v147 != 1)
    {
      break;
    }

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v180, type metadata accessor for Prompt.Delimiter);
    outlined destroy of Prompt.RenderedPromptFragment?(v145);
    if (v174 == v63)
    {
      goto LABEL_104;
    }

    v59 = v143;
    v178 = 0;
LABEL_86:
    v53 = v207;
    ++v63;
    v57 = v214;
  }

  v148 = v187;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v145, v187, type metadata accessor for Prompt.RenderedPromptFragment);
  _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v148, v188, type metadata accessor for Prompt.RenderedPromptFragment);
  v59 = v143;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
  }

  v150 = v60[2];
  v149 = v60[3];
  if (v150 >= v149 >> 1)
  {
    v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v149 > 1, v150 + 1, 1, v60);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v187, type metadata accessor for Prompt.RenderedPromptFragment);
  v60[2] = v150 + 1;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v188, v60 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v150, type metadata accessor for Prompt.RenderedPromptFragment);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v180, type metadata accessor for Prompt.Delimiter);
  if (v174 != v63)
  {
    v178 = 0;
    v64 = v225;
    goto LABEL_86;
  }

LABEL_104:

  v47 = v173;
LABEL_105:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 16) + 1, 1, v47);
  }

  v165 = *(v47 + 16);
  v164 = *(v47 + 24);
  if (v165 >= v164 >> 1)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v47);
  }

  *(v47 + 16) = v165 + 1;
  v166 = (v47 + 16 * v165);
  *(v166 + 4) = v60;
  v166[40] = 1;
  return v47;
}

uint64_t specialized static PromptModule.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  v5 = *a2;

  v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV0bC4CoreE08RenderedD8FragmentO_Tt1g5(v6, v3);

  return v7 & 1;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Prompt.RenderedPromptFragment?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PromptModule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PromptModule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for Prompt.Attachment(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

uint64_t Prompt.Turn.toolDefinitions.getter()
{
  v1 = *(v0 + *(type metadata accessor for Prompt.Turn(0) + 24));
}

uint64_t Prompt.Turn.toolDefinitions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prompt.Turn(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t outlined assign with take of Prompt.ResponseFormat?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t Prompt.Turn.content.getter()
{
  v1 = *(v0 + *(type metadata accessor for Prompt.Turn(0) + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v1 + 40;
    do
    {
      if (*(v3 + 40))
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }

      if ((*(v3 + 8) >> 60) & 3 | v4)
      {
        v5 = 0;
        v6 = 0xE000000000000000;
      }

      else
      {
        v5 = *(v3 - 8);
        v6 = *v3;
      }

      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v3 += 56;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

uint64_t key path setter for Prompt.Turn.content : Prompt.Turn(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  v6 = type metadata accessor for Prompt.Turn(0);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0;
  v7 = *(v6 + 32);
  v8 = *(a2 + v7);

  *(a2 + v7) = v5;
  return result;
}

uint64_t Prompt.Turn.content.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = type metadata accessor for Prompt.Turn(0);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0;
  v7 = *(v6 + 32);
  v8 = *(v2 + v7);

  *(v2 + v7) = v5;
  return result;
}

uint64_t (*Prompt.Turn.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = Prompt.Turn.content.getter();
  a1[1] = v3;
  return Prompt.Turn.content.modify;
}

uint64_t Prompt.Turn.content.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A8FC9400;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  v7 = type metadata accessor for Prompt.Turn(0);
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  v8 = *(v7 + 32);
  v9 = *(v4 + v8);
  if (a2)
  {

    *(v4 + v8) = v6;
  }

  else
  {
    v11 = *(v4 + v8);

    *(v4 + v8) = v6;
  }

  return result;
}

uint64_t Prompt.Turn.segments.getter()
{
  v1 = *(v0 + *(type metadata accessor for Prompt.Turn(0) + 32));
}

uint64_t Prompt.Turn.segments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prompt.Turn(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Prompt.Turn.toolCalls.getter()
{
  v1 = *(v0 + *(type metadata accessor for Prompt.Turn(0) + 40));
}

uint64_t Prompt.Turn.toolCalls.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prompt.Turn(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Prompt.Turn.toolResult.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Prompt.Turn(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return outlined copy of Prompt.ToolCallResult?(v4, v5);
}

__n128 Prompt.Turn.toolResult.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for Prompt.Turn(0) + 44));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  outlined consume of Prompt.ToolCallResult?(*v4, v4[1]);
  result = *a1;
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v9;
  v4[4] = v3;
  return result;
}

uint64_t static Prompt.Turn.user(segments:locale:responseFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  outlined init with copy of (String, Any)(a2, &v29 - v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of (String, Any)(a3, v11, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v16 = type metadata accessor for Prompt.Turn(0);
  v17 = v16[5];
  v29 = v17;
  v18 = type metadata accessor for Prompt.ResponseFormat(0);
  (*(*(v18 - 8) + 56))(&a4[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(&a4[v19], 1, 1, v20);
  v21 = &a4[v16[11]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a4 = 2;
  *&a4[v16[8]] = a1;
  v22 = MEMORY[0x1E69E7CC0];
  *&a4[v16[6]] = MEMORY[0x1E69E7CC0];
  *&a4[v16[10]] = v22;
  v24 = *v21;
  v23 = *(v21 + 1);
  v25 = *(v21 + 2);
  v26 = *(v21 + 3);
  v27 = *(v21 + 4);

  outlined consume of Prompt.ToolCallResult?(v24, v23);
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  a4[v16[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v15, &a4[v19], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v30, &a4[v29], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.user(segments:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  outlined init with copy of (String, Any)(a2, &v29 - v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v16 = type metadata accessor for Prompt.ResponseFormat(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  v18 = type metadata accessor for Prompt.Turn(0);
  v29 = v18[5];
  v17(&a4[v29], 1, 1, v16);
  v19 = v18[7];
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(&a4[v19], 1, 1, v20);
  v21 = &a4[v18[11]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a4 = a3;
  *&a4[v18[8]] = a1;
  v22 = MEMORY[0x1E69E7CC0];
  *&a4[v18[6]] = MEMORY[0x1E69E7CC0];
  *&a4[v18[10]] = v22;
  v23 = *v21;
  v24 = *(v21 + 1);
  v25 = *(v21 + 2);
  v26 = *(v21 + 3);
  v27 = *(v21 + 4);

  outlined consume of Prompt.ToolCallResult?(v23, v24);
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  a4[v18[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v15, &a4[v19], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v30, &a4[v29], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.instructions(segments:toolDefinitions:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v29 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v30 = &v27 - v14;
  outlined init with copy of (String, Any)(a3, &v27 - v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v15 = type metadata accessor for Prompt.ResponseFormat(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = type metadata accessor for Prompt.Turn(0);
  v28 = v17[5];
  v16(&a4[v28], 1, 1, v15);
  v18 = v17[7];
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
  v20 = &a4[v17[11]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *a4 = 0;
  *&a4[v17[8]] = a1;
  *&a4[v17[6]] = a2;
  *&a4[v17[10]] = MEMORY[0x1E69E7CC0];
  v21 = *v20;
  v22 = *(v20 + 1);
  v24 = *(v20 + 2);
  v23 = *(v20 + 3);
  v25 = *(v20 + 4);

  outlined consume of Prompt.ToolCallResult?(v21, v22);
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  a4[v17[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v30, &a4[v18], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v29, &a4[v28], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.user(segments:)(uint64_t a1, void (*a2)(uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  a2(a1, v7);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.Turn.toolCalls(_:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v28 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  outlined init with copy of (String, Any)(a2, &v27 - v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v14 = type metadata accessor for Prompt.ResponseFormat(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v9, 1, 1, v14);
  v16 = type metadata accessor for Prompt.Turn(0);
  v27 = v16[5];
  v15(&a3[v27], 1, 1, v14);
  v17 = v16[7];
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 56))(&a3[v17], 1, 1, v18);
  v19 = &a3[v16[11]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *a3 = 1;
  v20 = MEMORY[0x1E69E7CC0];
  *&a3[v16[8]] = MEMORY[0x1E69E7CC0];
  *&a3[v16[6]] = v20;
  *&a3[v16[10]] = a1;
  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 3);
  v25 = *(v19 + 4);

  outlined consume of Prompt.ToolCallResult?(v22, v21);
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  a3[v16[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v13, &a3[v17], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v28, &a3[v27], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.toolCallResult(_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v36 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[3];
  v41 = a1[2];
  v42 = v15;
  v37 = v17;
  v38 = a1[4];
  v18 = type metadata accessor for Locale();
  v19 = *(*(v18 - 8) + 56);
  v40 = v14;
  v19(v14, 1, 1, v18);
  outlined init with copy of (String, Any)(v14, v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v20 = type metadata accessor for Prompt.ResponseFormat(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v7, 1, 1, v20);
  v22 = type metadata accessor for Prompt.Turn(0);
  v35 = v22[5];
  v21(&a2[v35], 1, 1, v20);
  v34 = v22[7];
  v19(&a2[v34], 1, 1, v18);
  v23 = &a2[v22[11]];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *a2 = 3;
  v24 = MEMORY[0x1E69E7CC0];
  *&a2[v22[8]] = MEMORY[0x1E69E7CC0];
  *&a2[v22[6]] = v24;
  *&a2[v22[10]] = v24;
  v25 = *v23;
  v26 = *(v23 + 1);
  v27 = *(v23 + 2);
  v33 = *(v23 + 3);
  v28 = *(v23 + 4);

  v29 = v37;

  v30 = v38;

  outlined consume of Prompt.ToolCallResult?(v25, v26);
  v31 = v41;
  *v23 = v42;
  *(v23 + 1) = v16;
  *(v23 + 2) = v31;
  *(v23 + 3) = v29;
  *(v23 + 4) = v30;
  a2[v22[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v39, &a2[v34], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined assign with take of Prompt.ResponseFormat?(v36, &a2[v35], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v40, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.Turn.toolCallResult(_:locale:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v39 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - v12;
  v14 = *a1;
  v15 = a1[1];
  v41 = v13;
  v42 = v14;
  v16 = a1[3];
  v40 = a1[2];
  v17 = a1[4];
  v37 = v16;
  v38 = v17;
  outlined init with copy of (String, Any)(a2, v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v18 = type metadata accessor for Prompt.ResponseFormat(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v20 = type metadata accessor for Prompt.Turn(0);
  v36 = v20[5];
  v19(&a3[v36], 1, 1, v18);
  v21 = v20[7];
  v35 = v21;
  v22 = type metadata accessor for Locale();
  (*(*(v22 - 8) + 56))(&a3[v21], 1, 1, v22);
  v23 = &a3[v20[11]];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *a3 = 3;
  v24 = MEMORY[0x1E69E7CC0];
  *&a3[v20[8]] = MEMORY[0x1E69E7CC0];
  *&a3[v20[6]] = v24;
  *&a3[v20[10]] = v24;
  v25 = *(v23 + 1);
  v34 = *v23;
  v27 = *(v23 + 2);
  v26 = *(v23 + 3);
  v28 = *(v23 + 4);

  v29 = v37;

  v30 = v38;

  outlined consume of Prompt.ToolCallResult?(v34, v25);
  v31 = v41;
  *v23 = v42;
  *(v23 + 1) = v15;
  *(v23 + 2) = v40;
  *(v23 + 3) = v29;
  *(v23 + 4) = v30;
  a3[v20[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v31, &a3[v35], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v39, &a3[v36], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

double Prompt.Turn.init(role:segments:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for Prompt.Turn(0);
  v7 = v6[5];
  v8 = type metadata accessor for Prompt.ResponseFormat(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = v6[7];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  v11 = &a3[v6[11]];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *a3 = v5;
  *&a3[v6[8]] = a2;
  a3[v6[9]] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&a3[v6[6]] = MEMORY[0x1E69E7CC0];
  *&a3[v6[10]] = v12;
  v13 = *(v11 + 2);
  v14 = *(v11 + 3);
  v15 = *(v11 + 4);
  outlined consume of Prompt.ToolCallResult?(*v11, *(v11 + 1));
  *(v11 + 4) = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  return result;
}

double Prompt.Turn.init(role:content:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for Prompt.Turn(0);
  v9 = v8[5];
  v10 = type metadata accessor for Prompt.ResponseFormat(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = v8[7];
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  v13 = &a4[v8[11]];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *a4 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A8FC9400;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0;
  *&a4[v8[8]] = v14;
  a4[v8[9]] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *&a4[v8[6]] = MEMORY[0x1E69E7CC0];
  *&a4[v8[10]] = v15;
  v16 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  outlined consume of Prompt.ToolCallResult?(*v13, *(v13 + 1));
  *(v13 + 4) = 0;
  result = 0.0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  return result;
}

uint64_t one-time initialization function for defaultSystemInstructions()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v24 - v2;
  v25 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Prompt.Turn(0);
  __swift_allocate_value_buffer(v8, static Prompt.Turn.defaultSystemInstructions);
  v9 = __swift_project_value_buffer(v8, static Prompt.Turn.defaultSystemInstructions);
  v10 = type metadata accessor for Locale();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v12 = type metadata accessor for Prompt.ResponseFormat(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v3, 1, 1, v12);
  v14 = v8[5];
  v13(&v9[v14], 1, 1, v12);
  v15 = v8[7];
  v11(&v9[v15], 1, 1, v10);
  v16 = &v9[v8[11]];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *v9 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *&v9[v8[8]] = MEMORY[0x1E69E7CC0];
  *&v9[v8[6]] = v17;
  *&v9[v8[10]] = v17;
  v18 = *v16;
  v19 = *(v16 + 1);
  v20 = *(v16 + 2);
  v21 = *(v16 + 3);
  v22 = *(v16 + 4);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  outlined consume of Prompt.ToolCallResult?(v18, v19);
  v9[v8[9]] = 1;
  outlined assign with take of Prompt.ResponseFormat?(v7, &v9[v15], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v25, &v9[v14], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.defaultSystemInstructions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultSystemInstructions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Prompt.Turn(0);
  v3 = __swift_project_value_buffer(v2, static Prompt.Turn.defaultSystemInstructions);
  return outlined init with copy of Prompt.Turn(v3, a1, type metadata accessor for Prompt.Turn);
}

uint64_t static Prompt.Turn.defaultSystemInstructions(toolDefinitions:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v28 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  outlined init with copy of (String, Any)(a2, &v27 - v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v14 = type metadata accessor for Prompt.ResponseFormat(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v9, 1, 1, v14);
  v16 = type metadata accessor for Prompt.Turn(0);
  v27 = v16[5];
  v15(&a3[v27], 1, 1, v14);
  v17 = v16[7];
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 56))(&a3[v17], 1, 1, v18);
  v19 = &a3[v16[11]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *a3 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *&a3[v16[8]] = MEMORY[0x1E69E7CC0];
  *&a3[v16[6]] = a1;
  *&a3[v16[10]] = v20;
  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 3);
  v25 = *(v19 + 4);

  outlined consume of Prompt.ToolCallResult?(v22, v21);
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  a3[v16[9]] = 1;
  outlined assign with take of Prompt.ResponseFormat?(v13, &a3[v17], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v28, &a3[v27], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.defaultSystemInstructions(toolDefinitions:segments:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v29 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v30 = &v27 - v14;
  outlined init with copy of (String, Any)(a3, &v27 - v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v15 = type metadata accessor for Prompt.ResponseFormat(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = type metadata accessor for Prompt.Turn(0);
  v28 = v17[5];
  v16(&a4[v28], 1, 1, v15);
  v18 = v17[7];
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
  v20 = &a4[v17[11]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *a4 = 0;
  *&a4[v17[8]] = a2;
  *&a4[v17[6]] = a1;
  *&a4[v17[10]] = MEMORY[0x1E69E7CC0];
  v21 = *v20;
  v22 = *(v20 + 1);
  v24 = *(v20 + 2);
  v23 = *(v20 + 3);
  v25 = *(v20 + 4);

  outlined consume of Prompt.ToolCallResult?(v21, v22);
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  a4[v17[9]] = 1;
  outlined assign with take of Prompt.ResponseFormat?(v30, &a4[v18], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v29, &a4[v28], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

Swift::Int Prompt.Turn.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

uint64_t Prompt.Turn.Segment.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  if (*(v2 + 48))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v2 + 16) >> 60) & 3 | v6;
  if (v7 <= 1)
  {
    if (!v7)
    {
      MEMORY[0x1AC57CB80](0);
      goto LABEL_10;
    }

    MEMORY[0x1AC57CB80](1);
    MEMORY[0x1AC57CB80](v5 & 1);

    return Data.hash(into:)();
  }

  else
  {
    if (v7 == 2)
    {
      MEMORY[0x1AC57CB80](2);
      return NSObject.hash(into:)();
    }

    if (v7 == 3)
    {
      v9 = *(v2 + 32);
      v8 = *(v2 + 40);
      v10 = *(v2 + 24);
      MEMORY[0x1AC57CB80](3);
      MEMORY[0x1AC57CB80](v5 & 1);
      Data.hash(into:)();
      MEMORY[0x1AC57CB80](v10);
LABEL_10:

      return String.hash(into:)();
    }

    MEMORY[0x1AC57CB80](4);
    specialized Array<A>.hash(into:)(a1, v5);
    result = MEMORY[0x1AC57CB80](*(v4 + 16));
    v12 = *(v4 + 16);
    if (v12)
    {
      v13 = (v4 + 32);
      do
      {
        v14 = *v13++;
        result = MEMORY[0x1AC57CB80](v14);
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

Swift::Int Prompt.Turn.Segment.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  Prompt.Turn.Segment.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Turn.Segment()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  Prompt.Turn.Segment.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Turn.Segment()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  Prompt.Turn.Segment.hash(into:)(v4);
  return Hasher._finalize()();
}

void Prompt.Turn.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v44 - v9;
  v10 = type metadata accessor for Tool();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt.ResponseFormat(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v44 - v22;
  MEMORY[0x1AC57CB80](*v1, v21);
  v50 = type metadata accessor for Prompt.Turn(0);
  v51 = v1;
  outlined init with copy of (String, Any)(&v1[v50[5]], v23, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v24 = (*(v15 + 48))(v23, 1, v14);
  v45 = v6;
  if (v24 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    outlined init with take of Prompt.ResponseFormat(v23, v18, type metadata accessor for Prompt.ResponseFormat);
    Hasher._combine(_:)(1u);
    Prompt.ResponseFormat.Kind.hash(into:)();
    outlined destroy of Prompt.ResponseFormat(v18, type metadata accessor for Prompt.ResponseFormat);
  }

  v25 = *&v51[v50[6]];
  MEMORY[0x1AC57CB80](*(v25 + 16));
  v26 = *(v25 + 16);
  v27 = a1;
  if (v26)
  {
    v28 = *(v46 + 16);
    v29 = v25 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v30 = *(v46 + 72);
    v31 = (v46 + 8);
    do
    {
      v28(v13, v29, v10);
      lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0]);
      dispatch thunk of Hashable.hash(into:)();
      (*v31)(v13, v10);
      v29 += v30;
      --v26;
    }

    while (v26);
  }

  v32 = v47;
  outlined init with copy of (String, Any)(&v51[v50[7]], v47, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v34 = v48;
  v33 = v49;
  if ((*(v48 + 48))(v32, 1, v49) == 1)
  {
    v35 = v27;
    Hasher._combine(_:)(0);
  }

  else
  {
    v36 = v45;
    (*(v34 + 32))(v45, v32, v33);
    v35 = v27;
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v34 + 8))(v36, v33);
  }

  v38 = v50;
  v37 = v51;
  specialized Array<A>.hash(into:)(v35, *&v51[v50[8]]);
  Hasher._combine(_:)(v37[v38[9]]);
  specialized Array<A>.hash(into:)(v35, *&v37[v38[10]]);
  v39 = &v37[v38[11]];
  if (*(v39 + 1))
  {
    v41 = *(v39 + 3);
    v40 = *(v39 + 4);
    v42 = *(v39 + 2);
    v43 = *v39;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    String.hash(into:)();
    specialized Array<A>.hash(into:)(v35, v40);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int Prompt.Turn.hashValue.getter()
{
  Hasher.init(_seed:)();
  Prompt.Turn.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Turn()
{
  Hasher.init(_seed:)();
  Prompt.Turn.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Turn()
{
  Hasher.init(_seed:)();
  Prompt.Turn.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Prompt.ToolCall.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

{
  return MEMORY[0x1EEE30158]();
}

uint64_t Prompt.ToolCall.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ToolCall.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Prompt.ToolCall.kind.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1[1].n128_u64[1];
  v5 = v1[2].n128_u64[1];

  result = v7;
  v1[1] = v7;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

uint64_t Prompt.ToolCall._userInfo.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

uint64_t Prompt.ToolCall._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 Prompt.ToolCall.init(id:kind:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  result = *a3;
  v5 = a3[1].n128_u64[0];
  v6 = a3[1].n128_u64[1];
  *(a4 + 48) = xmmword_1A8FD1F40;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = result;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  return result;
}

uint64_t static Prompt.ToolCall.Function.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Prompt.ToolCall.Kind.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.ToolCall.Kind.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ToolCall.Kind()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ToolCall.Kind()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolCall.Kind()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Prompt.ToolCall.Function.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

{
  return MEMORY[0x1EEE30178]();
}

uint64_t Prompt.ToolCall.Function.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ToolCall.Function.arguments.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

{
  return MEMORY[0x1EEE30180]();
}

uint64_t Prompt.ToolCall.Function.arguments.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prompt.ToolCall.Function.init(name:arguments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Prompt.ToolCall.Function.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.ToolCall.Function.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void Prompt.ToolCall.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v8 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int Prompt.ToolCall.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v8 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Prompt.ToolCall()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v8 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolCall()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v8 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t Prompt.ToolCallResult.toolCallID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Prompt.ToolCallResult.toolCallID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ToolCallResult.content.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Prompt.ToolCallResult.content.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prompt.ToolCallResult.segments.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Prompt.ToolCallResult.init(toolCallID:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A8FC9400;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  a5[4] = v8;
}

uint64_t Prompt.ToolCallResult.init(toolCallID:segments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[3] = 0xE000000000000000;
  *a4 = result;
  a4[1] = a2;
  a4[4] = a3;
  return result;
}

uint64_t static Prompt.ToolCallResult.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(v3, v7);
}

void Prompt.ToolCallResult.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  String.hash(into:)();

  specialized Array<A>.hash(into:)(a1, v7);
}

Swift::Int Prompt.ToolCallResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ToolCallResult()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v5);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Prompt.ToolCallResult(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  String.hash(into:)();
  String.hash(into:)();

  specialized Array<A>.hash(into:)(a1, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolCallResult()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v7, v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.ToolCallResult(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(v3, v7);
}

uint64_t static Prompt.transcript(turns:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v224 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v223 - v5;
  v237 = type metadata accessor for Prompt.ResponseFormat(0);
  v281 = *(v237 - 8);
  v7 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v226 = &v223 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.Attachment(0);
  v272 = *(v9 - 8);
  v273 = v9;
  v10 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v266 = &v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v223 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v265 = &v223 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v223 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v264 = &v223 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v270 = &v223 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v263 = &v223 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v223 - v27;
  v29 = type metadata accessor for Locale();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v257 = &v223 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v275 = &v223 - v35;
  v282 = type metadata accessor for Prompt.SpecialToken(0);
  v240 = *(v282 - 1);
  v36 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v282);
  v241 = &v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v228 = &v223 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v227 = (&v223 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v239 = &v223 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v276 = &v223 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v238 = &v223 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v283 = (&v223 - v49);
  v274 = type metadata accessor for Prompt.AttachmentContent(0);
  v50 = *(*(v274 - 8) + 64);
  MEMORY[0x1EEE9AC00](v274);
  v243 = (&v223 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v258 = type metadata accessor for Prompt.Turn(0);
  v52 = *(v258 - 1);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v258);
  v255 = &v223 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v251 = &v223 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v223 - v59;
  v62 = MEMORY[0x1EEE9AC00](v61);
  v288 = 0;
  *&v289 = 0xE000000000000000;
  *(&v289 + 1) = MEMORY[0x1E69E7CC0];
  v290 = MEMORY[0x1E69E7CC0];
  v63 = *(v30 + 56);
  v242 = &v223 - v64;
  v250 = v30 + 56;
  v249 = v63;
  v63(v62);
  v236 = *(a1 + 16);
  if (!v236)
  {
    goto LABEL_102;
  }

  v260 = v28;
  v65 = 0;
  v235 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v231 = 0x80000001A8FDA350;
  v269 = (v30 + 48);
  v256 = (v30 + 32);
  v267 = (v30 + 8);
  v225 = 0x80000001A8FDA390;
  v230 = (v281 + 48);
  v234 = *(v52 + 72);
  v233 = xmmword_1A8FC9410;
  v232 = v6;
  v262 = v14;
  v261 = v19;
  v254 = v29;
  v66 = v282;
  v259 = v33;
  v67 = v276;
  v68 = v255;
  v268 = v60;
  v69 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v77 = v65;
    outlined init with copy of Prompt.Turn(v235 + v234 * v65, v68, type metadata accessor for Prompt.Turn);
    v78 = *(v68 + v258[6]);
    v284 = 0;
    v285 = 0xE000000000000000;

    MEMORY[0x1AC57C060](0);
    v286 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
    v287 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
    v79 = v243;
    *v243 = v78;
    swift_storeEnumTagMultiPayload();
    Prompt.StringInterpolation.appendInterpolation(attachment:)(v79);
    outlined destroy of Prompt.ResponseFormat(v79, type metadata accessor for Prompt.AttachmentContent);
    if (*(v78 + 16))
    {
      v245 = v287;
      v246 = v286;
      v247 = v285;
      v244 = v284;
    }

    else
    {

      v244 = 0;
      v247 = 0xE000000000000000;
      v246 = v69;
      v245 = v69;
    }

    v80 = &_s10Foundation6LocaleVSgMd;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV07SpecialD0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV07SpecialD0VGMR);
    v81 = (*(v240 + 80) + 32) & ~*(v240 + 80);
    v281 = *(v240 + 72);
    v82 = swift_allocObject();
    *(v82 + 16) = v233;
    v83 = v254;
    if (one-time initialization token for user != -1)
    {
      v211 = v82;
      swift_once();
      v82 = v211;
    }

    v280 = v82;
    v84 = v82 + v81;
    v85 = __swift_project_value_buffer(v66, static Prompt.SpecialToken.Chat.user);
    outlined init with copy of Prompt.Turn(v85, v84, type metadata accessor for Prompt.SpecialToken);
    if (one-time initialization token for tool != -1)
    {
      swift_once();
    }

    v86 = __swift_project_value_buffer(v66, static Prompt.SpecialToken.Chat.tool);
    outlined init with copy of Prompt.Turn(v86, v84 + v281, type metadata accessor for Prompt.SpecialToken);
    v87 = *v255;
    v88 = v269;
    v278 = v86;
    v279 = v85;
    if (v87 > 1)
    {
      if (v87 == 2)
      {
        v91 = v85;
      }

      else
      {
        v91 = v86;
      }
    }

    else
    {
      if (v87)
      {
        if (one-time initialization token for response != -1)
        {
          swift_once();
        }

        v89 = v282;
        v90 = static Prompt.SpecialToken.Chat.response;
      }

      else
      {
        if (one-time initialization token for instructions != -1)
        {
          swift_once();
        }

        v89 = v282;
        v90 = static Prompt.SpecialToken.Chat.instructions;
      }

      v91 = __swift_project_value_buffer(v89, v90);
    }

    v248 = v77 + 1;
    v92 = v238;
    outlined init with copy of Prompt.Turn(v91, v238, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Prompt.ResponseFormat(v92, v283, type metadata accessor for Prompt.SpecialToken);
    v93 = 2;
    do
    {
      outlined init with copy of Prompt.Turn(v84, v67, type metadata accessor for Prompt.SpecialToken);
      v94 = *v67 == *v283 && v67[1] == v283[1];
      if (!v94 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }

      v95 = v282[5];
      v96 = *(v33 + 48);
      v97 = v67 + v95;
      v98 = v275;
      outlined init with copy of (String, Any)(v97, v275, v80, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of (String, Any)(v283 + v95, v98 + v96, v80, &_s10Foundation6LocaleVSgMR);
      v99 = *v88;
      if ((*v88)(v98, 1, v83) == 1)
      {
        if (v99(v98 + v96, 1, v83) != 1)
        {
          goto LABEL_26;
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v98, v80, &_s10Foundation6LocaleVSgMR);
        v67 = v276;
      }

      else
      {
        v100 = v80;
        v101 = v268;
        outlined init with copy of (String, Any)(v98, v268, v100, &_s10Foundation6LocaleVSgMR);
        if (v99(v98 + v96, 1, v83) == 1)
        {
          (*v267)(v101, v83);
          v88 = v269;
          v80 = v100;
LABEL_26:
          outlined destroy of [Regex2BNF.CharacterPredicate](v98, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
          v67 = v276;
LABEL_27:
          outlined destroy of Prompt.ResponseFormat(v67, type metadata accessor for Prompt.SpecialToken);
          goto LABEL_28;
        }

        v102 = v257;
        (*v256)(v257, v98 + v96, v83);
        lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
        v103 = dispatch thunk of static Equatable.== infix(_:_:)();
        v104 = *v267;
        v105 = v102;
        v33 = v259;
        (*v267)(v105, v83);
        v104(v101, v83);
        outlined destroy of [Regex2BNF.CharacterPredicate](v98, v100, &_s10Foundation6LocaleVSgMR);
        v67 = v276;
        v88 = v269;
        v80 = v100;
        if ((v103 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v106 = v282[6];
      v107 = (v67 + v106);
      v108 = *(v67 + v106 + 8);
      v109 = (v283 + v106);
      v110 = v109[1];
      if (v108)
      {
        if (!v110 || (*v107 != *v109 || v108 != v110) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v110)
      {
        goto LABEL_27;
      }

      v111 = v282[7];
      v112 = *(v67 + v111);
      v113 = *(v283 + v111);
      outlined destroy of Prompt.ResponseFormat(v67, type metadata accessor for Prompt.SpecialToken);
      if (v112 == v113)
      {
        v229 = 0;
        goto LABEL_49;
      }

LABEL_28:
      v84 += v281;
      --v93;
    }

    while (v93);
    v229 = 1;
LABEL_49:

    outlined destroy of Prompt.ResponseFormat(v283, type metadata accessor for Prompt.SpecialToken);
    v114 = v242;
    outlined destroy of [Regex2BNF.CharacterPredicate](v242, v80, &_s10Foundation6LocaleVSgMR);
    v115 = v258;
    v116 = v258[7];
    v117 = v255;
    outlined init with copy of (String, Any)(&v255[v116], v114, v80, &_s10Foundation6LocaleVSgMR);
    v118 = v117[v115[9]];
    v119 = v239;
    v120 = v251;
    v252 = v116;
    if (v118)
    {
      outlined init with copy of (String, Any)(&v117[v116], v251, v80, &_s10Foundation6LocaleVSgMR);
      v121 = v282;
      v122 = v119 + v282[5];
      (v249)(v122, 1, 1, v254);
      v123 = v225;
      *v119 = 0xD000000000000018;
      v119[1] = v123;
      v124 = (v119 + v121[6]);
      *v124 = 0;
      v124[1] = 0;
    }

    else
    {
      if (*v117 > 1u)
      {
        v127 = v279;
        if (*v117 != 2)
        {
          v127 = v278;
        }
      }

      else
      {
        if (*v117)
        {
          v125 = v282;
          if (one-time initialization token for response != -1)
          {
            v213 = v282;
            swift_once();
            v125 = v213;
          }

          v126 = static Prompt.SpecialToken.Chat.response;
        }

        else
        {
          v125 = v282;
          if (one-time initialization token for instructions != -1)
          {
            v212 = v282;
            swift_once();
            v125 = v212;
          }

          v126 = static Prompt.SpecialToken.Chat.instructions;
        }

        v127 = __swift_project_value_buffer(v125, v126);
      }

      v128 = v228;
      outlined init with copy of Prompt.Turn(v127, v228, type metadata accessor for Prompt.SpecialToken);
      v129 = v227;
      outlined init with take of Prompt.ResponseFormat(v128, v227, type metadata accessor for Prompt.SpecialToken);
      v130 = v129[1];
      v281 = *v129;

      outlined destroy of Prompt.ResponseFormat(v129, type metadata accessor for Prompt.SpecialToken);
      v131 = &v117[v258[11]];
      v132 = v131[1];
      if (v132)
      {
        v133 = *v131;
        v134 = v131[1];
      }

      else
      {
        v133 = 0;
      }

      v121 = v282;
      v80 = &_s10Foundation6LocaleVSgMd;
      outlined init with copy of (String, Any)(&v117[v252], v120, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v122 = v119 + v121[5];
      (v249)(v122, 1, 1, v254);
      *v119 = v281;
      v119[1] = v130;
      v135 = (v119 + v121[6]);
      *v135 = v133;
      v135[1] = v132;
    }

    outlined assign with take of Prompt.ResponseFormat?(v120, v122, v80, &_s10Foundation6LocaleVSgMR);
    *(v119 + v121[7]) = 0;
    specialized static Prompt.+= infix(_:_:)(&v288, v119);
    outlined destroy of Prompt.ResponseFormat(v119, type metadata accessor for Prompt.SpecialToken);
    v136 = *&v117[v258[8]];
    v137 = &v117[v258[11]];
    if (*(v137 + 1))
    {
      v138 = *(v137 + 4);

      v69 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v69 = MEMORY[0x1E69E7CC0];
      v138 = MEMORY[0x1E69E7CC0];
    }

    v284 = v136;

    specialized Array.append<A>(contentsOf:)(v138);
    v253 = v284;
    v139 = *(v284 + 16);
    if (!v139)
    {
LABEL_97:

      v68 = v255;
      v207 = *&v255[v258[10]];
      if (*(v207 + 16))
      {
        v284 = 0;
        v285 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v286 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
        v287 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
        v208 = v243;
        *v243 = v207;
        swift_storeEnumTagMultiPayload();

        Prompt.StringInterpolation.appendInterpolation(attachment:)(v208);
        outlined destroy of Prompt.ResponseFormat(v208, type metadata accessor for Prompt.AttachmentContent);
        specialized static Prompt.+= infix(_:_:)(&v288, &v284);
      }

      v209 = v232;
      outlined init with copy of (String, Any)(v68 + v258[5], v232, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      v210 = (*v230)(v209, 1, v237);
      v66 = v282;
      v33 = v259;
      v67 = v276;
      if (v210 == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v209, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      }

      else
      {
        v70 = v209;
        v71 = v226;
        outlined init with take of Prompt.ResponseFormat(v70, v226, type metadata accessor for Prompt.ResponseFormat);
        specialized static Prompt.+= infix(_:_:)(&v288, v71);
        outlined destroy of Prompt.ResponseFormat(v71, type metadata accessor for Prompt.ResponseFormat);
      }

      v284 = v244;
      v285 = v247;
      v286 = v246;
      v287 = v245;
      specialized static Prompt.+= infix(_:_:)(&v288, &v284);

      v72 = v251;
      outlined init with copy of (String, Any)(v68 + v252, v251, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v73 = v66[5];
      v74 = v241;
      (v249)(&v241[v73], 1, 1, v254);
      v75 = v231;
      *v74 = 0xD000000000000016;
      v74[1] = v75;
      v76 = (v74 + v66[6]);
      *v76 = 0;
      v76[1] = 0;
      outlined assign with take of Prompt.ResponseFormat?(v72, v74 + v73, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      *(v74 + v66[7]) = 0;
      specialized static Prompt.+= infix(_:_:)(&v288, v74);
      outlined destroy of Prompt.ResponseFormat(v74, type metadata accessor for Prompt.SpecialToken);
      outlined destroy of Prompt.ResponseFormat(v68, type metadata accessor for Prompt.Turn);
      v65 = v248;
      if (v248 == v236)
      {
        v214 = v254;
        if ((v229 & 1) == 0)
        {
          v215 = v242;
          v216 = v251;
          outlined init with copy of (String, Any)(v242, v251, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v217 = v282;
          v218 = v282[5];
          v219 = v241;
          (v249)(&v241[v218], 1, 1, v214);
          *v219 = 0xD000000000000013;
          v219[1] = 0x80000001A8FDA330;
          v220 = (v219 + v217[6]);
          *v220 = 0;
          v220[1] = 0;
          outlined assign with take of Prompt.ResponseFormat?(v216, v219 + v218, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          *(v219 + v217[7]) = 0;
          specialized static Prompt.+= infix(_:_:)(&v288, v219);
          outlined destroy of [Regex2BNF.CharacterPredicate](v215, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          result = outlined destroy of Prompt.ResponseFormat(v219, type metadata accessor for Prompt.SpecialToken);
          goto LABEL_104;
        }

LABEL_102:
        result = outlined destroy of [Regex2BNF.CharacterPredicate](v242, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
LABEL_104:
        v221 = v290;
        v222 = v224;
        *v224 = v288;
        *(v222 + 1) = v289;
        v222[3] = v221;
        return result;
      }

      continue;
    }

    break;
  }

  v140 = (v253 + 80);
  while (1)
  {
    v148 = *(v140 - 6);
    v149 = *(v140 - 5);
    v150 = *(v140 - 4);
    v151 = *(v140 - 3);
    v152 = *(v140 - 2);
    v153 = *(v140 - 1);
    v154 = *v140;
    v155 = *v140 ? 4 : 0;
    v156 = v155 | (v150 >> 60) & 3;
    if (v156 > 1)
    {
      break;
    }

    if (!v156)
    {
      v284 = *(v140 - 6);
      v285 = v149;
      v286 = v69;
      v287 = v69;
      outlined copy of Prompt.Turn.Segment(v148, v149, v150, v151, v152, v153, v154);
      specialized static Prompt.+= infix(_:_:)(&v288, &v284);

      goto LABEL_73;
    }

    v280 = *(v140 - 3);
    v281 = v152;
    v278 = v153;
    v279 = v150;
    v196 = v150 & 0xCFFFFFFFFFFFFFFFLL;
    v284 = 0;
    v285 = 0xE000000000000000;
    outlined copy of Data._Representation(v149, v150 & 0xCFFFFFFFFFFFFFFFLL);
    MEMORY[0x1AC57C060](0);
    v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
    v198 = v69;
    v199 = v197;
    v286 = v197;
    v200 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v198);
    v287 = v200;
    v271 = v148;
    v201 = v260;
    *v260 = v148 & 1;
    *(v201 + 1) = v149;
    *(v201 + 2) = v196;
    swift_storeEnumTagMultiPayload();
    outlined copy of Data._Representation(v149, v196);
    result = String.count.getter();
    v202 = *(v199 + 16);
    v203 = v200[2];
    v169 = __OFADD__(v202, v203);
    v204 = v202 + v203;
    if (v169)
    {
      goto LABEL_108;
    }

    v205 = v273;
    *&v201[*(v273 + 20)] = result;
    *&v201[*(v205 + 24)] = v204;
    outlined init with copy of Prompt.Turn(v201, v263, type metadata accessor for Prompt.Attachment);
    v206 = v200[3];
    if (v203 >= v206 >> 1)
    {
      v200 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v206 > 1, v203 + 1, 1, v200);
    }

    v69 = MEMORY[0x1E69E7CC0];
    outlined destroy of Prompt.ResponseFormat(v260, type metadata accessor for Prompt.Attachment);
    v200[2] = v203 + 1;
    outlined init with take of Prompt.ResponseFormat(v263, v200 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v203, type metadata accessor for Prompt.Attachment);
    v287 = v200;
    specialized static Prompt.+= infix(_:_:)(&v288, &v284);
    v141 = v271;
    v142 = v149;
    v143 = v279;
    v144 = v280;
    v145 = v281;
    v146 = v278;
    v147 = v154;
LABEL_72:
    outlined consume of Prompt.Turn.Segment(v141, v142, v143, v144, v145, v146, v147);

LABEL_73:
    v140 += 56;
    if (!--v139)
    {
      goto LABEL_97;
    }
  }

  v277 = *v140;
  v157 = v270;
  v280 = v151;
  v281 = v152;
  v279 = v150;
  if (v156 == 2)
  {
    v278 = v153;
    v284 = 0;
    v285 = 0xE000000000000000;
    v174 = v148;
    v175 = v148;
    MEMORY[0x1AC57C060](0);
    v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
    v286 = v176;
    v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
    v287 = v177;
    *v157 = v175;
    swift_storeEnumTagMultiPayload();
    v178 = v175;
    result = String.count.getter();
    v179 = *(v176 + 16);
    v180 = v177[2];
    v169 = __OFADD__(v179, v180);
    v181 = v179 + v180;
    if (v169)
    {
      goto LABEL_106;
    }

    v182 = v273;
    *(v157 + *(v273 + 20)) = result;
    *(v157 + *(v182 + 24)) = v181;
    outlined init with copy of Prompt.Turn(v157, v264, type metadata accessor for Prompt.Attachment);
    v183 = v177[3];
    if (v180 >= v183 >> 1)
    {
      v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v183 > 1, v180 + 1, 1, v177);
    }

    v69 = MEMORY[0x1E69E7CC0];
    outlined destroy of Prompt.ResponseFormat(v157, type metadata accessor for Prompt.Attachment);
    v177[2] = v180 + 1;
    outlined init with take of Prompt.ResponseFormat(v264, v177 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v180, type metadata accessor for Prompt.Attachment);
    v287 = v177;
    specialized static Prompt.+= infix(_:_:)(&v288, &v284);
    v141 = v174;
    v142 = v149;
    v143 = v279;
    v144 = v280;
    v145 = v281;
    v146 = v278;
    v147 = v277;
    goto LABEL_72;
  }

  if (v156 != 3)
  {
    v278 = v153;
    v284 = 0;
    v285 = 0xE000000000000000;

    MEMORY[0x1AC57C060](0);
    v184 = v148;
    v185 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
    v286 = v185;
    v186 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
    v287 = v186;
    v187 = v262;
    *v262 = v184;
    v187[1] = v149;
    swift_storeEnumTagMultiPayload();
    v188 = v184;

    result = String.count.getter();
    v189 = *(v185 + 16);
    v190 = v186[2];
    v169 = __OFADD__(v189, v190);
    v191 = v189 + v190;
    if (v169)
    {
      goto LABEL_107;
    }

    v192 = v273;
    *(v187 + *(v273 + 20)) = result;
    *(v187 + *(v192 + 24)) = v191;
    outlined init with copy of Prompt.Turn(v187, v266, type metadata accessor for Prompt.Attachment);
    v194 = v186[2];
    v193 = v186[3];
    if (v194 >= v193 >> 1)
    {
      v186 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v193 > 1, v194 + 1, 1, v186);
    }

    v69 = MEMORY[0x1E69E7CC0];
    v195 = v277;
    outlined destroy of Prompt.ResponseFormat(v262, type metadata accessor for Prompt.Attachment);
    v186[2] = v194 + 1;
    outlined init with take of Prompt.ResponseFormat(v266, v186 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v194, type metadata accessor for Prompt.Attachment);
    v287 = v186;
    specialized static Prompt.+= infix(_:_:)(&v288, &v284);
    v141 = v188;
    v142 = v149;
    v143 = v279;
    v144 = v280;
    v145 = v281;
    v146 = v278;
    v147 = v195;
    goto LABEL_72;
  }

  v158 = v148;
  v159 = v150 & 0xCFFFFFFFFFFFFFFFLL;
  v284 = 0;
  v285 = 0xE000000000000000;
  outlined copy of Data._Representation(v149, v150 & 0xCFFFFFFFFFFFFFFFLL);

  v160 = v153;
  MEMORY[0x1AC57C060](0);
  v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
  v286 = v161;
  v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v69);
  v287 = v162;
  v271 = v158;
  v163 = v158 & 1;
  v164 = v261;
  *v261 = v163;
  v164[1] = v149;
  v164[2] = v159;
  v165 = v281;
  v164[3] = v280;
  v164[4] = v165;
  v164[5] = v160;
  swift_storeEnumTagMultiPayload();
  v278 = v149;
  outlined copy of Data._Representation(v149, v159);

  result = String.count.getter();
  v167 = *(v161 + 16);
  v168 = v162[2];
  v169 = __OFADD__(v167, v168);
  v170 = v167 + v168;
  if (!v169)
  {
    v171 = v273;
    *(v164 + *(v273 + 20)) = result;
    *(v164 + *(v171 + 24)) = v170;
    outlined init with copy of Prompt.Turn(v164, v265, type metadata accessor for Prompt.Attachment);
    v172 = v162[3];
    if (v168 >= v172 >> 1)
    {
      v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v172 > 1, v168 + 1, 1, v162);
    }

    v69 = MEMORY[0x1E69E7CC0];
    v173 = v277;
    outlined destroy of Prompt.ResponseFormat(v261, type metadata accessor for Prompt.Attachment);
    v162[2] = v168 + 1;
    outlined init with take of Prompt.ResponseFormat(v265, v162 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v168, type metadata accessor for Prompt.Attachment);
    v287 = v162;
    specialized static Prompt.+= infix(_:_:)(&v288, &v284);
    v141 = v271;
    v142 = v278;
    v143 = v279;
    v144 = v280;
    v145 = v281;
    v146 = v160;
    v147 = v173;
    goto LABEL_72;
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}

void *Prompt.turns()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v271 = &v265 - v4;
  v269 = type metadata accessor for Prompt.Turn(0);
  v268 = *(v269 - 8);
  v5 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v272 = &v265 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v266 = &v265 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v267 = &v265 - v10;
  v11 = type metadata accessor for Prompt.AttachmentContent(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v274 = (&v265 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v296 = (&v265 - v15);
  v304 = type metadata accessor for Prompt.Attachment(0);
  v277 = *(v304 - 8);
  v16 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v273 = &v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v303 = &v265 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v292 = &v265 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v270 = &v265 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v293 = &v265 - v26;
  v276 = type metadata accessor for TurnSpan #1 in Prompt.turns()(0);
  v283 = *(v276 - 8);
  v27 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v276);
  v282 = &v265 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v290 = &v265 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v295 = (&v265 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v294 = &v265 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMd, &_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v265 - v37;
  v306 = type metadata accessor for TurnDelimiter #1 in Prompt.turns()(0);
  v39 = *(v306 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v42 = &v265 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v265 - v44;
  v46 = type metadata accessor for Prompt.Delimiter(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = (&v265 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v265 - v52;
  v54 = *v1;
  v300 = v1[1];
  v301 = v54;
  v55 = v1[2];
  v280 = v1[3];
  v56 = *(v55 + 16);
  v305 = v11;
  v297 = v39;
  if (v56)
  {
    v57 = v55 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v302 = *(v51 + 72);
    v58 = MEMORY[0x1E69E7CC0];
    v299 = v45;
    do
    {
      outlined init with copy of Prompt.Turn(v57, v53, type metadata accessor for Prompt.Delimiter);
      outlined init with copy of Prompt.Turn(v53, v49, type metadata accessor for Prompt.Delimiter);
      init(delimiter:) in TurnDelimiter #1 in Prompt.turns()(v49, v38);
      outlined destroy of Prompt.ResponseFormat(v53, type metadata accessor for Prompt.Delimiter);
      if ((*(v39 + 48))(v38, 1, v306) == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v38, &_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMd, &_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMR);
      }

      else
      {
        outlined init with take of Prompt.ResponseFormat(v38, v45, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v60 = v58[2];
        v59 = v58[3];
        if (v60 >= v59 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1, v58);
        }

        v58[2] = v60 + 1;
        v61 = v58 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v60;
        v45 = v299;
        outlined init with take of Prompt.ResponseFormat(v299, v61, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
      }

      v57 += v302;
      --v56;
    }

    while (v56);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  v62 = v58[2];
  if (v62)
  {
    v298 = 0;
    v63 = 0;
    v64 = 0;
    v302 = 0;
    LODWORD(v299) = 0;
    v65 = v58 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
    v66 = MEMORY[0x1E69E7CC0];
    v67 = *(v297 + 72);
    v68 = 1;
    v297 = v67;
    v291 = v58;
    while (1)
    {
      outlined init with copy of Prompt.Turn(v65, v42, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
      if (v68 == 1)
      {
        v69 = *v42;
        if (v69 != 4)
        {
          v63 = *(v42 + 3);
          v68 = *(v42 + 4);
          v64 = *(v42 + 1);
          v302 = *(v42 + 2);
          LODWORD(v299) = v42[2];

          outlined destroy of Prompt.ResponseFormat(v42, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
          v298 = v69;
          goto LABEL_15;
        }
      }

      else if (v42[1] == 1)
      {
        v70 = v66;
        v71 = *(v42 + 1);
        v72 = *(v42 + 2);
        v73 = v294;
        outlined init with copy of (String, Any)(&v42[*(v306 + 40)], v294 + *(v276 + 44), &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        *v73 = v298;
        *(v73 + 8) = v63;
        *(v73 + 16) = v68;
        *(v73 + 24) = v64;
        *(v73 + 32) = v71;
        *(v73 + 40) = v302;
        *(v73 + 48) = v72;
        v66 = v70;
        *(v73 + 56) = v299 & 1;
        outlined init with copy of Prompt.Turn(v73, v295, type metadata accessor for TurnSpan #1 in Prompt.turns());
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
        }

        v75 = v66[2];
        v74 = v66[3];
        if (v75 >= v74 >> 1)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v74 > 1, v75 + 1, 1, v66);
        }

        outlined destroy of Prompt.ResponseFormat(v294, type metadata accessor for TurnSpan #1 in Prompt.turns());
        outlined destroy of Prompt.ResponseFormat(v42, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
        v66[2] = v75 + 1;
        outlined init with take of Prompt.ResponseFormat(v295, v66 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v75, type metadata accessor for TurnSpan #1 in Prompt.turns());
        v298 = 0;
        v63 = 0;
        v64 = 0;
        v302 = 0;
        LODWORD(v299) = 0;
        v68 = 1;
        v67 = v297;
        goto LABEL_15;
      }

      outlined destroy of Prompt.ResponseFormat(v42, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
LABEL_15:
      v65 += v67;
      if (!--v62)
      {

        outlined consume of PartialTurnSpan #1 in Prompt.turns()?(v298, v63, v68);
        goto LABEL_27;
      }
    }
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v76 = v66[2];
  v77 = v296;
  v78 = v303;
  v79 = v292;
  v80 = v282;
  if (!v76)
  {
    v81 = String.count.getter();
    v82 = *(v276 + 44);
    v83 = type metadata accessor for Locale();
    v84 = v290;
    (*(*(v83 - 8) + 56))(v290 + v82, 1, 1, v83);
    *v84 = 2;
    *(v84 + 8) = 0;
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    *(v84 + 32) = v81;
    *(v84 + 40) = xmmword_1A8FD1F50;
    *(v84 + 56) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_29;
  }

LABEL_32:
  if (v76)
  {
    v87 = 0;
    v287 = 0;
    v265 = xmmword_1A8FD1F70;
    *(&v88 + 1) = 0x2000000000000000;
    v288 = xmmword_1A8FD1F60;
    *&v88 = 136315138;
    v284 = v88;
    v275 = MEMORY[0x1E69E7CC0];
    v281 = v66;
    v279 = v76;
    while (1)
    {
      while (1)
      {
        if (v87 >= v66[2])
        {
          goto LABEL_135;
        }

        v89 = v66 + ((*(v283 + 80) + 32) & ~*(v283 + 80));
        v90 = *(v283 + 72);
        v285 = v87;
        v91 = outlined init with copy of Prompt.Turn(&v89[v90 * v87], v80, type metadata accessor for TurnSpan #1 in Prompt.turns());
        MEMORY[0x1EEE9AC00](v91);
        *(&v265 - 2) = v80;
        v92 = v280;

        v93 = v92;
        v94 = v287;
        specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in Prompt.turns(), (&v265 - 2), v93);
        v307 = v95;

        specialized MutableCollection<>.sort(by:)(&v307);
        v287 = v94;
        if (v94)
        {

          __break(1u);
          return result;
        }

        v96 = v307;
        v97 = *(v80 + 3);
        v98 = type metadata accessor for Prompt.ResponseFormat(0);
        v99 = *(v98 - 8);
        v100 = *(v99 + 56);
        v290 = v98;
        v291 = v100;
        v289 = v99 + 56;
        (v100)(v293, 1, 1);
        v66 = v96[2];
        v286 = v96;
        v278 = v66;
        if (v66)
        {
          v80 = v96 + ((*(v277 + 80) + 32) & ~*(v277 + 80));
          v306 = *(v277 + 72);
          v302 = v97;
          v101 = v97;
          v102 = MEMORY[0x1E69E7CC0];
          v297 = MEMORY[0x1E69E7CC0];
          v298 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v104 = v101;
            outlined init with copy of Prompt.Turn(v80, v79, type metadata accessor for Prompt.Attachment);
            v101 = *(v79 + *(v304 + 20));
            if (v104 != v101)
            {
              v105 = String.index(_:offsetBy:)();
              if (String.index(_:offsetBy:)() >> 14 < v105 >> 14)
              {
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
LABEL_29:
                v86 = v66[2];
                v85 = v66[3];
                if (v86 >= v85 >> 1)
                {
                  v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85 > 1, v86 + 1, 1, v66);
                }

                v66[2] = v86 + 1;
                outlined init with take of Prompt.ResponseFormat(v290, v66 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v86, type metadata accessor for TurnSpan #1 in Prompt.turns());
                v76 = v66[2];
                goto LABEL_32;
              }

              v106 = String.subscript.getter();
              v107 = MEMORY[0x1AC57C040](v106);
              v109 = v108;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 2) + 1, 1, v102);
              }

              v111 = *(v102 + 2);
              v110 = *(v102 + 3);
              v112 = v102;
              if (v111 >= v110 >> 1)
              {
                v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v102);
              }

              *(v112 + 2) = v111 + 1;
              v102 = v112;
              v113 = &v112[56 * v111];
              *(v113 + 4) = v107;
              *(v113 + 5) = v109;
              *(v113 + 3) = 0u;
              *(v113 + 4) = 0u;
              v113[80] = 0;
              v78 = v303;
            }

            outlined init with copy of Prompt.Turn(v79, v77, type metadata accessor for Prompt.AttachmentContent);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload <= 2)
            {
              if (EnumCaseMultiPayload)
              {
                if (EnumCaseMultiPayload != 1)
                {
                  v148 = *v77;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 2) + 1, 1, v102);
                  }

                  v149 = v102;
                  v150 = *(v102 + 2);
                  v151 = v149;
                  v152 = *(v149 + 3);
                  if (v150 >= v152 >> 1)
                  {
                    v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v150 + 1, 1, v151);
                  }

                  outlined destroy of Prompt.ResponseFormat(v79, type metadata accessor for Prompt.Attachment);
                  *(v151 + 2) = v150 + 1;
                  v153 = &v151[56 * v150];
                  v102 = v151;
                  *(v153 + 4) = v148;
                  *(v153 + 40) = v288;
                  *(v153 + 8) = 0;
                  *(v153 + 9) = 0;
                  *(v153 + 7) = 0;
                  v153[80] = 0;
                  goto LABEL_41;
                }

                v128 = *v77;
                v130 = v77[1];
                v129 = v77[2];
                v131 = v77;
                v132 = v77[3];
                v133 = v77[4];
                v294 = v131[5];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v299 = v132;
                v295 = v133;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 2) + 1, 1, v102);
                }

                v135 = v102;
                v136 = *(v102 + 2);
                v137 = v135;
                v138 = *(v135 + 3);
                if (v136 >= v138 >> 1)
                {
                  v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v136 + 1, 1, v137);
                }

                outlined destroy of Prompt.ResponseFormat(v79, type metadata accessor for Prompt.Attachment);
                *(v137 + 2) = v136 + 1;
                v103 = &v137[56 * v136];
                v102 = v137;
                *(v103 + 4) = v128;
                *(v103 + 5) = v130;
                v139 = v299;
                *(v103 + 6) = v129 | 0x3000000000000000;
                *(v103 + 7) = v139;
                v140 = v294;
                *(v103 + 8) = v295;
                *(v103 + 9) = v140;
              }

              else
              {
                v141 = *v77;
                v142 = v102;
                v143 = v77[1];
                v144 = v77[2];
                v145 = v142;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 2) + 1, 1, v145);
                }

                v147 = *(v145 + 2);
                v146 = *(v145 + 3);
                if (v147 >= v146 >> 1)
                {
                  v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v146 > 1), v147 + 1, 1, v145);
                }

                outlined destroy of Prompt.ResponseFormat(v79, type metadata accessor for Prompt.Attachment);
                *(v145 + 2) = v147 + 1;
                v103 = &v145[56 * v147];
                *(v103 + 4) = v141;
                *(v103 + 5) = v143;
                v102 = v145;
                *(v103 + 6) = v144 | 0x1000000000000000;
                *(v103 + 7) = 0;
                *(v103 + 8) = 0;
                *(v103 + 9) = 0;
              }

              v103[80] = 0;
              v77 = v296;
              v78 = v303;
            }

            else if (EnumCaseMultiPayload > 4)
            {
              if (EnumCaseMultiPayload == 5)
              {
                outlined destroy of Prompt.ResponseFormat(v79, type metadata accessor for Prompt.Attachment);

                v297 = *v77;
              }

              else
              {
                outlined destroy of Prompt.ResponseFormat(v79, type metadata accessor for Prompt.Attachment);

                v298 = *v77;
              }
            }

            else if (EnumCaseMultiPayload == 3)
            {
              v299 = v102;
              if (one-time initialization token for prompt != -1)
              {
                swift_once();
              }

              v115 = type metadata accessor for Logger();
              __swift_project_value_buffer(v115, static Log.prompt);
              outlined init with copy of Prompt.Turn(v79, v78, type metadata accessor for Prompt.Attachment);
              v116 = v79;
              v117 = v78;
              v118 = Logger.logObject.getter();
              v119 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                v307 = v121;
                *v120 = v284;
                v122 = Prompt.AttachmentContent.description.getter();
                v124 = v123;
                v295 = type metadata accessor for Prompt.Attachment;
                outlined destroy of Prompt.ResponseFormat(v117, type metadata accessor for Prompt.Attachment);
                v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v307);
                v77 = v296;

                *(v120 + 4) = v125;
                _os_log_impl(&dword_1A8E85000, v118, v119, "Unknown prompt attachment type: %s", v120, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v121);
                MEMORY[0x1AC57DBF0](v121, -1, -1);
                MEMORY[0x1AC57DBF0](v120, -1, -1);

                v126 = v292;
                v127 = v295;
              }

              else
              {

                outlined destroy of Prompt.ResponseFormat(v117, type metadata accessor for Prompt.Attachment);
                v126 = v116;
                v127 = type metadata accessor for Prompt.Attachment;
              }

              outlined destroy of Prompt.ResponseFormat(v126, v127);
              v78 = v117;
              v102 = v299;
              outlined destroy of Prompt.ResponseFormat(v77, type metadata accessor for Prompt.AttachmentContent);
              v79 = v292;
            }

            else
            {
              outlined destroy of Prompt.ResponseFormat(v79, type metadata accessor for Prompt.Attachment);
              v154 = v293;
              outlined destroy of [Regex2BNF.CharacterPredicate](v293, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
              outlined init with take of Prompt.ResponseFormat(v77, v154, type metadata accessor for Prompt.ResponseFormat);
              v291(v154, 0, 1, v290);
            }

LABEL_41:
            v80 += v306;
            v66 = (v66 - 1);
            if (!v66)
            {
              goto LABEL_79;
            }
          }
        }

        v101 = v97;
        v102 = MEMORY[0x1E69E7CC0];
        v297 = MEMORY[0x1E69E7CC0];
        v298 = MEMORY[0x1E69E7CC0];
LABEL_79:
        v80 = v282;
        if (v101 == *(v282 + 4))
        {
          v299 = v102;
          v66 = v281;
        }

        else
        {
          v155 = String.index(_:offsetBy:)();
          v156 = String.index(_:offsetBy:)();
          v66 = v281;
          if (v156 >> 14 < v155 >> 14)
          {
            goto LABEL_136;
          }

          v157 = String.subscript.getter();
          v158 = MEMORY[0x1AC57C040](v157);
          v160 = v159;

          v161 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 2) + 1, 1, v102);
          }

          v163 = *(v161 + 2);
          v162 = *(v161 + 3);
          v299 = v161;
          if (v163 >= v162 >> 1)
          {
            v299 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v299);
          }

          v164 = v299;
          *(v299 + 2) = v163 + 1;
          v165 = &v164[56 * v163];
          *(v165 + 4) = v158;
          *(v165 + 5) = v160;
          *(v165 + 3) = 0u;
          *(v165 + 4) = 0u;
          v165[80] = 0;
        }

        v87 = v285 + 1;
        v166 = *v80;
        if (v166 == 3)
        {
          break;
        }

        if (!*v80)
        {

          v186 = v271;
          v187 = v269;
          v188 = v270;
          if (v80[56] != 1)
          {

            outlined init with copy of (String, Any)(&v80[*(v276 + 44)], v186, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v231 = v290;
            v230 = v291;
            v291(v188, 1, 1, v290);
            v232 = v188;
            v233 = v187;
            v234 = v187[5];
            v235 = v267;
            v230(v267 + v234, 1, 1, v231);
            v236 = v233[7];
            v237 = type metadata accessor for Locale();
            (*(*(v237 - 8) + 56))(&v235[v236], 1, 1, v237);
            v238 = &v235[v233[11]];
            *(v238 + 4) = 0;
            *v238 = 0u;
            *(v238 + 1) = 0u;
            *v235 = 0;
            *&v235[v233[8]] = v299;
            v210 = v235;
            *&v235[v233[6]] = v297;
            *&v235[v233[10]] = MEMORY[0x1E69E7CC0];
            v239 = *(v238 + 2);
            v240 = *(v238 + 3);
            v241 = *(v238 + 4);
            outlined consume of Prompt.ToolCallResult?(*v238, *(v238 + 1));
            *(v238 + 4) = 0;
            *v238 = 0u;
            *(v238 + 1) = 0u;
            v235[v233[9]] = 0;
            outlined assign with take of Prompt.ResponseFormat?(v271, &v235[v236], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v215 = &v235[v234];
LABEL_122:
            v216 = v232;
            goto LABEL_123;
          }

          v189 = MEMORY[0x1E69E7CC0];
          v79 = v278;
          if (!v278)
          {
LABEL_121:

            outlined init with copy of (String, Any)(&v80[*(v276 + 44)], v271, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v232 = v270;
            v243 = v290;
            v242 = v291;
            v291(v270, 1, 1, v290);
            v244 = v269;
            v245 = *(v269 + 20);
            v246 = v267;
            v242(v267 + v245, 1, 1, v243);
            v247 = v244[7];
            v248 = type metadata accessor for Locale();
            (*(*(v248 - 8) + 56))(&v246[v247], 1, 1, v248);
            v249 = &v246[v244[11]];
            *(v249 + 4) = 0;
            *v249 = 0u;
            *(v249 + 1) = 0u;
            *v246 = 0;
            *&v246[v244[8]] = v299;
            v210 = v246;
            *&v246[v244[6]] = v189;
            *&v246[v244[10]] = MEMORY[0x1E69E7CC0];
            v250 = *(v249 + 2);
            v251 = *(v249 + 3);
            v252 = *(v249 + 4);
            outlined consume of Prompt.ToolCallResult?(*v249, *(v249 + 1));
            *(v249 + 4) = 0;
            *v249 = 0u;
            *(v249 + 1) = 0u;
            v246[v244[9]] = 1;
            outlined assign with take of Prompt.ResponseFormat?(v271, &v246[v247], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v215 = &v246[v245];
            goto LABEL_122;
          }

          v190 = v286 + ((*(v277 + 80) + 32) & ~*(v277 + 80));
          v306 = *(v277 + 72);
          while (2)
          {
            v191 = v273;
            outlined init with copy of Prompt.Turn(v190, v273, type metadata accessor for Prompt.Attachment);
            v192 = v274;
            outlined init with copy of Prompt.Turn(v191, v274, type metadata accessor for Prompt.AttachmentContent);
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              outlined destroy of Prompt.ResponseFormat(v191, type metadata accessor for Prompt.Attachment);
              v78 = *v192;
            }

            else
            {
              outlined destroy of Prompt.ResponseFormat(v192, type metadata accessor for Prompt.AttachmentContent);
              outlined destroy of Prompt.ResponseFormat(v191, type metadata accessor for Prompt.Attachment);
              v78 = MEMORY[0x1E69E7CC0];
            }

            v193 = *(v78 + 16);
            v77 = v189[2];
            v194 = (v77 + v193);
            if (__OFADD__(v77, v193))
            {
              goto LABEL_137;
            }

            v195 = swift_isUniquelyReferenced_nonNull_native();
            if (v195 && v194 <= v189[3] >> 1)
            {
              if (!*(v78 + 16))
              {
LABEL_102:

                v77 = &_s10Foundation6LocaleVSgMd;
                if (v193)
                {
                  goto LABEL_138;
                }

LABEL_103:
                v190 += v306;
                if (!--v79)
                {
                  goto LABEL_121;
                }

                continue;
              }
            }

            else
            {
              if (v77 <= v194)
              {
                v196 = v77 + v193;
              }

              else
              {
                v196 = v77;
              }

              v189 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v195, v196, 1, v189);
              if (!*(v78 + 16))
              {
                goto LABEL_102;
              }
            }

            break;
          }

          v77 = v189[2];
          v197 = (v189[3] >> 1) - v77;
          v198 = *(type metadata accessor for Tool() - 8);
          if (v197 < v193)
          {
            goto LABEL_139;
          }

          v199 = (*(v198 + 80) + 32) & ~*(v198 + 80);
          v200 = *(v198 + 72);
          swift_arrayInitWithCopy();

          v77 = &_s10Foundation6LocaleVSgMd;
          if (v193)
          {
            v201 = v189[2];
            v202 = __OFADD__(v201, v193);
            v203 = v201 + v193;
            if (v202)
            {
              goto LABEL_140;
            }

            v189[2] = v203;
          }

          goto LABEL_103;
        }

        v172 = v271;
        v173 = v269;
        v174 = v270;
        v175 = v298;
        if (v166 == 1)
        {

          v176 = v266;
          if (*(v175 + 16))
          {

            v177 = &v282[*(v276 + 44)];
            v298 = v175;
            outlined init with copy of (String, Any)(v177, v172, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v179 = v290;
            v178 = v291;
            v291(v174, 1, 1, v290);
            v180 = &v176[v173[5]];
            v178(v180, 1, 1, v179);
            v181 = &v176[v173[7]];
            v182 = type metadata accessor for Locale();
            (*(*(v182 - 8) + 56))(v181, 1, 1, v182);
            v183 = v298;
            v184 = MEMORY[0x1E69E7CC0];
            v185 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v253 = type metadata accessor for Locale();
            v254 = *(v253 - 8);
            v302 = *(v254 + 56);
            v306 = v254 + 56;
            (v302)(v172, 1, 1, v253);
            v256 = v290;
            v255 = v291;
            v291(v174, 1, 1, v290);
            v180 = &v176[v173[5]];
            v255(v180, 1, 1, v256);
            v181 = &v176[v173[7]];
            (v302)(v181, 1, 1, v253);
            v184 = MEMORY[0x1E69E7CC0];
            v183 = MEMORY[0x1E69E7CC0];
            v185 = v299;
          }

          v257 = &v176[v173[11]];
          *(v257 + 4) = 0;
          *v257 = 0u;
          *(v257 + 1) = 0u;
          *v176 = 1;
          *&v176[v173[8]] = v185;
          *&v176[v173[6]] = v184;
          *&v176[v173[10]] = v183;
          v258 = *(v257 + 2);
          v259 = *(v257 + 3);
          v260 = *(v257 + 4);
          outlined consume of Prompt.ToolCallResult?(*v257, *(v257 + 1));
          *(v257 + 4) = 0;
          *v257 = 0u;
          *(v257 + 1) = 0u;
          v176[v173[9]] = 0;
          outlined assign with take of Prompt.ResponseFormat?(v271, v181, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          outlined assign with take of Prompt.ResponseFormat?(v174, v180, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
          v210 = v267;
          outlined init with take of Prompt.ResponseFormat(v176, v267, type metadata accessor for Prompt.Turn);
          goto LABEL_126;
        }

        outlined init with copy of (String, Any)(&v80[*(v276 + 44)], v172, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        outlined init with copy of (String, Any)(v293, v174, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
        v204 = v173[5];
        v205 = v267;
        v291(v267 + v204, 1, 1, v290);
        v206 = v173[7];
        v207 = type metadata accessor for Locale();
        (*(*(v207 - 8) + 56))(&v205[v206], 1, 1, v207);
        v208 = &v205[v173[11]];
        *(v208 + 4) = 0;
        *v208 = 0u;
        *(v208 + 1) = 0u;
        *v205 = 2;
        *&v205[v173[8]] = v299;
        v209 = v174;
        v210 = v205;
        v211 = MEMORY[0x1E69E7CC0];
        *&v205[v173[6]] = MEMORY[0x1E69E7CC0];
        *&v205[v173[10]] = v211;
        v212 = *(v208 + 2);
        v213 = *(v208 + 3);
        v214 = *(v208 + 4);
        outlined consume of Prompt.ToolCallResult?(*v208, *(v208 + 1));
        *(v208 + 4) = 0;
        *v208 = 0u;
        *(v208 + 1) = 0u;
        v205[v173[9]] = 0;
        outlined assign with take of Prompt.ResponseFormat?(v172, &v205[v206], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v215 = &v205[v204];
        v216 = v209;
LABEL_123:
        outlined assign with take of Prompt.ResponseFormat?(v216, v215, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
LABEL_126:
        outlined init with copy of Prompt.Turn(v210, v272, type metadata accessor for Prompt.Turn);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v275 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v275[2] + 1, 1, v275);
        }

        v77 = v296;
        v78 = v303;
        v80 = v282;
        v262 = v275[2];
        v261 = v275[3];
        if (v262 >= v261 >> 1)
        {
          v275 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v261 > 1, v262 + 1, 1, v275);
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v293, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
        v263 = v275;
        v275[2] = v262 + 1;
        outlined init with take of Prompt.ResponseFormat(v272, v263 + ((*(v268 + 80) + 32) & ~*(v268 + 80)) + *(v268 + 72) * v262, type metadata accessor for Prompt.Turn);
        outlined destroy of Prompt.ResponseFormat(v210, type metadata accessor for Prompt.Turn);
        outlined destroy of Prompt.ResponseFormat(v80, type metadata accessor for TurnSpan #1 in Prompt.turns());
        v79 = v292;
        if (v87 == v279)
        {
          goto LABEL_133;
        }
      }

      v167 = *(v80 + 2);
      if (v167)
      {
        v306 = *(v80 + 1);
        outlined init with copy of (String, Any)(&v80[*(v276 + 44)], v271, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v218 = v290;
        v217 = v291;
        v291(v270, 1, 1, v290);
        v219 = v269;
        v302 = *(v269 + 20);
        v220 = v267;
        v217(&v302[v267], 1, 1, v218);
        v221 = v219[7];
        v298 = v221;
        v222 = type metadata accessor for Locale();
        (*(*(v222 - 8) + 56))(&v220[v221], 1, 1, v222);
        v223 = &v220[v219[11]];
        *(v223 + 4) = 0;
        *v223 = 0u;
        *(v223 + 1) = 0u;
        *v220 = 3;
        v224 = MEMORY[0x1E69E7CC0];
        *&v220[v219[8]] = MEMORY[0x1E69E7CC0];
        *&v220[v219[6]] = v224;
        *&v220[v219[10]] = v224;
        v225 = *v223;
        v226 = *(v223 + 1);
        v228 = *(v223 + 2);
        v227 = *(v223 + 3);
        v229 = *(v223 + 4);

        outlined consume of Prompt.ToolCallResult?(v225, v226);
        *v223 = v306;
        *(v223 + 1) = v167;
        *(v223 + 1) = v265;
        *(v223 + 4) = v299;
        v210 = v220;
        v66 = v281;
        *(v210 + v219[9]) = 0;
        outlined assign with take of Prompt.ResponseFormat?(v271, v210 + v298, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v215 = &v302[v210];
        v216 = v270;
        goto LABEL_123;
      }

      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v168 = type metadata accessor for Logger();
      __swift_project_value_buffer(v168, static Log.prompt);
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 0;
        _os_log_impl(&dword_1A8E85000, v169, v170, "Role was tool, but no tool result was found. Prompt is malformed.", v171, 2u);
        MEMORY[0x1AC57DBF0](v171, -1, -1);
      }

      outlined destroy of [Regex2BNF.CharacterPredicate](v293, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      outlined destroy of Prompt.ResponseFormat(v80, type metadata accessor for TurnSpan #1 in Prompt.turns());
      if (v87 == v279)
      {
        goto LABEL_133;
      }
    }
  }

  v275 = MEMORY[0x1E69E7CC0];
LABEL_133:

  return v275;
}

uint64_t init(delimiter:) in TurnDelimiter #1 in Prompt.turns()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for TurnDelimiter #1 in Prompt.turns()(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 4;
  v9 = *(v8 + 40);
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  v11 = type metadata accessor for Prompt.Delimiter(0);
  v12 = *(a1 + *(v11 + 24));
  *(v7 + 1) = *(a1 + *(v11 + 20));
  *(v7 + 2) = v12;
  v14 = *a1;
  v13 = a1[1];
  if (one-time initialization token for turnEnd != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Prompt.SpecialToken(0);
  v16 = __swift_project_value_buffer(v15, static Prompt.SpecialToken.Chat.turnEnd);
  if (v14 == *v16 && v13 == v16[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v7[1] = v17 & 1;
  if (one-time initialization token for defaultInstructions != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v15, static Prompt.SpecialToken.Chat.defaultInstructions);
  v7[2] = specialized static Prompt.SpecialToken.== infix(_:_:)(a1, v18) & 1;
  v19 = (a1 + *(v15 + 24));
  v20 = v19[1];
  *(v7 + 3) = *v19;
  *(v7 + 4) = v20;
  v21 = *(v15 + 20);

  outlined assign with copy of Locale?(a1 + v21, &v7[v9]);
  v22 = one-time initialization token for instructions;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v15, static Prompt.SpecialToken.Chat.instructions);
  if (*v23 == v14 && v23[1] == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || *v18 == v14 && v18[1] == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);

    *v7 = 0;
  }

  else
  {
    if (one-time initialization token for user != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v15, static Prompt.SpecialToken.Chat.user);
    if (*v26 == v14 && v26[1] == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);

      v27 = 2;
    }

    else
    {
      if (one-time initialization token for response != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v15, static Prompt.SpecialToken.Chat.response);
      if (*v28 == v14 && v28[1] == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);

        v27 = 1;
      }

      else
      {
        if (one-time initialization token for tool != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v15, static Prompt.SpecialToken.Chat.tool);
        if (*v29 == v14 && v29[1] == v13)
        {

          outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);
          if ((v30 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v27 = 3;
      }
    }

    *v7 = v27;
  }

LABEL_18:
  v24 = v32;
  outlined init with copy of Prompt.Turn(v7, v32, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
  (*(v4 + 56))(v24, 0, 1, v3);
  return outlined destroy of Prompt.ResponseFormat(v7, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
}

uint64_t outlined copy of Prompt.ToolCallResult?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of Prompt.ToolCallResult?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v113 = a1;
  v127 = type metadata accessor for Prompt.Attachment(0);
  v9 = *(v127 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v116 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v108 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v108 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = a4;
LABEL_99:
      v128 = v103;
      a4 = *(v103 + 2);
      if (a4 >= 2)
      {
        v104 = v9;
        while (*a3)
        {
          v105 = *&v103[16 * a4];
          v106 = v103;
          v9 = *&v103[16 * a4 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v104 + 72) * v105, *a3 + *(v104 + 72) * *&v103[16 * a4 + 16], *a3 + *(v104 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v105)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
          }

          if (a4 - 2 >= *(v106 + 2))
          {
            goto LABEL_124;
          }

          v107 = &v106[16 * a4];
          *v107 = v105;
          *(v107 + 1) = v9;
          v128 = v106;
          specialized Array.remove(at:)(a4 - 1);
          v103 = v128;
          a4 = *(v128 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v103 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    goto LABEL_99;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v112 = a4;
  v114 = a3;
  v109 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v117 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v110 = v6;
      v23 = *a3;
      v24 = *(v9 + 72);
      v5 = *a3 + v24 * v22;
      v25 = v125;
      outlined init with copy of Prompt.Turn(v5, v125, type metadata accessor for Prompt.Attachment);
      v26 = v126;
      outlined init with copy of Prompt.Turn(v23 + v24 * v21, v126, type metadata accessor for Prompt.Attachment);
      v27 = *(v127 + 24);
      v28 = *(v25 + v27);
      v120 = *(v26 + v27);
      v121 = v28;
      outlined destroy of Prompt.ResponseFormat(v26, type metadata accessor for Prompt.Attachment);
      outlined destroy of Prompt.ResponseFormat(v25, type metadata accessor for Prompt.Attachment);
      v111 = v21;
      v29 = v21 + 2;
      v122 = v24;
      v30 = v23 + v24 * v29;
      while (v18 != v29)
      {
        LODWORD(v123) = v121 < v120;
        v31 = v125;
        outlined init with copy of Prompt.Turn(v30, v125, type metadata accessor for Prompt.Attachment);
        v32 = v126;
        outlined init with copy of Prompt.Turn(v5, v126, type metadata accessor for Prompt.Attachment);
        v33 = *(v127 + 24);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        outlined destroy of Prompt.ResponseFormat(v32, type metadata accessor for Prompt.Attachment);
        outlined destroy of Prompt.ResponseFormat(v31, type metadata accessor for Prompt.Attachment);
        ++v29;
        v30 += v122;
        v5 += v122;
        if (((v123 ^ (v34 >= v35)) & 1) == 0)
        {
          v18 = v29 - 1;
          break;
        }
      }

      a3 = v114;
      v9 = v109;
      v6 = v110;
      v21 = v111;
      a4 = v112;
      if (v121 < v120)
      {
        if (v18 < v111)
        {
          goto LABEL_127;
        }

        if (v111 < v18)
        {
          v36 = v122 * (v18 - 1);
          v37 = v18 * v122;
          v121 = v18;
          v38 = v18;
          v39 = v111;
          v40 = v111 * v122;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v114;
              if (!*v114)
              {
                goto LABEL_133;
              }

              v5 = v41 + v40;
              outlined init with take of Prompt.ResponseFormat(v41 + v40, v116, type metadata accessor for Prompt.Attachment);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of Prompt.ResponseFormat(v116, v41 + v36, type metadata accessor for Prompt.Attachment);
            }

            ++v39;
            v36 -= v122;
            v37 -= v122;
            v40 += v122;
          }

          while (v39 < v38);
          a3 = v114;
          v9 = v109;
          v21 = v111;
          a4 = v112;
          v18 = v121;
        }
      }
    }

    v42 = a3[1];
    if (v18 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_126;
    }

    if (v18 - v21 >= a4)
    {
LABEL_32:
      v44 = v18;
      if (v18 < v21)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_128;
    }

    if ((v21 + a4) >= v42)
    {
      v43 = a3[1];
    }

    else
    {
      v43 = v21 + a4;
    }

    if (v43 < v21)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v18 == v43)
    {
      goto LABEL_32;
    }

    v89 = *a3;
    v90 = *(v9 + 72);
    v91 = *a3 + v90 * (v18 - 1);
    v92 = v21;
    v93 = -v90;
    v110 = v6;
    v111 = v92;
    v94 = v92 - v18;
    v123 = v89;
    v115 = v90;
    v5 = v89 + v18 * v90;
    v95 = v127;
    v118 = v43;
LABEL_86:
    v120 = v94;
    v121 = v18;
    v119 = v5;
    v122 = v91;
    v96 = v91;
LABEL_87:
    a4 = v125;
    outlined init with copy of Prompt.Turn(v5, v125, type metadata accessor for Prompt.Attachment);
    v97 = v126;
    outlined init with copy of Prompt.Turn(v96, v126, type metadata accessor for Prompt.Attachment);
    v98 = *(v95 + 24);
    v99 = *(a4 + v98);
    v100 = *(v97 + v98);
    outlined destroy of Prompt.ResponseFormat(v97, type metadata accessor for Prompt.Attachment);
    outlined destroy of Prompt.ResponseFormat(a4, type metadata accessor for Prompt.Attachment);
    if (v99 < v100)
    {
      break;
    }

    v95 = v127;
LABEL_85:
    v18 = v121 + 1;
    v91 = v122 + v115;
    v94 = v120 - 1;
    v5 = v119 + v115;
    v44 = v118;
    if (v121 + 1 != v118)
    {
      goto LABEL_86;
    }

    v9 = v109;
    v6 = v110;
    a3 = v114;
    v21 = v111;
    if (v118 < v111)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v117;
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v117 + 2) + 1, 1, v117);
    }

    a4 = *(v20 + 2);
    v45 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v46 = &v20[16 * a4];
    *(v46 + 4) = v21;
    *(v46 + 5) = v44;
    v47 = *v113;
    if (!*v113)
    {
      goto LABEL_135;
    }

    v118 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v20[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_112;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v60 = &v20[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_115;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v64 >= v56)
          {
            v82 = &v20[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_122;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_114;
            }

            v65 = &v20[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = &v20[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_121;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v20[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_116;
          }

          v78 = &v20[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v86 = v20;
        v87 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v9 + 72) * v87, *a3 + *(v9 + 72) * *&v20[16 * v48 + 32], *a3 + *(v9 + 72) * v5, v47);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v87)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew()(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v128 = v86;
        specialized Array.remove(at:)(v48);
        v20 = v128;
        v5 = *(v128 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v19 = v118;
    a4 = v112;
    if (v118 >= v18)
    {
      goto LABEL_96;
    }
  }

  if (v123)
  {
    v101 = v124;
    outlined init with take of Prompt.ResponseFormat(v5, v124, type metadata accessor for Prompt.Attachment);
    v95 = v127;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Prompt.ResponseFormat(v101, v96, type metadata accessor for Prompt.Attachment);
    v96 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t specialized static Prompt.Turn.Segment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v90[0] = v4;
  v90[1] = v3;
  v90[2] = v6;
  v90[3] = v5;
  v90[4] = v8;
  v90[5] = v7;
  v91 = v9;
  v92 = v10;
  v93 = v11;
  v94 = v12;
  v95 = v13;
  v96 = v14;
  v97 = v15;
  if (v9)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | (v6 >> 60) & 3;
  v98 = v16;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v16)
      {
        v31 = 4;
      }

      else
      {
        v31 = 0;
      }

      if ((v31 | (v12 >> 60) & 3) == 2)
      {
        v56 = v8;
        v57 = v3;
        v32 = v10;
        v73 = v10;
        v77 = v11;
        v33 = v16;
        v34 = v15;
        v35 = v14;
        v80 = v14;
        v85 = v12;
        v61 = v7;
        v36 = v13;
        v65 = v13;
        v37 = v12;
        v55 = v5;
        v38 = v11;
        type metadata accessor for NSObject();
        v39 = v35;
        LOBYTE(v35) = v33;
        outlined copy of Prompt.Turn.Segment(v32, v38, v37, v36, v39, v34, v33);
        outlined copy of Prompt.Turn.Segment(v4, v57, v6, v55, v56, v61, v9);
        outlined copy of Prompt.Turn.Segment(v73, v77, v85, v65, v80, v34, v33);
        outlined copy of Prompt.Turn.Segment(v4, v57, v6, v55, v56, v61, v9);
        v23 = static NSObject.== infix(_:_:)();
        outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
        outlined consume of Prompt.Turn.Segment(v73, v77, v85, v65, v80, v34, v35);
        v24 = v4;
        v25 = v57;
        v26 = v6;
        v27 = v55;
        v28 = v56;
        v29 = v61;
        goto LABEL_25;
      }

      goto LABEL_45;
    }

    if (v18 == 3)
    {
      if (v16)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if ((v19 | (v12 >> 60) & 3) == 3)
      {
        LOBYTE(v89[0]) = v4 & 1;
        v89[1] = v3;
        v89[2] = v6 & 0xCFFFFFFFFFFFFFFFLL;
        v89[3] = v5;
        v89[4] = v8;
        v89[5] = v7;
        LOBYTE(v88[0]) = v10 & 1;
        v88[1] = v11;
        v88[2] = v12 & 0xCFFFFFFFFFFFFFFFLL;
        v88[3] = v13;
        v88[4] = v14;
        v88[5] = v15;
        v72 = v10;
        v76 = v11;
        v79 = v14;
        v84 = v12;
        v20 = v13;
        v21 = v14;
        v22 = v15;
        v62 = v15;
        v68 = v16;
        outlined copy of Prompt.Turn.Segment(v10, v11, v12, v13, v14, v15, v16);
        outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
        outlined copy of Prompt.Turn.Segment(v72, v76, v84, v20, v21, v22, v68);
        outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
        v23 = specialized static Prompt.ImageEmbeddingAttachment.== infix(_:_:)(v89, v88);
        outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
        outlined consume of Prompt.Turn.Segment(v72, v76, v84, v20, v79, v62, v68);
        v24 = v4;
        v25 = v3;
        v26 = v6;
        v27 = v5;
        v28 = v8;
        v29 = v7;
LABEL_25:
        outlined consume of Prompt.Turn.Segment(v24, v25, v26, v27, v28, v29, v9);
        return v23 & 1;
      }

      goto LABEL_45;
    }

    if (v16)
    {
      v40 = 4;
    }

    else
    {
      v40 = 0;
    }

    if ((v40 | (v12 >> 60) & 3) == 4)
    {
      v41 = *(v4 + 2);
      if (v41 == *(v10 + 2))
      {
        if (v41 && v4 != v10)
        {
          v42 = v4 + 16;
          v43 = v10 + 16;
          while (*v42 == *v43)
          {
            ++v42;
            ++v43;
            if (!--v41)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_45;
        }

LABEL_36:
        v74 = v10;
        v44 = v11;
        v69 = v16;
        v63 = v15;
        v81 = v14;
        v45 = v13;
        v46 = v12;
        v58 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v3, v11);
        outlined copy of Prompt.Turn.Segment(v74, v44, v46, v45, v81, v63, v69);
        outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
        outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
        if ((v58 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_44:
        v23 = 1;
        return v23 & 1;
      }
    }

    goto LABEL_45;
  }

  if (v18)
  {
    if (v16)
    {
      v47 = 4;
    }

    else
    {
      v47 = 0;
    }

    if ((v47 | (v12 >> 60) & 3) == 1 && ((v10 ^ v4) & 1) == 0)
    {
      v48 = v10;
      v75 = v10;
      v78 = v11;
      v82 = v14;
      v86 = v12;
      v49 = v13;
      v64 = v15;
      v66 = v13;
      v50 = v15;
      v70 = v16;
      outlined copy of Prompt.Turn.Segment(v10, v11, v12, v13, v14, v15, v16);
      outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
      outlined copy of Prompt.Turn.Segment(v48, v78, v86, v49, v82, v50, v70);
      outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
      v59 = specialized static Data.== infix(_:_:)(v3, v6 & 0xCFFFFFFFFFFFFFFFLL, v78, v86 & 0xCFFFFFFFFFFFFFFFLL);
      outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
      outlined consume of Prompt.Turn.Segment(v75, v78, v86, v66, v82, v64, v70);
      outlined consume of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
      if ((v59 & 1) == 0)
      {
LABEL_46:
        v23 = 0;
        return v23 & 1;
      }

      goto LABEL_44;
    }

LABEL_45:
    outlined copy of Prompt.Turn.Segment(v10, v11, v12, v13, v14, v15, v16);
    outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
    outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
    goto LABEL_46;
  }

  if (v16)
  {
    v30 = 4;
  }

  else
  {
    v30 = 0;
  }

  if (v30 | (v12 >> 60) & 3)
  {
    goto LABEL_45;
  }

  if (v4 == v10 && v3 == v11)
  {
    outlined copy of Prompt.Turn.Segment(v4, v3, v12, v13, v14, v15, v16);
    outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
    outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
    v23 = 1;
    return v23 & 1;
  }

  v52 = v10;
  v53 = v11;
  v83 = v14;
  v87 = v12;
  v67 = v13;
  v71 = v16;
  v54 = v15;
  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Prompt.Turn.Segment(v52, v53, v87, v67, v83, v54, v71);
  outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
  outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
  return v60 & 1;
}

BOOL specialized static Prompt.ToolCall.Kind.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL specialized static Prompt.ToolCall.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14 = a2[6];
  v15 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v9 || v5 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      outlined copy of Data?(v15, v6);
      outlined copy of Data?(v14, v11);
      outlined consume of Data?(v15, v6);
      return 1;
    }

    goto LABEL_14;
  }

  if (v11 >> 60 == 15)
  {
LABEL_14:
    outlined copy of Data?(v15, v6);
    outlined copy of Data?(v14, v11);
    outlined consume of Data?(v15, v6);
    outlined consume of Data?(v14, v11);
    return 0;
  }

  outlined copy of Data?(v15, v6);
  outlined copy of Data?(v14, v11);
  v13 = specialized static Data.== infix(_:_:)(v15, v6, v14, v11);
  outlined consume of Data?(v14, v11);
  outlined consume of Data?(v15, v6);
  return (v13 & 1) != 0;
}

BOOL specialized static Prompt.Turn.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = &v70 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v11 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v70 - v12;
  v13 = type metadata accessor for Prompt.ResponseFormat(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMd, &_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  v70 = v5;
  v71 = v4;
  v26 = type metadata accessor for Prompt.Turn(0);
  v27 = *(v26 + 20);
  v28 = *(v22 + 48);
  v72 = v26;
  v73 = a1;
  outlined init with copy of (String, Any)(&a1[v27], v25, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v29 = &a2[v27];
  v30 = a2;
  outlined init with copy of (String, Any)(v29, &v25[v28], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v31 = *(v14 + 48);
  if (v31(v25, 1, v13) != 1)
  {
    outlined init with copy of (String, Any)(v25, v21, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
    if (v31(&v25[v28], 1, v13) != 1)
    {
      outlined init with take of Prompt.ResponseFormat(&v25[v28], v17, type metadata accessor for Prompt.ResponseFormat);
      v32 = specialized static Prompt.ResponseFormat.Kind.== infix(_:_:)(v21, v17);
      outlined destroy of Prompt.ResponseFormat(v17, type metadata accessor for Prompt.ResponseFormat);
      outlined destroy of Prompt.ResponseFormat(v21, type metadata accessor for Prompt.ResponseFormat);
      outlined destroy of [Regex2BNF.CharacterPredicate](v25, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    outlined destroy of Prompt.ResponseFormat(v21, type metadata accessor for Prompt.ResponseFormat);
LABEL_7:
    outlined destroy of [Regex2BNF.CharacterPredicate](v25, &_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMd, &_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMR);
    return 0;
  }

  if (v31(&v25[v28], 1, v13) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v25, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
LABEL_9:
  v34 = v72;
  v33 = v73;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ29GenerativeFunctionsFoundation4ToolV_Tt1g5(*&v73[v72[6]], *&a2[v72[6]]))
  {
    v35 = v34[7];
    v36 = v77;
    v37 = *(v76 + 48);
    outlined init with copy of (String, Any)(&v33[v35], v77, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    outlined init with copy of (String, Any)(&v30[v35], v36 + v37, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v39 = v70;
    v38 = v71;
    v40 = *(v70 + 48);
    if (v40(v36, 1, v71) == 1)
    {
      if (v40(v36 + v37, 1, v38) == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v36, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
LABEL_17:
        if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(*&v33[v34[8]], *&v30[v34[8]]) & 1) == 0 || v33[v34[9]] != v30[v34[9]] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV8ToolCallV_Tt1g5(*&v33[v34[10]], *&v30[v34[10]]) & 1) == 0)
        {
          return 0;
        }

        v45 = v34[11];
        v46 = &v33[v45];
        v47 = v30;
        v48 = *&v33[v45];
        v49 = *&v33[v45 + 8];
        v51 = *(v46 + 2);
        v50 = *(v46 + 3);
        v52 = *(v46 + 4);
        v53 = &v47[v45];
        v54 = *v53;
        v55 = v53[1];
        v57 = v53[2];
        v56 = v53[3];
        v58 = v53[4];
        if (v49)
        {
          if (v55)
          {
            if (v48 == v54 && v49 == v55 || (v59 = *v53, v60 = v53[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
              if (v51 == v57 && v50 == v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                outlined copy of Prompt.ToolCallResult?(v48, v49);
                outlined copy of Prompt.ToolCallResult?(v54, v55);
                outlined copy of Prompt.ToolCallResult?(v48, v49);
                LODWORD(v77) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(v52, v58);
                outlined consume of Prompt.ToolCallResult?(v54, v55);

                outlined consume of Prompt.ToolCallResult?(v48, v49);
                return (v77 & 1) != 0;
              }
            }

            outlined copy of Prompt.ToolCallResult?(v48, v49);
            outlined copy of Prompt.ToolCallResult?(v54, v55);
            outlined copy of Prompt.ToolCallResult?(v48, v49);
            outlined consume of Prompt.ToolCallResult?(v54, v55);

            v68 = v48;
            v69 = v49;
            goto LABEL_35;
          }

          v65 = *(v46 + 2);
          v66 = *(v46 + 3);
          v67 = *(v46 + 4);
          outlined copy of Prompt.ToolCallResult?(v48, v49);
          outlined copy of Prompt.ToolCallResult?(v54, 0);
          outlined copy of Prompt.ToolCallResult?(v48, v49);
        }

        else
        {
          v62 = *(v46 + 2);
          v63 = *(v46 + 3);
          v64 = *(v46 + 4);
          outlined copy of Prompt.ToolCallResult?(v48, 0);
          if (!v55)
          {
            outlined copy of Prompt.ToolCallResult?(v54, 0);
            outlined consume of Prompt.ToolCallResult?(v48, 0);
            return 1;
          }

          outlined copy of Prompt.ToolCallResult?(v54, v55);
        }

        outlined consume of Prompt.ToolCallResult?(v48, v49);
        v68 = v54;
        v69 = v55;
LABEL_35:
        outlined consume of Prompt.ToolCallResult?(v68, v69);
        return 0;
      }

      goto LABEL_15;
    }

    v41 = v75;
    outlined init with copy of (String, Any)(v36, v75, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v40(v36 + v37, 1, v38) == 1)
    {
      (*(v39 + 8))(v41, v38);
LABEL_15:
      outlined destroy of [Regex2BNF.CharacterPredicate](v36, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
      return 0;
    }

    v42 = v74;
    (*(v39 + 32))(v74, v36 + v37, v38);
    lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v44 = *(v39 + 8);
    v44(v42, v38);
    v44(v41, v38);
    outlined destroy of [Regex2BNF.CharacterPredicate](v36, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v43)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Tool and conformance Tool(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Prompt.ResponseFormat(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Prompt.Turn(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Prompt.ResponseFormat(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of PartialTurnSpan #1 in Prompt.turns()?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

BOOL partial apply for closure #1 in Prompt.turns()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + *(type metadata accessor for Prompt.Attachment(0) + 24));
  return *(v2 + 40) < v3 && v3 < *(v2 + 48);
}

unint64_t lazy protocol witness table accessor for type Prompt.Turn.Role and conformance Prompt.Turn.Role()
{
  result = lazy protocol witness table cache variable for type Prompt.Turn.Role and conformance Prompt.Turn.Role;
  if (!lazy protocol witness table cache variable for type Prompt.Turn.Role and conformance Prompt.Turn.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Turn.Role and conformance Prompt.Turn.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment()
{
  result = lazy protocol witness table cache variable for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment;
  if (!lazy protocol witness table cache variable for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult);
  }

  return result;
}

void type metadata completion function for Prompt.Turn()
{
  type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Prompt.ResponseFormat?, type metadata accessor for Prompt.ResponseFormat, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for [Tool], MEMORY[0x1E69A0DF0], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for [Prompt.Turn.Segment], &type metadata for Prompt.Turn.Segment, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for [Prompt.ToolCall], &type metadata for Prompt.ToolCall, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for Prompt.ToolCallResult?, &type metadata for Prompt.ToolCallResult, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Prompt.ResponseFormat?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.Turn.Segment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 49))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 48))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Prompt.Turn.Segment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 1020;
    if (a3 >= 0x3FC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Prompt.Turn.Segment(uint64_t result, char a2)
{
  *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 48) = (a2 & 4) != 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Prompt.ToolCall(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.ToolCall(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prompt.ToolCallResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Prompt.ToolCallResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for TurnDelimiter #1 in Prompt.turns()()
{
  type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for Prompt.Turn.Role?, &type metadata for Prompt.Turn.Role, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Prompt.Turn.Segment](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for TurnSpan #1 in Prompt.turns()()
{
  type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t outlined assign with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t CompletionPrompt.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *(a1 + 24);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v5;
  Prompt.init(_:)(&v7, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return CompletionPrompt.init(_:)();
}

uint64_t Prompt.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v133 = &v112 - v5;
  v6 = type metadata accessor for Prompt.AttachmentContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v132 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = &v112 - v11;
  v141 = type metadata accessor for Prompt.Component.Value();
  v134 = *(v141 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v130 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v112 - v15;
  v16 = type metadata accessor for Prompt.Component();
  v17 = *(v16 - 8);
  v146 = v16;
  v147 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v127 = &v112 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v139 = &v112 - v25;
  v145 = type metadata accessor for Prompt.Delimiter(0);
  v26 = *(v145 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v136 = (&v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v144 = &v112 - v30;
  v143 = type metadata accessor for Prompt.Attachment(0);
  v31 = *(v143 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v135 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v142 = &v112 - v35;
  v151 = type metadata accessor for Prompt.PromptMarker(0);
  v36 = *(v151 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v140 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v149 = &v112 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v112 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v112 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v112 - v48;
  v50 = a1[1];
  v150 = *a1;
  v137 = v50;
  v52 = a1[2];
  v51 = a1[3];
  v53 = *(v52 + 16);
  v125 = v51;
  v119 = v52;
  if (!v53)
  {
    v56 = MEMORY[0x1E69E7CC0];
    v59 = v137;
    v60 = *(v51 + 16);
    if (!v60)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v148 = v31;
  v54 = v52 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v55 = *(v26 + 72);

  v56 = MEMORY[0x1E69E7CC0];
  do
  {
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v54, v49, type metadata accessor for Prompt.Delimiter);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
    }

    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v56);
    }

    v56[2] = v58 + 1;
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v49, v56 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v58, type metadata accessor for Prompt.PromptMarker);
    v54 += v55;
    --v53;
  }

  while (v53);

  v59 = v137;
  v51 = v125;
  v31 = v148;
  v60 = *(v125 + 16);
  if (v60)
  {
LABEL_11:
    v61 = v51 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v62 = *(v31 + 72);

    do
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v61, v46, type metadata accessor for Prompt.Attachment);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
      }

      v64 = v56[2];
      v63 = v56[3];
      if (v64 >= v63 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v63 > 1, v64 + 1, 1, v56);
      }

      v56[2] = v64 + 1;
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v46, v56 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v64, type metadata accessor for Prompt.PromptMarker);
      v61 += v62;
      --v60;
    }

    while (v60);
  }

LABEL_18:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v149;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_69:
    v56 = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
  }

  v67 = v56[2];
  v68 = v56 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v152[0] = v68;
  v152[1] = v67;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v152);
  v69 = v56[2];
  v70 = HIBYTE(v59) & 0xF;
  if (v69)
  {
    v115 = v59 & 0x2000000000000000;
    v114 = v59 & 0x1000000000000000;
    v71 = *(v36 + 72);
    v72 = v150 & 0xFFFFFFFFFFFFLL;
    v116 = HIBYTE(v59) & 0xF;
    v113 = v150 & 0xFFFFFFFFFFFFLL;
    if ((v59 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v59) & 0xF;
    }

    v112 = v150 & 0x800000000000000;
    v73 = 7;
    if (((v59 >> 60) & ((v150 & 0x800000000000000) == 0)) != 0)
    {
      v73 = 11;
    }

    v148 = v73 | (v72 << 16);
    v138 = v147 + 32;
    v126 = (v134 + 48);
    v124 = (v134 + 32);
    v123 = (v134 + 16);
    v122 = (v134 + 8);
    v121 = *MEMORY[0x1E69C62D8];
    v74 = MEMORY[0x1E69E7CC0];
    v120 = (v134 + 104);
    v36 = 15;
    v134 = v71;
    while (1)
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v68, v43, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v43, v66, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v75 = v66;
        v66 = v144;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v75, v144, type metadata accessor for Prompt.Delimiter);
        v76 = *(v66 + *(v145 + 20));
        v77 = type metadata accessor for Prompt.Delimiter;
      }

      else
      {
        v78 = v66;
        v66 = v142;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v78, v142, type metadata accessor for Prompt.Attachment);
        v79 = *(v66 + *(v143 + 20));
        v77 = type metadata accessor for Prompt.Attachment;
      }

      outlined destroy of Prompt.Turn(v66, v77);
      v80 = String.index(_:offsetBy:limitedBy:)();
      if (v81)
      {
        outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
      }

      else
      {
        v82 = v80;
        if (v80 >> 14 != v36 >> 14)
        {
          if (v80 >> 14 < v36 >> 14)
          {
            __break(1u);
            goto LABEL_69;
          }

          v83 = String.subscript.getter();
          MEMORY[0x1AC57C040](v83);

          Prompt.Component.init(stringValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
          }

          v85 = v74[2];
          v84 = v74[3];
          v59 = v137;
          if (v85 >= v84 >> 1)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v85 + 1, 1, v74);
          }

          v74[2] = v85 + 1;
          (*(v147 + 32))(v74 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v85, v139, v146);
        }

        v86 = v140;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(v43, v140, type metadata accessor for Prompt.PromptMarker);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v89 = v135;
          _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v86, v135, type metadata accessor for Prompt.Attachment);
          v90 = v132;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v89, v132, type metadata accessor for Prompt.AttachmentContent);
          v91 = v90;
          v92 = v131;
          Prompt.Component.Value.init(_:)(v91, v131);
          v93 = v141;
          if ((*v126)(v92, 1, v141) == 1)
          {
            outlined destroy of Prompt.Turn(v89, type metadata accessor for Prompt.Attachment);
            outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
            outlined destroy of [Regex2BNF.CharacterPredicate](v92, &_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
            v36 = v82;
            v66 = v149;
            v71 = v134;
            goto LABEL_27;
          }

          v101 = v129;
          (*v124)(v129, v92, v93);
          (*v123)(v130, v101, v93);
          v102 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v102 - 8) + 56))(v133, 1, 1, v102);
          Prompt.Component.init(value:priority:privacy:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
          }

          v71 = v134;
          v104 = v74[2];
          v103 = v74[3];
          v59 = v137;
          if (v104 >= v103 >> 1)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v103 > 1, v104 + 1, 1, v74);
          }

          (*v122)(v129);
          outlined destroy of Prompt.Turn(v135, type metadata accessor for Prompt.Attachment);
          outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
          v74[2] = v104 + 1;
          (*(v147 + 32))(v74 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v104, v127, v146);
          goto LABEL_55;
        }

        v87 = v86;
        v88 = v136;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v87, v136, type metadata accessor for Prompt.Delimiter);
        if ((*(v88 + *(type metadata accessor for Prompt.SpecialToken(0) + 28)) & 1) == 0)
        {
          v94 = v88;
          v95 = *v88;
          v96 = v94[1];

          v97 = v130;
          SpecialToken.init(identifier:)();
          (*v120)(v97, v121, v141);
          v98 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v98 - 8) + 56))(v133, 1, 1, v98);
          Prompt.Component.init(value:priority:privacy:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
          }

          v100 = v74[2];
          v99 = v74[3];
          v71 = v134;
          if (v100 >= v99 >> 1)
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v99 > 1, v100 + 1, 1, v74);
          }

          outlined destroy of Prompt.Turn(v136, type metadata accessor for Prompt.Delimiter);
          outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
          v74[2] = v100 + 1;
          (*(v147 + 32))(v74 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v100, v128, v146);
LABEL_55:
          v36 = v82;
          goto LABEL_26;
        }

        outlined destroy of Prompt.Turn(v88, type metadata accessor for Prompt.Delimiter);
        outlined destroy of Prompt.Turn(v43, type metadata accessor for Prompt.PromptMarker);
        v36 = v82;
      }

LABEL_26:
      v66 = v149;
LABEL_27:
      v68 += v71;
      if (!--v69)
      {

        v70 = v116;
        v105 = v115;
        v106 = v113;
        goto LABEL_58;
      }
    }
  }

  v105 = v59 & 0x2000000000000000;
  v106 = v150 & 0xFFFFFFFFFFFFLL;
  v74 = MEMORY[0x1E69E7CC0];
  v36 = 15;
LABEL_58:
  if (v105)
  {
    v107 = v70;
  }

  else
  {
    v107 = v106;
  }

  if (v36 >> 14 == 4 * v107)
  {

    return Prompt.init(components:)();
  }

  if (4 * v107 < v36 >> 14)
  {
    __break(1u);
    goto LABEL_71;
  }

  v108 = String.subscript.getter();
  MEMORY[0x1AC57C040](v108);

  v36 = v117;
  Prompt.Component.init(stringValue:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_71:
    v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
  }

  v110 = v74[2];
  v109 = v74[3];
  if (v110 >= v109 >> 1)
  {
    v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v109 > 1, v110 + 1, 1, v74);
  }

  v74[2] = v110 + 1;
  (*(v147 + 32))(v74 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v110, v36, v146);
  return Prompt.init(components:)();
}

uint64_t ChatMessagesPrompt.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Turn(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v34 = type metadata accessor for ChatMessagePrompt();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  v17 = a1[3];
  v35 = v15;
  v36 = v16;
  v37 = v18;
  v38 = v17;
  v19 = Prompt.turns()();

  v20 = v19[2];
  if (v20)
  {
    v32 = a2;
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v35;
    v22 = *(v33 + 80);
    v31 = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v33 = *(v33 + 72);
    do
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v23, v10, type metadata accessor for Prompt.Turn);
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v10, v7, type metadata accessor for Prompt.Turn);
      ChatMessagePrompt.init(_:)(v7, v14);
      outlined destroy of Prompt.Turn(v10, type metadata accessor for Prompt.Turn);
      v35 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v21 = v35;
      }

      *(v21 + 16) = v25 + 1;
      (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v14, v34);
      v23 += v33;
      --v20;
    }

    while (v20);

    v26 = v32;
    ChatMessagesPrompt.init(_:)();
    v27 = type metadata accessor for ChatMessagesPrompt();
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  else
  {

    v29 = type metadata accessor for ChatMessagesPrompt();
    v30 = *(*(v29 - 8) + 56);

    return v30(a2, 1, 1, v29);
  }
}

uint64_t ChatMessagePrompt.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v145 = v122 - v5;
  v143 = type metadata accessor for ChatMessageRole();
  v142 = *(v143 - 8);
  v6 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v141 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v144 = v122 - v9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v10 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v150 = v122 - v13;
  v136 = type metadata accessor for Prompt.ResponseFormat(0);
  v149 = *(v136 - 8);
  v14 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v137 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for RunnableConfigurationStorage();
  v139 = *(v140 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v138 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v152 = v122 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V10ToolResultVSgMd, &_s9PromptKit0A0V10ToolResultVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v129 = v122 - v22;
  v131 = type metadata accessor for Prompt.ToolResult();
  v130 = *(v131 - 8);
  v23 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v125 = v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Prompt.ToolCall.Content();
  v25 = *(v160 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v159 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Prompt.ToolCall();
  v162 = *(v158 - 8);
  v28 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v158);
  *&v165 = v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v134 = v122 - v32;
  v133 = type metadata accessor for Prompt.Component.Value();
  v132 = *(v133 - 8);
  v33 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v124 = (v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v128 = (v122 - v36);
  v37 = type metadata accessor for Prompt.Component();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = v122 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Prompt();
  v148 = *(v154 - 8);
  v42 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v147 = v122 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v151 = v122 - v45;
  v153 = type metadata accessor for Prompt.Turn(0);
  v46 = *&a1[v153[8]];
  v47 = *(v46 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  v161 = v38;
  if (v47)
  {
    v173 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
    v49 = v173;
    v50 = (v46 + 80);
    do
    {
      v51 = *(v50 - 5);
      v52 = *(v50 - 4);
      v53 = *(v50 - 3);
      v54 = *(v50 - 2);
      v55 = *(v50 - 1);
      v56 = *v50;
      v166 = *(v50 - 6);
      v167 = v51;
      v168 = v52;
      v169 = v53;
      v170 = v54;
      v171 = v55;
      v172 = v56;
      outlined copy of Prompt.Turn.Segment(v166, v51, v52, v53, v54, v55, v56);
      Prompt.Component.init(_:)(&v166, v41);
      v173 = v49;
      v58 = *(v49 + 16);
      v57 = *(v49 + 24);
      if (v58 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1);
        v49 = v173;
      }

      *(v49 + 16) = v58 + 1;
      v38 = v161;
      (*(v161 + 32))(v49 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v161 + 72) * v58, v41, v37);
      v50 += 56;
      --v47;
    }

    while (v47);
    v48 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v173 = v49;
  v59 = v153;
  v60 = *&a1[v153[10]];
  v61 = *(v60 + 16);
  v135 = a1;
  if (v61)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
    v62 = *(v38 + 72);
    v122[1] = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_1A8FC9400;
    v166 = v48;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61, 0);
    v63 = v166;
    v157 = *MEMORY[0x1E69C62B8];
    v155 = v162 + 32;
    v156 = (v25 + 104);
    v64 = (v60 + 48);
    v65 = v165;
    do
    {
      v164 = v63;
      *&v165 = v61;
      v66 = *(v64 - 1);
      v163 = *(v64 - 2);
      v67 = *v64;
      v68 = v64[1];
      v70 = v64[2];
      v69 = v64[3];
      v71 = v64[4];
      v72 = v64[5];

      outlined copy of Data?(v71, v72);

      v73 = v159;
      Prompt.ToolCall.Function.init(name:arguments:)();
      (*v156)(v73, v157, v160);
      Prompt.ToolCall.init(id:content:)();

      v74 = v72;
      v63 = v164;
      outlined consume of Data?(v71, v74);
      v166 = v63;
      v76 = v63[2];
      v75 = v63[3];
      if (v76 >= v75 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v75 > 1, v76 + 1, 1);
        v63 = v166;
      }

      v63[2] = v76 + 1;
      (*(v162 + 32))(v63 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v76, v65, v158);
      v64 += 8;
      v61 = v165 - 1;
    }

    while (v165 != 1);
    v77 = v128;
    *v128 = v63;
    (*(v132 + 104))(v77, *MEMORY[0x1E69C6340], v133);
    v78 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v78 - 8) + 56))(v134, 1, 1, v78);
    v79 = v123;
    Prompt.Component.init(value:priority:privacy:)();
    specialized Array.append<A>(contentsOf:)(v79);
    a1 = v135;
    v59 = v153;
  }

  v80 = &a1[v59[11]];
  v81 = *(v80 + 1);
  v82 = v137;
  v83 = v149;
  v84 = v150;
  v85 = v154;
  if (v81)
  {
    v87 = *(v80 + 3);
    v86 = *(v80 + 4);
    v88 = *(v80 + 2);
    v166 = *v80;
    v167 = v81;
    v168 = v88;
    v169 = v87;
    v170 = v86;

    v89 = v129;
    Prompt.ToolResult.init(_:)(&v166, v129);
    v90 = v130;
    v91 = v131;
    if ((*(v130 + 48))(v89, 1, v131) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v89, &_s9PromptKit0A0V10ToolResultVSgMd, &_s9PromptKit0A0V10ToolResultVSgMR);
    }

    else
    {
      v92 = v125;
      (*(v90 + 32))(v125, v89, v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v93 = *(v161 + 72);
      v94 = (*(v161 + 80) + 32) & ~*(v161 + 80);
      v95 = v90;
      v96 = swift_allocObject();
      v165 = xmmword_1A8FC9400;
      *(v96 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V10ToolResultVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V10ToolResultVGMR);
      v97 = *(v95 + 72);
      v98 = v82;
      v99 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v100 = swift_allocObject();
      *(v100 + 16) = v165;
      (*(v95 + 16))(v100 + v99, v92, v91);
      v101 = v124;
      *v124 = v100;
      (*(v132 + 104))(v101, *MEMORY[0x1E69C62C8], v133);
      v102 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v102 - 8) + 56))(v134, 1, 1, v102);
      v83 = v149;
      v82 = v98;
      Prompt.Component.init(value:priority:privacy:)();
      specialized Array.append<A>(contentsOf:)(v96);
      a1 = v135;
      (*(v95 + 8))(v92, v91);
    }

    v85 = v154;
  }

  if (a1[v59[9]] == 1)
  {
    if (*(v173 + 16))
    {
      v103 = v82;
      v104 = v147;
      v105 = v173;
      Prompt.init(_:)();
      v106 = Prompt.components.getter();
      v107 = v104;
      v82 = v103;
      (*(v148 + 8))(v107, v85);
      v166 = v106;
      specialized Array.append<A>(contentsOf:)(v105);
      Prompt.init(components:)();
    }

    else
    {

      Prompt.init(_:)();
    }

    v84 = v150;
  }

  else
  {
    Prompt.init(components:)();
  }

  RunnableConfigurationStorage.init()();
  v108 = *&a1[v59[6]];
  if (v108[2])
  {
    if (one-time initialization token for toolsInjectDefinitionsKey != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for GenerativeConfigurationKey();
    __swift_project_value_buffer(v109, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
    v166 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
    RunnableConfigurationStorage.set<A>(_:value:)();
  }

  outlined init with copy of (String, Any)(&a1[v59[5]], v84, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v110 = v136;
  if ((*(v83 + 48))(v84, 1, v136) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v84, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v84, v82, type metadata accessor for Prompt.ResponseFormat);
    v111 = v126;
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v82, v126, type metadata accessor for Prompt.ResponseFormat);
    (*(v83 + 56))(v111, 0, 1, v110);
    if (one-time initialization token for schemaInjectDefinitionKey != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for GenerativeConfigurationKey();
    __swift_project_value_buffer(v112, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
    RunnableConfigurationStorage.set<A>(_:value:)();
    outlined destroy of [Regex2BNF.CharacterPredicate](v111, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
    outlined destroy of Prompt.Turn(v82, type metadata accessor for Prompt.ResponseFormat);
  }

  v113 = v142;
  v114 = v141;
  v115 = v143;
  (*(v142 + 104))(v141, **(&unk_1E785E560 + *a1), v143);
  (*(v113 + 32))(v144, v114, v115);
  v116 = v148;
  v117 = v151;
  (*(v148 + 16))(v147, v151, v85);
  outlined init with copy of (String, Any)(&a1[v153[7]], v145, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v118 = v139;
  v119 = v152;
  v120 = v140;
  (*(v139 + 16))(v138, v152, v140);
  ChatMessagePrompt.init(role:prompt:locale:configurationStorage:)();
  (*(v118 + 8))(v119, v120);
  (*(v116 + 8))(v117, v154);
  return outlined destroy of Prompt.Turn(a1, type metadata accessor for Prompt.Turn);
}