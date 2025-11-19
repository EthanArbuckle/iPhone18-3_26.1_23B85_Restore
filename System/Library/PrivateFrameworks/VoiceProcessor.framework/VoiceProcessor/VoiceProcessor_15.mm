unsigned int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *result;
  v8 = *a3;
  if (*a2 <= *result)
  {
    if (v8 <= v5)
    {
      v5 = *a3;
    }

    else
    {
      v11 = a3[1];
      *a2 = v8;
      a2[1] = v11;
      *a3 = v5;
      a3[1] = v6;
      v12 = *result;
      if (*a2 > *result)
      {
        v13 = result[1];
        v14 = a2[1];
        *result = *a2;
        result[1] = v14;
        *a2 = v12;
        a2[1] = v13;
        v5 = *a3;
      }
    }
  }

  else
  {
    v9 = result[1];
    if (v8 > v5)
    {
      v10 = a3[1];
      *result = v8;
      result[1] = v10;
LABEL_9:
      *a3 = v7;
      a3[1] = v9;
      v5 = v7;
      goto LABEL_11;
    }

    *result = v5;
    result[1] = v6;
    *a2 = v7;
    a2[1] = v9;
    v5 = *a3;
    if (*a3 > v7)
    {
      v15 = a3[1];
      *a2 = v5;
      a2[1] = v15;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 > v5)
  {
    v16 = a4[1];
    *a3 = *a4;
    *a4 = v5;
    v17 = *a3;
    v18 = a3[1];
    a3[1] = v16;
    a4[1] = v18;
    v19 = *a2;
    if (v17 > *a2)
    {
      v20 = a3[1];
      *a2 = v17;
      *a3 = v19;
      v21 = *a2;
      v22 = a2[1];
      a2[1] = v20;
      a3[1] = v22;
      v23 = *result;
      if (v21 > *result)
      {
        v24 = result[1];
        v25 = a2[1];
        *result = v21;
        result[1] = v25;
        *a2 = v23;
        a2[1] = v24;
      }
    }
  }

  v26 = *a4;
  if (*a5 > *a4)
  {
    v27 = a5[1];
    *a4 = *a5;
    *a5 = v26;
    v28 = *a4;
    v29 = a4[1];
    a4[1] = v27;
    a5[1] = v29;
    v30 = *a3;
    if (v28 > *a3)
    {
      v31 = a4[1];
      *a3 = v28;
      *a4 = v30;
      v32 = *a3;
      v33 = a3[1];
      a3[1] = v31;
      a4[1] = v33;
      v34 = *a2;
      if (v32 > *a2)
      {
        v35 = a3[1];
        *a2 = v32;
        *a3 = v34;
        v36 = *a2;
        v37 = a2[1];
        a2[1] = v35;
        a3[1] = v37;
        v38 = *result;
        if (v36 > *result)
        {
          v39 = result[1];
          v40 = a2[1];
          *result = v36;
          result[1] = v40;
          *a2 = v38;
          a2[1] = v39;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *>(unsigned int *a1, unsigned int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v8 = a1[2];
      v7 = a1[3];
      v9 = *a1;
      v10 = *(a2 - 2);
      if (v8 <= *a1)
      {
        if (v10 > v8)
        {
          v28 = *(a2 - 1);
          a1[2] = v10;
          a1[3] = v28;
          *(a2 - 2) = v8;
          *(a2 - 1) = v7;
          v29 = a1[2];
          v30 = *a1;
          if (v29 > *a1)
          {
            v31 = a1[1];
            v32 = a1[3];
            *a1 = v29;
            a1[1] = v32;
            a1[2] = v30;
            a1[3] = v31;
          }
        }

        return 1;
      }

      v11 = a1[1];
      if (v10 <= v8)
      {
        *a1 = v8;
        a1[1] = v7;
        a1[2] = v9;
        a1[3] = v11;
        v35 = *(a2 - 2);
        if (v35 <= v9)
        {
          return 1;
        }

        v36 = *(a2 - 1);
        a1[2] = v35;
        a1[3] = v36;
      }

      else
      {
        v12 = *(a2 - 1);
        *a1 = v10;
        a1[1] = v12;
      }

      *(a2 - 2) = v9;
      *(a2 - 1) = v11;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v21 = a1[1];
    v22 = a1[2];
    v23 = a1 + 3;
    v24 = a1[3];
    v25 = *a1;
    v26 = a1[4];
    if (v22 <= *a1)
    {
      if (v26 > v22)
      {
        v34 = a1[5];
        a1[2] = v26;
        a1[3] = v34;
        a1[4] = v22;
        a1[5] = v24;
        if (v26 <= v25)
        {
LABEL_49:
          v26 = v22;
          goto LABEL_50;
        }

        a1[1] = v34;
        a1[2] = v25;
        *a1 = v26;
LABEL_48:
        *v23 = v21;
        goto LABEL_49;
      }
    }

    else
    {
      v23 = a1 + 5;
      if (v26 > v22)
      {
        v27 = a1[5];
        a1[4] = v25;
        *a1 = v26;
        a1[1] = v27;
LABEL_47:
        v22 = v25;
        goto LABEL_48;
      }

      *a1 = v22;
      a1[1] = v24;
      a1[2] = v25;
      a1[3] = v21;
      if (v26 > v25)
      {
        a1[3] = a1[5];
        a1[4] = v25;
        a1[2] = v26;
        goto LABEL_47;
      }
    }

LABEL_50:
    v47 = *(a2 - 2);
    if (v47 > v26)
    {
      v48 = *(a2 - 1);
      a1[4] = v47;
      *(a2 - 2) = v26;
      v49 = a1[4];
      v50 = a1[5];
      a1[5] = v48;
      *(a2 - 1) = v50;
      v51 = a1[2];
      if (v49 > v51)
      {
        v52 = a1[3];
        v53 = a1[5];
        a1[2] = v49;
        a1[3] = v53;
        a1[4] = v51;
        a1[5] = v52;
        v54 = *a1;
        if (v49 > *a1)
        {
          v55 = a1[1];
          *a1 = v49;
          a1[1] = v53;
          a1[2] = v54;
          a1[3] = v55;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 > *a1)
    {
      v5 = a1[1];
      v6 = *(a2 - 1);
      *a1 = v3;
      a1[1] = v6;
      *(a2 - 2) = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 4;
  v14 = a1[4];
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1 + 3;
  v18 = a1[3];
  v19 = *a1;
  if (v16 > *a1)
  {
    v17 = a1 + 5;
    if (v14 <= v16)
    {
      *a1 = v16;
      a1[1] = v18;
      a1[2] = v19;
      a1[3] = v15;
      if (v14 <= v19)
      {
        goto LABEL_34;
      }

      a1[3] = a1[5];
      a1[4] = v19;
      a1[2] = v14;
    }

    else
    {
      v20 = a1[5];
      a1[4] = v19;
      *a1 = v14;
      a1[1] = v20;
    }

    goto LABEL_33;
  }

  if (v14 > v16)
  {
    v33 = a1[5];
    a1[2] = v14;
    a1[3] = v33;
    a1[4] = v16;
    a1[5] = v18;
    if (v14 > v19)
    {
      a1[1] = v33;
      a1[2] = v19;
      *a1 = v14;
LABEL_33:
      *v17 = v15;
    }
  }

LABEL_34:
  v37 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v38 = 0;
  v39 = 0;
  while (1)
  {
    v40 = *v13;
    if (*v37 > *v13)
    {
      v42 = *v37;
      v41 = v37[1];
      v43 = v38;
      while (1)
      {
        v44 = (a1 + v43);
        v45 = *(a1 + v43 + 20);
        v44[6] = v40;
        v44[7] = v45;
        if (v43 == -16)
        {
          break;
        }

        v40 = v44[2];
        v43 -= 8;
        if (v40 >= v42)
        {
          v46 = (a1 + v43 + 24);
          goto LABEL_42;
        }
      }

      v46 = a1;
LABEL_42:
      *v46 = v42;
      v46[1] = v41;
      if (++v39 == 8)
      {
        return v37 + 2 == a2;
      }
    }

    v13 = v37;
    v38 += 8;
    v37 += 2;
    if (v37 == a2)
    {
      return 1;
    }
  }
}

char *vp::detail::reflect_value_name<(vp::services::Audio_Issue_Detector_Node_ID)0,128ul>(int a1)
{
  result = "vp::services::Audio_Issue_Detector_Node_ID::Downlink_Far_End_Voice_Input]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::services::Audio_Issue_Detector_Node_ID::Downlink_Output]";
      break;
    case 2:
      result = "vp::services::Audio_Issue_Detector_Node_ID::Uplink_Hardware_Mic_Input]";
      break;
    case 3:
      result = "vp::services::Audio_Issue_Detector_Node_ID::Uplink_Output]";
      break;
    case 4:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)4]";
      break;
    case 5:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)5]";
      break;
    case 6:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)6]";
      break;
    case 7:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)7]";
      break;
    case 8:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)8]";
      break;
    case 9:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)9]";
      break;
    case 10:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)10]";
      break;
    case 11:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)11]";
      break;
    case 12:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)12]";
      break;
    case 13:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)13]";
      break;
    case 14:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)14]";
      break;
    case 15:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)15]";
      break;
    case 16:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)16]";
      break;
    case 17:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)17]";
      break;
    case 18:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)18]";
      break;
    case 19:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)19]";
      break;
    case 20:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)20]";
      break;
    case 21:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)21]";
      break;
    case 22:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)22]";
      break;
    case 23:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)23]";
      break;
    case 24:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)24]";
      break;
    case 25:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)25]";
      break;
    case 26:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)26]";
      break;
    case 27:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)27]";
      break;
    case 28:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)28]";
      break;
    case 29:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)29]";
      break;
    case 30:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)30]";
      break;
    case 31:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)31]";
      break;
    case 32:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)32]";
      break;
    case 33:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)33]";
      break;
    case 34:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)34]";
      break;
    case 35:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)35]";
      break;
    case 36:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)36]";
      break;
    case 37:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)37]";
      break;
    case 38:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)38]";
      break;
    case 39:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)39]";
      break;
    case 40:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)40]";
      break;
    case 41:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)41]";
      break;
    case 42:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)42]";
      break;
    case 43:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)43]";
      break;
    case 44:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)44]";
      break;
    case 45:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)45]";
      break;
    case 46:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)46]";
      break;
    case 47:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)47]";
      break;
    case 48:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)48]";
      break;
    case 49:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)49]";
      break;
    case 50:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)50]";
      break;
    case 51:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)51]";
      break;
    case 52:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)52]";
      break;
    case 53:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)53]";
      break;
    case 54:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)54]";
      break;
    case 55:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)55]";
      break;
    case 56:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)56]";
      break;
    case 57:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)57]";
      break;
    case 58:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)58]";
      break;
    case 59:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)59]";
      break;
    case 60:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)60]";
      break;
    case 61:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)61]";
      break;
    case 62:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)62]";
      break;
    case 63:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)63]";
      break;
    case 64:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)64]";
      break;
    case 65:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)65]";
      break;
    case 66:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)66]";
      break;
    case 67:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)67]";
      break;
    case 68:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)68]";
      break;
    case 69:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)69]";
      break;
    case 70:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)70]";
      break;
    case 71:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)71]";
      break;
    case 72:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)72]";
      break;
    case 73:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)73]";
      break;
    case 74:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)74]";
      break;
    case 75:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)75]";
      break;
    case 76:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)76]";
      break;
    case 77:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)77]";
      break;
    case 78:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)78]";
      break;
    case 79:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)79]";
      break;
    case 80:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)80]";
      break;
    case 81:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)81]";
      break;
    case 82:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)82]";
      break;
    case 83:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)83]";
      break;
    case 84:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)84]";
      break;
    case 85:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)85]";
      break;
    case 86:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)86]";
      break;
    case 87:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)87]";
      break;
    case 88:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)88]";
      break;
    case 89:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)89]";
      break;
    case 90:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)90]";
      break;
    case 91:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)91]";
      break;
    case 92:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)92]";
      break;
    case 93:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)93]";
      break;
    case 94:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)94]";
      break;
    case 95:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)95]";
      break;
    case 96:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)96]";
      break;
    case 97:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)97]";
      break;
    case 98:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)98]";
      break;
    case 99:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)99]";
      break;
    case 100:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)100]";
      break;
    case 101:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)101]";
      break;
    case 102:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)102]";
      break;
    case 103:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)103]";
      break;
    case 104:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)104]";
      break;
    case 105:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)105]";
      break;
    case 106:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)106]";
      break;
    case 107:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)107]";
      break;
    case 108:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)108]";
      break;
    case 109:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)109]";
      break;
    case 110:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)110]";
      break;
    case 111:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)111]";
      break;
    case 112:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)112]";
      break;
    case 113:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)113]";
      break;
    case 114:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)114]";
      break;
    case 115:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)115]";
      break;
    case 116:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)116]";
      break;
    case 117:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)117]";
      break;
    case 118:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)118]";
      break;
    case 119:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)119]";
      break;
    case 120:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)120]";
      break;
    case 121:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)121]";
      break;
    case 122:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)122]";
      break;
    case 123:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)123]";
      break;
    case 124:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)124]";
      break;
    case 125:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)125]";
      break;
    case 126:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)126]";
      break;
    case 127:
      result = "(vp::services::Audio_Issue_Detector_Node_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::services::Audio_Issue_Detector_Node_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Audio_Issue_Detector::Node_Decorator * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Issue_Detector::Node_Decorator>::new_object[abi:ne200100]<vp::vx::components::Audio_Issue_Detector::Node_Decorator,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,std::shared_ptr<vp::services::Audio_Issue_Detector> const&,std::shared_ptr<vp::services::Audio_Issue_Detector_Client> const&>(std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,std::shared_ptr<vp::services::Audio_Issue_Detector> const&,std::shared_ptr<vp::services::Audio_Issue_Detector_Client> const&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 168, 8);
  }

  return a1;
}

uint64_t vp::vx::io::Direction_Pair<std::vector<std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID>>>::~Direction_Pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory::~Node_Decorator_Factory(vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  std::__hash_table<vp::vx::io::Object_ID<vp::vx::io::Node>,std::hash<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::equal_to<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::allocator<vp::vx::io::Object_ID<vp::vx::io::Node>>>::~__hash_table(this + 40);
  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  std::__hash_table<vp::vx::io::Object_ID<vp::vx::io::Node>,std::hash<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::equal_to<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::allocator<vp::vx::io::Object_ID<vp::vx::io::Node>>>::~__hash_table(this + 40);
  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory::add_audio_issue_detector(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v6 = 24;
  if (!a3)
  {
    v6 = 0;
  }

  v7 = a1 + v6;
  v8 = *(a1 + v6 + 80);
  v9 = *(a1 + v6 + 88);
  v10 = v7 + 80;
  if (v8 != v9)
  {
    v11 = v8;
    while (*v11 != a2 || *(v11 + 1) != 0)
    {
      v11 += 12;
      if (v11 == v9)
      {
        goto LABEL_26;
      }
    }

    if (v11 != v9)
    {
      for (i = v11 + 12; i != v9; i += 12)
      {
        if (*i != a2 || *(i + 1) != 0)
        {
          *v11 = *i;
          *(v11 + 4) = *(i + 4);
          v11 += 12;
        }
      }
    }

    if (v11 != v9)
    {
      v15 = v11 + 12;
      if (v11 + 12 == v9)
      {
        v9 = v11;
      }

      else
      {
        do
        {
          *(v15 - 3) = *v15;
          *(v15 - 1) = *(v15 + 4);
          v15 += 12;
        }

        while (v15 != v9);
        v9 = v15 - 12;
      }

      *(v10 + 8) = v9;
    }
  }

LABEL_26:
  v16 = *(v10 + 16);
  if (v9 >= v16)
  {
    v18 = v9 - v8;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 2);
    v20 = v19 + 1;
    if (v19 + 1 > 0x1555555555555555)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v8) >> 2);
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    if (v21 >= 0xAAAAAAAAAAAAAAALL)
    {
      v22 = 0x1555555555555555;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v23 = *v10;
    v24 = 12 * v19;
    *v24 = a2;
    *(v24 + 4) = 0;
    *(v24 + 8) = a4;
    v17 = 12 * v19 + 12;
    v25 = v24 - v18;
    memcpy((v24 - v18), v8, v18);
    *v10 = v25;
    *(v10 + 8) = v17;
    *(v10 + 16) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v9 = a2;
    *(v9 + 1) = 0;
    v17 = (v9 + 12);
    *(v9 + 2) = a4;
  }

  *(v10 + 8) = v17;
  v26 = *(a1 + 48);
  if (!v26)
  {
    goto LABEL_56;
  }

  v27 = vcnt_s8(v26);
  v27.i16[0] = vaddlv_u8(v27);
  if (v27.u32[0] > 1uLL)
  {
    v28 = a2;
    if (v26 <= a2)
    {
      v28 = a2 % v26;
    }
  }

  else
  {
    v28 = (v26 - 1) & a2;
  }

  v29 = *(*(a1 + 40) + 8 * v28);
  if (!v29 || (v30 = *v29) == 0)
  {
LABEL_56:
    operator new();
  }

  while (1)
  {
    v31 = v30[1];
    if (v31 == a2)
    {
      break;
    }

    if (v27.u32[0] > 1uLL)
    {
      if (v31 >= v26)
      {
        v31 %= v26;
      }
    }

    else
    {
      v31 &= v26 - 1;
    }

    if (v31 != v28)
    {
      goto LABEL_56;
    }

LABEL_55:
    v30 = *v30;
    if (!v30)
    {
      goto LABEL_56;
    }
  }

  if (*(v30 + 4) != a2)
  {
    goto LABEL_55;
  }
}

void virtual thunk tovp::vx::io::wires::Audio_Pass_Through_Wire::~Audio_Pass_Through_Wire(vp::vx::io::wires::Audio_Pass_Through_Wire *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2881B3A70;
  *(v1 + 40) = &unk_2881B3AC8;
  *(v1 + 37) = &unk_2881C6630;
  v2 = *(v1 + 39);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(v1 + 4) = &unk_2881C6630;
  v3 = *(v1 + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 40) = &unk_2881C6630;
  v4 = *(v1 + 42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2881B3A70;
  *(v1 + 40) = &unk_2881B3AC8;
  *(v1 + 37) = &unk_2881C6630;
  v2 = *(v1 + 39);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(v1 + 4) = &unk_2881C6630;
  v3 = *(v1 + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 40) = &unk_2881C6630;
  v4 = *(v1 + 42);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::io::wires::Audio_Pass_Through_Wire::~Audio_Pass_Through_Wire(vp::vx::io::wires::Audio_Pass_Through_Wire *this)
{
  *this = &unk_2881B3A70;
  *(this + 40) = &unk_2881B3AC8;
  *(this + 37) = &unk_2881C6630;
  v2 = *(this + 39);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 4) = &unk_2881C6630;
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 40) = &unk_2881C6630;
  v4 = *(this + 42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B3A70;
  *(this + 40) = &unk_2881B3AC8;
  *(this + 37) = &unk_2881C6630;
  v2 = *(this + 39);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 4) = &unk_2881C6630;
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 40) = &unk_2881C6630;
  v4 = *(this + 42);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void virtual thunk tovp::vx::io::wires::Audio_Pass_Through_Wire::Source_Terminal::~Source_Terminal(vp::vx::io::wires::Audio_Pass_Through_Wire::Source_Terminal *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::wires::Audio_Pass_Through_Wire::Source_Terminal::~Source_Terminal(vp::vx::io::wires::Audio_Pass_Through_Wire::Source_Terminal *this)
{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::wires::Audio_Pass_Through_Wire::Source_Terminal::process(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, unint64_t a6@<D1>)
{
  if (a2 == 1)
  {
    LOBYTE(v17[0]) = 0;
    v20 = 1;
  }

  else
  {
    v21 = 0x18001600000004;
    v22 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Pass_Through_Wire.cpp";
    v24 = 0;
    v25 = 0;
    v23 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v17, &v21);
    if (SHIBYTE(v25) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, v23, v25 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((v20 & 1) == 0)
    {
      v16 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v17);
      if ((v20 & 1) == 0 && SHIBYTE(v18) < 0)
      {
        (*(*v19 + 24))(v19, v17[2], v18 & 0x7FFFFFFFFFFFFFFFLL, 1, v16);
      }

      return;
    }
  }

  if (!a3)
  {
LABEL_13:
    *a5 = 0;
    a5[48] = 1;
    return;
  }

  if (*(*(a4 + 8) + 56))
  {
    v10 = *(a1 + 8);
    LODWORD(a6) = *(a4 + 16);
    v11 = a6;
    if (vp::Audio_Ring_Buffer::write(*(v10 + 8), *a4, *(v10 + 152), (*(v10 + 152) + a6)))
    {
      v12 = *(a4 + 8);
      if (*(v10 + 144) & 1) == 0 && (*(v12 + 56))
      {
        *(v10 + 136) = *v12;
        *(v10 + 144) = 1;
        v12 = *(a4 + 8);
      }

      if ((*(v10 + 128) & 1) == 0 && (*(v12 + 56) & 2) != 0)
      {
        *(v10 + 120) = *(v12 + 1);
        *(v10 + 128) = 1;
        v12 = *(a4 + 8);
      }

      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      *(v10 + 104) = v12[3];
      *(v10 + 88) = v15;
      *(v10 + 72) = v14;
      *(v10 + 56) = v13;
      *(v10 + 152) = *(v10 + 152) + v11;
      goto LABEL_13;
    }

    v21 = 0x13006300000000;
    v22 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Pass_Through_Wire.cpp";
    v24 = 0;
    v25 = 0;
    v23 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
    vp::vx::io::operator<<<char const(&)[51]>(v17, &v21, "failed to write into destination audio ring buffer");
  }

  else
  {
    v21 = 0x13004F00000000;
    v22 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Pass_Through_Wire.cpp";
    v24 = 0;
    v25 = 0;
    v23 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
    vp::vx::io::operator<<<char const(&)[49]>(v17, &v21, "audio time stamp does not have valid sample time");
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v17);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v21);
  if (SHIBYTE(v25) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, v23, v25 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

__n128 vp::vx::io::wires::Audio_Pass_Through_Wire::Source_Terminal::get_time@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 72);
  *a2 = *(v2 + 56);
  *(a2 + 16) = v3;
  result = *(v2 + 88);
  v5 = *(v2 + 104);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  *(a2 + 64) = 1;
  return result;
}

__n128 vp::vx::io::wires::Audio_Pass_Through_Wire::Source_Terminal::get_format@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 8) + 8);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 33);
    v7 = v4;
    *v8 = *(v2 + 49);
    *&v8[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v7;
  *(a2 + 1) = v7;
  *(a2 + 17) = *v8;
  *(a2 + 32) = *&v8[15];
  *(a2 + 48) = 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void virtual thunk tovp::vx::io::wires::Audio_Pass_Through_Wire::Destination_Terminal::~Destination_Terminal(vp::vx::io::wires::Audio_Pass_Through_Wire::Destination_Terminal *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::wires::Audio_Pass_Through_Wire::Destination_Terminal::~Destination_Terminal(vp::vx::io::wires::Audio_Pass_Through_Wire::Destination_Terminal *this)
{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::wires::Audio_Pass_Through_Wire::Destination_Terminal::process(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, unint64_t a6@<D1>)
{
  if (a2)
  {
    v25 = 0x18001600000004;
    v26 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Pass_Through_Wire.cpp";
    v28 = 0;
    v29 = 0;
    v27 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v30);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v21, &v25);
    if (SHIBYTE(v29) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((v24 & 1) == 0)
    {
      v20 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v21);
      if ((v24 & 1) == 0 && SHIBYTE(v22) < 0)
      {
        (*(*v23 + 24))(v23, v21[2], v22 & 0x7FFFFFFFFFFFFFFFLL, 1, v20);
      }

      return;
    }
  }

  else
  {
    LOBYTE(v21[0]) = 0;
    v24 = 1;
  }

  if (a3)
  {
LABEL_13:
    *a5 = 0;
    a5[48] = 1;
    return;
  }

  v10 = *(a1 + 8);
  v11 = (v10 + 216);
  LODWORD(a6) = *(a4 + 16);
  v12 = a6;
  if (vp::Audio_Ring_Buffer::read(*(v10 + 8), *a4, *(v10 + 216), (*(v10 + 216) + a6)))
  {
    if (*(v10 + 128) == 1)
    {
      v13 = *(v10 + 112);
      if (v13 & 2) != 0 && (v13 & 1) != 0 && (*(v10 + 144))
      {
        v14 = *(v10 + 8);
        if (v14)
        {
          v15 = *(v14 + 32);
        }

        else
        {
          v15 = 0.0;
        }

        *(v10 + 224) = (*(v10 + 64) + llround((*(v10 + 216) / v15 - (*(v10 + 56) / v15 - *(v10 + 136) / v15)) * 24000000.0));
        *(v10 + 272) |= 2u;
      }
    }

    v16 = *(a4 + 8);
    v17 = *v11;
    v18 = *(v10 + 232);
    v19 = *(v10 + 264);
    v16[2] = *(v10 + 248);
    v16[3] = v19;
    *v16 = v17;
    v16[1] = v18;
    *v11 = *v11 + v12;
    goto LABEL_13;
  }

  v25 = 0x1300B000000000;
  v26 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Pass_Through_Wire.cpp";
  v28 = 0;
  v29 = 0;
  v27 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v30);
  vp::vx::io::operator<<<char const(&)[50]>(v21, &v25, "failed to read from destination audio ring buffer");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v21);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v25);
  if (SHIBYTE(v29) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v30, v27, v29 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

__n128 vp::vx::io::wires::Audio_Pass_Through_Wire::Destination_Terminal::get_time@<Q0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = 152;
  if (!a2)
  {
    v3 = 216;
  }

  v4 = *(a1 + 8) + v3;
  v5 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v5;
  result = *(v4 + 32);
  v7 = *(v4 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  *(a3 + 64) = 1;
  return result;
}

__n128 vp::vx::io::wires::Audio_Pass_Through_Wire::Destination_Terminal::get_format@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 8) + 8);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 33);
    v7 = v4;
    *v8 = *(v2 + 49);
    *&v8[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v7;
  *(a2 + 1) = v7;
  *(a2 + 17) = *v8;
  *(a2 + 32) = *&v8[15];
  *(a2 + 48) = 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::components::Audio_Reblocker::configure(std::__shared_weak_count **this)
{
  *(&v33[3] + 4) = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Audio_Reblocker]", 35);
    v4 = v24[15];
    v5 = v24[15];
    v6 = *v24;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      p_p = __p;
      if (v5 >= 0)
      {
        p_p = &__p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v33[0] = p_p;
      LOWORD(v33[1]) = 2080;
      *(&v33[1] + 2) = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v24[15];
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v11 = this[3];
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11), (v13 = v12) == 0) || (v14 = this[2], atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  (v14->__on_zero_shared)(&__p, v14, 55);
  v27 = __p;
  v28 = *v24;
  *v24 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  (v14->__on_zero_shared)(&__p, v14, 58);
  v25 = __p;
  v26 = *v24;
  *v24 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  v15 = 0;
  v31 = 0x100000000;
  do
  {
    v16 = *&buf[v15 - 8];
    v17 = this[1];
    __p = 0;
    *v24 = v17;
    *&v24[8] = xmmword_2727565A0;
    v18 = (v17->__on_zero_shared)(v17, 56, 8);
    vp::vx::data_flow::State<void>::State(buf, &v27);
    vp::vx::data_flow::State<void>::State(&v29, &v25);
    *v18 = &unk_2881B3E30;
    *(v18 + 8) = *buf;
    *(v18 + 16) = *(v33 + 4);
    *(v33 + 4) = 0uLL;
    *(v18 + 32) = v29;
    *(v18 + 40) = v30;
    v30 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v29);
    vp::vx::data_flow::State<void>::~State(buf);
    std::unique_ptr<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory>>::reset[abi:ne200100](&__p, v18);
    v19 = v16 != 0;
    if (__p)
    {
      operator new();
    }

    v20 = &this[2 * v19 + 6];
    __p = 0;
    v21 = v20[1];
    *v20 = 0u;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    std::unique_ptr<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory>>::reset[abi:ne200100](&__p, 0);
    v15 += 4;
  }

  while (v15 != 8);
  vp::vx::data_flow::State<void>::~State(&v25);
  vp::vx::data_flow::State<void>::~State(&v27);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2725D3530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if ((v19 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory>::operator()(result + 1, v3);
  }

  return result;
}

uint64_t vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory>::operator()(void *a1, uint64_t a2)
{
  vp::vx::data_flow::State<void>::~State((a2 + 32));
  vp::vx::data_flow::State<void>::~State((a2 + 8));
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(**a1 + 24);

  return v6();
}

void std::__shared_ptr_pointer<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory *,vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory>,std::allocator<vp::vx::components::Audio_Reblocker::Node_Decorator_Factory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Audio_Reblocker::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Reblocker::set_state_observer(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 40);
  *(a1 + 32) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Reblocker::~Audio_Reblocker(std::__shared_weak_count **this)
{
  vp::vx::components::Audio_Reblocker::~Audio_Reblocker(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Reblocker]", 35);
    v4 = v17;
    v5 = v17;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v17;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[9];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[7];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[5];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = this[3];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Audio_Reblocker::Node_Decorator::~Node_Decorator(vp::vx::components::Audio_Reblocker::Node_Decorator *this)
{
  v1 = (this + *(*this - 24));
  vp::vx::components::Audio_Reblocker::Node_Decorator::~Node_Decorator(v1);
  *(v1 + 56) = &unk_2881C6630;
  v2 = *(v1 + 58);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Audio_Reblocker::Node_Decorator::~Node_Decorator((this + *(*this - 24)));
  *(v1 + 448) = &unk_2881C6630;
  v2 = *(v1 + 464);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::components::Audio_Reblocker::Node_Decorator::~Node_Decorator(vp::vx::components::Audio_Reblocker::Node_Decorator *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    std::allocator_traits<vp::Allocator<vp::vx::io::Node_Process_Data>>::deallocate[abi:ne200100](*(this + 28), v2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 27) - v2) >> 3));
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    std::allocator_traits<vp::Allocator<vp::vx::io::Node_Process_Data>>::deallocate[abi:ne200100](*(this + 24), v3, 0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - v3) >> 3));
  }

  v4 = (this + 136);
  std::vector<vp::Audio_Buffer,vp::Allocator<vp::Audio_Buffer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 104);
  std::vector<vp::Audio_Buffer,vp::Allocator<vp::Audio_Buffer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 72);
  std::vector<vp::Audio_Ring_Buffer,vp::Allocator<vp::Audio_Ring_Buffer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 40);
  std::vector<vp::Audio_Ring_Buffer,vp::Allocator<vp::Audio_Ring_Buffer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = off_2881B3E60;
  *(this + 56) = off_2881B3EF8;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
}

{
  vp::vx::components::Audio_Reblocker::Node_Decorator::~Node_Decorator(this);
  *(v1 + 448) = &unk_2881C6630;
  v2 = *(v1 + 464);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::components::Audio_Reblocker::Node_Decorator::~Node_Decorator(this);
  *(v1 + 448) = &unk_2881C6630;
  v2 = *(v1 + 464);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t **std::vector<vp::Audio_Buffer,vp::Allocator<vp::Audio_Buffer>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](--v3, 0);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v7 = v5[3];
    v8 = (v5[2] - v4) >> 3;

    return std::allocator_traits<vp::Allocator<vp::Audio_Buffer>>::deallocate[abi:ne200100](v7, v4, v8);
  }

  return result;
}

uint64_t **std::vector<vp::Audio_Ring_Buffer,vp::Allocator<vp::Audio_Ring_Buffer>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](--v3, 0);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    v7 = v5[3];
    v8 = (v5[2] - v4) >> 3;

    return std::allocator_traits<vp::Allocator<vp::Audio_Ring_Buffer>>::deallocate[abi:ne200100](v7, v4, v8);
  }

  return result;
}

uint64_t vp::vx::components::Audio_Reblocker::Node_Decorator::process@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  LOBYTE(v87[0]) = 0;
  v92 = 1;
  v79 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v13 = (a1 + 232);
  if ((*(a1 + 296) & 1) == 0)
  {
    v14 = *(a2 + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[3];
    *(a1 + 264) = v14[2];
    *(a1 + 280) = v17;
    *v13 = v15;
    *(a1 + 248) = v16;
    *(a1 + 296) = 1;
  }

  v18 = (a1 + 376);
  if ((*(a1 + 440) & 1) == 0)
  {
    v19 = *(a4 + 8);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[3];
    *(a1 + 408) = v19[2];
    *(a1 + 424) = v22;
    *v18 = v20;
    *(a1 + 392) = v21;
    *(a1 + 440) = 1;
  }

  if ((*(a1 + 368) & 1) == 0)
  {
    v23 = a1 + 304;
    v24 = *(a4 + 8);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[3];
    *(a1 + 336) = v24[2];
    *(a1 + 352) = v27;
    *(a1 + 304) = v25;
    *(a1 + 320) = v26;
    *(a1 + 368) = 1;
    if (a5)
    {
      v28 = (a5 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v29 = vdupq_n_s64(a5 - 1);
      v30 = xmmword_2727564E0;
      v31 = (*(a1 + 200) + 32);
      v32 = vdupq_n_s64(2uLL);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v29, v30));
        if (v33.i8[0])
        {
          *(v31 - 3) = v23;
        }

        if (v33.i8[4])
        {
          *v31 = v23;
        }

        v30 = vaddq_s64(v30, v32);
        v31 += 6;
        v28 -= 2;
      }

      while (v28);
    }
  }

  v34 = *(a1 + 248);
  v86[0] = *v13;
  v86[1] = v34;
  v35 = *(a1 + 280);
  v86[2] = *(a1 + 264);
  v86[3] = v35;
  if (a3)
  {
    v36 = (a3 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v37 = vdupq_n_s64(a3 - 1);
    v38 = xmmword_2727564E0;
    v39 = (*(a1 + 168) + 32);
    v40 = vdupq_n_s64(2uLL);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v37, v38));
      if (v41.i8[0])
      {
        *(v39 - 3) = v86;
      }

      if (v41.i8[4])
      {
        *v39 = v86;
      }

      v38 = vaddq_s64(v38, v40);
      v39 += 6;
      v36 -= 2;
    }

    while (v36);
    v42 = 0;
    v43 = (a2 + 8);
    do
    {
      if ((vp::Audio_Ring_Buffer::write(*(*(a1 + 40) + 8 * v42), *(v43 - 1), **v43, **v43 + a6) & 1) == 0)
      {
        v69 = 0x4F00000002;
LABEL_69:
        v71 = v69 & 0xFFFFFFFFFFFFLL | 0x27000000000000;
LABEL_70:
        v81 = v71;
        *&v82 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/components/Audio_Reblocker+Node_Decorator.cpp";
        v83 = 0uLL;
        *(&v82 + 1) = 0;
        result = vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v84);
        v72 = HIDWORD(v81);
        v73 = v84;
        v75 = v82;
        v74 = v83;
        *a7 = v81;
        *(a7 + 4) = v72;
        *(a7 + 8) = v75;
        *(a7 + 24) = v74;
        *(a7 + 40) = v73;
        *(a7 + 48) = 0;
        goto LABEL_71;
      }

      ++v42;
      v43 += 3;
    }

    while (a3 != v42);
  }

  v77 = a4;
  v78 = a7;
LABEL_24:
  v45 = *(a1 + 40);
  v44 = *(a1 + 48);
  while (1)
  {
    if (v45 == v44)
    {
      a7 = v78;
      if (a3)
      {
        v52 = 0;
        while (1)
        {
          v53 = *(*(a1 + 104) + 8 * v52);
          v54 = v53 ? *(v53 + 80) : 0;
          if ((vp::Audio_Ring_Buffer::read(*(*(a1 + 40) + 8 * v52), v54, *(a1 + 232), *(a1 + 232) + v79) & 1) == 0)
          {
            break;
          }

          if (a3 == ++v52)
          {
            goto LABEL_43;
          }
        }

        v70 = 0x5900000002;
        goto LABEL_67;
      }

LABEL_43:
      v55 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 3);
      v56 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 208) - *(a1 + 200)) >> 3);
      (*(**(a1 + 8) + 80))(&v81);
      caulk::expected<void,vp::vx::io::Error>::operator=(v87, &v81);
      if ((v85 & 1) == 0 && SHIBYTE(v83) < 0)
      {
        (*(*v84 + 24))(v84, *(&v82 + 1), *(&v83 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      if (a5)
      {
        v57 = 0;
        while (1)
        {
          v58 = *(*(a1 + 136) + 8 * v57);
          v59 = v58 ? *(v58 + 80) : 0;
          if ((vp::Audio_Ring_Buffer::write(*(*(a1 + 72) + 8 * v57), v59, *(a1 + 232) + v79, *(a1 + 232) + v79 + v79) & 1) == 0)
          {
            break;
          }

          if (a5 == ++v57)
          {
            goto LABEL_53;
          }
        }

        v70 = 0x6700000002;
LABEL_67:
        v71 = v70 & 0xFFFFFFFFFFFFLL | 0x2B000000000000;
        goto LABEL_70;
      }

LABEL_53:
      v60 = *(a1 + 288);
      v61 = *(a1 + 232);
      if ((v60 & 1) == 0)
      {
        v61 = 0.0;
      }

      *(a1 + 288) = v60 | 1;
      *(a1 + 232) = v61 + v79;
      goto LABEL_24;
    }

    v46 = *v45;
    if (!*v45)
    {
      v76 = *(a1 + 296);
LABEL_76:
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((*(a1 + 296) & 1) == 0)
    {
      goto LABEL_76;
    }

    v48 = *(v46 + 72);
    v47 = *(v46 + 80);
    v49 = *(a1 + 232);
    result = (*(**(a1 + 8) + 32))(*(a1 + 8));
    if (v47 <= v48)
    {
      break;
    }

    if (result)
    {
      if (v47 < v49 + result || v48 > v49)
      {
        break;
      }
    }

    ++v45;
  }

  a7 = v78;
  if (a5)
  {
    v62 = 0;
    v63 = (v77 + 8);
    while (1)
    {
      result = vp::Audio_Ring_Buffer::read(*(*(a1 + 72) + 8 * v62), *(v63 - 1), *(a1 + 376), *(a1 + 376) + a6);
      if (!result)
      {
        break;
      }

      *v63 = v18;
      v63 += 3;
      if (a5 == ++v62)
      {
        goto LABEL_60;
      }
    }

    v69 = 0x7300000002;
    goto LABEL_69;
  }

LABEL_60:
  v64 = *(a1 + 432);
  v65 = *(a1 + 376);
  if ((v64 & 1) == 0)
  {
    v65 = 0.0;
  }

  *(a1 + 432) = v64 | 1;
  *(a1 + 376) = v65 + a6;
  *v78 = 0;
  v66 = v92;
  *(v78 + 48) = v92;
  if ((v66 & 1) == 0)
  {
    v67 = v87[1];
    *v78 = v87[0];
    *(v78 + 4) = v67;
    *(v78 + 8) = v88;
    *(v78 + 16) = v89;
    v68 = v91;
    *(v78 + 32) = v90;
    *(v78 + 40) = v68;
    v89 = 0uLL;
    v90 = 0;
  }

LABEL_71:
  if ((v92 & 1) == 0 && SHIBYTE(v90) < 0)
  {
    return (*(*v91 + 24))(v91, v89, v90 & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

int *caulk::expected<void,vp::vx::io::Error>::operator=(int *a1, int *a2)
{
  v24 = *(a2 + 48);
  v3 = v24;
  if (v24 == 1)
  {
    if (a1[12])
    {
      return a1;
    }

    v4 = *a1;
    v5 = a1[1];
    v6 = *(a1 + 1);
    v7 = *(a1 + 2);
    v8 = *(a1 + 3);
    v9 = *(a1 + 4);
    v10 = *(a1 + 5);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a1 + 2) = 0;
    v23 = v10;
    if (v9 < 0)
    {
      std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(v22, v7, v8);
      v11 = *(a1 + 48);
      *(a1 + 48) = v24;
      (*(*v10 + 24))(v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL, 1);
    }

    else
    {
      v11 = 0;
      *v22 = v7;
      *&v22[16] = v9;
      *(a1 + 48) = v3;
    }
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    v15 = *(a2 + 1);
    *v22 = *(a2 + 1);
    v16 = *(a2 + 5);
    *&v22[16] = *(a2 + 4);
    v23 = v16;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 2) = 0;
    if (*(a1 + 48) == 1)
    {
      *a1 = v12;
      *(a1 + 2) = v13;
      *(a1 + 3) = v14;
      *(a1 + 1) = v15;
      *(a1 + 1) = *v22;
      *(a1 + 4) = *&v22[16];
      *(a1 + 5) = v16;
      memset(v22, 0, sizeof(v22));
      *(a1 + 48) = v3;
      return a1;
    }

    v11 = 0;
    v17 = *v22;
    v18 = *&v22[8];
    *v22 = 0uLL;
    v20 = *(a1 + 4);
    v19 = *(a1 + 5);
    *v22 = *(a1 + 1);
    *&v22[16] = v20;
    v23 = v19;
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *a1 = v12;
    *(a1 + 2) = v13;
    *(a1 + 3) = v14;
    *(a1 + 1) = v15;
    *(a1 + 2) = v17;
    *(a1 + 6) = v18;
    *(a1 + 5) = v16;
  }

  if ((v11 & 1) == 0 && (v22[23] & 0x80000000) != 0)
  {
    (*(*v23 + 24))(v23, *v22, *&v22[16] & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return a1;
}

void vp::vx::components::Audio_Reblocker::Node_Decorator_Factory::new_node_decorator(int *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value(a1 + 2, buf);
  v10 = *vp::vx::data_flow::Value::view_storage(buf);
  vp::vx::data_flow::Value::~Value(buf);
  if (v10)
  {
    default_resource = std::pmr::get_default_resource(v11);
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = default_resource;
    vp::vx::data_flow::State<void>::get_value(a1 + 8, buf);
    v13 = *vp::vx::data_flow::Value::view_storage(buf);
    vp::vx::data_flow::Value::~Value(buf);
    if (!v13)
    {
      v14 = (*(**a3 + 32))();
      v15 = (*(**a3 + 40))();
      if (!v15)
      {
        if (v10 % v14)
        {
          log = vp::get_log(v15);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Reblocker::Node_Decorator_Factory]", 59);
            v20 = v34;
            v21 = __p[1];
            v22 = vp::get_log(log_context_info);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              if ((v20 & 0x80u) == 0)
              {
                v23 = v20;
              }

              else
              {
                v23 = v21;
              }

              if ((v34 & 0x80u) == 0)
              {
                v24 = __p;
              }

              else
              {
                v24 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = v24;
              if (v23)
              {
                v25 = " ";
              }

              else
              {
                v25 = "";
              }

              *&buf[12] = 2080;
              *&buf[14] = v25;
              *&buf[22] = 1024;
              v36 = a2;
              _os_log_impl(&dword_2724B4000, v22, OS_LOG_TYPE_DEFAULT, "%s%sadding reblocker to node %u", buf, 0x1Cu);
            }

            if (v34 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v28[0] = a4;
          v26 = (*(*a4 + 16))(a4, 472, 8);
          v28[1] = v30;
          v28[2] = v28;
          v29 = 0;
          v27 = *a3;
          *a3 = 0;
          v30[0] = v26;
          v30[1] = v27;
          v31 = *(a3 + 1);
          v32 = a3[3];
          *(v26 + 448) = &unk_2881C6630;
          operator new();
        }
      }
    }
  }

  v16 = *a3;
  *a3 = 0;
  *a5 = v16;
  *(a5 + 8) = *(a3 + 1);
  *(a5 + 24) = a3[3];
  v17 = *MEMORY[0x277D85DE8];
}

void sub_2725D4F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, vp::vx::components::Audio_Reblocker::Node_Decorator *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](&a22, 0);
    std::__exception_guard_exceptions<vp::vx::components::Audio_Reblocker::Node_Decorator * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Reblocker::Node_Decorator>::new_object[abi:ne200100]<vp::vx::components::Audio_Reblocker::Node_Decorator,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>>(std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](&a18);
    std::unique_ptr<vp::vx::components::Audio_Reblocker::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator>>::reset[abi:ne200100](&a13, 0);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

vp::vx::components::Audio_Reblocker::Node_Decorator **std::unique_ptr<vp::vx::components::Audio_Reblocker::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Audio_Reblocker::Node_Decorator>>::reset[abi:ne200100](vp::vx::components::Audio_Reblocker::Node_Decorator **result, vp::vx::components::Audio_Reblocker::Node_Decorator *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::components::Audio_Reblocker::Node_Decorator::~Node_Decorator(v2);
    *(v2 + 56) = &unk_2881C6630;
    v4 = *(v2 + 58);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Audio_Reblocker::Node_Decorator * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Reblocker::Node_Decorator>::new_object[abi:ne200100]<vp::vx::components::Audio_Reblocker::Node_Decorator,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>>(std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>> &&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 472, 8);
  }

  return a1;
}

char **std::vector<vp::Audio_Ring_Buffer,vp::Allocator<vp::Audio_Ring_Buffer>>::resize(char **result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  v7 = v6 >> 3;
  if (a2 <= v6 >> 3)
  {
    if (a2 < v7)
    {
      v29 = &v4[8 * a2];
      while (v5 != v29)
      {
        v5 -= 8;
        result = std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v5, 0);
      }

      v3[1] = v29;
    }
  }

  else
  {
    v8 = a2 - v7;
    v9 = result[2];
    if (v8 <= (v9 - v5) >> 3)
    {
      v30 = 0;
      v31 = &v5[8 * v8];
      v32 = (8 * a2 - v6 - 8) >> 3;
      v33 = (v32 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v34 = vdupq_n_s64(v32);
      v35 = v5 + 8;
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v30), xmmword_2727564E0)));
        if (v36.i8[0])
        {
          *(v35 - 1) = 0;
        }

        if (v36.i8[4])
        {
          *v35 = 0;
        }

        v30 += 2;
        v35 += 2;
      }

      while (v33 != v30);
      result[1] = v31;
    }

    else
    {
      if (a2 >> 61)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v10 = v9 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= a2)
      {
        v11 = a2;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      result = (*(*result[3] + 16))(result[3], 8 * v12, 8);
      v13 = 0;
      v14 = result + v6;
      v15 = (8 * a2 - v6 - 8) >> 3;
      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v18 = (result + v6 + 8);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v13), xmmword_2727564E0)));
        if (v19.i8[0])
        {
          *(v18 - 1) = 0;
        }

        if (v19.i8[4])
        {
          *v18 = 0;
        }

        v13 += 2;
        v18 += 2;
      }

      while (v17 != v13);
      *&v20 = &result[a2];
      *(&v20 + 1) = &result[v12];
      v21 = *v3;
      v22 = v3[1];
      v23 = &v14[*v3 - v22];
      if (v22 != *v3)
      {
        v37 = v20;
        v24 = *v3;
        v25 = v23;
        do
        {
          v26 = *v24;
          *v24 = 0;
          v24 += 8;
          *v25 = v26;
          v25 += 8;
        }

        while (v24 != v22);
        do
        {
          result = std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v21, 0);
          v21 += 8;
        }

        while (v21 != v22);
        v21 = *v3;
        v20 = v37;
      }

      *v3 = v23;
      v27 = v3[2];
      *(v3 + 1) = v20;
      if (v21)
      {
        v28 = v3[3];

        return std::allocator_traits<vp::Allocator<vp::Audio_Ring_Buffer>>::deallocate[abi:ne200100](v28, v21, (v27 - v21) >> 3);
      }
    }
  }

  return result;
}

char **std::vector<vp::Audio_Buffer,vp::Allocator<vp::Audio_Buffer>>::resize(char **result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  v7 = v6 >> 3;
  if (a2 <= v6 >> 3)
  {
    if (a2 < v7)
    {
      v29 = &v4[8 * a2];
      while (v5 != v29)
      {
        v5 -= 8;
        result = std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v5, 0);
      }

      v3[1] = v29;
    }
  }

  else
  {
    v8 = a2 - v7;
    v9 = result[2];
    if (v8 <= (v9 - v5) >> 3)
    {
      v30 = 0;
      v31 = &v5[8 * v8];
      v32 = (8 * a2 - v6 - 8) >> 3;
      v33 = (v32 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v34 = vdupq_n_s64(v32);
      v35 = v5 + 8;
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v30), xmmword_2727564E0)));
        if (v36.i8[0])
        {
          *(v35 - 1) = 0;
        }

        if (v36.i8[4])
        {
          *v35 = 0;
        }

        v30 += 2;
        v35 += 2;
      }

      while (v33 != v30);
      result[1] = v31;
    }

    else
    {
      if (a2 >> 61)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v10 = v9 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= a2)
      {
        v11 = a2;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      result = (*(*result[3] + 16))(result[3], 8 * v12, 8);
      v13 = 0;
      v14 = result + v6;
      v15 = (8 * a2 - v6 - 8) >> 3;
      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v18 = (result + v6 + 8);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v13), xmmword_2727564E0)));
        if (v19.i8[0])
        {
          *(v18 - 1) = 0;
        }

        if (v19.i8[4])
        {
          *v18 = 0;
        }

        v13 += 2;
        v18 += 2;
      }

      while (v17 != v13);
      *&v20 = &result[a2];
      *(&v20 + 1) = &result[v12];
      v21 = *v3;
      v22 = v3[1];
      v23 = &v14[*v3 - v22];
      if (v22 != *v3)
      {
        v37 = v20;
        v24 = *v3;
        v25 = v23;
        do
        {
          v26 = *v24;
          *v24 = 0;
          v24 += 8;
          *v25 = v26;
          v25 += 8;
        }

        while (v24 != v22);
        do
        {
          result = std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v21, 0);
          v21 += 8;
        }

        while (v21 != v22);
        v21 = *v3;
        v20 = v37;
      }

      *v3 = v23;
      v27 = v3[2];
      *(v3 + 1) = v20;
      if (v21)
      {
        v28 = v3[3];

        return std::allocator_traits<vp::Allocator<vp::Audio_Buffer>>::deallocate[abi:ne200100](v28, v21, (v27 - v21) >> 3);
      }
    }
  }

  return result;
}

void std::vector<vp::vx::io::Node_Process_Data,vp::Allocator<vp::vx::io::Node_Process_Data>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v4 - *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return;
    }

    v24 = v3 + 24 * a2;
    goto LABEL_21;
  }

  v8 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3) >= v7)
  {
    v25 = 24 * ((24 * v7 - 24) / 0x18) + 24;
    bzero(*(a1 + 8), v25);
    v24 = v4 + v25;
LABEL_21:
    *(a1 + 8) = v24;
    return;
  }

  if (a2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3);
  v10 = 2 * v9;
  if (2 * v9 <= a2)
  {
    v10 = a2;
  }

  if (v9 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v10;
  }

  if (v11 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 3 * v11;
  v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), 24 * v11, 8);
  v14 = (v13 + v5);
  v15 = v13 + 8 * v12;
  v16 = 24 * ((24 * v7 - 24) / 0x18) + 24;
  bzero(v14, v16);
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = &v14[*a1 - v18];
  if (v18 != *a1)
  {
    v20 = &v14[*a1 - v18];
    do
    {
      v21 = *v17;
      *(v20 + 2) = *(v17 + 16);
      *v20 = v21;
      v20 += 24;
      v17 += 24;
    }

    while (v17 != v18);
    v17 = *a1;
  }

  *a1 = v19;
  *(a1 + 8) = &v14[v16];
  v22 = *(a1 + 16);
  *(a1 + 16) = v15;
  if (v17)
  {
    v23 = *(a1 + 24);

    std::allocator_traits<vp::Allocator<vp::vx::io::Node_Process_Data>>::deallocate[abi:ne200100](v23, v17, 0xAAAAAAAAAAAAAAABLL * ((v22 - v17) >> 3));
  }
}

uint64_t *std::vector<vp::vx::io::Node_Process_Data,vp::Allocator<vp::vx::io::Node_Process_Data>>::~vector[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    std::allocator_traits<vp::Allocator<vp::vx::io::Node_Process_Data>>::deallocate[abi:ne200100](a1[3], v2, 0xAAAAAAAAAAAAAAABLL * ((a1[2] - v2) >> 3));
  }

  return a1;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<unsigned int>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void vp::vx::components::Audio_Reblocker::Node_Decorator_Factory::~Node_Decorator_Factory(vp::vx::components::Audio_Reblocker::Node_Decorator_Factory *this)
{
  vp::vx::data_flow::State<void>::~State(this + 8);
  vp::vx::data_flow::State<void>::~State(this + 2);

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::data_flow::State<void>::~State(this + 8);
  vp::vx::data_flow::State<void>::~State(this + 2);
}

void **std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](void **result, void *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return (*(**v3 + 24))(*v3, v3, v3[1], v3[2]);
  }

  return result;
}

void **vp::Audio_Ring_Buffer::create(void **a1, __int128 *a2, int a3, uint64_t a4)
{
  *a1 = 0;
  v7 = *(a2 + 7);
  v8 = *(a2 + 6) * a3;
  v9 = *(a2 + 3);
  if (((*(a2 + 24) * a3) & 0x3F) != 0)
  {
    v10 = (*(a2 + 6) * a3) - ((*(a2 + 24) * a3) & 0x3F) + 64;
  }

  else
  {
    v10 = (*(a2 + 6) * a3);
  }

  v11 = (*(a2 + 3) & 0x20) == 0;
  if ((v9 & 0x20) != 0)
  {
    v12 = (16 * v7) | 8;
  }

  else
  {
    v12 = 24;
  }

  if ((v9 & 0x20) != 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = 1;
  }

  v14 = 8 * v13;
  v34 = v13;
  v35 = v14 + 120;
  v36 = v14 + 120 + v12;
  v15 = v12 + v36 + 63;
  v16 = v15 & 0x3FFFFFFFC0;
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a2 + 7);
  }

  v33 = v15 & 0x3FFFFFFFC0;
  v18 = v16 + v10 * v13;
  if (((v10 * v13) & 7) != 0)
  {
    v19 = v18 - ((v10 * v13) & 7) + 8;
  }

  else
  {
    v19 = v16 + v10 * v13;
  }

  v20 = (*(*a4 + 16))(a4, (v19 + 63) & 0xFFFFFFFFFFFFFFC0, 64);
  bzero(v20, v18);
  *v20 = a4;
  v20[1] = v19;
  v20[2] = 64;
  *(v20 + 6) = a3;
  v21 = *a2;
  v22 = a2[1];
  v20[8] = *(a2 + 4);
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  v20[12] = v20 + 15;
  if (v34)
  {
    v23 = 0;
    v24 = v20 + v33;
    do
    {
      if (a3)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *(v20[12] + v23) = v25;
      v23 += 8;
      v24 += v10;
    }

    while (v14 != v23);
    v26 = 0;
    v27 = 0;
    v20[13] = v20 + v35;
    *(v20 + v35) = v34;
    do
    {
      v28 = *(v20[12] + v27);
      v29 = v20[13] + v26;
      *(v29 + 8) = v17;
      *(v29 + 12) = v8;
      *(v29 + 16) = v28;
      v27 += 8;
      v26 += 16;
    }

    while (8 * v34 != v27);
    v30 = 0;
    v20[14] = v20 + v36;
    *(v20 + v36) = v34;
    do
    {
      v31 = v20[14] + v30;
      *(v31 + 8) = v17;
      *(v31 + 12) = 0;
      *(v31 + 16) = 0;
      v30 += 16;
    }

    while (16 * v34 != v30);
  }

  else
  {
    *(v20 + v35) = 0;
    v20[13] = v20 + v35;
    v20[14] = v20 + v36;
    *(v20 + v36) = 0;
  }

  v40 = 0;
  v41 = 0;
  v42 = 1;
  v39 = 1;
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](&v41, 0);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](&v40, 0);
  v38 = 0;
  v41 = 0;
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](a1, v20);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](&v41, 0);
  return std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](&v38, 0);
}

uint64_t vp::Audio_Ring_Buffer::read(uint64_t a1, AudioBufferList *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_42:
    _os_crash();
    __break(1u);
LABEL_43:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!a2)
  {
    goto LABEL_43;
  }

  v6 = *(a1 + 104);
  mNumberBuffers = v6->mNumberBuffers;
  if (mNumberBuffers != a2->mNumberBuffers)
  {
    goto LABEL_10;
  }

  if (mNumberBuffers)
  {
    mBuffers = v6->mBuffers;
    p_mData = &a2->mBuffers[0].mData;
    while (*p_mData)
    {
      if (mBuffers->mNumberChannels != *(p_mData - 2))
      {
        goto LABEL_10;
      }

      ++mBuffers;
      p_mData += 2;
      if (!--mNumberBuffers)
      {
        goto LABEL_9;
      }
    }

    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

LABEL_9:
  v12 = a4 - a3;
  if (a4 < a3)
  {
    goto LABEL_10;
  }

  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  if (v16 <= v15)
  {
    v17 = *(a1 + 80);
    v18 = *(a1 + 72);
    if (a4 <= a3)
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if (a4 <= a3 || v16 >= a4 && v15 <= a3)
    {
      goto LABEL_11;
    }

    if (a3 <= v15)
    {
      v18 = *(a1 + 72);
    }

    else
    {
      v18 = a3;
    }

    if (v16 >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = *(a1 + 80);
    }
  }

  if (v17 <= v18)
  {
    goto LABEL_10;
  }

  if (a3 <= v15)
  {
    v19 = *(a1 + 72);
  }

  else
  {
    v19 = a3;
  }

  if (v16 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = *(a1 + 80);
  }

  if (v16 <= v15)
  {
    v21 = *(a1 + 80);
  }

  else
  {
    v21 = v20;
  }

  if (v16 <= v15)
  {
    v22 = *(a1 + 72);
  }

  else
  {
    v22 = v19;
  }

  if (v22 == a3)
  {
    result = data & vp::for_each_buffer(&a2->mNumberBuffers, v21 - a3, a4 - v21);
  }

  else
  {
    v24 = v22 - v21 + v12;
    result = v25 & vp::for_each_buffer(&a2->mNumberBuffers, vp::fill, v24);
  }

LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725D5ED8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::load_data(AudioBufferList *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, const AudioBufferList *a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 <= a2 || (v11 = a8 - a7, a8 > a7) && (a3 < a8 || a2 > a7))
  {
    memset(v20, 0, sizeof(v20));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = (a7 + a5 - a2) % a4;
  if (v12 + v11 <= a4)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v20, a1);
    v18 = *&v20[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v20, a6);
    result = vp::for_each_buffer_pair(*&v20[0], a9, v18, v12, vp::copy, v11);
  }

  else
  {
    v13 = a4 - v12;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v20, a1);
    v14 = *&v20[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v20, a6);
    v15 = vp::for_each_buffer_pair(*&v20[0], a9, v14, v12, vp::copy, v13);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v20, a1);
    v16 = *&v20[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v20, a6);
    result = v15 & vp::for_each_buffer_pair(*&v20[0], v13 + a9, v16, 0, vp::copy, v11 - v13);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725D60FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::Audio_Ring_Buffer::write(uint64_t a1, AudioBufferList *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_108:
    _os_crash();
    __break(1u);
    goto LABEL_109;
  }

  if (!a2)
  {
LABEL_109:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_110:
    _os_crash();
    __break(1u);
    goto LABEL_111;
  }

  v4 = a4;
  v6 = *(a1 + 104);
  mNumberBuffers = v6->mNumberBuffers;
  if (mNumberBuffers == a2->mNumberBuffers)
  {
    v8 = a3;
    if (mNumberBuffers)
    {
      mBuffers = v6->mBuffers;
      p_mData = &a2->mBuffers[0].mData;
      while (*p_mData)
      {
        if (mBuffers->mNumberChannels != *(p_mData - 2))
        {
          goto LABEL_10;
        }

        ++mBuffers;
        p_mData += 2;
        if (!--mNumberBuffers)
        {
          goto LABEL_9;
        }
      }

      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_108;
    }

LABEL_9:
    v11 = v4 - a3;
    if (v4 >= a3)
    {
      v46 = *(a1 + 72);
      v14 = *(a1 + 88);
      v15 = *(a1 + 24);
      v16 = v11 == v15;
      if (v11 < v15)
      {
        v17 = *(a1 + 72);
        v18 = *(a1 + 80);
        if (v17 >= a3)
        {
          if (v4 <= a3)
          {
            v30 = a3;
          }

          else
          {
            v30 = *(a1 + 72);
          }

          if (v18 <= v4)
          {
            v31 = v4;
          }

          else
          {
            v31 = *(a1 + 80);
          }

          if (v18 >= v4)
          {
            v32 = v4;
          }

          else
          {
            v32 = *(a1 + 80);
          }

          if (v4 > a3)
          {
            v33 = a3;
          }

          else
          {
            v31 = *(a1 + 80);
            v33 = *(a1 + 72);
          }

          if (v4 <= a3)
          {
            v32 = v4;
          }

          if (v31 >= v33 + v15)
          {
            v31 = v33 + v15;
          }

          v34 = v32 <= v30;
          if (v32 <= v30)
          {
            v35 = *(a1 + 72);
          }

          else
          {
            v35 = 0;
          }

          if (v34)
          {
            v36 = v4;
          }

          else
          {
            v36 = 0;
          }

          v37 = a3 + v15;
          if (v4 < a3 + v15)
          {
            v37 = v4;
          }

          v38 = v18 <= v17;
          if (v18 <= v17)
          {
            v39 = v14 - v17 + a3;
          }

          else
          {
            v39 = v14 - v17 + v33;
          }

          if (v38)
          {
            v20 = v37;
          }

          else
          {
            v20 = v31;
          }

          if (v38)
          {
            v22 = a3;
          }

          else
          {
            v22 = v33;
          }

          if (v38)
          {
            v28 = 0;
          }

          else
          {
            v28 = v35;
          }

          if (v38)
          {
            v29 = 0;
          }

          else
          {
            v29 = v36;
          }

          v40 = v39 % v15;
          *(a1 + 72) = v22;
          *(a1 + 80) = v20;
          if (v40 >= 0)
          {
            v41 = v40;
          }

          else
          {
            v41 = -v40;
          }

          if (v41 >= v15)
          {
LABEL_111:
            _os_crash();
            __break(1u);
          }

          LODWORD(v23) = ((v40 >> 63) & v15) + v40;
        }

        else
        {
          if (v18 <= v4)
          {
            v19 = v4;
          }

          else
          {
            v19 = *(a1 + 80);
          }

          if (v4 <= a3)
          {
            v19 = *(a1 + 80);
          }

          if (v18 <= v17)
          {
            v20 = v4;
          }

          else
          {
            v20 = v19;
          }

          if (v18 <= v17)
          {
            v21 = a3;
          }

          else
          {
            v21 = *(a1 + 72);
          }

          if (v21 <= v20 - v15)
          {
            v22 = v20 - v15;
          }

          else
          {
            v22 = v21;
          }

          v23 = (v14 - v17 + v22) % v15;
          if (v18 >= v4)
          {
            v24 = v4;
          }

          else
          {
            v24 = *(a1 + 80);
          }

          v25 = v24 <= a3;
          if (v24 <= a3)
          {
            v26 = a3;
          }

          else
          {
            v26 = 0;
          }

          if (v25)
          {
            v27 = *(a1 + 80);
          }

          else
          {
            v27 = 0;
          }

          if (v18 > v17)
          {
            v28 = v26;
          }

          else
          {
            v28 = 0;
          }

          if (v18 > v17)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          *(a1 + 72) = v22;
          *(a1 + 80) = v20;
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_110;
          }

          if (v23 >= v15)
          {
            _os_crash();
            __break(1u);
            goto LABEL_46;
          }
        }

        *(a1 + 88) = v23;
        {
          goto LABEL_106;
        }

        v42 = *(a1 + 72);
        v43 = *(a1 + 80);
        v44 = v43;
        v45 = v42;
        if (v43 > v42)
        {
          if (v28 <= v29)
          {
            v44 = v28;
            v45 = v29;
          }

          else
          {
            if (v42 <= v29)
            {
              v45 = v29;
            }

            else
            {
              v45 = *(a1 + 72);
            }

            if (v28 >= v43)
            {
              v44 = *(a1 + 80);
            }

            else
            {
              v44 = v28;
            }
          }
        }

        {
          goto LABEL_106;
        }

        goto LABEL_105;
      }

LABEL_46:
      {
LABEL_106:
        result = 0;
        *(a1 + 72) = v46;
        *(a1 + 88) = v14;
        goto LABEL_11;
      }

LABEL_105:
      result = 1;
      goto LABEL_11;
    }
  }

LABEL_10:
  result = 0;
LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725D64F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::store_data(AudioBufferList *a1, uint64_t a2, uint64_t a3, const AudioBufferList *a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a6 <= a5 || (v10 = a3 - a2, a3 > a2) && (a6 < a3 || a5 > a2))
  {
    memset(v19, 0, sizeof(v19));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = (a2 + a8 - a5) % a7;
  if (v11 + v10 <= a7)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a1);
    v17 = *&v19[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a4);
    result = vp::for_each_buffer_pair(*&v19[0], v11, v17, 0, vp::copy, v10);
  }

  else
  {
    v12 = a7 - v11;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a1);
    v13 = *&v19[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a4);
    v14 = vp::for_each_buffer_pair(*&v19[0], v11, v13, 0, vp::copy, v12);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a1);
    v15 = *&v19[0];
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v19, a4);
    result = v14 & vp::for_each_buffer_pair(*&v19[0], 0, v15, v12, vp::copy, v10 - v12);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725D6710(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::zero_data(AudioBufferList *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 <= a2 || (v8 = a5 - a4, a5 > a4) && (a3 < a5 || a2 > a4))
  {
    memset(v14, 0, sizeof(v14));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = (a4 + a7 - a2) % a6;
  if (v9 + v8 <= a6)
  {
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v14, a1);
    result = vp::for_each_buffer(*&v14[0], v9, v8);
  }

  else
  {
    v10 = a6 - v9;
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v14, a1);
    v11 = vp::for_each_buffer(*&v14[0], v9, v10);
    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v14, a1);
    result = v11 & vp::for_each_buffer(*&v14[0], vp::fill, v8 - v10);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725D68B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::anonymous namespace::store_data(uint64_t (**a1)(void, void, void), uint64_t a2, uint64_t a3, unsigned int *a4, _DWORD *a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a7 <= a6 || (v12 = a3 - a2, a3 > a2) && (a7 < a3 || a6 > a2))
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = (a2 + a9 - a6) % a8;
  if (v13 + v12 <= a8)
  {
    v30 = *a4;
    if (*a4)
    {
      v31 = a5 + 4;
      v32 = (a4 + 4);
      v33 = *a4;
      do
      {
        v34 = *(v32 - 2);
        v35 = *v32;
        v32 += 2;
        *(v31 - 2) = v34;
        *(v31 - 1) = 4 * v12 * v34;
        *v31 = v35 + 4 * v13 * v34;
        v31 += 2;
        --v33;
      }

      while (v33);
    }

    *a5 = v30;
    result = (*a1)(a1 + 1, a5, v12);
  }

  else
  {
    v14 = a8 - v13;
    v15 = *a4;
    if (*a4)
    {
      v16 = a5 + 4;
      v17 = (a4 + 4);
      v18 = *a4;
      do
      {
        v19 = *(v17 - 2);
        v20 = *v17;
        v17 += 2;
        *(v16 - 2) = v19;
        *(v16 - 1) = 4 * v14 * v19;
        *v16 = v20 + 4 * v13 * v19;
        v16 += 2;
        --v18;
      }

      while (v18);
    }

    *a5 = v15;
    v21 = (*a1)(a1 + 1, a5, v14);
    v22 = v12 - v14;
    v23 = *a4;
    if (*a4)
    {
      v24 = a5 + 4;
      v25 = a4 + 4;
      v26 = *a4;
      do
      {
        v27 = *(v25 - 2);
        v28 = *v25;
        v25 += 2;
        *(v24 - 2) = v27;
        *(v24 - 1) = 4 * v22 * v27;
        *v24 = v28;
        v24 += 2;
        --v26;
      }

      while (v26);
    }

    *a5 = v23;
    result = v21 & (*a1)(a1 + 1, a5, v22);
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725D6B10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void virtual thunk tovp::vx::io::ports::Audio_Ring_Buffer_Input_Port::~Audio_Ring_Buffer_Input_Port(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 11) = &unk_2881C6630;
  v2 = *(v1 + 13);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

double vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::do_process_input_data@<D0>(uint64_t a1@<X0>, int a2@<W1>, AudioBufferList *a3@<X2>, __int128 *a4@<X3>, unsigned int a5@<W4>, _BYTE *a6@<X8>)
{
  if (a2)
  {
    *&v9 = *a4 + a5;
    *a4 = v9;
LABEL_12:
    *a6 = 0;
    a6[48] = 1;
    return *&v9;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a4 + 6);
    v50 = *(a4 + 7);
    v12 = *(a4 + 24);
    v47 = *(a4 + 8);
    v48 = v12;
    v49 = *(a4 + 40);
    v13 = a4[1];
    v43 = *a4;
    v44 = v13;
    v45 = a4[2];
    v46 = v11;
    v14 = *(a4 + 7);
    v15 = *a4;
    if (v14)
    {
      if ((v10 & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = *(a1 + 16);
      v24 = *(a1 + 40);
      v47 = *(a1 + 24);
      v23 = v47;
      v48 = v24;
      v49 = *(a1 + 56);
      v25 = v49;
      v50 = *(a1 + 72);
      v26 = v50;
      *a4 = v15;
      *(a4 + 8) = v23;
      *(a4 + 24) = v24;
      *(a4 + 40) = v25;
      *(a4 + 7) = v26;
      if ((*(a1 + 72) & 2) == 0)
      {
LABEL_7:
        v16 = v15 + *(a1 + 80);
        v17 = v16 + a5;
        v18 = *(a1 + 8);
        if (v18)
        {
          if (v17 > *(v18 + 80))
          {
            v37 = 0x1300AB00000002;
            v38 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
            v41 = 0;
            v39 = 0;
            v40 = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v42);
            vp::vx::io::operator<<<char const(&)[54]>(v36, &v37);
            v27 = v36;
LABEL_22:
            vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v27);
            *&v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v37).n128_u64[0];
            if ((SHIBYTE(v41) & 0x80000000) == 0)
            {
              return *&v9;
            }

            v29 = v39;
            v30 = v41;
            v31 = v42;
            goto LABEL_24;
          }

          v19 = *(v18 + 72);
        }

        else
        {
          v19 = 0;
        }

        if (v17 <= v19)
        {
          v37 = 0x1300B100000002;
          v38 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
          v41 = 0;
          v39 = 0;
          v40 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v42);
          vp::vx::io::operator<<<char const(&)[55]>(v35, &v37, "requested data is behind of available audio time range");
          v27 = v35;
        }

        else
        {
          v33 = v14;
          if (vp::Audio_Ring_Buffer::read(v18, a3, v16, v17))
          {
            goto LABEL_12;
          }

          v28 = v44;
          *a4 = v43;
          a4[1] = v28;
          a4[2] = v45;
          *(a4 + 6) = v46;
          *(a4 + 7) = v33;
          v37 = 0x1300C400000000;
          v38 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
          v41 = 0;
          v39 = 0;
          v40 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v42);
          vp::vx::io::operator<<<char const(&)[38]>(v34, &v37);
          v27 = v34;
        }

        goto LABEL_22;
      }
    }

    *(a4 + 14) |= 2u;
    *(a4 + 1) = *(a1 + 24);
    goto LABEL_7;
  }

  vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v47, a3);
  if (vp::for_each_buffer(v47, vp::fill, a5))
  {
    v9 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a1 + 64);
    a4[2] = *(a1 + 48);
    a4[3] = v22;
    *a4 = v9;
    a4[1] = v21;
    goto LABEL_12;
  }

  *&v47 = 0x17008C00000000;
  *(&v47 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
  *&v49 = 0;
  v48 = 0uLL;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v49 + 1);
  vp::vx::io::operator<<<char const(&)[37]>(v51, &v47, "failed to zero-out audio buffer list");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v51);
  *&v9 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v47).n128_u64[0];
  if ((SBYTE7(v49) & 0x80000000) == 0)
  {
    return *&v9;
  }

  v29 = v48;
  v31 = *(&v49 + 1);
  v30 = v49;
LABEL_24:
  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v31, v29, v30 & 0x7FFFFFFFFFFFFFFFLL);
  return *&v9;
}

void vp::vx::io::operator<<<char const(&)[54]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "requested data is ahead of available audio time range", 53);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725D6FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[38]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "failed to read from audio ring buffer", 37);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725D706C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::do_set_input_data(uint64_t a1@<X8>)
{
  v6[0] = 0x1000700000000DLL;
  v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
  v8 = 0;
  v9 = 0;
  v7 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v6);
  if (SHIBYTE(v9) < 0)
  {
    (*(*v10 + 24))(v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::do_copy_input_data(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this@<X0>, AudioBufferList *a2@<X1>, const AudioTimeStamp *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  mSampleTime = a3->mSampleTime;
  v7 = *&a3->mWordClockTime;
  v27 = *&a3->mHostTime;
  v28 = v7;
  v29 = *&a3->mSMPTETime.mType;
  v8 = *&a3->mFlags;
  if (v8)
  {
    v11 = mSampleTime;
    v12 = mSampleTime + a4;
    v13 = *(this + 1);
    v18 = v8;
    if (v13)
    {
      v14 = *(v13 + 80);
      if (v14 > *(v13 + 72) && v11 != v14)
      {
        *(this + 10) = *(this + 10) + (v11 - v14);
        *(v13 + 72) = 0;
        *(v13 + 80) = 0;
        *(v13 + 88) = 0;
        v13 = *(this + 1);
      }
    }

    if (vp::Audio_Ring_Buffer::write(v13, a2, v11, v12))
    {
      *(this + 2) = mSampleTime;
      v16 = v28;
      *(this + 24) = v27;
      *(this + 40) = v16;
      *(this + 56) = v29;
      *(this + 9) = v18;
      *a5 = a4;
      *(a5 + 48) = 1;
      return;
    }

    v21 = 0x13006300000000;
    v22 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v24 = 0;
    v25 = 0;
    v23 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
    vp::vx::io::operator<<<char const(&)[39]>(v19, &v21);
    v17 = v19;
  }

  else
  {
    v21 = 0x13004100000005;
    v22 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v24 = 0;
    v25 = 0;
    v23 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v26);
    vp::vx::io::operator<<<char const(&)[49]>(v20, &v21, "audio time stamp does not have valid sample time");
    v17 = v20;
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v17);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v21);
  if (SHIBYTE(v25) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v26, v23, v25 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[39]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "failed to write into audio ring buffer", 38);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725D7324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::reset@<D0>(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
  }

  *(this + 10) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = *(result + 72);
    if (v5)
    {
      v7 = *(result + 8);
      if (v7)
      {
        v6 = *(v7 + 80);
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      v6 = *(result + 16);
    }

    *a3 = v6;
    *(a3 + 8) = *(result + 24);
    *(a3 + 24) = *(result + 40);
    *(a3 + 40) = *(result + 56);
    *(a3 + 56) = v5;
  }

  else if (!a2)
  {
    v3 = *(result + 32);
    *a3 = *(result + 16);
    *(a3 + 16) = v3;
    v4 = *(result + 64);
    *(a3 + 32) = *(result + 48);
    *(a3 + 48) = v4;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 33);
    v7 = v4;
    *v8 = *(v2 + 49);
    *&v8[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v7;
  *(a2 + 1) = v7;
  *(a2 + 17) = *v8;
  *(a2 + 32) = *&v8[15];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::io::ports::Audio_Ring_Buffer_Input_Port::~Audio_Ring_Buffer_Input_Port(vp::vx::io::ports::Audio_Ring_Buffer_Input_Port *this)
{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 11) = &unk_2881C6630;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void virtual thunk tovp::vx::io::ports::Audio_Ring_Buffer_Output_Port::~Audio_Ring_Buffer_Output_Port(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this)
{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 18) = &unk_2881C6630;
  v2 = *(v1 + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 1, 0);
  *(v1 + 18) = &unk_2881C6630;
  v2 = *(v1 + 20);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::do_process_output_data(AudioBufferList *a1@<X2>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X3>, unsigned int a5@<W4>, _BYTE *a6@<X8>)
{
  if (!a3)
  {
    goto LABEL_6;
  }

  v7 = *a4;
  v8 = *(a4 + 24);
  v21 = *(a4 + 8);
  v22 = v8;
  v23 = *(a4 + 40);
  v9 = *(a4 + 56);
  if (v9)
  {
    v11 = *(a4 + 60);
    if (vp::Audio_Ring_Buffer::write(*(a2 + 8), a1, v7, (v7 + a5)))
    {
      *(a2 + 16) = v7;
      v12 = v22;
      *(a2 + 24) = v21;
      *(a2 + 40) = v12;
      *(a2 + 56) = v23;
      *(a2 + 72) = v9;
      *(a2 + 76) = v11;
      if ((*(a2 + 136) & 1) == 0)
      {
        *(a2 + 80) = v7;
        v13 = v22;
        *(a2 + 88) = v21;
        *(a2 + 104) = v13;
        *(a2 + 120) = v23;
        *(a2 + 136) = v9;
        *(a2 + 140) = v11;
      }

LABEL_6:
      *a6 = 0;
      a6[48] = 1;
      return;
    }

    v15 = 0x13018700000000;
    v16 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
    vp::vx::io::operator<<<char const(&)[39]>(v14, &v15);
  }

  else
  {
    v15 = 0x13016A00000000;
    v16 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v18 = 0;
    v19 = 0;
    v17 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v20);
    vp::vx::io::operator<<<char const(&)[49]>(v14, &v15, "audio time stamp does not have valid sample time");
  }

  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v14);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a6, &v15);
  if (SHIBYTE(v19) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v20, v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::do_set_output_data(uint64_t a1@<X8>)
{
  v6[0] = 0x10014B0000000DLL;
  v6[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
  v8 = 0;
  v9 = 0;
  v7 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v10);
  v5 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a1, v6);
  if (SHIBYTE(v9) < 0)
  {
    (*(*v10 + 24))(v10, v7, v9 & 0x7FFFFFFFFFFFFFFFLL, 1, v5);
  }
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::do_copy_output_data(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this@<X0>, AudioBufferList *a2@<X1>, AudioTimeStamp *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  if ((*(this + 136) & 1) == 0)
  {
    *&v43 = 0x13010B00000005;
    *(&v43 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    *&v45 = 0;
    v44 = 0uLL;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v45 + 1);
    vp::vx::io::operator<<<char const(&)[49]>(v47, &v43, "audio time stamp does not have valid sample time");
    vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v47);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v43);
    if ((SBYTE7(v45) & 0x80000000) == 0)
    {
      return;
    }

    v20 = v44;
    v21 = *(&v45 + 1);
    v22 = v45;
    goto LABEL_26;
  }

  v8 = *&a3->mSMPTETime.mHours;
  v46 = *&a3->mFlags;
  v9 = *&a3->mWordClockTime;
  v43 = *&a3->mHostTime;
  v44 = v9;
  v45 = *&a3->mSMPTETime.mType;
  v10 = *&a3->mRateScalar;
  v39 = *&a3->mSampleTime;
  v40 = v10;
  v41 = *&a3->mSMPTETime.mSubframes;
  v42 = v8;
  v11 = *&a3->mFlags;
  mSampleTime = a3->mSampleTime;
  if ((v11 & 1) == 0)
  {
    mSampleTime = *(this + 10);
    v25 = *(this + 104);
    v43 = *(this + 88);
    v24 = v43;
    v44 = v25;
    v45 = *(this + 120);
    v26 = v45;
    v46 = *(this + 17);
    v27 = v46;
    a3->mSampleTime = mSampleTime;
    *&a3->mHostTime = v24;
    *&a3->mWordClockTime = v25;
    *&a3->mSMPTETime.mType = v26;
    *&a3->mFlags = v27;
  }

  v13 = mSampleTime + a4;
  v14 = v13;
  v15 = *(this + 1);
  if (v15)
  {
    if (*(v15 + 80) < v14)
    {
      v33 = 0x13012000000002;
      v34 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
      v37 = 0;
      v35 = 0;
      v36 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v38);
      vp::vx::io::operator<<<char const(&)[54]>(v32, &v33);
      v23 = v32;
LABEL_24:
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v23);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v33);
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        return;
      }

      v20 = v35;
      v22 = v37;
      v21 = v38;
LABEL_26:
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v21, v20, v22 & 0x7FFFFFFFFFFFFFFFLL);
      return;
    }

    v16 = *(v15 + 72);
  }

  else
  {
    v16 = 0;
  }

  if (v16 >= v14)
  {
    v33 = 0x13012600000002;
    v34 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v37 = 0;
    v35 = 0;
    v36 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v38);
    vp::vx::io::operator<<<char const(&)[55]>(v31, &v33, "requested data is behind of available audio time range");
    v23 = v31;
    goto LABEL_24;
  }

  v29 = v11;
  v17 = mSampleTime;
  if (!vp::Audio_Ring_Buffer::read(v15, a2, mSampleTime, v13))
  {
    v28 = v40;
    *&a3->mSampleTime = v39;
    *&a3->mRateScalar = v28;
    *&a3->mSMPTETime.mSubframes = v41;
    *&a3->mSMPTETime.mHours = v42;
    *&a3->mFlags = v29;
    v33 = 0x13013E00000000;
    v34 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/ports/Audio_Ring_Buffer_Port.cpp";
    v37 = 0;
    v35 = 0;
    v36 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v38);
    vp::vx::io::operator<<<char const(&)[38]>(v30, &v33);
    v23 = v30;
    goto LABEL_24;
  }

  if (*(this + 10) < v14)
  {
    *(this + 10) = v14;
  }

  v18 = v14 - v17;
  if (v14 <= v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  if ((v14 - v17) >> 32)
  {
    v18 = v19;
  }

  *a5 = v18;
  *(a5 + 48) = 1;
}

double vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::reset@<D0>(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
  }

  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *a2 = 0;
  a2[48] = 1;
  return result;
}

uint64_t vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::get_time_stamp@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    v5 = *(result + 136);
    if (v5)
    {
      v7 = *(result + 8);
      if (v7)
      {
        v6 = *(v7 + 80);
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      v6 = *(result + 80);
    }

    *a3 = v6;
    *(a3 + 8) = *(result + 88);
    *(a3 + 24) = *(result + 104);
    *(a3 + 40) = *(result + 120);
    *(a3 + 56) = v5;
  }

  else if (!a2)
  {
    v3 = *(result + 96);
    *a3 = *(result + 80);
    *(a3 + 16) = v3;
    v4 = *(result + 128);
    *(a3 + 32) = *(result + 112);
    *(a3 + 48) = v4;
  }

  return result;
}

__n128 vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::get_format@<Q0>(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 33);
    v7 = v4;
    *v8 = *(v2 + 49);
    *&v8[15] = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  result = v7;
  *(a2 + 1) = v7;
  *(a2 + 17) = *v8;
  *(a2 + 32) = *&v8[15];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::vx::io::ports::Audio_Ring_Buffer_Output_Port::~Audio_Ring_Buffer_Output_Port(vp::vx::io::ports::Audio_Ring_Buffer_Output_Port *this)
{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 18) = &unk_2881C6630;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 1, 0);
  *(this + 18) = &unk_2881C6630;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 88) = &unk_2881C6630;
    v4 = *(v2 + 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *std::unique_ptr<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,vp::Allocator_Delete<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100]((v2 + 8), 0);
    *(v2 + 144) = &unk_2881C6630;
    v4 = *(v2 + 160);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Ring_Buffer_Output_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 168, 8);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port * std::pmr::polymorphic_allocator<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port>::new_object[abi:ne200100]<vp::vx::io::ports::Audio_Ring_Buffer_Input_Port,CA::StreamDescription const&,unsigned int &>(CA::StreamDescription const&,unsigned int &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 112, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::end_configuration_changes(vp::vx::components::Audio_Statistics *this)
{
  v3.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((*(this + 456) & 1) == 0)
  {
    *(this + 456) = 1;
  }

  *(this + 56) = v3;
  if (*(this + 472) == 1)
  {
    *(this + 472) = 0;
  }

  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((*(this + 504) & 1) == 0)
  {
    *(this + 504) = 1;
  }

  *(this + 62) = v4;
  applesauce::CF::StringRef::from_get(&v35, @"vp_route_change_duration_ms");
  *valuePtr = ((*(this + 62) - *(this + 60)) / 1000);
  cf = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr[0] = &v35;
  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::piecewise_construct_t const&,std::tuple<applesauce::CF::StringRef const&>,std::tuple<>>(this + 272, &v35, valuePtr);
  v6 = *(v5 + 24);
  *(v5 + 24) = cf;
  CFRetain(cf);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(cf);
  if (v35)
  {
    CFRelease(v35);
  }

  if (!*(this + 46))
  {
    return;
  }

  v7 = *(this + 44);
  if (!v7)
  {
    goto LABEL_64;
  }

  v33 = (this + 296);
  do
  {
    v8 = std::hash<applesauce::CF::StringRef>::operator()(v7[2]);
    v9 = v8;
    v10 = *(this + 35);
    if (!v10)
    {
      goto LABEL_31;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v1 = v8;
      if (v8 >= v10)
      {
        v1 = v8 % v10;
      }
    }

    else
    {
      v1 = (v10 - 1) & v8;
    }

    v13 = *(*(this + 34) + 8 * v1);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_31:
      v16 = (*(**(this + 38) + 16))(*(this + 38), 32, 8);
      valuePtr[1] = (this + 304);
      valuePtr[2] = 1;
      *v16 = 0;
      v16[1] = v9;
      v17 = v7[2];
      if (v17)
      {
        CFRetain(v7[2]);
      }

      v16[2] = v17;
      v18 = v7[3];
      if (v18)
      {
        CFRetain(v7[3]);
      }

      v16[3] = v18;
      v19 = (*(this + 39) + 1);
      v20 = *(this + 80);
      if (!v10 || (v20 * v10) < v19)
      {
        v21 = (v10 & (v10 - 1)) != 0;
        if (v10 < 3)
        {
          v21 = 1;
        }

        v22 = v21 | (2 * v10);
        v23 = vcvtps_u32_f32(v19 / v20);
        if (v22 <= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v22;
        }

        std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(this + 272, v24);
        v10 = *(this + 35);
        if ((v10 & (v10 - 1)) != 0)
        {
          if (v9 >= v10)
          {
            v1 = v9 % v10;
          }

          else
          {
            v1 = v9;
          }
        }

        else
        {
          v1 = (v10 - 1) & v9;
        }
      }

      v25 = *(this + 34);
      v26 = *(v25 + 8 * v1);
      if (v26)
      {
        *v16 = *v26;
      }

      else
      {
        *v16 = *v33;
        *v33 = v16;
        *(v25 + 8 * v1) = v33;
        if (!*v16)
        {
LABEL_56:
          ++*(this + 39);
          goto LABEL_57;
        }

        v27 = *(*v16 + 8);
        if ((v10 & (v10 - 1)) != 0)
        {
          if (v27 >= v10)
          {
            v27 %= v10;
          }
        }

        else
        {
          v27 &= v10 - 1;
        }

        v26 = (*(this + 34) + 8 * v27);
      }

      *v26 = v16;
      goto LABEL_56;
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v15 >= v10)
        {
          v15 %= v10;
        }
      }

      else
      {
        v15 &= v10 - 1;
      }

      if (v15 != v1)
      {
        goto LABEL_31;
      }

LABEL_30:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v14[2], v7 + 2))
    {
      goto LABEL_30;
    }

    v28 = v14[3];
    v29 = v7[3];
    v14[3] = v29;
    if (v29)
    {
      CFRetain(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

LABEL_57:
    v7 = *v7;
  }

  while (v7);
  if (*(this + 46))
  {
LABEL_64:
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__deallocate_node(this + 328, *(this + 44));
    *(this + 44) = 0;
    v30 = *(this + 42);
    if (v30)
    {
      for (i = 0; i != v30; ++i)
      {
        *(*(this + 41) + 8 * i) = 0;
      }
    }

    *(this + 46) = 0;
  }

  *(this + 440) = 1;
}

void sub_2725D8394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

CFHashCode std::hash<applesauce::CF::StringRef>::operator()(const void *a1)
{
  if (a1)
  {
    return CFHash(a1);
  }

  else
  {
    return 0xD7C06285B9DE677ALL;
  }
}

unint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(unint64_t result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return result;
    }

    result = vcvtps_u32_f32(*(v2 + 40) / *(v2 + 48));
    if (*&v4 < 3uLL || (v10 = vcnt_s8(v4), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v11 = 1 << -__clz(result - 1);
      if (result >= 2)
      {
        result = v11;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return result;
    }

    if (!v3)
    {
      v15 = *v2;
      *v2 = 0;
      if (v15)
      {
        result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v15, *(v2 + 8));
      }

      *(v2 + 8) = 0;
      return result;
    }
  }

  if (v3 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = (*(**(v2 + 16) + 16))(*(v2 + 16), 8 * v3, 8);
  v5 = *v2;
  *v2 = result;
  if (v5)
  {
    result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v5, *(v2 + 8));
  }

  v6 = 0;
  *(v2 + 8) = v3;
  do
  {
    *(*v2 + 8 * v6++) = 0;
  }

  while (v3 != v6);
  v7 = *(v2 + 24);
  if (v7)
  {
    v8 = v7[1];
    v9 = vcnt_s8(v3);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    *(*v2 + 8 * v8) = v2 + 24;
    v12 = *v7;
    if (*v7)
    {
      do
      {
        v13 = v12[1];
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= v3)
          {
            v13 %= v3;
          }
        }

        else
        {
          v13 &= v3 - 1;
        }

        if (v13 != v8)
        {
          v14 = *v2;
          if (!*(*v2 + 8 * v13))
          {
            *(v14 + 8 * v13) = v7;
            goto LABEL_31;
          }

          *v7 = *v12;
          *v12 = **(v14 + 8 * v13);
          **(v14 + 8 * v13) = v12;
          v12 = v7;
        }

        v13 = v8;
LABEL_31:
        v7 = v12;
        v12 = *v12;
        v8 = v13;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 8) == 1)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 16);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else if (!a2)
  {
    return result;
  }

  v6 = **v3;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::deallocate[abi:ne200100](v6, a2);
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__deallocate_node(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      v5 = v2[3];
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = v2[2];
      if (v6)
      {
        CFRelease(v6);
      }

      result = std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,void *>>>::deallocate[abi:ne200100](*(v3 + 32), v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::piecewise_construct_t const&,std::tuple<applesauce::CF::StringRef const&>,std::tuple<>>(unint64_t a1, const void **a2, const void ***a3)
{
  v7 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = *(i + 8);
        if (v14 == v8)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(i + 16), a2) == kCFCompareEqualTo)
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = (*(**(a1 + 32) + 16))(*(a1 + 32), 32, 8);
  *i = 0;
  *(i + 8) = v8;
  v15 = **a3;
  if (v15)
  {
    CFRetain(v15);
  }

  *(i + 16) = v15;
  *(i + 24) = 0;
  v16 = (*(a1 + 40) + 1);
  v17 = *(a1 + 48);
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(a1, v21);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    *i = *v23;
LABEL_40:
    *v23 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 24);
  *(a1 + 24) = i;
  *(v22 + 8 * v3) = a1 + 24;
  if (*i)
  {
    v24 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v24 >= v9)
      {
        v24 %= v9;
      }
    }

    else
    {
      v24 &= v9 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 40);
  return i;
}

void vp::vx::components::Audio_Statistics::begin_configuration_changes(vp::vx::components::Audio_Statistics *this)
{
  vp::vx::components::Audio_Statistics::stop_route_timer(this);
  v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((*(this + 488) & 1) == 0)
  {
    *(this + 488) = 1;
  }

  *(this + 60) = v2;
  if (*(this + 504) == 1)
  {
    *(this + 504) = 0;
  }

  vp::vx::components::Audio_Statistics::report_payload(this);

  vp::vx::components::Audio_Statistics::report_payload_for_legacy(this);
}

void vp::vx::components::Audio_Statistics::stop_route_timer(vp::vx::components::Audio_Statistics *this)
{
  if (*(this + 456) == 1)
  {
    v2.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if ((*(this + 472) & 1) == 0)
    {
      *(this + 472) = 1;
    }

    *(this + 58) = v2;
    applesauce::CF::StringRef::from_get(&v7, @"vp_route_duration_ms");
    valuePtr = ((*(this + 58) - *(this + 56)) / 1000);
    cf = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    valuePtr = COERCE_DOUBLE(&v7);
    v3 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::piecewise_construct_t const&,std::tuple<applesauce::CF::StringRef const&>,std::tuple<>>(this + 272, &v7, &valuePtr);
    v4 = *(v3 + 24);
    *(v3 + 24) = cf;
    CFRetain(cf);
    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(cf);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void sub_2725D8BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void vp::vx::components::Audio_Statistics::report_payload(vp::vx::components::Audio_Statistics *this)
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (*(this + 440) == 1 && *(this + 39))
  {
    MEMORY[0x28223BE20]();
    v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v2 >= 0x200)
    {
      v4 = 512;
    }

    else
    {
      v4 = v2;
    }

    bzero(&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v5 = 8 * *(this + 39);
    MEMORY[0x28223BE20]();
    v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v6 >= 0x200)
    {
      v8 = 512;
    }

    else
    {
      v8 = v6;
    }

    bzero(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v9 = *(this + 37);
    if (v9)
    {
      v10 = 0;
      do
      {
        v3[v10] = v9[2];
        v7[v10++] = v9[3];
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v23 = 0;
    v21 = 8;
    v22 = 5;
    v11 = CFDictionaryCreate(*MEMORY[0x277CBECE8], v3, v7, v10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = v11;
    v24[0] = v11;
    if (v11)
    {
      v13 = CFGetTypeID(v11);
      if (v13 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v11 = v23;
      v23 = v12;
      v24[0] = v11;
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      v23 = 0;
    }

    v14 = *(this + 32);
    default_resource = std::pmr::get_default_resource(v11);
    v24[1] = 0;
    v24[2] = 0;
    v24[0] = default_resource;
    vp::vx::data_flow::State<void>::get_value(this + 104, v24);
    v16 = vp::vx::data_flow::Value::view_storage(v24);
    v20 = *v16;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 0;
    vp::vx::data_flow::Value::~Value(v24);
    v17 = v20;
    vp::vx::components::detail::report(v14, &v21, v20, *(&v20 + 1));
    if (v17)
    {
      operator delete(v17);
    }

    *(this + 440) = 0;
    if (v23)
    {
      CFRelease(v23);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2725D8EA4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v2 - 80));
  vp::services::Audio_Statistics::Event::~Event((v2 - 96));
  _Unwind_Resume(a1);
}

void vp::vx::components::Audio_Statistics::report_payload_for_legacy(vp::vx::components::Audio_Statistics *this)
{
  v181 = *MEMORY[0x277D85DE8];
  v2 = *(this + 31);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2), (v4 = v3) == 0) || (v5 = *(this + 30), atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !v5))
  {
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  cf = 0;
  v153 = 8;
  v154 = 5;
  applesauce::CF::StringRef::from_get(&v151, @"vp_chat_flavor");
  (*(*v5 + 16))(__s, v5, 59);
  v148 = *__s;
  v149 = v180;
  v180 = 0uLL;
  v6 = vp::vx::data_flow::State<void>::~State(__s);
  default_resource = std::pmr::get_default_resource(v6);
  *v158 = 0;
  v156 = default_resource;
  v157 = 0;
  LODWORD(v146.__r_.__value_.__l.__data_) = v148;
  *__s = v149;
  *&v180 = &v146;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v149, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v8 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v9 = "default";
  if (v8 == 2)
  {
    v9 = "voice isolation";
  }

  if (v8 == 1)
  {
    v9 = "music";
  }

  v150 = v9;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v160, v151, &v150);
  applesauce::CF::StringRef::from_get(&v147, @"vp_bypass");
  (*(*v5 + 16))(__s, v5, 0);
  v144 = *__s;
  v145 = v180;
  v180 = 0uLL;
  v10 = vp::vx::data_flow::State<void>::~State(__s);
  v11 = std::pmr::get_default_resource(v10);
  *v158 = 0;
  v156 = v11;
  v157 = 0;
  LODWORD(v142.__r_.__value_.__l.__data_) = v144;
  *__s = v145;
  *&v180 = &v142;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v145, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v12 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v146, v12);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v161, v147, &v146);
  applesauce::CF::StringRef::from_get(&v143, @"vp_config_operation_mode");
  (*(*v5 + 16))(__s, v5, 58);
  v140 = *__s;
  v141 = v180;
  v180 = 0uLL;
  v13 = vp::vx::data_flow::State<void>::~State(__s);
  v14 = std::pmr::get_default_resource(v13);
  *v158 = 0;
  v156 = v14;
  v157 = 0;
  LODWORD(v138.__r_.__value_.__l.__data_) = v140;
  *__s = v141;
  *&v180 = &v138;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v141, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v15 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(v15);
  std::to_string(&v142, v15);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v162, v143, &v142);
  applesauce::CF::StringRef::from_get(&v139, @"vp_config_input_port");
  (*(*v5 + 16))(__s, v5, 10);
  v136 = *__s;
  v137 = v180;
  v180 = 0uLL;
  v16 = vp::vx::data_flow::State<void>::~State(__s);
  v17 = std::pmr::get_default_resource(v16);
  *v158 = 0;
  v156 = v17;
  v157 = 0;
  LODWORD(v134.__r_.__value_.__l.__data_) = v136;
  *__s = v137;
  *&v180 = &v134;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v137, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  LODWORD(v15) = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v18 = vp::vx::legacy_cast<vp::vx::Input_Port_Type>(v15);
  v19 = bswap32(v18);
  *__s = v19;
  if ((v19 - 32) > 0x5E || ((v19 >> 8) - 32) > 0x5E || ((v19 << 8 >> 24) - 32) > 0x5E || ((v19 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v138, v18);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v138, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v163, v139, &v138);
  applesauce::CF::StringRef::from_get(&v135, @"vp_config_output_port");
  (*(*v5 + 16))(__s, v5, 26);
  v132 = *__s;
  v133 = v180;
  v180 = 0uLL;
  v20 = vp::vx::data_flow::State<void>::~State(__s);
  v21 = std::pmr::get_default_resource(v20);
  *v158 = 0;
  v156 = v21;
  v157 = 0;
  LODWORD(v130.__r_.__value_.__l.__data_) = v132;
  *__s = v133;
  *&v180 = &v130;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v133, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v22 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v23 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v22);
  v24 = bswap32(v23);
  *__s = v24;
  if ((v24 - 32) > 0x5E || ((v24 >> 8) - 32) > 0x5E || ((v24 << 8 >> 24) - 32) > 0x5E || ((v24 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v134, v23);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v134, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v164, v135, &v134);
  applesauce::CF::StringRef::from_get(&v131, @"vp_config_ref_subport");
  (*(*v5 + 16))(__s, v5, 39);
  v128 = *__s;
  v129 = v180;
  v180 = 0uLL;
  v25 = vp::vx::data_flow::State<void>::~State(__s);
  v26 = std::pmr::get_default_resource(v25);
  *v158 = 0;
  v156 = v26;
  v157 = 0;
  LODWORD(v126.__r_.__value_.__l.__data_) = v128;
  *__s = v129;
  *&v180 = &v126;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v129, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v27 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v28 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(v27);
  v29 = bswap32(v28);
  *__s = v29;
  if ((v29 - 32) > 0x5E || ((v29 >> 8) - 32) > 0x5E || ((v29 << 8 >> 24) - 32) > 0x5E || ((v29 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v130, v28);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v130, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v165, v131, &v130);
  applesauce::CF::StringRef::from_get(&v127, @"vp_config_primary_vocoder");
  (*(*v5 + 16))(__s, v5, 69);
  v124 = *__s;
  v125 = v180;
  v180 = 0uLL;
  v30 = vp::vx::data_flow::State<void>::~State(__s);
  v31 = std::pmr::get_default_resource(v30);
  *v158 = 0;
  v156 = v31;
  v157 = 0;
  LODWORD(v122.__r_.__value_.__l.__data_) = v124;
  *__s = v125;
  *&v180 = &v122;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v125, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v32 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  v33 = bswap32(v32);
  *__s = v33;
  if ((v33 - 32) >= 0x5F || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v126, v32);
  }

  else
  {
    __s[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v126, __s);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v166, v127, &v126);
  applesauce::CF::StringRef::from_get(&v123, @"vp_config_primary_vocoderFs");
  (*(*v5 + 16))(__s, v5, 70);
  v120 = *__s;
  v121 = v180;
  v180 = 0uLL;
  v34 = vp::vx::data_flow::State<void>::~State(__s);
  v35 = std::pmr::get_default_resource(v34);
  *v158 = 0;
  v156 = v35;
  v157 = 0;
  LODWORD(v118.__r_.__value_.__l.__data_) = v120;
  *__s = v121;
  *&v180 = &v118;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v121, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v36 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v122, v36);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v167, v123, &v122);
  applesauce::CF::StringRef::from_get(&v119, @"vp_media_chat_enabled");
  (*(*v5 + 16))(__s, v5, 80);
  v116 = *__s;
  v117 = v180;
  v180 = 0uLL;
  v37 = vp::vx::data_flow::State<void>::~State(__s);
  v38 = std::pmr::get_default_resource(v37);
  *v158 = 0;
  v156 = v38;
  v157 = 0;
  LODWORD(v114.__r_.__value_.__l.__data_) = v116;
  *__s = v117;
  *&v180 = &v114;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v117, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v39 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v118, v39);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v168, v119, &v118);
  applesauce::CF::StringRef::from_get(&v115, @"vp_spatial_chat_enabled");
  (*(*v5 + 16))(__s, v5, 77);
  v112 = *__s;
  v113 = v180;
  v180 = 0uLL;
  v40 = vp::vx::data_flow::State<void>::~State(__s);
  v41 = std::pmr::get_default_resource(v40);
  *v158 = 0;
  v156 = v41;
  v157 = 0;
  LODWORD(v110.__r_.__value_.__l.__data_) = v112;
  *__s = v113;
  *&v180 = &v110;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v113, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v42 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v114, v42);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v169, v115, &v114);
  applesauce::CF::StringRef::from_get(&v111, @"vp_mix_stereo_to_mono");
  (*(*v5 + 16))(__s, v5, 88);
  v108 = *__s;
  v109 = v180;
  v180 = 0uLL;
  v43 = vp::vx::data_flow::State<void>::~State(__s);
  v44 = std::pmr::get_default_resource(v43);
  *v158 = 0;
  v156 = v44;
  v157 = 0;
  LODWORD(v106.__r_.__value_.__l.__data_) = v108;
  *__s = v109;
  *&v180 = &v106;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v109, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v45 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v110, v45);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v170, v111, &v110);
  applesauce::CF::StringRef::from_get(&v107, @"vp_spatial_head_tracking_enabled");
  (*(*v5 + 16))(__s, v5, 79);
  v104 = *__s;
  v105 = v180;
  v180 = 0uLL;
  v46 = vp::vx::data_flow::State<void>::~State(__s);
  v47 = std::pmr::get_default_resource(v46);
  *v158 = 0;
  v156 = v47;
  v157 = 0;
  LODWORD(v102.__r_.__value_.__l.__data_) = v104;
  *__s = v105;
  *&v180 = &v102;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v105, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v48 = *(vp::vx::data_flow::Value::view_storage(&v156) + 4);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v106, v48 & 1);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v171, v107, &v106);
  applesauce::CF::StringRef::from_get(&v103, @"vp_spatial_head_tracking_mode");
  (*(*v5 + 16))(__s, v5, 79);
  v100 = *__s;
  v101 = v180;
  v180 = 0uLL;
  v49 = vp::vx::data_flow::State<void>::~State(__s);
  v50 = std::pmr::get_default_resource(v49);
  *v158 = 0;
  v156 = v50;
  v157 = 0;
  LODWORD(v98.__r_.__value_.__l.__data_) = v100;
  *__s = v101;
  *&v180 = &v98;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v101, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v51 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v102, v51);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v172, v103, &v102);
  applesauce::CF::StringRef::from_get(&v99, @"vp_media_playback_on_external_device_enabled");
  (*(*v5 + 16))(__s, v5, 89);
  v96 = *__s;
  v97 = v180;
  v180 = 0uLL;
  v52 = vp::vx::data_flow::State<void>::~State(__s);
  v53 = std::pmr::get_default_resource(v52);
  *v158 = 0;
  v156 = v53;
  v157 = 0;
  LODWORD(v94.__r_.__value_.__l.__data_) = v96;
  *__s = v97;
  *&v180 = &v94;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v97, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v54 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v98, v54);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v173, v99, &v98);
  applesauce::CF::StringRef::from_get(&v95, @"vp_other_audio_ducking_configuration_enable_advanced_ducking");
  (*(*v5 + 16))(__s, v5, 90);
  v92 = *__s;
  v93 = v180;
  v180 = 0uLL;
  v55 = vp::vx::data_flow::State<void>::~State(__s);
  v56 = std::pmr::get_default_resource(v55);
  *v158 = 0;
  v156 = v56;
  v157 = 0;
  v88 = v92;
  *__s = v93;
  *&v180 = &v88;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v93, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v57 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v94, v57);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v174, v95, &v94);
  applesauce::CF::StringRef::from_get(&v91, @"vp_other_audio_ducking_configuration_ducking_level");
  (*(*v5 + 16))(__s, v5, 90);
  v88 = *__s;
  v89 = v180;
  v180 = 0uLL;
  v58 = vp::vx::data_flow::State<void>::~State(__s);
  v59 = std::pmr::get_default_resource(v58);
  *v158 = 0;
  v156 = v59;
  v157 = 0;
  LODWORD(v86.__r_.__value_.__l.__data_) = v88;
  *__s = v89;
  *&v180 = &v86;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v89, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v60 = *(vp::vx::data_flow::Value::view_storage(&v156) + 4);
  vp::vx::data_flow::Value::~Value(&v156);
  switch(v60)
  {
    case 10:
      v61 = "Min";
      break;
    case 20:
      v61 = "Mid";
      break;
    case 30:
      v61 = "Max";
      break;
    default:
      v61 = "Default";
      break;
  }

  v90 = v61;
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(&v175, v91, &v90);
  applesauce::CF::StringRef::from_get(&v87, @"vp_automatic_mic_mode_enabled");
  (*(*v5 + 16))(__s, v5, 95);
  v84 = *__s;
  v85 = v180;
  v180 = 0uLL;
  v62 = vp::vx::data_flow::State<void>::~State(__s);
  v63 = std::pmr::get_default_resource(v62);
  *v158 = 0;
  v156 = v63;
  v157 = 0;
  LODWORD(v82.__r_.__value_.__l.__data_) = v84;
  *__s = v85;
  *&v180 = &v82;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v85, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v64 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  std::to_string(&v86, v64);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(&v176, v87, &v86);
  applesauce::CF::StringRef::from_get(&v83, @"vp_airpods_offload_mode");
  (*(*v5 + 16))(__s, v5, 94);
  v80 = *__s;
  v81 = v180;
  v180 = 0uLL;
  v65 = vp::vx::data_flow::State<void>::~State(__s);
  v66 = std::pmr::get_default_resource(v65);
  *v158 = 0;
  v156 = v66;
  v157 = 0;
  v159 = v80;
  *__s = v81;
  *&v180 = &v159;
  *(&v180 + 1) = &v156;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v81, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, __s);
  v67 = *vp::vx::data_flow::Value::view_storage(&v156);
  vp::vx::data_flow::Value::~Value(&v156);
  vp::vx::legacy_cast<vp::vx::AirPods_Offload_Mode>(v67);
  std::to_string(&v82, v67);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(v177, v83, &v82);
  applesauce::CF::StringRef::from_get(__s, @"vp_version");
  v68 = *__s;
  if (*__s)
  {
    CFRetain(*__s);
  }

  v177[2] = v68;
  applesauce::CF::TypeRef::TypeRef(&v178, "10");
  v152[0] = v160;
  v152[1] = 19;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v152);
  v70 = cf;
  cf = CFDictionaryRef;
  if (v70)
  {
    CFRelease(v70);
  }

  v71 = 76;
  do
  {
    v72 = *&v158[v71 + 2];
    if (v72)
    {
      CFRelease(v72);
    }

    v73 = *&v158[v71];
    if (v73)
    {
      CFRelease(v73);
    }

    v71 -= 4;
  }

  while (v71 * 4);
  if (*__s)
  {
    CFRelease(*__s);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v80);
  if (v83)
  {
    CFRelease(v83);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v84);
  if (v87)
  {
    CFRelease(v87);
  }

  vp::vx::data_flow::State<void>::~State(&v88);
  if (v91)
  {
    CFRelease(v91);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v92);
  if (v95)
  {
    CFRelease(v95);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v96);
  if (v99)
  {
    CFRelease(v99);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v100);
  if (v103)
  {
    CFRelease(v103);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v104);
  if (v107)
  {
    CFRelease(v107);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v108);
  if (v111)
  {
    CFRelease(v111);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v112);
  if (v115)
  {
    CFRelease(v115);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v116);
  if (v119)
  {
    CFRelease(v119);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v120);
  if (v123)
  {
    CFRelease(v123);
  }

  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v124);
  if (v127)
  {
    CFRelease(v127);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v128);
  if (v131)
  {
    CFRelease(v131);
  }

  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v132);
  if (v135)
  {
    CFRelease(v135);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v136);
  if (v139)
  {
    CFRelease(v139);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v140);
  if (v143)
  {
    CFRelease(v143);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  vp::vx::data_flow::State<void>::~State(&v144);
  if (v147)
  {
    CFRelease(v147);
  }

  vp::vx::data_flow::State<void>::~State(&v148);
  v74 = v151;
  if (v151)
  {
    CFRelease(v151);
  }

  v75 = *(this + 32);
  v76 = std::pmr::get_default_resource(v74);
  v161 = 0;
  v160[0] = v76;
  v160[1] = 0;
  vp::vx::data_flow::State<void>::get_value(this + 104, v160);
  v77 = vp::vx::data_flow::Value::view_storage(v160);
  v79 = *v77;
  *(v77 + 8) = 0;
  *(v77 + 16) = 0;
  *v77 = 0;
  vp::vx::data_flow::Value::~Value(v160);
  vp::vx::components::detail::report(v75, &v153, v79, *(&v79 + 1));
  if (v79)
  {
    operator delete(v79);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v78 = *MEMORY[0x277D85DE8];
}

void sub_2725DA47C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(void *a1, CFTypeRef cf, char **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  applesauce::CF::TypeRef::TypeRef((a1 + 1), *a3);
  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,std::string>(void *a1, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  a1[1] = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_2725DABEC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void sub_2725DAC5C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DACD8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DAD54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DADD0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void sub_2725DAE54(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void vp::services::Audio_Statistics::Event::~Event(vp::services::Audio_Statistics::Event *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t vp::vx::components::detail::report(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a3 == a4)
  {
    v10 = *(*a1 + 16);

    return v10();
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7++;
      result = (*(*a1 + 24))(a1, a2, v8);
    }

    while (v7 != a4);
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::AirPods_Offload_Mode>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<AUVoiceIOOtherAudioDuckingConfiguration>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Spatial_Head_Tracking_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

double vp::vx::data_flow::Value::Type_ID_Eraser<double>::move_value(uint64_t a1, void *a2, double *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

double vp::vx::data_flow::Value::Type_ID_Eraser<double>::copy_value(uint64_t a1, void *a2, double *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<double>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Port_Sub_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Chat_Flavor>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void vp::vx::components::Audio_Statistics::configure(vp::vx::components::Audio_Statistics *this)
{
  v156 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&v153, this, "vp::vx::components::Audio_Statistics]", 36);
    v4 = v154[15];
    v5 = v154[15];
    v6 = *v154;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = v153;
      if (v5 >= 0)
      {
        v9 = &v153;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v154[15];
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(v153);
    }
  }

  v11 = *(this + 27);
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11)) == 0 || (v13 = v12, v14 = *(this + 26), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
LABEL_52:
    _os_crash();
    __break(1u);
    goto LABEL_53;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = *(this + 29);
  v75 = v13;
  if (!v15)
  {
    goto LABEL_52;
  }

  v16 = std::__shared_weak_count::lock(v15);
  if (!v16)
  {
    goto LABEL_52;
  }

  v17 = *(this + 28);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v17)
  {
    goto LABEL_52;
  }

  v76 = v16;
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v18 = *(this + 31);
  if (!v18 || (v19 = std::__shared_weak_count::lock(v18), (v20 = v19) == 0) || (v21 = *(this + 30), atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed), !v21))
  {
LABEL_53:
    _os_crash();
    __break(1u);
  }

  v22 = (this + 392);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  (*(*v21 + 16))(&v153, v21, 72);
  *buf = v153;
  *&buf[8] = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(this + 104);
  *(this + 104) = *buf;
  *(this + 424) = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  (*(*v21 + 16))(&v153, v21, 24);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4298;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v147 = v145;
  v148 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_ref_stream_format", &v147);
  vp::vx::data_flow::State<void>::~State(&v147);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 25);
  v141 = v153;
  v142 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_block_size", &v141);
  vp::vx::data_flow::State<void>::~State(&v141);
  (*(*v21 + 16))(&v153, v21, 26);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B42E0;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v139 = v145;
  v140 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_type", &v139);
  vp::vx::data_flow::State<void>::~State(&v139);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 39);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4328;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v137 = v145;
  v138 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_sub_type", &v137);
  vp::vx::data_flow::State<void>::~State(&v137);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 40);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4370;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v135 = v145;
  v136 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_endpoint_type", &v135);
  vp::vx::data_flow::State<void>::~State(&v135);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 41);
  v133 = v153;
  v134 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_ref_port_is_Apple_bluetooth_product", &v133);
  vp::vx::data_flow::State<void>::~State(&v133);
  (*(*v21 + 16))(&v153, v21, 42);
  v131 = v153;
  v132 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v143 = *(this + 1);
  *buf = 0;
  *&buf[8] = v143;
  *&buf[16] = xmmword_2727565C0;
  v23 = (*(*v143 + 16))(v143, 48, 8);
  v145 = v23;
  v150 = &v145;
  *&v151 = &v143;
  BYTE8(v151) = 0;
  vp::vx::data_flow::State<void>::State(&v153, &v131);
  *v23 = &unk_2881B48C8;
  applesauce::CF::StringRef::from_get((v23 + 8), @"vp_ref_port_uid");
  *(v23 + 16) = v153;
  *(v23 + 24) = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  *(v23 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  BYTE8(v151) = 1;
  v24 = v145;
  std::__exception_guard_exceptions<applesauce::CF::StringRef* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &>(__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](&v150);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, v24);
  v25 = *(this + 49);
  v26 = *(this + 50);
  if (v25 >= v26)
  {
    v29 = *(this + 48);
    v30 = (v25 - v29) >> 5;
    v31 = v30 + 1;
    if ((v30 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v32 = v26 - v29;
    if (v32 >> 4 > v31)
    {
      v31 = v32 >> 4;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFE0)
    {
      v33 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    v155 = this + 408;
    if (v33)
    {
      v34 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 408, v33);
      v29 = *(this + 48);
      v25 = *(this + 49);
    }

    else
    {
      v34 = 0;
    }

    v35 = &v34[4 * v30];
    v153 = v34;
    *v154 = v35;
    *&v154[16] = &v34[4 * v33];
    v36 = *buf;
    *buf = 0;
    *v35 = v36;
    *(v35 + 1) = *&buf[16];
    *&v154[8] = v35 + 32;
    v37 = &v35[-32 * ((v25 - v29) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v29, v25, v37);
    v38 = *(this + 48);
    *(this + 48) = v37;
    v39 = *(this + 50);
    v69 = *&v154[8];
    *v22 = *&v154[8];
    *&v154[8] = v38;
    *&v154[16] = v39;
    v153 = v38;
    *v154 = v38;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v153);
    v28 = v69;
  }

  else
  {
    v27 = *buf;
    *buf = 0;
    *v25 = v27;
    *(v25 + 16) = *&buf[16];
    v28 = v25 + 32;
  }

  *(this + 49) = v28;
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, 0);
  vp::vx::data_flow::State<void>::~State(&v131);
  (*(*v21 + 16))(&v153, v21, 43);
  v129 = v153;
  v130 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_ref_port_bluetooth_HLC_2ch_state", &v129);
  vp::vx::data_flow::State<void>::~State(&v129);
  (*(*v21 + 16))(&v153, v21, 8);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B43B8;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v127 = v145;
  v128 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_mic_stream_format", &v127);
  vp::vx::data_flow::State<void>::~State(&v127);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 9);
  v125 = v153;
  v126 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_mic_block_size", &v125);
  vp::vx::data_flow::State<void>::~State(&v125);
  (*(*v21 + 16))(&v153, v21, 10);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4400;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v123 = v145;
  v124 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_mic_port_type", &v123);
  vp::vx::data_flow::State<void>::~State(&v123);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 16);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4448;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v121 = v145;
  v122 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_mic_port_sub_type", &v121);
  vp::vx::data_flow::State<void>::~State(&v121);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 51);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4490;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v119 = v145;
  v120 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_uplink_output_stream_format", &v119);
  vp::vx::data_flow::State<void>::~State(&v119);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 2);
  v117 = v153;
  v118 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_enable_acoustic_gain_control", &v117);
  vp::vx::data_flow::State<void>::~State(&v117);
  (*(*v21 + 16))(&v153, v21, 54);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B44D8;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v115 = v145;
  v116 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_hardware_mix_output_stream_format", &v115);
  vp::vx::data_flow::State<void>::~State(&v115);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 55);
  v113 = v153;
  v114 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_hardware_mix_output_block_size", &v113);
  vp::vx::data_flow::State<void>::~State(&v113);
  (*(*v21 + 16))(&v153, v21, 52);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4520;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v111 = v145;
  v112 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(this, @"vp_downlink_input_stream_format", &v111);
  vp::vx::data_flow::State<void>::~State(&v111);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 58);
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4568;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v143;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  LODWORD(v150) = *buf;
  v151 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v150;
  v146 = v151;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v109 = v145;
  v110 = v146;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_operation_mode", &v109);
  vp::vx::data_flow::State<void>::~State(&v109);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 69);
  v107 = v153;
  v108 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_codec_type", &v107);
  vp::vx::data_flow::State<void>::~State(&v107);
  (*(*v21 + 16))(&v153, v21, 70);
  v105 = v153;
  v106 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v143 = *(this + 1);
  *buf = 0;
  *&buf[8] = v143;
  *&buf[16] = xmmword_2727565C0;
  v40 = (*(*v143 + 16))(v143, 48, 8);
  v145 = v40;
  v150 = &v145;
  *&v151 = &v143;
  BYTE8(v151) = 0;
  vp::vx::data_flow::State<void>::State(&v153, &v105);
  *v40 = &unk_2881B4940;
  applesauce::CF::StringRef::from_get((v40 + 8), @"vp_codec_sample_rate");
  *(v40 + 16) = v153;
  *(v40 + 24) = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  *(v40 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  BYTE8(v151) = 1;
  v41 = v145;
  std::__exception_guard_exceptions<double* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<double> &>(__CFString const*&,vp::vx::data_flow::State<double> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](&v150);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, v41);
  v42 = *(this + 49);
  v43 = *(this + 50);
  if (v42 >= v43)
  {
    v46 = *(this + 48);
    v47 = (v42 - v46) >> 5;
    v48 = v47 + 1;
    if ((v47 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v49 = v43 - v46;
    if (v49 >> 4 > v48)
    {
      v48 = v49 >> 4;
    }

    if (v49 >= 0x7FFFFFFFFFFFFFE0)
    {
      v50 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v48;
    }

    v155 = this + 408;
    if (v50)
    {
      v51 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](this + 408, v50);
      v46 = *(this + 48);
      v42 = *(this + 49);
    }

    else
    {
      v51 = 0;
    }

    v52 = &v51[4 * v47];
    v153 = v51;
    *v154 = v52;
    *&v154[16] = &v51[4 * v50];
    v53 = *buf;
    *buf = 0;
    *v52 = v53;
    *(v52 + 1) = *&buf[16];
    *&v154[8] = v52 + 32;
    v54 = &v52[-32 * ((v42 - v46) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v46, v42, v54);
    v55 = *(this + 48);
    *(this + 48) = v54;
    v56 = *(this + 50);
    v70 = *&v154[8];
    *v22 = *&v154[8];
    *&v154[8] = v55;
    *&v154[16] = v56;
    v153 = v55;
    *v154 = v55;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v153);
    v45 = v70;
  }

  else
  {
    v44 = *buf;
    *buf = 0;
    *v42 = v44;
    *(v42 + 16) = *&buf[16];
    v45 = v42 + 32;
  }

  *(this + 49) = v45;
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100](buf, 0);
  vp::vx::data_flow::State<void>::~State(&v105);
  (*(*v21 + 16))(&v153, v21, 0);
  v103 = v153;
  v104 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_bypass", &v103);
  vp::vx::data_flow::State<void>::~State(&v103);
  (*(*v21 + 16))(&v153, v21, 1);
  v101 = v153;
  v102 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_disable", &v101);
  vp::vx::data_flow::State<void>::~State(&v101);
  (*(*v21 + 16))(&v153, v21, 61);
  v99 = v153;
  v100 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_hardware_has_vp", &v99);
  vp::vx::data_flow::State<void>::~State(&v99);
  (*(*v21 + 16))(&v153, v21, 62);
  v97 = v153;
  v98 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_tap_stream_enabled", &v97);
  vp::vx::data_flow::State<void>::~State(&v97);
  (*(*v21 + 16))(&v153, v21, 80);
  v95 = v153;
  v96 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_media_chat_enabled", &v95);
  vp::vx::data_flow::State<void>::~State(&v95);
  (*(*v21 + 16))(&v153, v21, 77);
  v93 = v153;
  v94 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_spatial_chat_enabled", &v93);
  vp::vx::data_flow::State<void>::~State(&v93);
  (*(*v21 + 16))(&v153, v21, 59);
  v57 = v153;
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B45B0;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v57;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  v58 = *buf;
  LODWORD(v150) = *buf;
  v71 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v58;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v91 = v58;
  v92 = v71;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_chat_flavor", &v91);
  vp::vx::data_flow::State<void>::~State(&v91);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 88);
  v89 = v153;
  v90 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_stereo_to_mono_mix_enabled", &v89);
  vp::vx::data_flow::State<void>::~State(&v89);
  (*(*v21 + 16))(&v153, v21, 89);
  v87 = v153;
  v88 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_media_playback_on_external_device_enabled", &v87);
  vp::vx::data_flow::State<void>::~State(&v87);
  (*(*v21 + 16))(&v153, v21, 90);
  v59 = v153;
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B45F8;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v59;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  v60 = *buf;
  LODWORD(v150) = *buf;
  v72 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v60;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v85 = v60;
  v86 = v72;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_other_audio_ducking_configuration_enable_advanced_ducking", &v85);
  vp::vx::data_flow::State<void>::~State(&v85);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 90);
  v61 = v153;
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4640;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v61;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  v62 = *buf;
  LODWORD(v150) = *buf;
  v73 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v62;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v83 = v62;
  v84 = v73;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_other_audio_ducking_configuration_ducking_level", &v83);
  vp::vx::data_flow::State<void>::~State(&v83);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  (*(*v21 + 16))(&v153, v21, 95);
  v81 = v153;
  v82 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_automatic_mic_mode_enabled", &v81);
  vp::vx::data_flow::State<void>::~State(&v81);
  (*(*v21 + 16))(&v153, v21, 96);
  v79 = v153;
  v80 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(this, @"vp_camera_is_active", &v79);
  vp::vx::data_flow::State<void>::~State(&v79);
  (*(*v21 + 16))(&v153, v21, 94);
  v63 = v153;
  LODWORD(v143) = v153;
  v144 = *v154;
  *v154 = 0;
  *&v154[8] = 0;
  vp::vx::data_flow::State<void>::~State(&v153);
  v153 = &unk_2881B4688;
  v154[0] = 0;
  *&v154[16] = &v153;
  v149 = v63;
  vp::vx::data_flow::State_Manager::create_state(buf, (v14 + 48), &v153);
  v64 = *buf;
  LODWORD(v150) = *buf;
  v74 = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v153);
  LODWORD(v145) = v64;
  v151 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v150);
  v77 = v64;
  v78 = v74;
  v146 = 0uLL;
  vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(this, @"vp_airpods_offload_mode", &v77);
  vp::vx::data_flow::State<void>::~State(&v77);
  vp::vx::data_flow::State<void>::~State(&v145);
  vp::vx::data_flow::State<void>::~State(&v143);
  v65 = *(this + 48);
  v66 = *(this + 49);
  while (v65 != v66)
  {
    v67 = *v65;
    v65 += 4;
    (*(*v67 + 16))(v67, this + 328);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  v68 = *MEMORY[0x277D85DE8];
}

void sub_2725DD010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100]((v58 - 176), 0);
  vp::vx::data_flow::State<void>::~State(&a57);
  std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  _Unwind_Resume(a1);
}

void sub_2725DD228()
{
  if ((v0 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    JUMPOUT(0x2725DD208);
  }

  JUMPOUT(0x2725DD210);
}

void sub_2725DD23C()
{
  if (v0)
  {
    JUMPOUT(0x2725DD218);
  }

  JUMPOUT(0x2725DD208);
}

void sub_2725DD24C()
{
  if (v0)
  {
    JUMPOUT(0x2725DD220);
  }

  JUMPOUT(0x2725DD210);
}

void (****vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(void *a1, const void *a2, int *a3))(void)
{
  v30 = a1[1];
  *&v28 = 0;
  *(&v28 + 1) = v30;
  v29 = xmmword_2727565C0;
  v6 = (*(*v30 + 16))(v30, 48, 8);
  v33 = v6;
  v31[0] = &v33;
  v31[1] = &v30;
  v32 = 0;
  vp::vx::data_flow::State<void>::State(&v34, a3);
  *v6 = &unk_2881B46D0;
  applesauce::CF::StringRef::from_get((v6 + 8), a2);
  *(v6 + 16) = v34;
  *(v6 + 24) = *v35;
  *v35 = 0uLL;
  *(v6 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v34);
  v32 = 1;
  v7 = v33;
  std::__exception_guard_exceptions<std::string* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<std::string> &>(__CFString const*&,vp::vx::data_flow::State<std::string> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v31);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, v7);
  v8 = a1 + 49;
  v9 = a1[49];
  v10 = a1[50];
  if (v9 >= v10)
  {
    v14 = a1[48];
    v15 = (v9 - v14) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v14;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v36 = a1 + 51;
    if (v18)
    {
      v19 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((a1 + 51), v18);
      v14 = a1[48];
      v9 = a1[49];
    }

    else
    {
      v19 = 0;
    }

    *&v35[16] = v19 + 32 * v18;
    v20 = v28;
    v21 = v29;
    v22 = (v19 + 32 * v15);
    *&v28 = 0;
    *v22 = v20;
    v22[1] = v21;
    *&v35[8] = v22 + 2;
    v23 = &v22[-2 * ((v9 - v14) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v14, v9, v23);
    v24 = a1[48];
    a1[48] = v23;
    v25 = a1[50];
    v27 = *&v35[8];
    *v8 = *&v35[8];
    *&v35[8] = v24;
    *&v35[16] = v25;
    v34 = v24;
    *v35 = v24;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v34);
    v13 = v27;
  }

  else
  {
    v11 = v28;
    v12 = v29;
    *&v28 = 0;
    *v9 = v11;
    *(v9 + 16) = v12;
    v13 = v9 + 32;
  }

  *v8 = v13;
  return std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, 0);
}

void sub_2725DD46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void (****vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(void *a1, const void *a2, int *a3))(void)
{
  v30 = a1[1];
  *&v28 = 0;
  *(&v28 + 1) = v30;
  v29 = xmmword_2727565C0;
  v6 = (*(*v30 + 16))(v30, 48, 8);
  v33 = v6;
  v31[0] = &v33;
  v31[1] = &v30;
  v32 = 0;
  vp::vx::data_flow::State<void>::State(&v34, a3);
  *v6 = &unk_2881B4790;
  applesauce::CF::StringRef::from_get((v6 + 8), a2);
  *(v6 + 16) = v34;
  *(v6 + 24) = *v35;
  *v35 = 0uLL;
  *(v6 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v34);
  v32 = 1;
  v7 = v33;
  std::__exception_guard_exceptions<unsigned int* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<unsigned int> &>(__CFString const*&,vp::vx::data_flow::State<unsigned int> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v31);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, v7);
  v8 = a1 + 49;
  v9 = a1[49];
  v10 = a1[50];
  if (v9 >= v10)
  {
    v14 = a1[48];
    v15 = (v9 - v14) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v14;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v36 = a1 + 51;
    if (v18)
    {
      v19 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((a1 + 51), v18);
      v14 = a1[48];
      v9 = a1[49];
    }

    else
    {
      v19 = 0;
    }

    *&v35[16] = v19 + 32 * v18;
    v20 = v28;
    v21 = v29;
    v22 = (v19 + 32 * v15);
    *&v28 = 0;
    *v22 = v20;
    v22[1] = v21;
    *&v35[8] = v22 + 2;
    v23 = &v22[-2 * ((v9 - v14) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v14, v9, v23);
    v24 = a1[48];
    a1[48] = v23;
    v25 = a1[50];
    v27 = *&v35[8];
    *v8 = *&v35[8];
    *&v35[8] = v24;
    *&v35[16] = v25;
    v34 = v24;
    *v35 = v24;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v34);
    v13 = v27;
  }

  else
  {
    v11 = v28;
    v12 = v29;
    *&v28 = 0;
    *v9 = v11;
    *(v9 + 16) = v12;
    v13 = v9 + 32;
  }

  *v8 = v13;
  return std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, 0);
}

void sub_2725DD6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void (****vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(void *a1, const void *a2, int *a3))(void)
{
  v30 = a1[1];
  *&v28 = 0;
  *(&v28 + 1) = v30;
  v29 = xmmword_2727565C0;
  v6 = (*(*v30 + 16))(v30, 48, 8);
  v33 = v6;
  v31[0] = &v33;
  v31[1] = &v30;
  v32 = 0;
  vp::vx::data_flow::State<void>::State(&v34, a3);
  *v6 = &unk_2881B4850;
  applesauce::CF::StringRef::from_get((v6 + 8), a2);
  *(v6 + 16) = v34;
  *(v6 + 24) = *v35;
  *v35 = 0uLL;
  *(v6 + 40) = 0;
  vp::vx::data_flow::State<void>::~State(&v34);
  v32 = 1;
  v7 = v33;
  std::__exception_guard_exceptions<BOOL* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<BOOL> &>(__CFString const*&,vp::vx::data_flow::State<BOOL> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](v31);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, v7);
  v8 = a1 + 49;
  v9 = a1[49];
  v10 = a1[50];
  if (v9 >= v10)
  {
    v14 = a1[48];
    v15 = (v9 - v14) >> 5;
    v16 = v15 + 1;
    if ((v15 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v14;
    if (v17 >> 4 > v16)
    {
      v16 = v17 >> 4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v36 = a1 + 51;
    if (v18)
    {
      v19 = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((a1 + 51), v18);
      v14 = a1[48];
      v9 = a1[49];
    }

    else
    {
      v19 = 0;
    }

    *&v35[16] = v19 + 32 * v18;
    v20 = v28;
    v21 = v29;
    v22 = (v19 + 32 * v15);
    *&v28 = 0;
    *v22 = v20;
    v22[1] = v21;
    *&v35[8] = v22 + 2;
    v23 = &v22[-2 * ((v9 - v14) >> 5)];
    std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(v14, v9, v23);
    v24 = a1[48];
    a1[48] = v23;
    v25 = a1[50];
    v27 = *&v35[8];
    *v8 = *&v35[8];
    *&v35[8] = v24;
    *&v35[16] = v25;
    v34 = v24;
    *v35 = v24;
    std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(&v34);
    v13 = v27;
  }

  else
  {
    v11 = v28;
    v12 = v29;
    *&v28 = 0;
    *v9 = v11;
    *(v9 + 16) = v12;
    v13 = v9 + 32;
  }

  *v8 = v13;
  return std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](&v28, 0);
}

void sub_2725DD8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__14JNS3_20AirPods_Offload_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::legacy_cast<vp::vx::AirPods_Offload_Mode>(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__14JNS3_20AirPods_Offload_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4688;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__13J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__13J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4640;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__12J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2) != 0;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__12J39AUVoiceIOOtherAudioDuckingConfigurationEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B45F8;
  *(a2 + 8) = *(result + 8);
  return result;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__11JNS3_11Chat_FlavorEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::Legacy<vp::vx::Chat_Flavor>::cast(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

void sub_2725DDC94(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__11JNS3_11Chat_FlavorEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B45B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *(**a1 + 16);

  return v3();
}

void (****std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>,std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>*>(void (****result)(void), void (****a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      *(a3 + 8) = v5[1];
      *(a3 + 16) = *(v5 + 1);
      v5 += 4;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      result = std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>::reset[abi:ne200100](v4);
      v4 += 4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>,vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>::reset[abi:ne200100]((i - 32));
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

void (****std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>::reset[abi:ne200100](void (****result)(void)))(void)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (**v1)(v1);
    return ((*v2[1])[3])(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<double* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<double> &>(__CFString const*&,vp::vx::data_flow::State<double> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::unregister_listener(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v1);
    *(a1 + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v5[0] = &unk_2881B49B8;
    v5[1] = v3;
    v5[2] = a2;
    v5[3] = v5;
    std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725DE1BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(double const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4970;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(double const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4970;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  valuePtr = *a2;
  v8 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v8);
  if (v4)
  {
    v5 = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v6 = v3;
    v5 = *(v3 + 24);
    *(v6 + 24) = v8;
    v8 = v5;
    if (!v5)
    {
      return;
    }
  }

  CFRelease(v5);
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(unint64_t a1, const void **a2, const void **a3, uint64_t *a4)
{
  v9 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = *(i + 8);
        if (v16 == v10)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(i + 16), a2) == kCFCompareEqualTo)
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = (*(**(a1 + 32) + 16))(*(a1 + 32), 32, 8);
  *i = 0;
  *(i + 8) = v10;
  v17 = *a3;
  if (v17)
  {
    CFRetain(v17);
  }

  v18 = *a4;
  *(i + 16) = v17;
  *(i + 24) = v18;
  *a4 = 0;
  v19 = (*(a1 + 40) + 1);
  v20 = *(a1 + 48);
  if (!v11 || (v20 * v11) < v19)
  {
    v21 = 1;
    if (v11 >= 3)
    {
      v21 = (v11 & (v11 - 1)) != 0;
    }

    v22 = v21 | (2 * v11);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__rehash<true>(a1, v24);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v4);
  if (v26)
  {
    *i = *v26;
LABEL_40:
    *v26 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 24);
  *(a1 + 24) = i;
  *(v25 + 8 * v4) = a1 + 24;
  if (*i)
  {
    v27 = *(*i + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v27 >= v11)
      {
        v27 %= v11;
      }
    }

    else
    {
      v27 &= v11 - 1;
    }

    v26 = (*a1 + 8 * v27);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 40);
  return i;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B49B8;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B49B8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(double const&)#1}>,void ()(double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B49B8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B4940;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<double>(__CFString const*,vp::vx::data_flow::State<double>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B4940;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__10JNS3_14Operation_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE4__10JNS3_14Operation_ModeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4568;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__9JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = v10;
  storage[1].n128_u64[0] = v11;
  *storage = result;
  return result;
}

void sub_2725DED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::compare_value(uint64_t a1, double **a2, double **a3)
{
  v3 = *a2;
  v4 = *a3;
  return **a2 == **a3 && *(v3 + 2) == *(v4 + 2) && *(v3 + 3) == *(v4 + 3) && *(v3 + 4) == *(v4 + 4) && *(v3 + 5) == *(v4 + 5) && *(v3 + 6) == *(v4 + 6) && *(v3 + 7) == *(v4 + 7) && *(v3 + 8) == *(v4 + 8);
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v5 = (*a3)[1];
  v3[2].n128_u64[0] = (*a3)[2].n128_u64[0];
  *v3 = result;
  v3[1] = v5;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  result = **a3;
  v5 = (*a3)[1];
  v3[2].n128_u64[0] = (*a3)[2].n128_u64[0];
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<CA::StreamDescription>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 40, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__9JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4520;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__8JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = v10;
  storage[1].n128_u64[0] = v11;
  *storage = result;
  return result;
}

void sub_2725DF020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__8JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B44D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__7JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = v10;
  storage[1].n128_u64[0] = v11;
  *storage = result;
  return result;
}

void sub_2725DF154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__7JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4490;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__6JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__6JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4448;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__5JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Input_Port_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__5JNS3_15Input_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4400;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__4JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  CA::StreamDescription::AsString(&v10, v4, v5, v6);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v3);
  result = v10;
  storage[1].n128_u64[0] = v11;
  *storage = result;
  return result;
}

void sub_2725DF490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__4JN2CA17StreamDescriptionEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS9_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B43B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<applesauce::CF::StringRef* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &>(__CFString const*&,vp::vx::data_flow::State<applesauce::CF::StringRef> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::unregister_listener(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v1);
    *(a1 + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v5[0] = &unk_2881B48F8;
    v5[1] = v3;
    v5[2] = a2;
    v5[3] = v5;
    std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725DF794(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    v9 = v3;
  }

  else
  {
    CFRetain(@"(null)");
    v4 = CFGetTypeID(@"(null)");
    if (v4 == CFStringGetTypeID())
    {
      CFRetain(@"(null)");
      v9 = @"(null)";
      CFRelease(@"(null)");
    }

    else
    {
      CFRelease(@"(null)");
      v9 = 0;
    }
  }

  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v9);
  if ((v6 & 1) == 0)
  {
    v8 = v5;
    v7 = *(v5 + 24);
    *(v8 + 24) = v9;
    v9 = v7;
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = v9;
  if (v9)
  {
LABEL_10:
    CFRelease(v7);
  }
}

void sub_2725DF89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B48F8;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B48F8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(applesauce::CF::StringRef const&)#1}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B48F8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B48C8;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<applesauce::CF::StringRef>(__CFString const*,vp::vx::data_flow::State<applesauce::CF::StringRef>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B48C8;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<BOOL* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<BOOL> &>(__CFString const*&,vp::vx::data_flow::State<BOOL> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::unregister_listener(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v1);
    *(a1 + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v5[0] = &unk_2881B4880;
    v5[1] = v3;
    v5[2] = a2;
    v5[3] = v5;
    std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725DFDC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::operator()(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  v9 = *v3;
  if (!v9)
  {
    CFRetain(@"(null)");
    v4 = CFGetTypeID(@"(null)");
    if (v4 == CFStringGetTypeID())
    {
      CFRetain(@"(null)");
      v9 = @"(null)";
      CFRelease(@"(null)");
    }

    else
    {
      CFRelease(@"(null)");
      v9 = 0;
    }
  }

  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v9);
  if ((v6 & 1) == 0)
  {
    v8 = v5;
    v7 = *(v5 + 24);
    *(v8 + 24) = v9;
    v9 = v7;
    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = v9;
  if (v9)
  {
LABEL_12:
    CFRelease(v7);
  }
}

void sub_2725DFED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B4880;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4880;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4880;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B4850;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<BOOL>(__CFString const*,vp::vx::data_flow::State<BOOL>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B4850;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__3JNS3_18Port_Endpoint_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::Legacy<vp::vx::Port_Endpoint_Type>::cast(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_2725E022C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Port_Endpoint_Type>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__3JNS3_18Port_Endpoint_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4370;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__2JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Port_Sub_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__2JNS3_13Port_Sub_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B4328;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__1JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(*v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components16Audio_Statistics9configureEvE3__1JNS3_16Output_Port_TypeEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSD_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B42E0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<unsigned int* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<unsigned int> &>(__CFString const*&,vp::vx::data_flow::State<unsigned int> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::unregister_listener(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v1);
    *(a1 + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v5[0] = &unk_2881B4808;
    v5[1] = v3;
    v5[2] = a2;
    v5[3] = v5;
    std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725E07CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B47C0;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B47C0;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::operator()(uint64_t a1, int *a2)
{
  valuePtr = *a2;
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v8);
  if (v4)
  {
    v5 = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v6 = v3;
    v5 = *(v3 + 24);
    *(v6 + 24) = v8;
    v8 = v5;
    if (!v5)
    {
      return;
    }
  }

  CFRelease(v5);
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B4808;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v5 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4808;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4808;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B4790;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<unsigned int>(__CFString const*,vp::vx::data_flow::State<unsigned int>)::Payload_Key_State_T::~Payload_Key_State_T(uint64_t a1)
{
  *a1 = &unk_2881B4790;
  vp::vx::data_flow::State<void>::~State((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void (****std::unique_ptr<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,vp::Allocator_Delete<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>>::reset[abi:ne200100](void (****result)(void), void (***a2)(void)))(void)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (**v2)(v2);
    return ((*v3[1])[3])(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::string* std::pmr::polymorphic_allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T>::new_object[abi:ne200100]<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T,__CFString const*&,vp::vx::data_flow::State<std::string> &>(__CFString const*&,vp::vx::data_flow::State<std::string> &)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 48, 8);
  }

  return a1;
}

void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::unregister_listener(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener((a1 + 16), v1);
    *(a1 + 40) = 0;
  }
}

uint64_t vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(result + 40))
  {
    v3 = *(result + 8);
    if (v3)
    {
      CFRetain(*(result + 8));
    }

    v5[0] = &unk_2881B4748;
    v5[1] = v3;
    v5[2] = a2;
    v5[3] = v5;
    std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v6, v5);
    v7 = 0;
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725E11A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::string>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4700;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::string>::register_listener(std::function<void ()(std::string const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B4700;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1},std::allocator<void vp::vx::components::Audio_Statistics::add_payload_key_state<std::string>(__CFString const*,vp::vx::data_flow::State<std::string>)::Payload_Key_State_T::register_listener(std::unordered_map<applesauce::CF::StringRef,applesauce::CF::TypeRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<std::pair<applesauce::CF::StringRef const,applesauce::CF::TypeRef>>> *)::{lambda(std::string const&)#1}>,void ()(std::string const&)>::operator()(uint64_t a1, const UInt8 *a2)
{
  v3 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  v10 = CFStringCreateWithBytes(0, a2, v4, 0x8000100u, 0);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::TypeRef>(*(a1 + 16), (a1 + 8), (a1 + 8), &v10);
  if (v6)
  {
    v7 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v8 = v5;
    v7 = *(v5 + 24);
    *(v8 + 24) = v10;
    v10 = v7;
    if (!v7)
    {
      return;
    }
  }

  CFRelease(v7);
}