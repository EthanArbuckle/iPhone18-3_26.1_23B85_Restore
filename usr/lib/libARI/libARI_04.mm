const char *asString(int a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "IBI_CALL_CS_ALERTING_LEVEL_2";
      }

      if (a1 == 4)
      {
        return "IBI_CALL_CS_ALERTING_CATEGORY_1";
      }
    }

    else
    {
      if (!a1)
      {
        return "IBI_CALL_CS_ALERTING_LEVEL_0";
      }

      if (a1 == 1)
      {
        return "IBI_CALL_CS_ALERTING_LEVEL_1";
      }
    }

    return "???";
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return "IBI_CALL_CS_ALERTING_CATEGORY_4";
      case 8:
        return "IBI_CALL_CS_ALERTING_CATEGORY_5";
      case 255:
        return "IBI_CALL_CS_NO_ALERTING_PATTERN";
    }

    return "???";
  }

  if (a1 == 5)
  {
    return "IBI_CALL_CS_ALERTING_CATEGORY_2";
  }

  else
  {
    return "IBI_CALL_CS_ALERTING_CATEGORY_3";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CALL_CS_CMD_SET";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_CS_CMD_GET";
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return "???";
  }

  else
  {
    return "IBI_CALL_CS_HOLD_ACTIVE_ACCEPT_WAITING";
  }
}

{
  if (a1 > 1070)
  {
    if (a1 <= 3301)
    {
      if (a1 > 2102)
      {
        if (a1 > 2299)
        {
          if (a1 <= 2303)
          {
            if (a1 > 2301)
            {
              if (a1 == 2302)
              {
                return "IBI_CALL_CS_UNRECOGNIZED_ERROR";
              }

              else
              {
                return "IBI_CALL_CS_UNEXPECTED_ERROR";
              }
            }

            else if (a1 == 2300)
            {
              return "IBI_CALL_CS_UNRECOGNIZED_ERROR_INVOKE_ID";
            }

            else
            {
              return "IBI_CALL_CS_RETURN_ERROR_UNEXPECTED";
            }
          }

          if (a1 > 3299)
          {
            if (a1 == 3300)
            {
              return "IBI_CALL_CS_ERROR_CAUSE_CELL_BARRED_MO_DATA";
            }

            else
            {
              return "IBI_CALL_CS_ERROR_CAUSE_IMS_SERVICE_NOT_AVAILABLE";
            }
          }

          if (a1 == 2304)
          {
            return "IBI_CALL_CS_MISTYPED_ERROR_PARAMETER";
          }

          if (a1 == 3299)
          {
            return "IBI_CALL_CS_CAUSE_RSRVCC";
          }
        }

        else
        {
          if (a1 <= 2106)
          {
            if (a1 > 2104)
            {
              if (a1 == 2105)
              {
                return "IBI_CALL_CS_UNRECOGNIZED_LINKED_ID";
              }

              else
              {
                return "IBI_CALL_CS_LINKED_RESPONSE_UNEXPECTED";
              }
            }

            else if (a1 == 2103)
            {
              return "IBI_CALL_CS_RESOURCE_LIMITATION";
            }

            else
            {
              return "IBI_CALL_CS_INITIATING_RELEASE";
            }
          }

          if (a1 > 2200)
          {
            if (a1 == 2201)
            {
              return "IBI_CALL_CS_RETURN_RESULT_UNEXPECTED";
            }

            if (a1 == 2202)
            {
              return "IBI_CALL_CS_MISTYPED_RES_PARAMETER";
            }
          }

          else
          {
            if (a1 == 2107)
            {
              return "IBI_CALL_CS_UNEXPECTED_LINKED_OPERATION";
            }

            if (a1 == 2200)
            {
              return "IBI_CALL_CS_UNRECOGNIZED_INVOKE_ID";
            }
          }
        }
      }

      else if (a1 > 1126)
      {
        if (a1 > 2001)
        {
          if (a1 > 2100)
          {
            if (a1 == 2101)
            {
              return "IBI_CALL_CS_UNRECOGNIZED_OPERATION";
            }

            else
            {
              return "IBI_CALL_CS_MISTYPED_PRO_PARAMETER";
            }
          }

          if (a1 == 2002)
          {
            return "IBI_CALL_CS_STRUCTURED_COMPONENT";
          }

          if (a1 == 2100)
          {
            return "IBI_CALL_CS_DUPLICATE_INVOKE_ID";
          }
        }

        else
        {
          if (a1 > 1999)
          {
            if (a1 == 2000)
            {
              return "IBI_CALL_CS_UNRECOGNIZED_COMPONENT";
            }

            else
            {
              return "IBI_CALL_CS_MISTYPED_COMPONENT";
            }
          }

          if (a1 == 1127)
          {
            return "IBI_CALL_CS_RESOURCES_NOT_AVAILABLE";
          }

          if (a1 == 1255)
          {
            return "IBI_CALL_CS_MS_INT_SS_TIME_OUT";
          }
        }
      }

      else
      {
        if (a1 > 1122)
        {
          if (a1 > 1124)
          {
            if (a1 == 1125)
            {
              return "IBI_CALL_CS_INVALID_DEFLECTED_TO_NUMBER";
            }

            else
            {
              return "IBI_CALL_CS_MAX_NUMBER_OF_MPTY_PARTICIPANTS_EXCEEDED";
            }
          }

          else if (a1 == 1123)
          {
            return "IBI_CALL_CS_DEFLECTION_TO_SERVED_SUBSCRIBER";
          }

          else
          {
            return "IBI_CALL_CS_SPECIAL_SERVICE_CODE";
          }
        }

        if (a1 > 1120)
        {
          if (a1 == 1121)
          {
            return "IBI_CALL_CS_REJECTED_BY_USER";
          }

          else
          {
            return "IBI_CALL_CS_REJECTED_BY_NETWORK";
          }
        }

        if (a1 == 1071)
        {
          return "IBI_CALL_CS_UNKNOWN_ALPHABET";
        }

        if (a1 == 1072)
        {
          return "IBI_CALL_CS_USSD_BUSY";
        }
      }

      return "???";
    }

    switch(a1)
    {
      case 4001:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_DISCONNECT";
      case 4002:
      case 4003:
      case 4004:
      case 4005:
      case 4006:
      case 4035:
      case 4036:
      case 4037:
      case 4038:
      case 4050:
      case 4051:
      case 4052:
      case 4053:
      case 4054:
      case 4055:
      case 4056:
        return "???";
      case 4007:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_FAIL";
      case 4008:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_NDSS_ORIG_CANCEL";
      case 4009:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_INTERCEPT";
      case 4010:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_REORDER";
      case 4011:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CC_RELEASE";
      case 4012:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CC_RELEASE_SO_REJ";
      case 4013:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_MAINTENANCE";
      case 4014:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_PERSISTENCE_DELAY_CALC_FAIL";
      case 4015:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_MS";
      case 4016:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_POWER_DOWN";
      case 4017:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_POWER_DOWN_BY_USER";
      case 4018:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_BS";
      case 4019:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_SO_REJECT";
      case 4020:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_TIMEOUT";
      case 4021:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_ACK_FAIL";
      case 4022:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_WEAK_SIGNAL";
      case 4023:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_LOCK";
      case 4024:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_TC_RELEASE_MT_CALL";
      case 4025:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_PAGE_FAIL";
      case 4026:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_REJECTED";
      case 4027:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_REJ_SO_NOT_SUPPORTED";
      case 4028:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_ACCT";
      case 4029:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_USER_CANCEL";
      case 4030:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_ACCESS_FAIL";
      case 4031:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_NO_SERVICE_FAIL";
      case 4032:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_RETRY_ORDER";
      case 4033:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_BLOCKED_BY_IRAT";
      case 4034:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CSFB_OOSA";
      case 4039:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_FNM_RELEASE";
      case 4040:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_BUSY_ORIG_FAIL";
      case 4041:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_LOCKED_ORIG_FAIL";
      case 4042:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_ORIG_FAIL_SO_REDIRECT";
      case 4043:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_PAGE_USER_REJECT";
      case 4044:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CALL_JOIN_NOT_READY";
      case 4045:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CALL_SWAP_NOT_READY";
      case 4046:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CALL_FLASH_FAIL";
      case 4047:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CALL_DTMF_REJ_ORDER_ERROR";
      case 4048:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CALL_DTMF_REJ_TC_TXQ_FULL";
      case 4049:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CALL_DTMF_REJ_FMT_OVERFLOW";
      case 4057:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_CALL_NOT_READY_PROTOCOL_ERROR";
      case 4058:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_BAD_PARAMETERS";
      case 4059:
        return "IBI_CALL_CS_ERROR_CAUSE_CDMA_OTASP_CALL_NA_OUTSIDE_HOME_NW";
      default:
        if (a1 == 3302)
        {
          result = "IBI_CALL_CS_ERROR_CAUSE_EMERGENCY_CALL_SETUP";
        }

        else
        {
          if (a1 != 3303)
          {
            return "???";
          }

          result = "IBI_CALL_CS_ERROR_CAUSE_NON_UE_DETECTABLE_EMERGENCY_CALL";
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = "IBI_CALL_CS_UNASSIGNED_NUMBER";
        break;
      case 2:
      case 4:
      case 5:
      case 7:
      case 9:
      case 10:
      case 11:
      case 12:
      case 14:
      case 15:
      case 20:
      case 23:
      case 25:
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 39:
      case 40:
      case 45:
      case 46:
      case 48:
      case 51:
      case 52:
      case 53:
      case 54:
      case 56:
      case 59:
      case 60:
      case 61:
      case 62:
      case 64:
      case 66:
      case 67:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 80:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 89:
      case 90:
      case 92:
      case 93:
      case 94:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
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
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 250:
      case 251:
      case 252:
      case 253:
      case 254:
      case 255:
      case 294:
      case 295:
      case 299:
      case 311:
      case 312:
      case 313:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 400:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
        return "???";
      case 3:
        result = "IBI_CALL_CS_NO_ROUTE";
        break;
      case 6:
        result = "IBI_CALL_CS_CHANNEL_UNACCEPTABLE";
        break;
      case 8:
        result = "IBI_CALL_CS_OPERATOR_BARRING";
        break;
      case 13:
        result = "IBI_CALL_CS_COMPLETED_ELSEWHERE";
        break;
      case 16:
        result = "IBI_CALL_CS_NORMAL_CALL_CLEAR";
        break;
      case 17:
        result = "IBI_CALL_CS_USER_BUSY";
        break;
      case 18:
        result = "IBI_CALL_CS_NO_USER_RESPONDING";
        break;
      case 19:
        result = "IBI_CALL_CS_USER_ALERTING_NO_ANSWER";
        break;
      case 21:
        result = "IBI_CALL_CS_CALL_REJECTED";
        break;
      case 22:
        result = "IBI_CALL_CS_NUMBER_CHANGED";
        break;
      case 24:
        result = "IBI_CALL_CS_REJ_DUE_FEATURE_AT_DESTINATION";
        break;
      case 26:
        result = "IBI_CALL_CS_NON_SELECTED_USER_CLEARING";
        break;
      case 27:
        result = "IBI_CALL_CS_DESTION_OUT_OF_ORDER";
        break;
      case 28:
        result = "IBI_CALL_CS_INVALID_NUMBER_FORMAT";
        break;
      case 29:
        result = "IBI_CALL_CS_FACILITY_REJECTED";
        break;
      case 30:
        result = "IBI_CALL_CS_RESPONSE_TO_STATUS_ENQUIRY";
        break;
      case 31:
        result = "IBI_CALL_CS_NORMAL_UNSPECIFIED";
        break;
      case 34:
        result = "IBI_CALL_CS_NO_CIRCUIT_AVAILABLE";
        break;
      case 38:
        result = "IBI_CALL_CS_NETWORK_OUT_OF_ORDER";
        break;
      case 41:
        result = "IBI_CALL_CS_TEMPORARY_FAILURE";
        break;
      case 42:
        result = "IBI_CALL_CS_SWITCH_CONGESTION";
        break;
      case 43:
        result = "IBI_CALL_CS_ACCESS_INFORMATION_DISCARDED";
        break;
      case 44:
        result = "IBI_CALL_CS_REQEUSTED_CIRCUIT_NOT_AVAILABLE";
        break;
      case 47:
        result = "IBI_CALL_CS_RESSOURCES_UNAVAILABLE";
        break;
      case 49:
        result = "IBI_CALL_CS_QUALITY_UNAVAILABLE";
        break;
      case 50:
        result = "IBI_CALL_CS_FACILITY_NOT_SUBSCRIBED";
        break;
      case 55:
        result = "IBI_CALL_CS_INCOMING_CALLS_BARRED_IN_CUG";
        break;
      case 57:
        result = "IBI_CALL_CS_BEARER_CAPABILITY_NOT_ALLOWED";
        break;
      case 58:
        result = "IBI_CALL_CS_BEARER_CAPABILITY_NOT_AVAILABLE";
        break;
      case 63:
        result = "IBI_CALL_CS_SERVICE_NOT_AVAILABLE";
        break;
      case 65:
        result = "IBI_CALL_CS_BEARER_SERVICE_NOT_IMPLEMENTED";
        break;
      case 68:
        result = "IBI_CALL_CS_ACM_GREATER_OR_EQUAL_TO_ACMMAX";
        break;
      case 69:
        result = "IBI_CALL_CS_FACILITY_NOT_IMPLEMENTED";
        break;
      case 70:
        result = "IBI_CALL_CS_ONLY_RESTRICTED_DIGITAL";
        break;
      case 79:
        result = "IBI_CALL_CS_SERVICE_NOT_IMPLEMENTED";
        break;
      case 81:
        result = "IBI_CALL_CS_INVALID_TI";
        break;
      case 87:
        result = "IBI_CALL_CS_USER_NOT_IN_CUG";
        break;
      case 88:
        result = "IBI_CALL_CS_INCOMPATIBLE_DESTION";
        break;
      case 91:
        result = "IBI_CALL_CS_INVALID_TRANSIT_NETWORK";
        break;
      case 95:
        result = "IBI_CALL_CS_SEMANTICS_INCORRECT";
        break;
      case 96:
        result = "IBI_CALL_CS_INVALID_MANDATORY_INFORMATION";
        break;
      case 97:
        result = "IBI_CALL_CS_UNKNOW_MSG_TYPE1";
        break;
      case 98:
        result = "IBI_CALL_CS_UNEXPECTED_MSG_TYPE";
        break;
      case 99:
        result = "IBI_CALL_CS_UNEXPECTED_IE";
        break;
      case 100:
        result = "IBI_CALL_CS_CONDITIONAL_IE_ERROR";
        break;
      case 101:
        result = "IBI_CALL_CS_UNKNOWN_MSG_TYPE2";
        break;
      case 102:
        result = "IBI_CALL_CS_RECOVERY_ON_TIMER_EXPIRY";
        break;
      case 111:
        result = "IBI_CALL_CS_PROTOCOL_ERROR";
        break;
      case 127:
        result = "IBI_CALL_CS_INTERWORKING";
        break;
      case 256:
        result = "IBI_CALL_CS_VOID_CAUSE";
        break;
      case 257:
        result = "IBI_CALL_CS_OUTOF_MEMORY";
        break;
      case 258:
        result = "IBI_CALL_CS_INVALID_PARAM";
        break;
      case 259:
        result = "IBI_CALL_CS_DATA_CALL_ACTIVE";
        break;
      case 260:
        result = "IBI_CALL_CS_SPEECH_CALL_ACTIVE";
        break;
      case 261:
        result = "IBI_CALL_CS_DTMF_REJ_DURING_MOC_SETUP";
        break;
      case 262:
        result = "IBI_CALL_CS_MOC_SETUP_REJ_MISSING_ACM_INFO_IND_CB";
        break;
      case 263:
        result = "IBI_CALL_CS_TEMP_FORBIDDEN_CALL_ATTEMPT";
        break;
      case 264:
        result = "IBI_CALL_CS_CALLED_PARTY_BLACKLISTED";
        break;
      case 265:
        result = "IBI_CALL_CS_BLACKLIST_FULL_NO_AUTO_CALL_ATTEMPTS";
        break;
      case 266:
        result = "IBI_CALL_CS_TEMP_FORBIDDEN_CALL_ATTEMPT_NO_SERVICE";
        break;
      case 267:
        result = "IBI_CALL_CS_TEMP_FORBIDDEN_CALL_ATTEMPT_LIMITED_SERVE";
        break;
      case 268:
        result = "IBI_CALL_CS_CLIENT_TEMPORARY_BARRED";
        break;
      case 269:
        result = "IBI_CALL_CS_DUAL_SERVICE_CALL_ACTIVE";
        break;
      case 270:
        result = "IBI_CALL_CS_ATC_FCLASS_NOT_SPEECH";
        break;
      case 271:
        result = "IBI_CALL_CS_SI_UNKNOWN_ERROR";
        break;
      case 272:
        result = "IBI_CALL_CS_DTMF_REJ_CALL_HELD_OR_MPARTY";
        break;
      case 273:
        result = "IBI_CALL_CS_CLIENT_NOT_REGISTERED";
        break;
      case 274:
        result = "IBI_CALL_CS_ACTIVE_CLIENT_GONE";
        break;
      case 275:
        result = "IBI_CALL_CS_DTMF_REJ_DATA_TRANSMISSION";
        break;
      case 276:
        result = "IBI_CALL_CS_NO_APPROPRIATE_DTMF_ENTRY";
        break;
      case 277:
        result = "IBI_CALL_CS_SIM_STATUS_FAILURE";
        break;
      case 278:
        result = "IBI_CALL_CS_REJ_BY_CALL_CONTROL";
        break;
      case 279:
        result = "IBI_CALL_CS_FDN_FAILED";
        break;
      case 280:
        result = "IBI_CALL_CS_BDN_FAILED";
        break;
      case 281:
        result = "IBI_CALL_CS_ONLY_ERROR";
        break;
      case 282:
        result = "IBI_CALL_CS_NOT_IN_SPEECH_CALL";
        break;
      case 283:
        result = "IBI_CALL_CS_CCBS_POSSIBLE";
        break;
      case 284:
        result = "IBI_CALL_CS_INVALID_ALS_LINE";
        break;
      case 285:
        result = "IBI_CALL_CS_LND_OVERFLOW";
        break;
      case 286:
        result = "IBI_CALL_CS_DTMF_REJECTED_NO_TCH_AVAILABLE";
        break;
      case 287:
        result = "IBI_CALL_CS_NW_FAILURE_UNSPECIFIED";
        break;
      case 288:
        result = "IBI_CALL_CS_MS_NO_SERVICE";
        break;
      case 289:
        result = "IBI_CALL_CS_MS_ACCESS_CLASS_BARRED";
        break;
      case 290:
        result = "IBI_CALL_CS_MS_NO_RESOURCE";
        break;
      case 291:
        result = "IBI_CALL_CS_MS_SERVICE_BUSY";
        break;
      case 292:
        result = "IBI_CALL_CS_MS_FAILURE_UNSPECIFIED";
        break;
      case 293:
        result = "IBI_CALL_CS_DTMF_REJECTED_DUE_TO_SUP_TIMER_EXPIRY";
        break;
      case 296:
        result = "IBI_CALL_CS_DUAL_SIM_RADIO_CONFLICT";
        break;
      case 297:
        result = "IBI_CALL_CS_NO_SERVICE_DUAL_SIM_CONFLICT";
        break;
      case 298:
        result = "IBI_CALL_CS_SERV_NOT_ALLOWED";
        break;
      case 300:
        result = "IBI_CALL_CS_SIMTK_SETUP_MODE_NOT_SUPPORTED";
        break;
      case 301:
        result = "IBI_CALL_CS_MMI_NOT_REGISTERED";
        break;
      case 302:
        result = "IBI_CALL_CS_SIMTK_SETUP_REJ_MISSING_ACM_INFO_IND_CB";
        break;
      case 303:
        result = "IBI_CALL_CS_SIMTK_SETUP_REJ_BY_USER";
        break;
      case 304:
        result = "IBI_CALL_CS_SIMTK_SETUP_REJ_TIME_OUT";
        break;
      case 305:
        result = "IBI_CALL_CS_SIMTK_CALL_CONNECTED";
        break;
      case 306:
        result = "IBI_CALL_CS_DISCONNECT_DUE_TO_SIMTK_SETUP";
        break;
      case 307:
        result = "IBI_CALL_CS_SIMTK_SETUP_REJ_PENDING_SIMTK_SETUP";
        break;
      case 308:
        result = "IBI_CALL_CS_SIMTK_CALL_CONNECTED_NO_ICON_DISPLAY";
        break;
      case 309:
        result = "IBI_CALL_CS_PENDING_SIMTK_SETUP";
        break;
      case 310:
        result = "IBI_CALL_CS_SIMTK_SIM_RESET";
        break;
      case 314:
        result = "IBI_CALL_CS_PROACTIVE_SIM_APPL_TERMINATED_BY_USER";
        break;
      case 340:
        result = "IBI_CALL_CS_MS_SAPI3_RELEASE";
        break;
      case 341:
        result = "IBI_CALL_CS_MS_LOWER_LAYER_FAILURE";
        break;
      case 342:
        result = "IBI_CALL_CS_MS_AUTH_FAILURE";
        break;
      case 343:
        result = "IBI_CALL_CS_MS_PS_REJECT";
        break;
      case 344:
        result = "IBI_CALL_CS_MS_SERVICE_REJECTED";
        break;
      case 345:
        result = "IBI_CALL_CS_MS_ABORT_BY_NETWORK";
        break;
      case 346:
        result = "IBI_CALL_CS_MS_TIMEOUT";
        break;
      case 347:
        result = "IBI_CALL_CS_MS_DETACH";
        break;
      case 348:
        result = "IBI_CALL_CS_MS_RR_CONN_RELEASE";
        break;
      case 349:
        result = "IBI_CALL_CS_MS_NOT_REGISTERED";
        break;
      case 350:
        result = "IBI_CALL_CS_MS_REEST_FAILURE";
        break;
      case 351:
        result = "IBI_CALL_CS_MS_HANDOVER";
        break;
      case 352:
        result = "IBI_CALL_CS_MS_LINK_ESTAB_FAILURE";
        break;
      case 353:
        result = "IBI_CALL_CS_MS_RA_FAILURE";
        break;
      case 354:
        result = "IBI_CALL_CS_MS_LINK_ABORTION";
        break;
      case 355:
        result = "IBI_CALL_CS_MS_L1_FAILURE";
        break;
      case 356:
        result = "IBI_CALL_CS_MS_IMM_ASS_REJECT";
        break;
      case 357:
        result = "IBI_CALL_CS_MS_PAGING_PENDING";
        break;
      case 358:
        result = "IBI_CALL_CS_MS_ABNORMAL_RELEASE_UNSPECIFIED";
        break;
      case 359:
        result = "IBI_CALL_CS_MS_ABNORMAL_RELEASE_CHANNEL_UNACCEPTABLE";
        break;
      case 360:
        result = "IBI_CALL_CS_MS_ABNORMAL_RELEASE_TIMER_EXPIRED";
        break;
      case 361:
        result = "IBI_CALL_CS_MS_ABNORMAL_RELEASE_NO_ACT_ON_RADIO_PATH";
        break;
      case 362:
        result = "IBI_CALL_CS_MS_PREEMPTIVE_RELEASE";
        break;
      case 363:
        result = "IBI_CALL_CS_MS_UTRAN_CONFIGURATION_UNKNOWN";
        break;
      case 364:
        result = "IBI_CALL_CS_MS_HANDOVER_IMPOSSIBLE";
        break;
      case 365:
        result = "IBI_CALL_CS_MS_CHANNEL_MODE_UNACCEPTABLE";
        break;
      case 366:
        result = "IBI_CALL_CS_MS_FREQUENCY_NOT_IMPLEMENTED";
        break;
      case 367:
        result = "IBI_CALL_CS_MS_ORIGINATOR_TALKER_LEAVING_GROUP_CALL_AREA";
        break;
      case 368:
        result = "IBI_CALL_CS_MS_LOWER_LAYER_FAILURE_FROM_NW";
        break;
      case 369:
        result = "IBI_CALL_CS_MS_CALL_ALREADY_CLEARED";
        break;
      case 370:
        result = "IBI_CALL_CS_MS_SEMANTICALLY_INCORRECT_MSG";
        break;
      case 371:
        result = "IBI_CALL_CS_MS_INVALID_MANDATORY_INFO";
        break;
      case 372:
        result = "IBI_CALL_CS_MS_MSG_TYPE_NON_EXISTENT";
        break;
      case 373:
        result = "IBI_CALL_CS_MS_MSG_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
        break;
      case 374:
        result = "IBI_CALL_CS_MS_CONDITIONAL_IE_ERROR";
        break;
      case 375:
        result = "IBI_CALL_CS_MS_NO_CELL_ALLOCATION_AVAILABLE";
        break;
      case 376:
        result = "IBI_CALL_CS_MS_PROTOCOL_ERROR_UNSPECIFIED";
        break;
      case 377:
        result = "IBI_CALL_CS_MS_NORMAL_EVENT";
        break;
      case 378:
        result = "IBI_CALL_CS_MS_UNSPECIFIED";
        break;
      case 379:
        result = "IBI_CALL_CS_MS_PRE_EMPTIVE_RELEASE";
        break;
      case 380:
        result = "IBI_CALL_CS_MS_CONGESTION";
        break;
      case 381:
        result = "IBI_CALL_CS_MS_RE_ESTABLISHMENT_REJECT";
        break;
      case 382:
        result = "IBI_CALL_CS_MS_DIRECTED_SIGCONN_RE_ESTABLISHMENT";
        break;
      case 383:
        result = "IBI_CALL_CS_MS_USER_INACTIVITY";
        break;
      case 384:
        result = "IBI_CALL_CS_MS_CONN_REL_LOWER_LAYER_FAILURE_DL";
        break;
      case 385:
        result = "IBI_CALL_CS_MS_CONN_REL_LOWER_LAYER_FAILURE_UL";
        break;
      case 386:
        result = "IBI_CALL_CS_MS_CELL_BARRED";
        break;
      case 387:
        result = "IBI_CALL_CS_MS_SIGN_CONN_REL";
        break;
      case 388:
        result = "IBI_CALL_CS_MS_NAS_TRIGGERED_ABORT";
        break;
      case 389:
        result = "IBI_CALL_CS_MS_RRC_CONN_ESTABLISHMENT_FAILURE";
        break;
      case 390:
        result = "IBI_CALL_CS_MS_CONN_REJECT_REDIRECTION";
        break;
      case 391:
        result = "IBI_CALL_CS_MS_RESOURCE_CONFLICT";
        break;
      case 392:
        result = "IBI_CALL_CS_MS_L2_CAUSE_SEQUENCE_ERROR";
        break;
      case 393:
        result = "IBI_CALL_CS_MS_L2_CAUSE_T200_EXP_N200_PLUS_1_TIMES";
        break;
      case 394:
        result = "IBI_CALL_CS_MS_L2_CAUSE_UNSOLICITED_DM_RESP_MFES";
        break;
      case 395:
        result = "IBI_CALL_CS_MS_L2_CAUSE_CONTENTION_RESOLUTION";
        break;
      case 396:
        result = "IBI_CALL_CS_MS_L2_CAUSE_NORMAL_CAUSE";
        break;
      case 397:
        result = "IBI_CALL_CS_MS_BAND_CHANGED";
        break;
      case 398:
        result = "IBI_CALL_CS_MS_RELEASE_OOSA";
        break;
      case 399:
        result = "IBI_CALL_CS_MS_PLMN_NOT_MATCHING";
        break;
      case 401:
        result = "IBI_CALL_CS_MS_PHONE_IS_TURNED_OFF";
        break;
      case 402:
        result = "IBI_CALL_CS_MS_CANNOT_CONNECT_DUE_TO_CALLEE_CIRCUMSTANCE";
        break;
      case 403:
        result = "IBI_CALL_CS_MS_SERVICE_UNAVAILABLE_DUE_TO_ARREARS";
        break;
      case 404:
        result = "IBI_CALL_CS_MS_NUMBER_DIALLED_CANNOT_BE_REACHED";
        break;
      case 405:
        result = "IBI_CALL_CS_FALLBACK_TO_VOLTE";
        break;
      case 406:
        result = "IBI_CALL_CS_REDIAL_ON_IMS";
        break;
      case 412:
        result = "IBI_CALL_CS_ATTEMPT_ALT_DOMAIN";
        break;
      default:
        v2 = a1 - 995;
        result = "IBI_CALL_CS_ABSENT_SUBSCRIBER";
        switch(v2)
        {
          case 0:
            result = "IBI_CALL_CS_CLIENT_REJECTED";
            break;
          case 1:
            result = "IBI_CALL_CS_UNKNOWN_ERROR_CAUSE";
            break;
          case 2:
            result = "IBI_CALL_CS_CALL_CHANGED_TO_SS";
            break;
          case 3:
            result = "IBI_CALL_CS_CALL_CHANGED_TO_USSD";
            break;
          case 4:
            result = "IBI_CALL_CS_NO_CALL_ERROR";
            break;
          case 5:
            result = "IBI_CALL_CS_MS_INT_SS_ERROR";
            break;
          case 6:
            result = "IBI_CALL_CS_UNKNOWN_SUBSCRIBER";
            break;
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 19:
          case 20:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 33:
          case 36:
          case 37:
          case 38:
          case 44:
          case 45:
          case 46:
          case 47:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
            return "???";
          case 14:
            result = "IBI_CALL_CS_ILLEGAL_SUBSCRIBER";
            break;
          case 15:
            result = "IBI_CALL_CS_BEARER_SERVICE_NOT_PROVISIONED";
            break;
          case 16:
            result = "IBI_CALL_CS_TELESERVICE_NOT_PROVISIONED";
            break;
          case 17:
            result = "IBI_CALL_CS_ILLEGAL_EQUIPMENT";
            break;
          case 18:
            result = "IBI_CALL_CS_CALL_BARRED";
            break;
          case 21:
            result = "IBI_CALL_CS_ILLEGAL_SS_OPERATION";
            break;
          case 22:
            result = "IBI_CALL_CS_SS_ERROR_STATUS";
            break;
          case 23:
            result = "IBI_CALL_CS_SS_NOT_AVAILABLE";
            break;
          case 24:
            result = "IBI_CALL_CS_SS_SUBSCRIPTION_VIOLATION";
            break;
          case 25:
            result = "IBI_CALL_CS_SS_INCOMPATIBILITY";
            break;
          case 26:
            result = "IBI_CALL_CS_FACILITY_NOT_SUPPORTED";
            break;
          case 32:
            return result;
          case 34:
            result = "IBI_CALL_CS_SHORT_TERM_DENIAL";
            break;
          case 35:
            result = "IBI_CALL_CS_LONG_TERM_DENIAL";
            break;
          case 39:
            result = "IBI_CALL_CS_SYSTEM_FAILURE";
            break;
          case 40:
            result = "IBI_CALL_CS_DATA_MISSING";
            break;
          case 41:
            result = "IBI_CALL_CS_UNEXPECTED_DATA_VALUE";
            break;
          case 42:
            result = "IBI_CALL_CS_PW_REGISTRATION_FAILURE";
            break;
          case 43:
            result = "IBI_CALL_CS_NEGATIVE_PW_CHECK";
            break;
          case 48:
            result = "IBI_CALL_CS_NUMBER_OF_PW_ATTEMPTS_VIOLATION";
            break;
          case 59:
            result = "IBI_CALL_CS_POS_METHOD_FAILURE";
            break;
          default:
            if ("IBI_CALL_CS_ABSENT_SUBSCRIBER" != 500)
            {
              return "???";
            }

            result = "IBI_CALL_CS_MULTIMEDIA_ERROR";
            break;
        }

        break;
    }
  }

  return result;
}

{
  if ((a1 + 1) > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF4680[a1 + 1];
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_CALL_CS_LINE_2";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CALL_CS_LINE_1";
  }
}

{
  v1 = "IBI_CALL_CS_CALL_ERROR";
  v2 = "???";
  if (!a1)
  {
    v2 = "IBI_CALL_CS_SUCCESS";
  }

  if (a1 != 98)
  {
    v1 = v2;
  }

  if (a1 == 99)
  {
    return "IBI_CALL_CS_UNKNOWN";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_CALL_CS_ANBR_DIRECTION_UL";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CALL_CS_ANBR_DIRECTION_DL";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CALL_CS_AUX_STATE_IDLE";
  }

  if (a1 == 2)
  {
    return "IBI_CALL_CS_AUX_STATE_HELD";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_CALL_CS_MPTY_AUX_STATE_IN_MPTY";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CALL_CS_MPTY_AUX_STATE_IDLE";
  }
}

{
  if (a1 == 1)
  {
    return "IBI_CALL_CS_CALL_WAITING_NEW_CALL";
  }

  else
  {
    return "???";
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_CALL_PS_3GPP2_DATA_CALL_TYPE_TETHERED";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_3GPP2_DATA_CALL_TYPE_NORMAL";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_CALL_PS_AON_FILTER_REMOVE";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CALL_PS_AON_FILTER_ADD";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_CALL_PS_ADD_MASK_IP_TYPE_V6";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CALL_PS_ADD_MASK_IP_TYPE_V4";
  }
}

{
  if ((a1 - 1) > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF49D8[a1 - 1];
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "CONN_STATE_IDLE";
  }

  if (a1 == 1)
  {
    return "CONN_STATE_CONNECTED";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return "IBI_CALL_PS_DATA_BEARER_INFO_5G_MMWAVE";
    }

    if (a1 != 16)
    {
      if (a1 == 8)
      {
        return "IBI_CALL_PS_DATA_BEARER_INFO_5G_NSA";
      }

      return "???";
    }

    return "IBI_CALL_PS_DATA_BEARER_INFO_5G_SA";
  }

  else
  {
    if (!a1)
    {
      return "IBI_CALL_PS_DATA_BEARER_INFO_NONE";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_CALL_PS_DATA_BEARER_INFO_5G_SUB6";
      }

      return "???";
    }

    return "IBI_CALL_PS_DATA_BEARER_INFO_LTE";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CALL_PS_DNS_PROT_TLS";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_DNS_PROT_DTLS";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return "IBI_CALL_PS_IP_TYPE_INVALID";
      }

      if (a1 == 1)
      {
        return "IBI_CALL_PS_IP_TYPE_V4";
      }

      return "???";
    }

    if (a1 == 2)
    {
      return "IBI_CALL_PS_IP_TYPE_V6";
    }

    else
    {
      return "IBI_CALL_PS_IP_TYPE_V4_V6";
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return "IBI_CALL_PS_IP_TYPE_V4_V6_PDN";
        case 0x1FFFFFFF:
          return "IBI_CALL_PS_IP_MAXENUMSIZE";
        case 0xFF:
          return "IBI_CALL_PS_IP_TYPE_ANY";
      }

      return "???";
    }

    if (a1 == 4)
    {
      return "IBI_CALL_PS_IP_TYPE_V4_PDN";
    }

    else
    {
      return "IBI_CALL_PS_IP_TYPE_V6_PDN";
    }
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CALL_PS_LOOPBACK_RESULT_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_LOOPBACK_RESULT_FAILURE";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          return "IBI_LQM_NR_SERVING_CELL_TYPE";
        case 0xA:
          return "IBI_LQM_NR_FR2_RECOMMENDATION";
        case 0xFFFF:
          return "IBI_LQM_BITMASK";
      }

      return "???";
    }

    if (a1 == 6)
    {
      return "IBI_LQM_TRANSFER_TIME_ENABLE";
    }

    else if (a1 == 7)
    {
      return "IBI_LQM_POWER_COST";
    }

    else
    {
      return "IBI_LQM_DATA_STALL";
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return "IBI_LQM_NONE";
        case 1:
          return "IBI_LQM_LINK_STATE";
        case 2:
          return "IBI_LQM_LINK_FP";
      }

      return "???";
    }

    if (a1 == 3)
    {
      return "IBI_LQM_DL_THRPT";
    }

    else if (a1 == 4)
    {
      return "IBI_LQM_TRAFFICCLASS_AP_ENABLE";
    }

    else
    {
      return "IBI_LQM_MAX";
    }
  }
}

{
  v1 = "???";
  if (a1 == 0x1FFFFFFF)
  {
    v1 = "IBI_CALL_PS_MBIM_MAXENUMSIZE";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_MBIM_ICMP_ECHO_REQUEST";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "IBI_CALL_PS_MODULATION_SCHEME_BPSK";
      case 1:
        return "IBI_CALL_PS_MODULATION_SCHEME_QPSK";
      case 2:
        return "IBI_CALL_PS_MODULATION_SCHEME_16QAM";
    }

    return "???";
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return "IBI_CALL_PS_MODULATION_SCHEME_1024QAM";
    }

    if (a1 == 255)
    {
      return "IBI_CALL_PS_MODULATION_SCHEME_UNKNOWN";
    }

    return "???";
  }

  if (a1 == 3)
  {
    return "IBI_CALL_PS_MODULATION_SCHEME_64QAM";
  }

  else
  {
    return "IBI_CALL_PS_MODULATION_SCHEME_256QAM";
  }
}

{
  if (a1 == 1)
  {
    return "IBI_CALL_PS_NOTIFICATION_INDICATOR_SRVCC_HANDOVER_CANCELLED";
  }

  else
  {
    return "???";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CALL_PS_ORIGIN_NETWORK";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_ORIGIN_MOBILESTATION";
  }

  else
  {
    return v1;
  }
}

{
  if ((a1 - 1) > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF4D70[a1 - 1];
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_CALL_PS_PIPE_PARAMS_APPLICABLE_TO_SESSION";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CALL_PS_PIPE_PARAMS_APPLICABLE_TO_CID";
  }
}

{
  if (a1 > 520)
  {
    if (a1 > 1025)
    {
      switch(a1)
      {
        case 1026:
          result = "IBI_CALL_PS_RESULT_CODE_IMSI_UNKNOWN_IN_HLR";
          break;
        case 1027:
          result = "IBI_CALL_PS_RESULT_CODE_ILLEGAL_MS";
          break;
        case 1028:
          result = "IBI_CALL_PS_RESULT_CODE_IMSI_UNKNOWN_IN_VLR";
          break;
        case 1029:
          result = "IBI_CALL_PS_RESULT_CODE_IMEI_NOT_ACCEPTED";
          break;
        case 1030:
          result = "IBI_CALL_PS_RESULT_CODE_ILLEGAL_ME";
          break;
        case 1031:
          result = "IBI_CALL_PS_RESULT_CODE_GPRS_SERVICES_NOT_ALLOWED";
          break;
        case 1032:
          result = "IBI_CALL_PS_RESULT_CODE_GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED";
          break;
        case 1033:
          result = "IBI_CALL_PS_RESULT_CODE_MS_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NETWORK";
          break;
        case 1034:
          result = "IBI_CALL_PS_RESULT_CODE_IMPLICITLY_DETACHED";
          break;
        case 1035:
          result = "IBI_CALL_PS_RESULT_CODE_PLMN_NOT_ALLOWED";
          break;
        case 1036:
          result = "IBI_CALL_PS_RESULT_CODE_LOCATION_AREA_NOT_ALLOWED";
          break;
        case 1037:
          result = "IBI_CALL_PS_RESULT_CODE_ROAMING_NOT_ALLOWED_IN_THIS_LOCATION_AREA";
          break;
        case 1038:
          result = "IBI_CALL_PS_RESULT_CODE_GPRS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN";
          break;
        case 1039:
          result = "IBI_CALL_PS_RESULT_CODE_NO_SUITABLE_CELLS_IN_LOCATION_AREA";
          break;
        case 1040:
          result = "IBI_CALL_PS_RESULT_CODE_MSC_TEMPORARILY_NOT_REACHABLE";
          break;
        case 1041:
        case 1053:
        case 1054:
        case 1055:
        case 1056:
        case 1057:
        case 1058:
        case 1060:
        case 1061:
        case 1062:
        case 1065:
        case 1067:
        case 1068:
        case 1069:
        case 1070:
        case 1071:
        case 1073:
        case 1074:
        case 1075:
        case 1076:
        case 1077:
        case 1078:
        case 1079:
        case 1080:
        case 1081:
        case 1082:
        case 1083:
        case 1084:
        case 1085:
        case 1086:
        case 1088:
        case 1090:
        case 1092:
        case 1094:
        case 1099:
        case 1100:
        case 1101:
        case 1102:
        case 1103:
        case 1104:
        case 1105:
        case 1106:
        case 1107:
        case 1108:
        case 1109:
        case 1110:
        case 1111:
        case 1112:
        case 1113:
          return "???";
        case 1042:
          result = "IBI_CALL_PS_RESULT_CODE_CS_DOMAIN_NOT_AVAILABLE";
          break;
        case 1043:
          result = "IBI_CALL_PS_RESULT_CODE_ESM_FAILURE";
          break;
        case 1044:
          result = "IBI_CALL_PS_RESULT_CODE_MAC_FAILURE";
          break;
        case 1045:
          result = "IBI_CALL_PS_RESULT_CODE_SYNCH_FAILURE";
          break;
        case 1046:
          result = "IBI_CALL_PS_RESULT_CODE_CONGESTION";
          break;
        case 1047:
          result = "IBI_CALL_PS_RESULT_CODE_GSM_AUTHENTICATION_UNACCEPTABLE";
          break;
        case 1048:
          result = "IBI_CALL_PS_RESULT_CODE_SECURITY_MODE_REJECTED";
          break;
        case 1049:
          result = "IBI_CALL_PS_RESULT_CODE_NOT_AUTHORIZED_FOR_THIS_CSG";
          break;
        case 1050:
          result = "IBI_CALL_PS_RESULT_CODE_NON_EPS_AUTHENTICATION_UNACCEPTABLE";
          break;
        case 1051:
          result = "IBI_CALL_PS_RESULT_CODE_N1_MODE_NOT_ALLOWED";
          break;
        case 1052:
          result = "IBI_CALL_PS_RESULT_CODE_SMS_SERVICE_PROVIDED_VIA_GPRS_IN_THIS_ROUTING_AREA";
          break;
        case 1059:
          result = "IBI_CALL_PS_RESULT_CODE_REQUEST_SERVICE_OPTION_NOT_AUTHORIZED_IN_THIS_PLMN";
          break;
        case 1063:
          result = "IBI_CALL_PS_RESULT_CODE_CS_DOMAIN_TEMPORARILY_NOT_AVAILABLE";
          break;
        case 1064:
          result = "IBI_CALL_PS_RESULT_CODE_NO_PDP_CONTEXT_ACTIVE";
          break;
        case 1066:
          result = "IBI_CALL_PS_RESULT_CODE_SEVERE_NETWORK_FAILURE";
          break;
        case 1072:
          result = "IBI_CALL_PS_RESULT_CODE_RETRY_ON_NEW_CELL_BEG";
          break;
        case 1087:
          result = "IBI_CALL_PS_RESULT_CODE_RETRY_ON_NEW_CELL_END";
          break;
        case 1089:
          result = "IBI_CALL_PS_RESULT_CODE_MAX_NUM_PDU_SESSION_REACHED";
          break;
        case 1091:
          result = "IBI_CALL_PS_RESULT_CODE_INSUFFICIENT_RESOURCES_FOR_SPECIFIC_SLICE_DNN";
          break;
        case 1093:
          result = "IBI_CALL_PS_RESULT_CODE_INSUFFICIENT_RESOURCES_FOR_SPECIFIC_SLICE";
          break;
        case 1095:
          result = "IBI_CALL_PS_RESULT_CODE_NGKSI_ALREADY_IN_USE";
          break;
        case 1096:
          result = "IBI_CALL_PS_RESULT_CODE_NON_3GPP_ACCESS_TO_5GCN_NOT_ALLOWED";
          break;
        case 1097:
          result = "IBI_CALL_PS_RESULT_CODE_SERVING_NW_NOT_AUTHORIZED";
          break;
        case 1098:
          result = "IBI_CALL_PS_RESULT_CODE_WIRELINE_ACCESS_AREA_NOT_ALLOWED";
          break;
        case 1114:
          result = "IBI_CALL_PS_RESULT_CODE_PAYLOAD_NOT_FORWARDED";
          break;
        case 1115:
          result = "IBI_CALL_PS_RESULT_CODE_DNN_NOT_SUPPORTED_OR_SUBSCRIBED_IN_SLICE";
          break;
        case 1116:
          result = "IBI_CALL_PS_RESULT_CODE_INSUFFICIENT_USER_PLANE_RESOURCES_FOR_PDU_SESSION";
          break;
        default:
          switch(a1)
          {
            case 2048:
              result = "IBI_CALL_PS_RESULT_CODE_NOT_REGISTERED";
              break;
            case 2049:
              result = "IBI_CALL_PS_RESULT_CODE_INVALID_SIM";
              break;
            case 2050:
              result = "IBI_CALL_PS_RESULT_CODE_N_REG_REQ";
              break;
            case 2051:
              result = "IBI_CALL_PS_RESULT_CODE_NO_CELL";
              break;
            case 2052:
              result = "IBI_CALL_PS_RESULT_CODE_NO_CARRIER";
              break;
            case 2053:
              result = "IBI_CALL_PS_RESULT_CODE_PLMN_SEARCH";
              break;
            case 2054:
              result = "IBI_CALL_PS_RESULT_CODE_PLMN_SEARCH_ENDED";
              break;
            case 2056:
              result = "IBI_CALL_PS_RESULT_CODE_POWER_DOWN";
              break;
            case 2057:
              result = "IBI_CALL_PS_RESULT_CODE_FORB_PLMN";
              break;
            case 2058:
              result = "IBI_CALL_PS_RESULT_CODE_FORB_LAI";
              break;
            case 2059:
              result = "IBI_CALL_PS_RESULT_CODE_DETACHED";
              break;
            case 2060:
              result = "IBI_CALL_PS_RESULT_CODE_DISABLED";
              break;
            case 2061:
              result = "IBI_CALL_PS_RESULT_CODE_INVALID_PARAMETER";
              break;
            case 2062:
              result = "IBI_CALL_PS_RESULT_CODE_REJ_BY_NETWORK";
              break;
            case 2063:
              result = "IBI_CALL_PS_RESULT_CODE_INTERNAL_FAILURE";
              break;
            case 2064:
              result = "IBI_CALL_PS_RESULT_CODE_ATTACH_TEMPORARILY_BARRED";
              break;
            case 2066:
              result = "IBI_CALL_PS_RESULT_CODE_ATTACH_TEMPORARILY_NOT_ALLOWED";
              break;
            case 2067:
              result = "IBI_CALL_PS_RESULT_CODE_REGISTRATION_IN_PROGRESS";
              break;
            case 2068:
              result = "IBI_CALL_PS_RESULT_CODE_USER_ABORT";
              break;
            case 2071:
              result = "IBI_CALL_PS_RESULT_CODE_CSG_UNAUTHORIZED";
              break;
            case 2072:
              result = "IBI_CALL_PS_RESULT_CODE_IRAT_ONGOING";
              break;
            case 2073:
              result = "IBI_CALL_PS_RESULT_CODE_EMERGENCY_ONLY_ALLOWED";
              break;
            case 2074:
              result = "IBI_CALL_PS_RESULT_CODE_SOR_ERROR";
              break;
            case 2075:
              result = "IBI_CALL_PS_RESULT_CODE_SERVICE_REQ_NOT_ALLOWED";
              break;
            case 2076:
              result = "IBI_CALL_PS_RESULT_CODE_CONGESTION_TIMER_RUNNING";
              break;
            case 2077:
              result = "IBI_CALL_PS_RESULT_CODE_ESFB_ONGOING";
              break;
            case 2078:
              result = "IBI_CALL_PS_RESULT_CODE_RESUME_REQ_PENDING";
              break;
            case 2079:
              result = "IBI_CALL_PS_RESULT_CODE_NO_RESPONSE_FROM_NW";
              break;
            case 2080:
              result = "IBI_CALL_PS_RESULT_CODE_RESUME_FAILED";
              break;
            case 2081:
              result = "IBI_CALL_PS_RESULT_CODE_NAS_SIG_NOT_ALLOWED";
              break;
            case 2082:
              result = "IBI_CALL_PS_RESULT_CODE_TAU_FAILED";
              break;
            case 2083:
              result = "IBI_CALL_PS_RESULT_CODE_INTERIM_CID_FAILED";
              break;
            case 2084:
              result = "IBI_CALL_PS_RESULT_CODE_DEFAULT_CONTEXT_INVALID";
              break;
            case 2085:
              result = "IBI_CALL_PS_RESULT_CODE_RESTRICTED_MODE";
              break;
            case 2086:
              result = "IBI_CALL_PS_RESULT_CODE_MAX_ATTEMPTS_TIMED_OUT";
              break;
            default:
              return "???";
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 521:
          return "IBI_CALL_PS_RESULT_CODE_QOS_SET_FAILURE";
        case 522:
          return "IBI_CALL_PS_RESULT_CODE_SET_DNS_FAILURE";
        case 523:
          return "IBI_CALL_PS_RESULT_CODE_CALL_THROTTLED";
        default:
          return "???";
      }
    }
  }

  else if (a1 > 255)
  {
    if (a1 > 511)
    {
      if (a1 <= 515)
      {
        if (a1 > 513)
        {
          if (a1 == 514)
          {
            return "IBI_CALL_PS_RESULT_CODE_AUTH_FAILURE";
          }

          else
          {
            return "IBI_CALL_PS_RESULT_CODE_UE_NOT_ATTACHED";
          }
        }

        else if (a1 == 512)
        {
          return "IBI_CALL_PS_RESULT_CODE_PCO_SET_FAILURE";
        }

        else
        {
          return "IBI_CALL_PS_RESULT_CODE_UNDEFINE_FAILURE";
        }
      }

      else if (a1 <= 517)
      {
        if (a1 == 516)
        {
          return "IBI_CALL_PS_RESULT_CODE_ALREADY_IN_REQUESTED_STATE";
        }

        else
        {
          return "IBI_CALL_PS_RESULT_CODE_INVALID_ATTACH_APN";
        }
      }

      else if (a1 == 518)
      {
        return "IBI_CALL_PS_RESULT_CODE_APN_IS_ALREADY_UP";
      }

      else if (a1 == 519)
      {
        return "IBI_CALL_PS_RESULT_CODE_CANNOT_DEACTIVATE_ATTACH_APN";
      }

      else
      {
        return "IBI_CALL_PS_RESULT_CODE_CID_IS_NOT_ACTIVATED";
      }
    }

    else
    {
      v2 = a1 - 256;
      result = "IBI_CALL_PS_RESULT_CODE_ACL_REJECT";
      switch(v2)
      {
        case 0:
          result = "IBI_CALL_PS_RESULT_CODE_BARRED_CELL";
          break;
        case 1:
          result = "IBI_CALL_PS_RESULT_CODE_DUAL_SIM_CONFLICT";
          break;
        case 2:
          result = "IBI_CALL_PS_RESULT_CODE_NO_CARRIER_DUAL_SIM_CONFLICT";
          break;
        case 3:
          result = "IBI_CALL_PS_RESULT_CODE_FDN_CHECK_FAILED";
          break;
        case 4:
          result = "IBI_CALL_PS_RESULT_CODE_NO_RESPONSE_TIMEOUT";
          break;
        case 5:
          result = "IBI_CALL_PS_RESULT_CODE_MS_INTERNAL_FAILURE";
          break;
        case 6:
          return result;
        case 7:
          result = "IBI_CALL_PS_RESULT_CODE_ERR_CONGESTION";
          break;
        case 8:
          result = "IBI_CALL_PS_RESULT_CODE_ERR_DNN_NOT_SUPPORTED_OR_NOT_SUBSCRIBED_IN_SLICE";
          break;
        case 9:
          result = "IBI_CALL_PS_RESULT_CODE_ERR_PROCEDURE_ONGOING_FOR_PDU_SESSION";
          break;
        case 10:
          result = "IBI_CALL_PS_RESULT_CODE_SERVICE_AREA_RESTRICTED";
          break;
        case 11:
          result = "IBI_CALL_PS_RESULT_CODE_ERR_UNSPECIFIED";
          break;
        case 12:
          result = "IBI_CALL_PS_RESULT_CODE_ERR_INVALID_CID";
          break;
        case 13:
          result = "IBI_CALL_PS_RESULT_CODE_ERR_CONFIG_FAILURE";
          break;
        case 14:
          result = "IBI_CALL_PS_RESULT_CODE_CONTROL_BY_SIM_BUSY";
          break;
        case 15:
          result = "IBI_CALL_PS_RESULT_CODE_CONTROL_BY_SIM_REJECT";
          break;
        case 16:
          result = "IBI_CALL_PS_RESULT_CODE_DNN_NOT_IN_LADN_AREA";
          break;
        default:
          return "???";
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        result = "IBI_CALL_PS_RESULT_CODE_NO_CAUSE";
        break;
      case 8:
        result = "IBI_CALL_PS_RESULT_CODE_DETERMINED_BARRING";
        break;
      case 24:
        result = "IBI_CALL_PS_RESULT_CODE_MBMS_BEARER_CAPABILITIES_INSUFFICIENT_FOR_THE_SERVICE";
        break;
      case 25:
        result = "IBI_CALL_PS_RESULT_CODE_LLC_OR_SNDCP_FAILURE";
        break;
      case 26:
        result = "IBI_CALL_PS_RESULT_CODE_INSUFFICIENT_RESOURCES";
        break;
      case 27:
        result = "IBI_CALL_PS_RESULT_CODE_MISSING_OR_UNKNOWN_APN";
        break;
      case 28:
        result = "IBI_CALL_PS_RESULT_CODE_UNKNOWN_PDP_ADDRESS_OR_PDP_TYPE";
        break;
      case 29:
        result = "IBI_CALL_PS_RESULT_CODE_USER_AUTHENTICATION_FAILED";
        break;
      case 30:
        result = "IBI_CALL_PS_RESULT_CODE_ACTIVATION_REJECTED_BY_GGSN";
        break;
      case 31:
        result = "IBI_CALL_PS_RESULT_CODE_ACTIVATION_REJECTED_UNSPECIFIED";
        break;
      case 32:
        result = "IBI_CALL_PS_RESULT_CODE_SERVICE_OPTION_NOT_SUPPORTED";
        break;
      case 33:
        result = "IBI_CALL_PS_RESULT_CODE_REQUESTED_SERVICE_OPTION_NOT_SUBSCRIBED";
        break;
      case 34:
        result = "IBI_CALL_PS_RESULT_CODE_SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER";
        break;
      case 35:
        result = "IBI_CALL_PS_RESULT_CODE_NSAPI_ALREADY_USED";
        break;
      case 36:
        result = "IBI_CALL_PS_RESULT_CODE_REGULAR_DEACTIVATION";
        break;
      case 37:
        result = "IBI_CALL_PS_RESULT_CODE_QOS_NOT_ACCEPTED";
        break;
      case 38:
        result = "IBI_CALL_PS_RESULT_CODE_NETWORK_FAILURE";
        break;
      case 39:
        result = "IBI_CALL_PS_RESULT_CODE_REACTIVATION_REQUIRED";
        break;
      case 40:
        result = "IBI_CALL_PS_RESULT_CODE_FEATURE_NOT_SUPPORTED";
        break;
      case 41:
        result = "IBI_CALL_PS_RESULT_CODE_SEMANTIC_ERROR_IN_THE_TFT_OPERATION";
        break;
      case 42:
        result = "IBI_CALL_PS_RESULT_CODE_SYNTACTICAL_ERROR_IN_THE_TFT_OPERATION";
        break;
      case 43:
        result = "IBI_CALL_PS_RESULT_CODE_UNKNOWN_PDP_CONTEXT";
        break;
      case 44:
        result = "IBI_CALL_PS_RESULT_CODE_SEMANTIC_ERRORS_IN_PACKET_FILTER";
        break;
      case 45:
        result = "IBI_CALL_PS_RESULT_CODE_SYNTACTICAL_ERRORS_IN_PACKET_FILTER";
        break;
      case 46:
        result = "IBI_CALL_PS_RESULT_CODE_PDP_CONTEXT_WITHOUT_TFT_ALREADY_ACTIVATED";
        break;
      case 47:
        result = "IBI_CALL_PS_RESULT_CODE_PTI_MISMATCH";
        break;
      case 48:
        result = "IBI_CALL_PS_RESULT_CODE_ACTIVATION_REJECTED_BCM_VIOLATION";
        break;
      case 49:
        result = "IBI_CALL_PS_RESULT_CODE_LAST_PDN_DISCONNECTION_NOT_ALLOWED";
        break;
      case 50:
        result = "IBI_CALL_PS_RESULT_CODE_PDP_TYPE_IPV4_ONLY_ALLOWED";
        break;
      case 51:
        result = "IBI_CALL_PS_RESULT_CODE_PDP_TYPE_IPV6_ONLY_ALLOWED";
        break;
      case 52:
        result = "IBI_CALL_PS_RESULT_CODE_SINGLE_ADDRESS_BEARERS_ONLY_ALLOWED";
        break;
      case 53:
        result = "IBI_CALL_PS_RESULT_CODE_ESM_INFORMATION_NOT_RECEIVED";
        break;
      case 54:
        result = "IBI_CALL_PS_RESULT_CODE_PDN_CONNECTION_DOES_NOT_EXIST";
        break;
      case 55:
        result = "IBI_CALL_PS_RESULT_CODE_MULTIPLE_PDN_CONNECTIONS_FOR_A_GIVEN_APN_NOT_ALLOWED";
        break;
      case 56:
        result = "IBI_CALL_PS_RESULT_CODE_COLLISION_WITH_NETWORK_INITIATED_REQUEST";
        break;
      case 59:
        result = "IBI_CALL_PS_RESULT_CODE_UNSUPPORTED_QCI_VALUE";
        break;
      case 60:
        result = "IBI_CALL_PS_RESULT_CODE_BEARER_HANDLING_NOT_SUPPORTED";
        break;
      case 65:
        result = "IBI_CALL_PS_RESULT_CODE_MAXIMUM_NUMBER_OF_PDP_CONTEXTS_REACHED";
        break;
      case 66:
        result = "IBI_CALL_PS_RESULT_CODE_REQUESTED_APN_NOT_SUPPORTED_IN_CURRENT_RAT_PLMN_COMBINATION";
        break;
      case 67:
        result = "IBI_CALL_PS_RESULT_CODE_SM_INSUFFICIENT_RESOURCES_FOR_SLICE_DNN";
        break;
      case 68:
        result = "IBI_CALL_PS_RESULT_CODE_NOT_SUPPORTED_SSC_MODE";
        break;
      case 69:
        result = "IBI_CALL_PS_RESULT_CODE_SM_INSUFFICIENT_RESOURCES_FOR_SLICE";
        break;
      case 70:
        result = "IBI_CALL_PS_RESULT_CODE_MISSING_OR_UNKNOWN_DNN_IN_SLICE";
        break;
      case 81:
        result = "IBI_CALL_PS_RESULT_CODE_INVALID_TRANSACTION_IDENTIFIER_VALUE";
        break;
      case 82:
        result = "IBI_CALL_PS_RESULT_CODE_MAX_DATA_RATE_USER_PLANE_INTEGRITY_PROTECTION_TOO_LOW";
        break;
      case 95:
        result = "IBI_CALL_PS_RESULT_CODE_SEMANTICALLY_INCORRECT_MESSAGE";
        break;
      case 96:
        result = "IBI_CALL_PS_RESULT_CODE_INVALID_MANDATORY_INFORMATION";
        break;
      case 97:
        result = "IBI_CALL_PS_RESULT_CODE_MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED";
        break;
      case 98:
        result = "IBI_CALL_PS_RESULT_CODE_MESSAGE_TYPE_NOT_COMPATIBLE_WITH_THE_PROTOCOL_STATE";
        break;
      case 99:
        result = "IBI_CALL_PS_RESULT_CODE_INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED";
        break;
      case 100:
        result = "IBI_CALL_PS_RESULT_CODE_CONDITIONAL_IE_ERROR";
        break;
      case 101:
        result = "IBI_CALL_PS_RESULT_CODE_MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
        break;
      case 111:
        result = "IBI_CALL_PS_RESULT_CODE_PROTOCOL_ERROR_UNSPECIFIED";
        break;
      case 112:
        result = "IBI_CALL_PS_RESULT_CODE_APN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_ACTIVE_PDP_CONTEXT";
        break;
      default:
        return "???";
    }
  }

  return result;
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_CALL_PS_SCREEN_UNLOCKED";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_SCREEN_LOCKED";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SEC_PAGING_WITH_TEMP_ID";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SEC_PAGING_WITH_PERM_ID";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SEC_TEMP_ID_UPDATED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SEC_TEMP_ID_NOT_UPDATED_FOR_LONG_TIME";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SEC_UE_CAPABILITY_WITH_ENCRYPTION";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SEC_UE_CAPABILITY_WITHOUT_ENCRYPTION";
  }
}

{
  if (a1 > 7)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        return "IBI_CALL_PS_SERVICE_TYPE_DUN";
      }

      if (a1 == 64)
      {
        return "IBI_CALL_PS_SERVICE_TYPE_HIGH_PRIO";
      }
    }

    else
    {
      if (a1 == 8)
      {
        return "IBI_CALL_PS_SERVICE_TYPE_UT";
      }

      if (a1 == 16)
      {
        return "IBI_CALL_PS_SERVICE_TYPE_VVM";
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      return "IBI_CALL_PS_SERVICE_TYPE_IMS";
    }

    if (a1 == 4)
    {
      return "IBI_CALL_PS_SERVICE_TYPE_MMS";
    }
  }

  else
  {
    if (!a1)
    {
      return "IBI_CALL_PS_SERVICE_TYPE_UNSPECIFIED";
    }

    if (a1 == 1)
    {
      return "IBI_CALL_PS_SERVICE_TYPE_INTERNET";
    }
  }

  return "???";
}

{
  if (a1 <= 50)
  {
    if (a1 == -1)
    {
      return "IBI_CALL_PS_SM_CAUSE_ACCEPT_NO_ADDITIONAL_INFO";
    }

    if (a1 == 50)
    {
      return "IBI_CALL_PS_SM_CAUSE_ACCEPT_TYPE_IPV4_ONLY_ALLOWED";
    }
  }

  else
  {
    switch(a1)
    {
      case '3':
        return "IBI_CALL_PS_SM_CAUSE_ACCEPT_TYPE_IPV6_ONLY_ALLOWED";
      case '4':
        return "IBI_CALL_PS_SM_CAUSE_ACCEPT_SINGLE_ADDR_BEARERS_ONLY_ALLOWED";
      case '5':
        return "IBI_CALL_PS_SM_CAUSE_ACCEPT_MAX";
    }
  }

  return "???";
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CALL_PS_STATUS_IRAT_SUSPENDED";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_STATUS_IRAT_RESUMED";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 255)
      {
        return "IBI_CALL_PS_STOP_DATA_CALL_REASON_INVALID";
      }

      if (a1 == 6)
      {
        return "IBI_CALL_PS_STOP_DATA_CALL_REASON_HANDOVER_FAILURE";
      }

      return "???";
    }

    if (a1 == 4)
    {
      return "IBI_CALL_PS_STOP_DATA_CALL_REASON_AIRPLANE_MODE";
    }

    else
    {
      return "IBI_CALL_PS_STOP_DATA_CALL_REASON_POWER_OFF";
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return "IBI_CALL_PS_STOP_DATA_CALL_REASON_IPV6_ADDR_FORMATION_FAILURE";
      }

      if (a1 == 1)
      {
        return "IBI_CALL_PS_STOP_DATA_CALL_REASON_IPV6_ADDR_REFRESH_FAILURE";
      }

      return "???";
    }

    if (a1 == 2)
    {
      return "IBI_CALL_PS_STOP_DATA_CALL_REASON_SWITCH_DATA_SIM_DUE_TO_VOICE_CALL";
    }

    else
    {
      return "IBI_CALL_PS_STOP_DATA_CALL_REASON_MANUAL_PLMN_SCAN";
    }
  }
}

{
  if ((a1 - 1) > 9)
  {
    return "???";
  }

  else
  {
    return off_29EDF4FD0[a1 - 1];
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_CALL_PS_SYMPTOMS_INFO_MESSAGE_TYPE_FLOW_INFO";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CALL_PS_SYMPTOMS_INFO_MESSAGE_TYPE_DEFAULT";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CALL_PS_UL_SDU_SCALING_SET";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_UL_SDU_NO_SCALING_SET";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_CALL_PS_VOIP_APP_3RD_PARTY";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_VOIP_APP_1ST_PARTY";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_CALL_PS_VOIP_CALL_ENDED";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_VOIP_CALL_ACTIVE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_CALL_PS_VOIP_CALL_VIDEO";
  }

  if (a1 == 1)
  {
    return "IBI_CALL_PS_VOIP_CALL_AUDIO";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CDMA_PS_RAT_HRPD";
  }

  if (a1 == 1)
  {
    return "IBI_CDMA_PS_RAT_EHRPD";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 > 63)
  {
    if (a1 > 99)
    {
      if (a1 <= 103)
      {
        switch(a1)
        {
          case 'd':
            return "IBI_CDMA_SMS_ERR_CAUSE_SMS_NOT_SUPPORTED";
          case 'f':
            return "IBI_CDMA_SMS_ERR_CAUSE_MISSING_EXP_PARAM";
          case 'g':
            return "IBI_CDMA_SMS_ERR_CAUSE_MISSING_MAND_PARAM";
        }

        return "???";
      }

      if (a1 > 105)
      {
        if (a1 == 106)
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_USER_DATA_SIZE_ERR";
        }

        if (a1 == 107)
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_GENERAL_OTHER";
        }

        return "???";
      }

      if (a1 == 104)
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_UNRECOGN_PARAM_VAL";
      }

      else
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_UNEXP_PARAM_VAL";
      }
    }

    else
    {
      if (a1 <= 95)
      {
        switch(a1)
        {
          case '@':
            return "IBI_CDMA_SMS_ERR_CAUSE_RAD_RESOURCE_SHORTAGE";
          case 'A':
            return "IBI_CDMA_SMS_ERR_CAUSE_RAD_INTF_INCOMPTABILE";
          case 'B':
            return "IBI_CDMA_SMS_ERR_CAUSE_RAD_INTF_OTHER";
        }

        return "???";
      }

      if (a1 > 97)
      {
        if (a1 == 98)
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_TERM_DENIED";
        }

        else
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_SS_NOT_SUPPORTED";
        }
      }

      else if (a1 == 96)
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_ENCODING";
      }

      else
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_ORIG_DENIED";
      }
    }
  }

  else
  {
    if (a1 <= 32)
    {
      if (a1 <= 2)
      {
        switch(a1)
        {
          case 0:
            return "IBI_CDMA_SMS_ERR_CAUSE_ADDR_VACANT";
          case 1:
            return "IBI_CDMA_SMS_ERR_CAUSE_ADDR_TRANSLATION_FAILURE";
          case 2:
            return "IBI_CDMA_SMS_ERR_CAUSE_NW_RESOURCE_SHORTAGE";
        }
      }

      else
      {
        if (a1 <= 4)
        {
          if (a1 == 3)
          {
            return "IBI_CDMA_SMS_ERR_CAUSE_NW_FAILURE";
          }

          else
          {
            return "IBI_CDMA_SMS_ERR_CAUSE_INV_TELESERVICE_ID";
          }
        }

        if (a1 == 5)
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_NW_OTHER";
        }

        if (a1 == 32)
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_NO_PAGE_RESP";
        }
      }

      return "???";
    }

    if (a1 <= 35)
    {
      if (a1 == 33)
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_DEST_BUSY";
      }

      else if (a1 == 34)
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_NO_ACK";
      }

      else
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_DEST_RESOURCE_SHORTAGE";
      }
    }

    else
    {
      if (a1 > 37)
      {
        if (a1 == 38)
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_DEST_NOT_AT_ADDR";
        }

        if (a1 == 39)
        {
          return "IBI_CDMA_SMS_ERR_CAUSE_DEST_OTHER";
        }

        return "???";
      }

      if (a1 == 36)
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_DELIVERY_POSTPONED";
      }

      else
      {
        return "IBI_CDMA_SMS_ERR_CAUSE_DEST_OOS";
      }
    }
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CDMA_ERROR_CLASS_TEMPORARY";
  }

  if (a1 == 1)
  {
    return "IBI_CDMA_ERROR_CLASS_PERMANENT";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CELL_RESULT_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_CELL_RESULT_FAILURE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_CLS_OPERATION_TYPE_SET";
  }

  if (a1 == 1)
  {
    return "IBI_CLS_OPERATION_TYPE_GET";
  }

  else
  {
    return v1;
  }
}

{
  v1 = a1 - 1;
  result = "IBI_CLS_POS_CAP_CP_LOCATION_REQUEST_SUPPORT";
  switch(v1)
  {
    case 0:
      result = "IBI_CLS_POS_CAP_LCS_NOTIFICATION_MECHANISM_SUPPORT";
      break;
    case 1:
      result = "IBI_CLS_POS_CAP_LPP_SUPPORT";
      break;
    case 2:
      result = "IBI_CLS_POS_CAP_GPS_FTA_MEAS_SUPPORT";
      break;
    case 3:
      result = "IBI_CLS_POS_CAP_CP_POSITIONING_SUPPORT";
      break;
    case 4:
      result = "IBI_CLS_POS_CAP_LTE_OTDOA_SUPPORT";
      break;
    case 5:
      result = "IBI_CLS_POS_CAP_LTE_OTDOA_MODE";
      break;
    case 6:
      result = "IBI_CLS_POS_CAP_LTE_ECID_SUPPORT";
      break;
    case 7:
      result = "IBI_CLS_POS_CAP_LTE_INTER_FREQ_OTDOA_SUPPORT";
      break;
    case 8:
      result = "IBI_CLS_POS_CAP_LTE_SON_LOCATION_AGE_LIMIT";
      break;
    case 9:
      result = "IBI_CLS_POS_CAP_LTE_SON_ACTIVE_POS_FLAG";
      break;
    case 10:
      result = "IBI_CLS_POS_CAP_LTE_MDT_LOCATION_AGE_LIMIT";
      break;
    case 11:
      result = "IBI_CLS_POS_CAP_LTE_MDT_LOCATION_RESPONSE_TIME";
      break;
    case 12:
      result = "IBI_CLS_POS_CAP_LTE_MDT_ACTIVE_POS_FLAG";
      break;
    case 13:
      result = "IBI_CLS_POS_CAP_LTE_MDT_UE_RX_TX_TIME_DIFF_MEAS_SUPPORT";
      break;
    case 14:
      result = "IBI_CLS_POS_CAP_GPS_STABILITY_LIMIT_SUPPORT";
      break;
    case 15:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_GSM_GPS_SUPPORT";
      break;
    case 16:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_GSM_GLONASS_SUPPORT";
      break;
    case 17:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_GSM_BDS_SUPPORT";
      break;
    case 18:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_UMTS_GPS_SUPPORT";
      break;
    case 19:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_UMTS_GLONASS_SUPPORT";
      break;
    case 20:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_UMTS_BDS_SUPPORT";
      break;
    case 21:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_LTE_GPS_SUPPORT";
      break;
    case 22:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_LTE_GLONASS_SUPPORT";
      break;
    case 23:
      result = "IBI_CLS_POS_CAP_GNSS_SYSTEM_LTE_BDS_SUPPORT";
      break;
    case 24:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_GSM_MS_ASSISTED_SUPPORT";
      break;
    case 25:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_GSM_MS_BASED_SUPPORT";
      break;
    case 26:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_GSM_MS_STANDALONE_SUPPORT";
      break;
    case 27:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_UMTS_MS_ASSISTED_SUPPORT";
      break;
    case 28:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_UMTS_MS_BASED_SUPPORT";
      break;
    case 29:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_UMTS_MS_STANDALONE_SUPPORT";
      break;
    case 30:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_LTE_MS_ASSISTED_SUPPORT";
      break;
    case 31:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_LTE_MS_BASED_SUPPORT";
      break;
    case 32:
      result = "IBI_CLS_POS_CAP_GNSS_MODE_LTE_MS_STANDALONE_SUPPORT";
      break;
    case 33:
      result = "IBI_CLS_POS_CAP_UMTS_UE_RX_TX_TIME_DIFF_TYPE_2_MEAS_SUPPORT";
      break;
    case 34:
      return result;
    case 35:
      result = "IBI_CLS_POS_CAP_CP_MTLR_TIMEOUT_DURATION";
      break;
    case 36:
      result = "IBI_CLS_POS_CAP_MDT_SON_LOCATION_SUPPORT";
      break;
    case 37:
      result = "IBI_CLS_POS_CAP_GNSS_AD_COMMON";
      break;
    case 38:
      result = "IBI_CLS_POS_CAP_GNSS_AD_GPS";
      break;
    case 39:
      result = "IBI_CLS_POS_CAP_GNSS_AD_GLONASS";
      break;
    case 40:
      result = "IBI_CLS_POS_CAP_GNSS_AD_BDS";
      break;
    case 41:
      result = "IBI_CLS_POS_CAP_GNSS_VEL_TYPES_SUPPORT";
      break;
    case 42:
      result = "IBI_CLS_POS_CAP_GNSS_LOC_TYPES_SUPPORT";
      break;
    case 43:
      result = "IBI_CLS_POS_CAP_LPP_WLAN_MEAS_SUPPORTED";
      break;
    case 44:
      result = "IBI_CLS_POS_CAP_LPP_WLAN_RSSI_MEAS_SUPPORTED";
      break;
    case 45:
      result = "IBI_CLS_POS_CAP_LPP_LOCATION_SOURCE_SUPPORTED";
      break;
    case 46:
    case 47:
      goto LABEL_5;
    case 48:
      result = "IBI_CLS_POS_CAP_NR_ECID_SUPPORT";
      break;
    case 49:
      result = "IBI_CLS_POS_CAP_LTE_ECID_FILTER_SUPPORT";
      break;
    case 50:
      result = "IBI_CLS_POS_CAP_NR_ECID_FILTER_SUPPORT";
      break;
    case 51:
      result = "IBI_CLS_POS_CAP_NR_ECID_SSB_SUPPORT";
      break;
    case 52:
      result = "IBI_CLS_POS_CAP_NR_ECID_CSI_RS_SUPPORT";
      break;
    default:
      if ("IBI_CLS_POS_CAP_CP_LOCATION_REQUEST_SUPPORT" == 0xFFFF)
      {
        result = "IBI_CLS_POS_CAP_INVALID";
      }

      else
      {
LABEL_5:
        result = "???";
      }

      break;
  }

  return result;
}

{
  if ((a1 - 1) > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5398[a1 - 1];
  }
}

{
  v1 = a1 + 15;
  result = "IBI_ERROR_BAD_FORMAT";
  switch(v1)
  {
    case 0:
      result = "IBI_ERROR_STORAGE_ACCESS_FAILURE";
      break;
    case 1:
      result = "IBI_ERROR_OPERATION_PENDING";
      break;
    case 2:
      result = "IBI_ERROR_OUT_OF_HANDLES";
      break;
    case 3:
      result = "IBI_ERROR_IO_ERROR";
      break;
    case 4:
      result = "IBI_ERROR_INSUFFICIENT_PERMISSIONS";
      break;
    case 5:
      return result;
    case 6:
      result = "IBI_ERROR_WRONG_STATE";
      break;
    case 7:
      result = "IBI_ERROR_TIMEOUT";
      break;
    case 8:
      result = "IBI_ERROR_NOT_SUPPORTED";
      break;
    case 9:
      result = "IBI_ERROR_TOO_SMALL_BUF_PARAM";
      break;
    case 10:
      result = "IBI_ERROR_INVALID_PARAM";
      break;
    case 11:
      result = "IBI_ERROR_OUT_OF_RANGE_PARAM";
      break;
    case 12:
      result = "IBI_ERROR_INVALID_HANDLE";
      break;
    case 13:
      result = "IBI_ERROR_OUT_OF_MEMORY";
      break;
    case 14:
      result = "IBI_FAILURE";
      break;
    case 15:
      result = "IBI_SUCCESS";
      break;
    default:
      v3 = "???";
      if ("IBI_ERROR_BAD_FORMAT" == -69)
      {
        v3 = "IBI_ERROR_CUSTOMER_SPECIFIC";
      }

      if ("IBI_ERROR_BAD_FORMAT" == -100)
      {
        result = "IBI_ERROR_SPECIFIC";
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return "SIM_CARD_4";
    }

    if (a1 != 4)
    {
      if (a1 == 255)
      {
        return "SIM_CARD_INVALID";
      }

      return "???";
    }

    return "SIM_CARD_5";
  }

  else
  {
    if (!a1)
    {
      return "SIM_CARD_1";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "SIM_CARD_3";
      }

      return "???";
    }

    return "SIM_CARD_2";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "SIM_ARB_SIM_INFO_SUCCESS";
  }

  if (a1 == 1)
  {
    return "SIM_ARB_SIM_INFO_FAILURE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_CPS_CELLULAR_RADIO_STATE_ON_INST2";
  }

  if (a1 == 1)
  {
    return "IBI_CPS_CELLULAR_RADIO_STATE_ON_INST1";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_CPS_REJECTED_S_NSSAI_CURR_RA";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_CPS_REJECTED_S_NSSAI_CURR_PLMN";
  }
}

{
  if ((a1 + 1) > 8)
  {
    return "???";
  }

  else
  {
    return off_29EDF55C0[a1 + 1];
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_IMS_ME_AUDIOCHANNEL_MODE_STEREO";
  }

  if (a1 == 1)
  {
    return "IBI_IMS_ME_AUDIOCHANNEL_MODE_MONO";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_IMS_ME_AUDIO_CODEC_EVS_PRIMARY";
  }

  if (a1 == 2)
  {
    return "IBI_IMS_ME_AUDIO_CODEC_EVS_AMRWB_IO";
  }

  else
  {
    return v1;
  }
}

{
  if ((a1 - 1) > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF5688[a1 - 1];
  }
}

{
  if ((a1 - 1) > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF56B8[a1 - 1];
  }
}

{
  if ((a1 - 1) > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5780[a1 - 1];
  }
}

{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "IBI_IMS_ME_MEDIA_SESSION_ERR_DATA_PATH_ERROR";
      case 1:
        return "IBI_IMS_ME_MEDIA_SESSION_ERR_PLAYER_RESOURCE_BUSY";
      case 2:
        return "IBI_IMS_ME_MEDIA_SESSION_ERR_RECORDER_RESOURCE_BUSY";
    }

    return "???";
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return "IBI_IMS_ME_MEDIA_SESSION_ERR_RTCP_INACTIVITY_TIMEOUT";
    }

    if (a1 == 0xFFFF)
    {
      return "IBI_IMS_ME_MEDIA_SESSION_ERR_UNKNOWN_ERROR";
    }

    return "???";
  }

  if (a1 == 3)
  {
    return "IBI_IMS_ME_MEDIA_SESSION_ERR_RTPRTCP_INACTIVITY_TIMEOUT";
  }

  else
  {
    return "IBI_IMS_ME_MEDIA_SESSION_ERR_RTP_INACTIVITY_TIMEOUT";
  }
}

{
  if ((a1 - 1) > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF5798[a1 - 1];
  }
}

{
  if (a1 == 1)
  {
    return "IBI_IMS_ME_RTT_CODEC_TYPE_T140";
  }

  else
  {
    return "???";
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_IMS_ME_RTP_PROFILE_AVPF";
  }

  if (a1 == 1)
  {
    return "IBI_IMS_ME_RTP_PROFILE_AVP";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_IMS_ME_RTCP_SOURCE_REMOTE";
  }

  if (a1 == 1)
  {
    return "IBI_IMS_ME_RTCP_SOURCE_LOCAL";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_IMS_ENABLE_TEST_MODE_REQ";
  }

  if (a1 == 1)
  {
    return "IBI_IMS_AT_COMMAND_RESPONSE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_LP_FIX_TYPE_3D";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_LP_FIX_TYPE_2D";
  }
}

{
  if (a1 > 2)
  {
    if (a1 == 255)
    {
      return "IBI_LP_GANSS_DOPPLER_UNCER_EXT_NOT_PRESENT";
    }

    if (a1 != 254)
    {
      if (a1 == 3)
      {
        return "IBI_LP_GANSS_DOPPLER_UNCER_EXT_D120";
      }

      return "???";
    }

    return "IBI_LP_GANSS_DOPPLER_UNCER_EXT_NO_INFO";
  }

  else
  {
    if (!a1)
    {
      return "IBI_LP_GANSS_DOPPLER_UNCER_EXT_D60";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_LP_GANSS_DOPPLER_UNCER_EXT_D100";
      }

      return "???";
    }

    return "IBI_LP_GANSS_DOPPLER_UNCER_EXT_D80";
  }
}

{
  if (a1 > 2)
  {
    if (a1 == 255)
    {
      return "IBI_LP_GNSS_TIME_INVALID";
    }

    if (a1 != 4)
    {
      if (a1 == 3)
      {
        return "IBI_LP_GNSS_TIME_ID_GALILEO";
      }

      return "???";
    }

    return "IBI_LP_GNSS_TIME_ID_BDS";
  }

  else
  {
    if (!a1)
    {
      return "IBI_LP_GNSS_TIME_ID_GPS";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_LP_GNSS_TIME_ID_GLONASS";
      }

      return "???";
    }

    return "IBI_LP_GNSS_TIME_ID_QZSS";
  }
}

{
  if (a1 > 2)
  {
    if (a1 == 255)
    {
      return "IBI_LP_GPS_DOPPLER_UNCER_EXT_NOT_PRESENT";
    }

    if (a1 != 254)
    {
      if (a1 == 3)
      {
        return "IBI_LP_GPS_DOPPLER_UNCER_EXT_D120";
      }

      return "???";
    }

    return "IBI_LP_GPS_DOPPLER_UNCER_EXT_NO_INFO";
  }

  else
  {
    if (!a1)
    {
      return "IBI_LP_GPS_DOPPLER_UNCER_EXT_D60";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_LP_GPS_DOPPLER_UNCER_EXT_D100";
      }

      return "???";
    }

    return "IBI_LP_GPS_DOPPLER_UNCER_EXT_D80";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_LP_IS801_LOCATION_IND_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_LP_IS801_LOCATION_IND_ERROR";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_LP_LOCATION_REQUEST_STATUS_START";
  }

  if (a1 == 1)
  {
    return "IBI_LP_LOCATION_REQUEST_STATUS_END";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_LP_SEND_AFLT_MEASUREMENT";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_LP_IGNORE_AFLT_MEASUREMENT";
  }
}

{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return "IBI_LP_POSITION_METHOD_GNSS";
    }

    if (a1 == 2)
    {
      return "IBI_LP_POSITION_METHOD_LTE_OTDOA";
    }
  }

  else
  {
    switch(a1)
    {
      case 16:
        return "IBI_LP_POSITION_METHOD_WLAN";
      case 8:
        return "IBI_LP_POSITION_METHOD_UMTS_UE_RX_TX_TYPE2";
      case 4:
        return "IBI_LP_POSITION_METHOD_LTE_ECID";
    }
  }

  return "???";
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_LP_WLAN_ERROR_CAUSE_UNDEFINED";
  }

  if (a1 == 2)
  {
    return "IBI_LP_WLAN_ERROR_CAUSE_REQ_MEAS_NOT_AVAILABLE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_MSIM_CONFIG_SSIM_MODE";
  }

  if (a1 == 1)
  {
    return "IBI_MSIM_CONFIG_MSIM_MODE";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return "SIM_MAP_SUCCESS";
    }

    if (a1 == 2)
    {
      return "SIM_MAP_FAILURE_CALL_ONGOING";
    }
  }

  else
  {
    switch(a1)
    {
      case 255:
        return "SIM_MAP_FAILURE_UNKNOWN";
      case 4:
        return "SIM_MAP_FAILURE_COMMUNICATION_ERROR";
      case 3:
        return "SIM_MAP_FAILURE_CARD_RESET_UNSUCCESSFUL";
    }
  }

  return "???";
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_MESSAGE_MODE_3GPP2";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_MESSAGE_MODE_3GPP";
  }
}

{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 255)
      {
        return "IBI_NET_NR_FREQ_UNKNOWN";
      }

      return "???";
    }

    return "IBI_NET_NR_FREQ_TYPE_REDCAP";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return "IBI_NET_NR_FREQ_TYPE_LEGACY";
      }

      return "???";
    }

    return "IBI_NET_NR_FREQ_TYPE_NONE";
  }
}

{
  result = "IBI_NET_BAND_AUTOMATIC";
  switch(a1)
  {
    case 0:
      result = "IBI_NET_BAND_GSM900";
      break;
    case 1:
      result = "IBI_NET_BAND_GSM900_P";
      break;
    case 2:
      result = "IBI_NET_BAND_GSM900_E";
      break;
    case 3:
      result = "IBI_NET_BAND_GSM900_R";
      break;
    case 4:
      result = "IBI_NET_BAND_GSM1800";
      break;
    case 5:
      result = "IBI_NET_BAND_GSM1900";
      break;
    case 6:
      result = "IBI_NET_BAND_GSM850";
      break;
    case 7:
      result = "IBI_NET_BAND_GSM450";
      break;
    case 8:
      result = "IBI_NET_BAND_GSM480";
      break;
    case 9:
      result = "IBI_NET_BAND_GSM750";
      break;
    case 10:
      result = "IBI_NET_BAND_GSM_T_GSM380";
      break;
    case 11:
      result = "IBI_NET_BAND_GSM_T_GSM410";
      break;
    case 12:
      result = "IBI_NET_BAND_GSM_T_GSM900";
      break;
    case 13:
      result = "IBI_NET_BAND_GSM710";
      break;
    case 14:
      result = "IBI_NET_BAND_GSM_T_GSM810";
      break;
    case 15:
      result = "IBI_NET_BAND_MULTI";
      break;
    case 16:
      result = "IBI_NET_BAND_UMTS_FDD";
      break;
    case 17:
      result = "IBI_NET_BAND_UMTS_TDD";
      break;
    case 18:
      result = "IBI_NET_BAND_INVALID";
      break;
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
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
    case 72:
    case 73:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 148:
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
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 187:
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
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 256:
    case 257:
    case 258:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 316:
    case 331:
    case 338:
    case 339:
    case 340:
    case 341:
    case 342:
    case 343:
    case 344:
    case 345:
    case 346:
    case 347:
    case 348:
    case 371:
    case 372:
    case 381:
    case 382:
    case 383:
    case 384:
    case 385:
    case 386:
    case 387:
    case 388:
    case 389:
    case 390:
    case 391:
    case 392:
    case 393:
    case 394:
    case 395:
    case 396:
    case 397:
    case 398:
    case 399:
    case 400:
    case 401:
    case 402:
    case 403:
    case 404:
    case 405:
    case 406:
    case 407:
    case 408:
    case 409:
    case 410:
    case 411:
    case 412:
    case 413:
    case 414:
    case 415:
    case 416:
    case 417:
    case 418:
    case 419:
    case 420:
    case 421:
    case 422:
    case 423:
    case 424:
    case 425:
    case 426:
    case 427:
    case 428:
    case 429:
    case 430:
    case 431:
    case 432:
    case 433:
    case 434:
    case 435:
    case 436:
    case 437:
    case 438:
    case 439:
    case 440:
    case 441:
    case 442:
    case 443:
    case 444:
    case 445:
    case 446:
    case 447:
    case 448:
    case 449:
    case 450:
    case 451:
    case 452:
    case 453:
    case 454:
    case 455:
    case 456:
    case 457:
    case 458:
    case 459:
    case 460:
    case 461:
    case 462:
    case 463:
    case 464:
    case 465:
    case 466:
    case 467:
    case 468:
    case 469:
    case 470:
    case 471:
    case 472:
    case 473:
    case 474:
    case 475:
    case 476:
    case 477:
    case 478:
    case 479:
    case 480:
    case 481:
    case 482:
    case 483:
    case 484:
    case 485:
    case 486:
    case 487:
    case 488:
    case 489:
    case 490:
    case 491:
    case 492:
    case 493:
    case 494:
    case 495:
    case 496:
    case 497:
    case 498:
    case 499:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 511:
    case 512:
    case 513:
    case 514:
    case 515:
    case 516:
    case 517:
    case 518:
    case 519:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 531:
    case 532:
    case 533:
    case 534:
    case 535:
    case 536:
    case 537:
    case 538:
    case 539:
    case 540:
      goto LABEL_5;
    case 50:
      result = "IBI_NET_BAND_UMTS_I";
      break;
    case 51:
      result = "IBI_NET_BAND_UMTS_II";
      break;
    case 52:
      result = "IBI_NET_BAND_UMTS_III";
      break;
    case 53:
      result = "IBI_NET_BAND_UMTS_IV";
      break;
    case 54:
      result = "IBI_NET_BAND_UMTS_V";
      break;
    case 55:
      result = "IBI_NET_BAND_UMTS_VI";
      break;
    case 56:
      result = "IBI_NET_BAND_UMTS_VII";
      break;
    case 57:
      result = "IBI_NET_BAND_UMTS_VIII";
      break;
    case 58:
      result = "IBI_NET_BAND_UMTS_IX";
      break;
    case 59:
      result = "IBI_NET_BAND_UMTS_X";
      break;
    case 60:
      result = "IBI_NET_BAND_UMTS_XI";
      break;
    case 61:
      result = "IBI_NET_BAND_UMTS_XII";
      break;
    case 62:
      result = "IBI_NET_BAND_UMTS_XIII";
      break;
    case 63:
      result = "IBI_NET_BAND_UMTS_XIV";
      break;
    case 64:
      result = "IBI_NET_BAND_UMTS_XV";
      break;
    case 65:
      result = "IBI_NET_BAND_UMTS_XVI";
      break;
    case 66:
      result = "IBI_NET_BAND_UMTS_XVII";
      break;
    case 67:
      result = "IBI_NET_BAND_UMTS_XVIII";
      break;
    case 68:
      result = "IBI_NET_BAND_UMTS_XIX";
      break;
    case 69:
      result = "IBI_NET_BAND_UMTS_XX";
      break;
    case 70:
      result = "IBI_NET_BAND_UMTS_XXI";
      break;
    case 71:
      result = "IBI_NET_BAND_UMTS_XXII";
      break;
    case 74:
      result = "IBI_NET_BAND_UMTS_XXV";
      break;
    case 75:
      result = "IBI_NET_BAND_UMTS_INVALID";
      break;
    case 85:
      result = "IBI_NET_BAND_UMTS_TDD_A";
      break;
    case 86:
      result = "IBI_NET_BAND_UMTS_TDD_B";
      break;
    case 87:
      result = "IBI_NET_BAND_UMTS_TDD_C";
      break;
    case 88:
      result = "IBI_NET_BAND_UMTS_TDD_D";
      break;
    case 89:
      result = "IBI_NET_BAND_UMTS_TDD_E";
      break;
    case 90:
      result = "IBI_NET_BAND_UMTS_TDD_F";
      break;
    case 91:
      result = "IBI_NET_BAND_UMTS_TDD_INVALID";
      break;
    case 101:
      result = "IBI_NET_BAND_LTE_1";
      break;
    case 102:
      result = "IBI_NET_BAND_LTE_2";
      break;
    case 103:
      result = "IBI_NET_BAND_LTE_3";
      break;
    case 104:
      result = "IBI_NET_BAND_LTE_4";
      break;
    case 105:
      result = "IBI_NET_BAND_LTE_5";
      break;
    case 106:
      result = "IBI_NET_BAND_LTE_6";
      break;
    case 107:
      result = "IBI_NET_BAND_LTE_7";
      break;
    case 108:
      result = "IBI_NET_BAND_LTE_8";
      break;
    case 109:
      result = "IBI_NET_BAND_LTE_9";
      break;
    case 110:
      result = "IBI_NET_BAND_LTE_10";
      break;
    case 111:
      result = "IBI_NET_BAND_LTE_11";
      break;
    case 112:
      result = "IBI_NET_BAND_LTE_12";
      break;
    case 113:
      result = "IBI_NET_BAND_LTE_13";
      break;
    case 114:
      result = "IBI_NET_BAND_LTE_14";
      break;
    case 115:
      result = "IBI_NET_BAND_LTE_15";
      break;
    case 116:
      result = "IBI_NET_BAND_LTE_16";
      break;
    case 117:
      result = "IBI_NET_BAND_LTE_17";
      break;
    case 118:
      result = "IBI_NET_BAND_LTE_18";
      break;
    case 119:
      result = "IBI_NET_BAND_LTE_19";
      break;
    case 120:
      result = "IBI_NET_BAND_LTE_20";
      break;
    case 121:
      result = "IBI_NET_BAND_LTE_21";
      break;
    case 122:
      result = "IBI_NET_BAND_LTE_22";
      break;
    case 123:
      result = "IBI_NET_BAND_LTE_23";
      break;
    case 124:
      result = "IBI_NET_BAND_LTE_24";
      break;
    case 125:
      result = "IBI_NET_BAND_LTE_25";
      break;
    case 126:
      result = "IBI_NET_BAND_LTE_26";
      break;
    case 127:
      result = "IBI_NET_BAND_LTE_27";
      break;
    case 128:
      result = "IBI_NET_BAND_LTE_28";
      break;
    case 129:
      result = "IBI_NET_BAND_LTE_29";
      break;
    case 130:
      result = "IBI_NET_BAND_LTE_30";
      break;
    case 131:
      result = "IBI_NET_BAND_LTE_31";
      break;
    case 132:
      result = "IBI_NET_BAND_LTE_32";
      break;
    case 133:
      result = "IBI_NET_BAND_LTE_33";
      break;
    case 134:
      result = "IBI_NET_BAND_LTE_34";
      break;
    case 135:
      result = "IBI_NET_BAND_LTE_35";
      break;
    case 136:
      result = "IBI_NET_BAND_LTE_36";
      break;
    case 137:
      result = "IBI_NET_BAND_LTE_37";
      break;
    case 138:
      result = "IBI_NET_BAND_LTE_38";
      break;
    case 139:
      result = "IBI_NET_BAND_LTE_39";
      break;
    case 140:
      result = "IBI_NET_BAND_LTE_40";
      break;
    case 141:
      result = "IBI_NET_BAND_LTE_41";
      break;
    case 142:
      result = "IBI_NET_BAND_LTE_42";
      break;
    case 143:
      result = "IBI_NET_BAND_LTE_43";
      break;
    case 144:
      result = "IBI_NET_BAND_LTE_44";
      break;
    case 145:
      result = "IBI_NET_BAND_LTE_INVALID";
      break;
    case 146:
      result = "IBI_NET_BAND_LTE_45";
      break;
    case 147:
      result = "IBI_NET_BAND_LTE_46";
      break;
    case 149:
      result = "IBI_NET_BAND_LTE_48";
      break;
    case 150:
      result = "IBI_NET_BAND_LTE_49";
      break;
    case 151:
      result = "IBI_NET_BAND_LTE_50";
      break;
    case 152:
      result = "IBI_NET_BAND_LTE_51";
      break;
    case 153:
      result = "IBI_NET_BAND_LTE_52";
      break;
    case 154:
      result = "IBI_NET_BAND_LTE_53";
      break;
    case 166:
      result = "IBI_NET_BAND_LTE_65";
      break;
    case 167:
      result = "IBI_NET_BAND_LTE_66";
      break;
    case 168:
      result = "IBI_NET_BAND_LTE_67";
      break;
    case 169:
      result = "IBI_NET_BAND_LTE_68";
      break;
    case 170:
      result = "IBI_NET_BAND_LTE_69";
      break;
    case 171:
      result = "IBI_NET_BAND_LTE_70";
      break;
    case 172:
      result = "IBI_NET_BAND_LTE_71";
      break;
    case 173:
      result = "IBI_NET_BAND_LTE_72";
      break;
    case 174:
      result = "IBI_NET_BAND_LTE_73";
      break;
    case 175:
      result = "IBI_NET_BAND_LTE_74";
      break;
    case 176:
      result = "IBI_NET_BAND_LTE_75";
      break;
    case 177:
      result = "IBI_NET_BAND_LTE_76";
      break;
    case 186:
      result = "IBI_NET_BAND_LTE_85";
      break;
    case 188:
      result = "IBI_NET_BAND_LTE_87";
      break;
    case 189:
      result = "IBI_NET_BAND_LTE_88";
      break;
    case 200:
      result = "IBI_NET_BAND_CDMA_0";
      break;
    case 201:
      result = "IBI_NET_BAND_CDMA_1";
      break;
    case 202:
      result = "IBI_NET_BAND_CDMA_2";
      break;
    case 203:
      result = "IBI_NET_BAND_CDMA_3";
      break;
    case 204:
      result = "IBI_NET_BAND_CDMA_4";
      break;
    case 205:
      result = "IBI_NET_BAND_CDMA_5";
      break;
    case 206:
      result = "IBI_NET_BAND_CDMA_6";
      break;
    case 207:
      result = "IBI_NET_BAND_CDMA_7";
      break;
    case 208:
      result = "IBI_NET_BAND_CDMA_8";
      break;
    case 209:
      result = "IBI_NET_BAND_CDMA_9";
      break;
    case 210:
      result = "IBI_NET_BAND_CDMA_10";
      break;
    case 211:
      result = "IBI_NET_BAND_CDMA_11";
      break;
    case 212:
      result = "IBI_NET_BAND_CDMA_12";
      break;
    case 213:
      result = "IBI_NET_BAND_CDMA_13";
      break;
    case 214:
      result = "IBI_NET_BAND_CDMA_14";
      break;
    case 215:
      result = "IBI_NET_BAND_CDMA_15";
      break;
    case 216:
      result = "IBI_NET_BAND_CDMA_16";
      break;
    case 217:
      result = "IBI_NET_BAND_CDMA_17";
      break;
    case 218:
      result = "IBI_NET_BAND_CDMA_18";
      break;
    case 219:
      result = "IBI_NET_BAND_CDMA_19";
      break;
    case 220:
      result = "IBI_NET_BAND_CDMA_20";
      break;
    case 221:
      result = "IBI_NET_BAND_CDMA_21";
      break;
    case 255:
      return result;
    case 285:
      result = "IBI_NET_BAND_NR_1";
      break;
    case 286:
      result = "IBI_NET_BAND_NR_2";
      break;
    case 287:
      result = "IBI_NET_BAND_NR_3";
      break;
    case 288:
      result = "IBI_NET_BAND_NR_4";
      break;
    case 289:
      result = "IBI_NET_BAND_NR_5";
      break;
    case 290:
      result = "IBI_NET_BAND_NR_6";
      break;
    case 291:
      result = "IBI_NET_BAND_NR_7";
      break;
    case 292:
      result = "IBI_NET_BAND_NR_8";
      break;
    case 293:
      result = "IBI_NET_BAND_NR_9";
      break;
    case 294:
      result = "IBI_NET_BAND_NR_10";
      break;
    case 295:
      result = "IBI_NET_BAND_NR_11";
      break;
    case 296:
      result = "IBI_NET_BAND_NR_12";
      break;
    case 297:
      result = "IBI_NET_BAND_NR_13";
      break;
    case 298:
      result = "IBI_NET_BAND_NR_14";
      break;
    case 299:
      result = "IBI_NET_BAND_NR_15";
      break;
    case 300:
      result = "IBI_NET_BAND_NR_16";
      break;
    case 301:
      result = "IBI_NET_BAND_NR_17";
      break;
    case 302:
      result = "IBI_NET_BAND_NR_18";
      break;
    case 303:
      result = "IBI_NET_BAND_NR_19";
      break;
    case 304:
      result = "IBI_NET_BAND_NR_20";
      break;
    case 305:
      result = "IBI_NET_BAND_NR_21";
      break;
    case 306:
      result = "IBI_NET_BAND_NR_22";
      break;
    case 307:
      result = "IBI_NET_BAND_NR_23";
      break;
    case 308:
      result = "IBI_NET_BAND_NR_24";
      break;
    case 309:
      result = "IBI_NET_BAND_NR_25";
      break;
    case 310:
      result = "IBI_NET_BAND_NR_26";
      break;
    case 311:
      result = "IBI_NET_BAND_NR_27";
      break;
    case 312:
      result = "IBI_NET_BAND_NR_28";
      break;
    case 313:
      result = "IBI_NET_BAND_NR_29";
      break;
    case 314:
      result = "IBI_NET_BAND_NR_30";
      break;
    case 315:
      result = "IBI_NET_BAND_NR_31";
      break;
    case 317:
      result = "IBI_NET_BAND_NR_33";
      break;
    case 318:
      result = "IBI_NET_BAND_NR_34";
      break;
    case 319:
      result = "IBI_NET_BAND_NR_35";
      break;
    case 320:
      result = "IBI_NET_BAND_NR_36";
      break;
    case 321:
      result = "IBI_NET_BAND_NR_37";
      break;
    case 322:
      result = "IBI_NET_BAND_NR_38";
      break;
    case 323:
      result = "IBI_NET_BAND_NR_39";
      break;
    case 324:
      result = "IBI_NET_BAND_NR_40";
      break;
    case 325:
      result = "IBI_NET_BAND_NR_41";
      break;
    case 326:
      result = "IBI_NET_BAND_NR_42";
      break;
    case 327:
      result = "IBI_NET_BAND_NR_43";
      break;
    case 328:
      result = "IBI_NET_BAND_NR_44";
      break;
    case 329:
      result = "IBI_NET_BAND_NR_45";
      break;
    case 330:
      result = "IBI_NET_BAND_NR_46";
      break;
    case 332:
      result = "IBI_NET_BAND_NR_48";
      break;
    case 333:
      result = "IBI_NET_BAND_NR_49";
      break;
    case 334:
      result = "IBI_NET_BAND_NR_50";
      break;
    case 335:
      result = "IBI_NET_BAND_NR_51";
      break;
    case 336:
      result = "IBI_NET_BAND_NR_52";
      break;
    case 337:
      result = "IBI_NET_BAND_NR_53";
      break;
    case 349:
      result = "IBI_NET_BAND_NR_65";
      break;
    case 350:
      result = "IBI_NET_BAND_NR_66";
      break;
    case 351:
      result = "IBI_NET_BAND_NR_67";
      break;
    case 352:
      result = "IBI_NET_BAND_NR_68";
      break;
    case 353:
      result = "IBI_NET_BAND_NR_69";
      break;
    case 354:
      result = "IBI_NET_BAND_NR_70";
      break;
    case 355:
      result = "IBI_NET_BAND_NR_71";
      break;
    case 356:
      result = "IBI_NET_BAND_NR_72";
      break;
    case 357:
      result = "IBI_NET_BAND_NR_73";
      break;
    case 358:
      result = "IBI_NET_BAND_NR_74";
      break;
    case 359:
      result = "IBI_NET_BAND_NR_75";
      break;
    case 360:
      result = "IBI_NET_BAND_NR_76";
      break;
    case 361:
      result = "IBI_NET_BAND_NR_77";
      break;
    case 362:
      result = "IBI_NET_BAND_NR_78";
      break;
    case 363:
      result = "IBI_NET_BAND_NR_79";
      break;
    case 364:
      result = "IBI_NET_BAND_NR_80";
      break;
    case 365:
      result = "IBI_NET_BAND_NR_81";
      break;
    case 366:
      result = "IBI_NET_BAND_NR_82";
      break;
    case 367:
      result = "IBI_NET_BAND_NR_83";
      break;
    case 368:
      result = "IBI_NET_BAND_NR_84";
      break;
    case 369:
      result = "IBI_NET_BAND_NR_85";
      break;
    case 370:
      result = "IBI_NET_BAND_NR_86";
      break;
    case 373:
      result = "IBI_NET_BAND_NR_89";
      break;
    case 374:
      result = "IBI_NET_BAND_NR_90";
      break;
    case 375:
      result = "IBI_NET_BAND_NR_91";
      break;
    case 376:
      result = "IBI_NET_BAND_NR_92";
      break;
    case 377:
      result = "IBI_NET_BAND_NR_93";
      break;
    case 378:
      result = "IBI_NET_BAND_NR_94";
      break;
    case 379:
      result = "IBI_NET_BAND_NR_95";
      break;
    case 380:
      result = "IBI_NET_BAND_NR_96";
      break;
    case 541:
      result = "IBI_NET_BAND_NR_257";
      break;
    case 542:
      result = "IBI_NET_BAND_NR_258";
      break;
    case 543:
      result = "IBI_NET_BAND_NR_260";
      break;
    case 544:
      result = "IBI_NET_BAND_NR_261";
      break;
    default:
      if (a1 == 600)
      {
        result = "IBI_NET_BAND_NR_INVALID";
      }

      else
      {
LABEL_5:
        result = "???";
      }

      break;
  }

  return result;
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_CELL_SIB2_BARRING_CONFIG";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_CELL_CALL_EST_BARRED_INFO";
  }
}

{
  if ((a1 - 1) > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF5CE8[a1 - 1];
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_NET_SERVING_CELL";
  }

  if (a1 == 1)
  {
    return "IBI_NET_NEIGBOURING_CELL";
  }

  else
  {
    return v1;
  }
}

{
  if ((a1 + 1) > 5)
  {
    return "???";
  }

  else
  {
    return off_29EDF5E40[a1 + 1];
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_DC_IMS_STATUS_REGISTERED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_DC_IMS_STATUS_NOT_REGISTERED";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_DC_IMS_RE_REGISTRATION";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_DC_IMS_NEW_REGISTRATION";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_DC_IMS_SESSION_STOPPED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_DC_IMS_SESSION_STARTED";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_NET_DC_SSAC_BARRING_INFO_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_NET_DC_SSAC_BARRING_INFO_FAILURE_EUTRAN_NOT_ACTIVE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_DC_VOICE_OVER_NR_CAP_SUPPORTED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_DC_VOICE_OVER_NR_CAP_NOT_SUPPORTED";
  }
}

{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return "IBI_NET_EM_CALL_TYPE_T911";
    }

    if (a1 != 4)
    {
      if (a1 == 255)
      {
        return "IBI_NET_EM_CALL_TYPE_MAX";
      }

      return "???";
    }

    return "IBI_NET_EM_CALL_TYPE_NOT_SELECTED_EM_CALL";
  }

  else
  {
    if (!a1)
    {
      return "IBI_NET_EM_CALL_TYPE_NONE";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_NET_EM_CALL_TYPE_NORMAL_SETUP_EM_CALL";
      }

      return "???";
    }

    return "IBI_NET_EM_CALL_TYPE_EM_SETUP_EM_CALL";
  }
}

{
  if (a1)
  {
    return "???";
  }

  else
  {
    return "IBI_NET_EMERGENCY_CELL_SEARCH_FAIL_NO_CAUSE";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_ENCODING_SCHEME_UCS2";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_ENCODING_SCHEME_ASCII";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_EONS_SUPPORT_TRUE";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_EONS_SUPPORT_FALSE";
  }
}

{
  v1 = a1 - 2;
  result = "IBI_NET_ERROR_CALL_CANNOT_BE_IDENTIFIED";
  switch(v1)
  {
    case 0:
      result = "IBI_NET_ERROR_IMSI_UNKNOWN_IN_HLR";
      break;
    case 1:
      result = "IBI_NET_ERROR_ILLEGAL_MS";
      break;
    case 2:
      result = "IBI_NET_ERROR_IMSI_UNKNOWN_IN_VLR";
      break;
    case 3:
      result = "IBI_NET_ERROR_IMEI_NOT_ACCEPTED";
      break;
    case 4:
      result = "IBI_NET_ERROR_ILLEGAL_ME";
      break;
    case 5:
      result = "IBI_NET_ERROR_GPRS_SERVICES_NOT_ALLOWED";
      break;
    case 6:
      result = "IBI_NET_ERROR_GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED";
      break;
    case 7:
      result = "IBI_NET_ERROR_MS_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NETWORK";
      break;
    case 8:
      result = "IBI_NET_ERROR_IMPLICITLY_DETACHED";
      break;
    case 9:
      result = "IBI_NET_ERROR_PLMN_NOT_ALLOWED";
      break;
    case 10:
      result = "IBI_NET_ERROR_LOCATION_AREA_NOT_ALLOWED";
      break;
    case 11:
      result = "IBI_NET_ERROR_ROAMING_NOT_ALLOWED_IN_THIS_LOCATION_AREA";
      break;
    case 12:
      result = "IBI_NET_ERROR_GPRS_SERVICES_PLMN_NOT_ALLOWED_IN_THIS_PLMN";
      break;
    case 13:
      result = "IBI_NET_ERROR_NO_SUITABLE_CELLS_IN_LOCATION_AREA";
      break;
    case 14:
      result = "IBI_NET_ERROR_MSC_TEMPORARILY_NOT_REACHABLE";
      break;
    case 15:
      result = "IBI_NET_ERROR_NETWORK_FAILURE";
      break;
    case 16:
      result = "IBI_NET_ERROR_CS_DOMAIN_NOT_AVAILABLE";
      break;
    case 17:
      result = "IBI_NET_ERROR_ESM_FAILURE";
      break;
    case 18:
      result = "IBI_NET_ERROR_MAC_FAILURE";
      break;
    case 19:
      result = "IBI_NET_ERROR_SYNCH_FAILURE";
      break;
    case 20:
      result = "IBI_NET_ERROR_CONGESTION";
      break;
    case 21:
      result = "IBI_NET_ERROR_GSM_AUTHENTICATION_UNACCEPTABLE";
      break;
    case 22:
      result = "IBI_NET_ERROR_SECURITY_MODE_REJECTED";
      break;
    case 23:
      result = "IBI_NET_ERROR_NOT_AUTHORIZED_FOR_THIS_CSG";
      break;
    case 24:
      result = "IBI_NET_ERROR_NON_EPS_AUTHENTICATION_UNACCEPTABLE";
      break;
    case 25:
      result = "IBI_NET_ERROR_N1_MODE_NOT_ALLOWED";
      break;
    case 26:
      result = "IBI_NET_ERROR_SMS_SERVICE_PROVIDED_VIA_GPRS_IN_THIS_ROUTING_AREA";
      break;
    case 27:
    case 28:
    case 34:
    case 35:
    case 39:
    case 42:
    case 43:
    case 44:
    case 45:
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
    case 57:
    case 58:
    case 59:
    case 62:
    case 64:
    case 66:
    case 68:
    case 72:
    case 73:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 91:
    case 92:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
      goto LABEL_5;
    case 29:
      result = "IBI_NET_ERROR_REDIRECTION_TO_5GC_OR_EPC_REQUIRED";
      break;
    case 30:
      result = "IBI_NET_ERROR_SERVICE_OPTION_NOT_SUPPORTED";
      break;
    case 31:
      result = "IBI_NET_ERROR_REQUESTED_SERVICE_OPTION_NOT_SUBSCRIBED";
      break;
    case 32:
      result = "IBI_NET_ERROR_SERVICE_TEMPORARILY_OUT_OF_ORDER";
      break;
    case 33:
      result = "IBI_NET_ERROR_REQUEST_SERVICE_OPTION_NOT_AUTHORIZED_IN_THIS_PLMN";
      break;
    case 36:
      return result;
    case 37:
      result = "IBI_NET_ERROR_CS_DOMAIN_TEMPORARILY_NOT_AVAILABLE";
      break;
    case 38:
      result = "IBI_NET_ERROR_NO_PDP_CONTEXT_ACTIVE";
      break;
    case 40:
      result = "IBI_NET_ERROR_SEVERE_NETWORK_FAILURE";
      break;
    case 41:
      result = "IBI_NET_ERROR_LADN_NOT_AVAILABLE";
      break;
    case 46:
      result = "IBI_NET_ERROR_RETRY_ON_NEW_CELL_BEG";
      break;
    case 60:
      result = "IBI_NET_ERROR_NO_NETWORK_SLICES_AVAILABLE";
      break;
    case 61:
      result = "IBI_NET_ERROR_RETRY_ON_NEW_CELL_END";
      break;
    case 63:
      result = "IBI_NET_ERROR_MAX_NUM_PDU_SESSION_REACHED";
      break;
    case 65:
      result = "IBI_NET_ERROR_INSUFFICIENT_RESOURCES_FOR_SPECIFIC_SLICE_DNN";
      break;
    case 67:
      result = "IBI_NET_ERROR_INSUFFICIENT_RESOURCES_FOR_SPECIFIC_SLICE";
      break;
    case 69:
      result = "IBI_NET_ERROR_NGKSI_ALREADY_IN_USE";
      break;
    case 70:
      result = "IBI_NET_ERROR_NON_3GPP_ACCESS_TO_5GCN_NOT_ALLOWED";
      break;
    case 71:
      result = "IBI_NET_ERROR_SERVING_NW_NOT_AUTHORIZED";
      break;
    case 74:
      result = "IBI_NET_ERROR_NOT_AUTH_FOR_THIS_CAG_OR_AUTH_FOR_CAG_ONLY";
      break;
    case 75:
      result = "IBI_NET_ERROR_WIRELINE_ACCESS_AREA_NOT_ALLOWED";
      break;
    case 88:
      result = "IBI_NET_ERROR_PAYLOAD_NOT_FORWARDED";
      break;
    case 89:
      result = "IBI_NET_ERROR_DNN_NOT_SUPPORTED_OR_SUBSCRIBED_IN_SLICE";
      break;
    case 90:
      result = "IBI_NET_ERROR_INSUFFICIENT_USER_PLANE_RESOURCES_FOR_PDU_SESSION";
      break;
    case 93:
      result = "IBI_NET_ERROR_SEMANTICALLY_INCORRECT_MESSAGE";
      break;
    case 94:
      result = "IBI_NET_ERROR_INVALID_MANDATORY_INFORMATION";
      break;
    case 95:
      result = "IBI_NET_ERROR_MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED";
      break;
    case 96:
      result = "IBI_NET_ERROR_MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
      break;
    case 97:
      result = "IBI_NET_ERROR_INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED";
      break;
    case 98:
      result = "IBI_NET_ERROR_CONDITIONAL_IE_ERROR";
      break;
    case 99:
      result = "IBI_NET_ERROR_MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
      break;
    case 109:
      result = "IBI_NET_ERROR_PROTOCOL_ERROR_UNSPECIFIED";
      break;
    default:
      if ("IBI_NET_ERROR_CALL_CANNOT_BE_IDENTIFIED" == 255)
      {
        result = "IBI_NET_ERROR_NO_ERROR";
      }

      else
      {
LABEL_5:
        result = "???";
      }

      break;
  }

  return result;
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_GEO_MCC_SAT_AUTH_ENABLED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_GEO_MCC_SAT_AUTH_DISABLED";
  }
}

{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "IBI_NET_GSM_SERVICE_CIRCUIT_SWITCHED";
    }

    if (a1 == 1)
    {
      return "IBI_NET_GSM_SERVICE_PACKET_SWITCHED";
    }
  }

  else
  {
    switch(a1)
    {
      case 99:
        return "IBI_NET_GSM_SERVICE_UNDEFINED";
      case 3:
        return "IBI_NET_GSM_SERVICE_PACKET_SWITCHED_PREFERRED";
      case 2:
        return "IBI_NET_GSM_SERVICE_CIRCUIT_SWITCHED_PREFERRED";
    }
  }

  return "???";
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_NET_NSSAI_INFO_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_NET_NSSAI_INFO_ERROR";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 > 5)
  {
    if (a1 <= 50)
    {
      switch(a1)
      {
        case 6:
          return "IBI_NET_PWR_CLASS_4";
        case 7:
          return "IBI_NET_PWR_CLASS_5";
        case 50:
          return "IBI_NET_UMTS_PWR_CLASS_INVALID";
      }
    }

    else
    {
      if (a1 <= 52)
      {
        if (a1 == 51)
        {
          return "IBI_NET_UMTS_PWR_CLASS_1";
        }

        else
        {
          return "IBI_NET_UMTS_PWR_CLASS_2";
        }
      }

      if (a1 == 53)
      {
        return "IBI_NET_UMTS_PWR_CLASS_3";
      }

      if (a1 == 54)
      {
        return "IBI_NET_UMTS_PWR_CLASS_4";
      }
    }

    return "???";
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "IBI_NET_PWR_CLASS_INVALID";
      case 1:
        return "IBI_NET_PWR_CLASS_DEFAULT";
      case 2:
        return "IBI_NET_PWR_CLASS_NO_CHANGE";
    }

    return "???";
  }

  if (a1 == 3)
  {
    return "IBI_NET_PWR_CLASS_1";
  }

  if (a1 == 4)
  {
    return "IBI_NET_PWR_CLASS_2";
  }

  return "IBI_NET_PWR_CLASS_3";
}

{
  if (a1 <= 3)
  {
    if (!a1)
    {
      return "IBI_NET_NO_RADIO_SIGNAL_REPORT_CONFIG_PRESENT";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_NET_UMTS_RADIO_SIGNAL_REPORT_CONFIG_PRESENT";
      }

      return "???";
    }

    return "IBI_NET_GSM_RADIO_SIGNAL_REPORT_CONFIG_PRESENT";
  }

  else if (a1 > 15)
  {
    if (a1 != 32)
    {
      if (a1 == 16)
      {
        return "IBI_NET_EVDO_RADIO_SIGNAL_REPORT_CONFIG_PRESENT";
      }

      return "???";
    }

    return "IBI_NET_NR_RADIO_SIGNAL_REPORT_CONFIG_PRESENT";
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return "IBI_NET_1XRTT_RADIO_SIGNAL_REPORT_CONFIG_PRESENT";
      }

      return "???";
    }

    return "IBI_NET_LTE_RADIO_SIGNAL_REPORT_CONFIG_PRESENT";
  }
}

{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 255)
      {
        return "IBI_NET_RAT_REL_INVALID";
      }

      return "???";
    }

    return "IBI_NET_RAT_REL_17";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return "IBI_NET_RAT_REL_16";
      }

      return "???";
    }

    return "IBI_NET_RAT_REL_15";
  }
}

{
  v1 = "IBI_NET_RAT_RRC_REL_VER_UPGRADE";
  v2 = "???";
  if (a1 == 255)
  {
    v2 = "IBI_NET_RAT_RRC_REL_VER_INVALID";
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_RAT_RRC_REL_VER_DOWNGRADE";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_REGISTRATION_MODE_MANUAL";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_REGISTRATION_MODE_AUTOMATIC";
  }
}

{
  if (a1 > 59)
  {
    if (a1 == 127)
    {
      return "IBI_NET_SIGNAL_QUALITY_NR";
    }

    if (a1 != 62)
    {
      if (a1 == 60)
      {
        return "IBI_NET_SIGNAL_QUALITY_EVDO";
      }

      return "???";
    }

    return "IBI_NET_SIGNAL_QUALITY_1XRTT";
  }

  else
  {
    if (a1 == 7)
    {
      return "IBI_NET_SIGNAL_QUALITY_GSM";
    }

    if (a1 != 34)
    {
      if (a1 == 49)
      {
        return "IBI_NET_SIGNAL_QUALITY_UMTS";
      }

      return "???";
    }

    return "IBI_NET_SIGNAL_QUALITY_LTE";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_NET_FRESH_SERV_CACHED_NEIGH_CELL_MEAS";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_NET_CACHED_MEAS";
  }
}

{
  if (a1 == 1)
  {
    return "IBI_NET_TIMER_T3402";
  }

  else
  {
    return "???";
  }
}

{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 255)
      {
        return "IBI_NET_TIMER_STATUS_NOT_DEFINED";
      }

      return "???";
    }

    return "IBI_NET_TIMER_DEACTIVATED";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return "IBI_NET_TIMER_STOPPED";
      }

      return "???";
    }

    return "IBI_NET_TIMER_STARTED";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_NET_TRANSIT_INFO_EXIT";
  }

  if (a1 == 1)
  {
    return "IBI_NET_TRANSIT_INFO_ENTRY";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 == 1)
  {
    return "IBI_NET_TURBO_MODE_REASON_QR_CODE_SCANNED";
  }

  else
  {
    return "???";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBINetManageUePolicyCommandReject";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBINetManageUePolicyCommandComplete";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_NET_UAC_BARRING_STATUS_NONE";
  }

  if (a1 == 1)
  {
    return "IBI_NET_UAC_BARRING_STATUS_BARRED";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_NET_VOIMS_CALL_RAT_SWITCH_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_NET_VOIMS_CALL_RAT_SWITCH_FAILURE";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return "IBI_NVM_STATIC";
    }

    if (a1 == 2)
    {
      return "IBI_NVM_DYNAMIC";
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return "IBI_NVM_CALIBRATION";
      case 8:
        return "IBI_NVM_FATP_CALIBRATION";
      case 16:
        return "IBI_NVM_PROVISIONING";
    }
  }

  return "???";
}

{
  result = "IBI_OGRS_FAILURE_CAUSE_AlreadyActive";
  switch(a1)
  {
    case 0:
      result = "IBI_OGRS_FAILURE_CAUSE_None";
      break;
    case 1:
      result = "IBI_OGRS_FAILURE_CAUSE_NotEnabled";
      break;
    case 2:
      result = "IBI_OGRS_FAILURE_CAUSE_NotSupported";
      break;
    case 3:
      result = "IBI_OGRS_FAILURE_CAUSE_RatConfigurationError";
      break;
    case 4:
      return result;
    case 5:
      result = "IBI_OGRS_FAILURE_CAUSE_AlreadyOngoing";
      break;
    case 6:
      result = "IBI_OGRS_FAILURE_CAUSE_NotActivated";
      break;
    case 7:
      result = "IBI_OGRS_FAILURE_CAUSE_UnknownInterfaceID";
      break;
    case 8:
      result = "IBI_OGRS_FAILURE_CAUSE_InterfaceIdNotStarted";
      break;
    case 9:
      result = "IBI_OGRS_FAILURE_CAUSE_NotDiscovered";
      break;
    case 10:
      result = "IBI_OGRS_FAILURE_CAUSE_ResourceLimitation";
      break;
    case 11:
      result = "IBI_OGRS_FAILURE_CAUSE_PdnNotSetup";
      break;
    case 12:
      result = "IBI_OGRS_FAILURE_CAUSE_AlreadyConnected";
      break;
    case 13:
      result = "IBI_OGRS_FAILURE_CAUSE_DatapathFailure";
      break;
    default:
      if (a1 == 255)
      {
        result = "IBI_OGRS_FAILURE_CAUSE_UnspecifiedError";
      }

      else
      {
        result = "???";
      }

      break;
  }

  return result;
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_PRI_REFRESH_STATUS_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_PRI_REFRESH_STATUS_FAILURE";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "IBI_CALL_PS_FILTER_RESP_SUCCESS";
    }

    if (a1 == 1)
    {
      return "IBI_CALL_PS_FILTER_RESP_NOT_SUPPORTED";
    }
  }

  else
  {
    switch(a1)
    {
      case 0x1FFFFFFF:
        return "IBI_CALL_PS_RESP_MAXENUMSIZE";
      case 3:
        return "IBI_CALL_PS_FILTER_RESP_FAILURE";
      case 2:
        return "IBI_CALL_PS_FILTER_RESP_INVALID_PARAM";
    }
  }

  return "???";
}

{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return "IBI_CALL_PS_IP_PROTO_TCPUDP";
    }

    if (a1 != 255)
    {
      if (a1 == 0x1FFFFFFF)
      {
        return "IBI_CALL_PS_PROTO_MAXENUMSIZE";
      }

      return "???";
    }

    return "IBI_CALL_PS_IP_PROTO_ANY";
  }

  else
  {
    if (!a1)
    {
      return "IBI_CALL_PS_IP_PROTO_INVALID";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_CALL_PS_IP_PROTO_UDP";
      }

      return "???";
    }

    return "IBI_CALL_PS_IP_PROTO_TCP";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_RAT_INFO_EXT_TDD";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_RAT_INFO_EXT_NO_INFORMATION";
  }
}

{
  v1 = "???";
  if (a1 == 2)
  {
    v1 = "IBI_RF_PORTB_FCM1";
  }

  if (a1 == 1)
  {
    return "IBI_RF_PORTA_BCM";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_RF_PORTMAP_OK";
  }

  if (a1 == 1)
  {
    return "IBI_RF_PORTMAP_INVALID_PARAM";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SIM_ACCESS_CARD_TYPE_INFO_RUIM_PRESENT";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SIM_ACCESS_CARD_TYPE_INFO_NONE";
  }
}

{
  if (a1 <= 102)
  {
    if (a1 <= 3)
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          return "IBI_SIM_ACCESS_SIM_STATE_PIN_VERIFICATION_NEEDED";
        }

        else
        {
          return "IBI_SIM_ACCESS_SIM_STATE_LOCK_VERIFICATION_NEEDED";
        }
      }

      if (!a1)
      {
        return "IBI_SIM_ACCESS_SIM_STATE_NOT_PRESENT";
      }

      if (a1 == 1)
      {
        return "IBI_SIM_ACCESS_SIM_STATE_ACTIVATED";
      }
    }

    else
    {
      if (a1 <= 5)
      {
        if (a1 == 4)
        {
          return "IBI_SIM_ACCESS_SIM_STATE_INIT_ONGOING";
        }

        else
        {
          return "IBI_SIM_ACCESS_SIM_STATE_OPERATIONAL";
        }
      }

      switch(a1)
      {
        case 6:
          return "IBI_SIM_ACCESS_SIM_STATE_ERROR";
        case 101:
          return "IBI_SIM_ACCESS_SIM_STATE_CUST_1";
        case 102:
          return "IBI_SIM_ACCESS_SIM_STATE_CUST_2";
      }
    }

    return "???";
  }

  if (a1 > 129)
  {
    if (a1 > 131)
    {
      switch(a1)
      {
        case 255:
          return "IBI_SIM_ACCESS_SIM_STATE_LAST";
        case 254:
          return "IBI_SIM_ACCESS_SIM_STATE_NOT_DETECTED";
        case 132:
          return "IBI_SIM_ACCESS_SIM_STATE_AUTH_PENDING";
      }

      return "???";
    }

    if (a1 == 130)
    {
      return "IBI_SIM_ACCESS_SIM_STATE_RESTORE_MODE";
    }

    else
    {
      return "IBI_SIM_ACCESS_SIM_STATE_NOT_AUTHORIZED";
    }
  }

  else
  {
    if (a1 > 104)
    {
      switch(a1)
      {
        case 105:
          return "IBI_SIM_ACCESS_SIM_STATE_CUST_5";
        case 128:
          return "IBI_SIM_ACCESS_SIM_STATE_INSERTED_BLANK";
        case 129:
          return "IBI_SIM_ACCESS_SIM_STATE_PSO_INCOMPLETE";
      }

      return "???";
    }

    if (a1 == 103)
    {
      return "IBI_SIM_ACCESS_SIM_STATE_CUST_3";
    }

    else
    {
      return "IBI_SIM_ACCESS_SIM_STATE_CUST_4";
    }
  }
}

{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "SIM_CARD_STATUS_ABSENT";
      case 1:
        return "SIM_CARD_STATUS_PRESENT";
      case 2:
        return "SIM_CARD_STATUS_NOT_PERSOED";
    }

    return "???";
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return "SIM_CARD_STATUS_NOT_AUTHORIZED";
    }

    if (a1 == 255)
    {
      return "SIM_CARD_STATUS_INVALID";
    }

    return "???";
  }

  if (a1 == 3)
  {
    return "SIM_CARD_STATUS_AUTH_PENDING";
  }

  else
  {
    return "SIM_CARD_STATUS_ERROR";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SIM_CARD_TYPE_3G";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SIM_CARD_TYPE_2G";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_SIM_RES_TYPE_OK";
  }

  if (a1 == 1)
  {
    return "IBI_SIM_RES_TYPE_FAIL";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SIM_FCP_APP_PIN_ENABLED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SIM_FCP_APP_PIN_DISABLED";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SIM_FCP_SEC_ATTR_REF_TYPE_SEID_RECS";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SIM_FCP_SEC_ATTR_REF_TYPE_REC";
  }
}

{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return "IBI_SIM_MSG_TAG_TYPE_MO_SENT";
    }

    if (a1 != 255)
    {
      if (a1 == 4)
      {
        return "IBI_SIM_MSG_TAG_TYPE_MO_NOT_SENT";
      }

      return "???";
    }

    return "IBI_SIM_SMS_TAG_TYPE_UNKNOWN";
  }

  else
  {
    if (!a1)
    {
      return "IBI_SIM_MSG_TAG_TYPE_FREE";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "IBI_SIM_MSG_TAG_TYPE_MT_NOT_READ";
      }

      return "???";
    }

    return "IBI_SIM_MSG_TAG_TYPE_MT_READ";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_SIM_PB_SIM_PHONEBOOK_CACHE_STARTED";
  }

  if (a1 == 1)
  {
    return "IBI_SIM_PB_SIM_PHONEBOOK_CACHE_FINISHED";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 > 63)
  {
    if (a1 > 511)
    {
      switch(a1)
      {
        case 512:
          return "IBI_SIM_PB_LOCATION_MBDN_PHONEBOOK";
        case 1024:
          return "IBI_SIM_PB_LOCATION_CPHS_MBOX_PHONEBOOK";
        case 2048:
          return "IBI_SIM_PB_LOCATION_CPHS_INFNUM_PHONEBOOK";
      }
    }

    else
    {
      switch(a1)
      {
        case 64:
          return "IBI_SIM_PB_LOCATION_GLOBAL_USIM_PHONEBOOK";
        case 128:
          return "IBI_SIM_PB_LOCATION_LOCAL_USIM_PHONEBOOK";
        case 256:
          return "IBI_SIM_PB_LOCATION_ECC_PHONEBOOK";
      }
    }
  }

  else if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return "IBI_SIM_PB_LOCATION_SDN_PHONEBOOK";
      case 16:
        return "IBI_SIM_PB_LOCATION_MSISDN_PHONEBOOK";
      case 32:
        return "IBI_SIM_PB_LOCATION_BDN_PHONEBOOK";
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        return "IBI_SIM_PB_LOCATION_ADN_PHONEBOOK";
      case 2:
        return "IBI_SIM_PB_LOCATION_FDN_PHONEBOOK";
      case 4:
        return "IBI_SIM_PB_LOCATION_LND_PHONEBOOK";
    }
  }

  return "???";
}

{
  if (a1 > 7)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        return "IBI_SIM_PB_VALID_FLAG_URI";
      }

      if (a1 == 255)
      {
        return "IBI_SIM_PB_VALID_FLAG_ALL";
      }
    }

    else
    {
      if (a1 == 8)
      {
        return "IBI_SIM_PB_VALID_FLAG_SNE";
      }

      if (a1 == 16)
      {
        return "IBI_SIM_PB_VALID_FLAG_EMAIL";
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      return "IBI_SIM_PB_VALID_FLAG_GRP";
    }

    if (a1 == 4)
    {
      return "IBI_SIM_PB_VALID_FLAG_ANR";
    }
  }

  else
  {
    if (!a1)
    {
      return "IBI_SIM_PB_VALID_FLAG_NONE";
    }

    if (a1 == 1)
    {
      return "IBI_SIM_PB_VALID_FLAG_PBC";
    }
  }

  return "???";
}

{
  if (a1 <= 16)
  {
    if (a1 <= 3)
    {
      if (a1 <= 1)
      {
        if (!a1)
        {
          return "IBI_SIM_PIN_NO_KEY";
        }

        if (a1 == 1)
        {
          return "IBI_SIM_PIN1_APP1_KEY";
        }

        return "???";
      }

      if (a1 == 2)
      {
        return "IBI_SIM_PIN1_APP2_KEY";
      }

      else
      {
        return "IBI_SIM_PIN1_APP3_KEY";
      }
    }

    else
    {
      if (a1 > 5)
      {
        switch(a1)
        {
          case 6:
            return "IBI_SIM_PIN1_APP6_KEY";
          case 7:
            return "IBI_SIM_PIN1_APP7_KEY";
          case 8:
            return "IBI_SIM_PIN1_APP8_KEY";
        }

        return "???";
      }

      if (a1 == 4)
      {
        return "IBI_SIM_PIN1_APP4_KEY";
      }

      else
      {
        return "IBI_SIM_PIN1_APP5_KEY";
      }
    }
  }

  else
  {
    if (a1 <= 132)
    {
      if (a1 > 129)
      {
        if (a1 == 130)
        {
          return "IBI_SIM_PIN2_APP2_KEY";
        }

        if (a1 == 131)
        {
          return "IBI_SIM_PIN2_APP3_KEY";
        }

        return "IBI_SIM_PIN2_APP4_KEY";
      }

      if (a1 == 17)
      {
        return "IBI_SIM_UNIVERSAL_PIN_KEY";
      }

      if (a1 == 129)
      {
        return "IBI_SIM_PIN2_APP1_KEY";
      }

      return "???";
    }

    if (a1 > 134)
    {
      switch(a1)
      {
        case 135:
          return "IBI_SIM_PIN2_APP7_KEY";
        case 136:
          return "IBI_SIM_PIN2_APP8_KEY";
        case 137:
          return "IBI_SIM_ADM_PIN_KEY";
      }

      return "???";
    }

    if (a1 == 133)
    {
      return "IBI_SIM_PIN2_APP5_KEY";
    }

    else
    {
      return "IBI_SIM_PIN2_APP6_KEY";
    }
  }
}

{
  if ((a1 - 2) > 2)
  {
    return "???";
  }

  else
  {
    return off_29EDF71C0[a1 - 2];
  }
}

{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "IBI_SIM_TK_CALL_CONTROL_RESULT_ALLOWED";
    }

    if (a1 == 1)
    {
      return "IBI_SIM_TK_CALL_CONTROL_RESULT_NOT_ALLOWED";
    }
  }

  else
  {
    switch(a1)
    {
      case 255:
        return "IBI_SIM_TK_CALL_CONTROL_RESULT_SIM_ERROR";
      case 254:
        return "IBI_SIM_TK_CALL_CONTROL_RESULT_TOOLKIT_BUSY";
      case 2:
        return "IBI_SIM_TK_CALL_CONTROL_RESULT_ALLOWED_MODIFIED";
    }
  }

  return "???";
}

{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "IBI_SIM_TK_SETUP_CALL_IF_NOT_BUSY_ON_ANOTHER_CALL";
      case 1:
        return "IBI_SIM_TK_SETUP_CALL_IF_NOT_BUSY_ON_ANOTHER_CALL_WITH_REDIAL";
      case 2:
        return "IBI_SIM_TK_SETUP_CALL_PUT_ALL_OTHER_CALLS_ON_HOLD";
    }

    return "???";
  }

  if (a1 > 4)
  {
    if (a1 == 255)
    {
      return "IBI_SIM_TK_SETUP_CALL_RESERVED";
    }

    if (a1 == 5)
    {
      return "IBI_SIM_TK_SETUP_CALL_DISCONNECT_ALL_OTHER_CALLS_WITH_REDIAL";
    }

    return "???";
  }

  if (a1 == 3)
  {
    return "IBI_SIM_TK_SETUP_CALL_PUT_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL";
  }

  else
  {
    return "IBI_SIM_TK_SETUP_CALL_DISCONNECT_ALL_OTHER_CALLS";
  }
}

{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_LANGUAGE_SELECTION";
        case 10:
          return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_IMS_REGISTRATION";
        case 255:
          return "IBI_SIM_TK_ENVELOPE_TYPE_INVALID";
      }

      return "???";
    }

    if (a1 == 6)
    {
      return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_LOCATION_STATUS";
    }

    else if (a1 == 7)
    {
      return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_USER_ACTIVITY";
    }

    else
    {
      return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_IDLE_SCREEN_AVAILABLE";
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return "IBI_SIM_TK_ENVELOPE_TYPE_MENU_SELECTION";
        case 1:
          return "IBI_SIM_TK_ENVELOPE_TYPE_CALL_CONTROL";
        case 2:
          return "IBI_SIM_TK_ENVELOPE_TYPE_MO_SMS_CONTROL";
      }

      return "???";
    }

    if (a1 == 3)
    {
      return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_MT_CALL";
    }

    else if (a1 == 4)
    {
      return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_CALL_CONNECTED";
    }

    else
    {
      return "IBI_SIM_TK_ENVELOPE_TYPE_EVENT_DOWNLOAD_CALL_DISCONNECTED";
    }
  }
}

{
  if (a1 > 13054)
  {
    if (a1 > 14593)
    {
      if (a1 > 15358)
      {
        if (a1 != 15359)
        {
          if (a1 == 0xFFFF)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_INVALID_PROACTIVE_CAUSE";
          }

          return "???";
        }

        return "IBI_SIM_TK_PROACTIVE_CAUSE_ACCESS_TECHNOLOGY_CANNOT_PROCESS_COMMAND";
      }

      else
      {
        switch(a1)
        {
          case 14848:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR";
            break;
          case 14849:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_NO_CHANNEL_AVAILABLE";
            break;
          case 14850:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_CHANNEL_CLOSED";
            break;
          case 14851:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_CHANNEL_IDENTIFIER_NOT_VALID";
            break;
          case 14852:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_REQUESTED_BUFFER_SIZE_NOT_AVAILABLE";
            break;
          case 14853:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_SECURITY_ERROR";
            break;
          case 14854:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_TRANSPORT_LEVEL_NOT_AVAILABLE";
            break;
          case 14855:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_REMOTE_DEVICE_NOT_REACHABLE";
            break;
          case 14856:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_SERVICE_ERROR";
            break;
          case 14857:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_SERVICE_IDENTIFIER_UNKNOWN";
            break;
          case 14858:
          case 14859:
          case 14860:
          case 14861:
          case 14862:
          case 14863:
          case 14865:
          case 14866:
            return "???";
          case 14864:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_PORT_NOT_AVAILABLE";
            break;
          case 14867:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_CHANNEL_EST_ERR_PERMANENT";
            break;
          case 14868:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_IPv4_ONLY_ALLOWED";
            break;
          case 14869:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_IPv6_ONLY_ALLOWED";
            break;
          case 14870:
            result = "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_ERROR_IPv6_NOT_ALLOWED";
            break;
          default:
            if (a1 != 14594)
            {
              return "???";
            }

            result = "IBI_SIM_TK_PROACTIVE_CAUSE_CALL_CONTROL_MO_SMS_CONTROL_PERMANENT_PROBLEM_TYPE_OF_REQUEST_CHANGED";
            break;
        }
      }
    }

    else if (a1 > 14338)
    {
      if (a1 <= 14342)
      {
        if (a1 > 14340)
        {
          if (a1 == 14341)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_C_APDU_FORMAT_ERROR";
          }

          else
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_MUTE_CARD";
          }
        }

        else if (a1 == 14339)
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_CARD_READER_BUSY";
        }

        else
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_CARD_POWERED_OFF";
        }
      }

      else if (a1 <= 14344)
      {
        if (a1 == 14343)
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_TRANSMISSION_ERROR";
        }

        else
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_PROTOCOL_NOT_SUPPORTED";
        }
      }

      else
      {
        switch(a1)
        {
          case 14345:
            return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_SPECIFIED_READER_NOT_VALID";
          case 14592:
            return "IBI_SIM_TK_PROACTIVE_CAUSE_CALL_CONTROL_MO_SMS_CONTROL_PERMANENT_PROBLEM";
          case 14593:
            return "IBI_SIM_TK_PROACTIVE_CAUSE_CALL_CONTROL_MO_SMS_CONTROL_PERMANENT_PROBLEM_ACTION_NOT_ALLOWED";
          default:
            return "???";
        }
      }
    }

    else if (a1 <= 14078)
    {
      if (a1 > 13311)
      {
        if (a1 != 13312)
        {
          if (a1 == 13568)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_SMS_RP_ERROR";
          }

          return "???";
        }

        return "IBI_SIM_TK_PROACTIVE_CAUSE_SS_RETURN_ERROR";
      }

      else
      {
        if (a1 != 13055)
        {
          if (a1 == 13311)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_NUMBER_NOT_KNOWN_BY_ME";
          }

          return "???";
        }

        return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_DATA_NOT_UNDERSTOOD_BY_ME";
      }
    }

    else if (a1 <= 14335)
    {
      if (a1 != 14079)
      {
        if (a1 == 14080)
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_USSD_RETURN_ERROR";
        }

        return "???";
      }

      return "IBI_SIM_TK_PROACTIVE_CAUSE_REQUIRED_VALUES_ARE_MISSING";
    }

    else if (a1 == 14336)
    {
      return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR";
    }

    else if (a1 == 14337)
    {
      return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_CARD_READER_REMOVED_OR_NOT_PRESENT";
    }

    else
    {
      return "IBI_SIM_TK_PROACTIVE_CAUSE_MULTIPLE_CARD_COMMANDS_ERROR_CARD_REMOVED_OR_NOT_PRESENT";
    }
  }

  else if (a1 > 8196)
  {
    if (a1 > 9470)
    {
      if (a1 <= 9729)
      {
        if (a1 > 9727)
        {
          if (a1 == 9728)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_LAUNCH_BROWSER_ERROR";
          }

          else
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_LAUNCH_BROWSER_BEARER_UNAVAILABLE";
          }
        }

        else
        {
          if (a1 != 9471)
          {
            if (a1 == 9727)
            {
              return "IBI_SIM_TK_PROACTIVE_CAUSE_INTERACTION_WITH_CALL_CONTROL_BY_SIM_TEMPORARY_PROBLEM";
            }

            return "???";
          }

          return "IBI_SIM_TK_PROACTIVE_CAUSE_ACTION_IN_CONTRADICTION_WITH_THE_CURRENT_TIMER_STATE";
        }
      }

      else if (a1 <= 10239)
      {
        if (a1 != 9730)
        {
          if (a1 == 9731)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_LAUNCH_BROWSER_ME_UNABLE_TO_READ_PROVISIONING_DATA";
          }

          return "???";
        }

        return "IBI_SIM_TK_PROACTIVE_CAUSE_LAUNCH_BROWSER_BROWSER_UNAVAILABLE";
      }

      else
      {
        switch(a1)
        {
          case 10240:
            return "IBI_SIM_TK_PROACTIVE_CAUSE_BEARER_INDEPENDENT_PROTOCOL_TEMPORARY_ERROR";
          case 12543:
            return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_BEYOND_CAPABILITY";
          case 12799:
            return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_TYPE_NOT_UNDERSTOOD_BY_ME";
          default:
            return "???";
        }
      }
    }

    else if (a1 <= 8200)
    {
      if (a1 > 8198)
      {
        if (a1 == 8199)
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_NOT_IN_SPEECH_CALL";
        }

        else
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_BUSY_ON_USSD_TRANSACTION";
        }
      }

      else if (a1 == 8197)
      {
        return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_ACCESS_CONTROL_CLASS_BAR";
      }

      else
      {
        return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_RADIO_RESOURCE_NOT_GRANTED";
      }
    }

    else if (a1 <= 8447)
    {
      if (a1 != 8201)
      {
        if (a1 == 8202)
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_NO_NAA_ACTIVE";
        }

        return "???";
      }

      return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_BUSY_ON_SEND_DTMF_COMMAND";
    }

    else
    {
      switch(a1)
      {
        case 8448:
          return "IBI_SIM_TK_PROACTIVE_CAUSE_NETWORK_CURRENTLY_UNABLE_TO_PROCESS_COMMAND";
        case 8959:
          return "IBI_SIM_TK_PROACTIVE_CAUSE_USER_DID_NOT_ACCEPT_CALL_SETUP_REQUEST";
        case 9215:
          return "IBI_SIM_TK_PROACTIVE_CAUSE_USER_CLEARED_DOWN_CALL_BEFORE_CONNECTION_OR_NETWORK_RELEASE";
        default:
          return "???";
      }
    }
  }

  else if (a1 > 4606)
  {
    if (a1 < 0x2000)
    {
      if (a1 > 5118)
      {
        if (a1 != 5119)
        {
          if (a1 == 5375)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_USSD_OR_SS_TRANSACTION_TERMINATED_BY_USER";
          }

          return "???";
        }

        return "IBI_SIM_TK_PROACTIVE_CAUSE_HELP_INFO";
      }

      else
      {
        if (a1 != 4607)
        {
          if (a1 == 4863)
          {
            return "IBI_SIM_TK_PROACTIVE_CAUSE_NO_RESPONSE";
          }

          return "???";
        }

        return "IBI_SIM_TK_PROACTIVE_CAUSE_BACKWARD_MOVE";
      }
    }

    else if (a1 <= 8193)
    {
      if (a1 == 0x2000)
      {
        return "IBI_SIM_TK_PROACTIVE_CAUSE_CURRENTLY_UNABLE";
      }

      else
      {
        return "IBI_SIM_TK_PROACTIVE_CAUSE_SCREEN_BUSY";
      }
    }

    else if (a1 == 8194)
    {
      return "IBI_SIM_TK_PROACTIVE_CAUSE_BUSY_ON_CALL";
    }

    else if (a1 == 8195)
    {
      return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_BUSY_ON_SS_TRANSACTION";
    }

    else
    {
      return "IBI_SIM_TK_PROACTIVE_CAUSE_ME_CURRENTLY_UNABLE_NO_SERVICE";
    }
  }

  else if (a1 <= 1278)
  {
    if (a1 > 766)
    {
      if (a1 != 767)
      {
        if (a1 == 1023)
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_REFRESH_PERFORMED_WITH_ADDITIONAL_EFS_READ";
        }

        return "???";
      }

      return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_PERFORMED_WITH_MISSING_INFORMATION";
    }

    else
    {
      if (a1 != 255)
      {
        if (a1 == 511)
        {
          return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_PERFORMED_WITH_PARTIAL_COMPREHENSION";
        }

        return "???";
      }

      return "IBI_SIM_TK_PROACTIVE_CAUSE_SUCCESSFUL";
    }
  }

  else if (a1 <= 1790)
  {
    if (a1 != 1279)
    {
      if (a1 == 1535)
      {
        return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_PERFORMED_BUT_MODIFIED_BY_CALL_CONTROL_BY_SIM";
      }

      return "???";
    }

    return "IBI_SIM_TK_PROACTIVE_CAUSE_SUCCESSFUL_BUT_ICON_NOT_DISPLAYED";
  }

  else
  {
    switch(a1)
    {
      case 1791:
        return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_PERFORMED_SUCCESSFULLY_LIMITED_SERVICE";
      case 2047:
        return "IBI_SIM_TK_PROACTIVE_CAUSE_COMMAND_PERFORMED_WITH_MODIFICATION";
      case 4351:
        return "IBI_SIM_TK_PROACTIVE_CAUSE_TERMINATE_BY_USER";
      default:
        return "???";
    }
  }

  return result;
}

{
  result = "IBI_SIM_TK_COMMAND_TYPE_CLOSE_CHANNEL";
  switch(a1)
  {
    case 0:
      result = "IBI_SIM_TK_COMMAND_TYPE_INVALID_COMMAND";
      break;
    case 1:
      result = "IBI_SIM_TK_COMMAND_TYPE_SETUP_EVENT_LIST";
      break;
    case 2:
      result = "IBI_SIM_TK_COMMAND_TYPE_SETUP_CALL";
      break;
    case 3:
      result = "IBI_SIM_TK_COMMAND_TYPE_SEND_SS";
      break;
    case 4:
      result = "IBI_SIM_TK_COMMAND_TYPE_SEND_USSD";
      break;
    case 5:
      result = "IBI_SIM_TK_COMMAND_TYPE_SEND_SMS";
      break;
    case 6:
      result = "IBI_SIM_TK_COMMAND_TYPE_SEND_DTMF";
      break;
    case 7:
      result = "IBI_SIM_TK_COMMAND_TYPE_PLAY_TONE";
      break;
    case 8:
      result = "IBI_SIM_TK_COMMAND_TYPE_DISPLAY_TEXT";
      break;
    case 9:
      result = "IBI_SIM_TK_COMMAND_TYPE_GET_INKEY";
      break;
    case 10:
      result = "IBI_SIM_TK_COMMAND_TYPE_GET_INPUT";
      break;
    case 11:
      result = "IBI_SIM_TK_COMMAND_TYPE_SELECT_ITEM";
      break;
    case 12:
      result = "IBI_SIM_TK_COMMAND_TYPE_SETUP_MENU";
      break;
    case 13:
      result = "IBI_SIM_TK_COMMAND_TYPE_SEND_PROVIDE_LOCAL_INFO";
      break;
    case 14:
      result = "IBI_SIM_TK_COMMAND_TYPE_SETUP_IDLE_MODE_TEXT";
      break;
    case 15:
      result = "IBI_SIM_TK_COMMAND_TYPE_LANGUAGE_NOTIFICATION";
      break;
    case 16:
      result = "IBI_SIM_TK_COMMAND_TYPE_RUN_AT_CMD";
      break;
    case 17:
      result = "IBI_SIM_TK_COMMAND_TYPE_OPEN_CHANNEL";
      break;
    case 18:
      return result;
    case 19:
      result = "IBI_SIM_TK_COMMAND_TYPE_RECEIVE_DATA";
      break;
    case 20:
      result = "IBI_SIM_TK_COMMAND_TYPE_SEND_DATA";
      break;
    default:
      if (a1 == 255)
      {
        result = "IBI_SIM_TK_COMMAND_TYPE_UNKNOWN_CMD";
      }

      else
      {
        result = "???";
      }

      break;
  }

  return result;
}

{
  v1 = "???";
  if (a1 == 3)
  {
    v1 = "IBI_SIM_TK_PROVIDE_LOCAL_INFO_TIME_ZONE";
  }

  if (a1 == 4)
  {
    return "IBI_SIM_TK_PROVIDE_LOCAL_INFO_LANGUAGE_SETTING";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SIM_TRAY_PRESENT";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SIM_TRAY_ABSENT";
  }
}

{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "VINYL_CAP_NOT_CAPABLE";
    }

    if (a1 == 1)
    {
      return "VINYL_CAP_TAPE_CAPABLE";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "VINYL_CAP_HYDRA_CAPABLE";
      case 3:
        return "VINYL_CAP_VIRTUAL_HYDRA_CAPABLE";
      case 255:
        return "VINYL_CAP_INVALID";
    }
  }

  return "???";
}

{
  if ((a1 - 1) > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF7658[a1 - 1];
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_SMS_MSG_WAIT_VOICE_MAIL";
  }

  if (a1 == 1)
  {
    return "IBI_SMS_MSG_WAIT_MAX";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 <= 126)
  {
    if (a1 > 40)
    {
      if (a1 > 94)
      {
        if (a1 <= 97)
        {
          if (a1 == 95)
          {
            return "IBI_SMS_SEMANT_INCORRECT_MSG";
          }

          if (a1 == 96)
          {
            return "IBI_SMS_INVALID_MANDATORY_INFO";
          }

          return "IBI_SMS_MSG_TYPE_NON_EXISTENT";
        }

        switch(a1)
        {
          case 'b':
            return "IBI_SMS_MSG_NOT_COMPATIBLE";
          case 'c':
            return "IBI_SMS_IE_NON_EXISTENT";
          case 'o':
            return "IBI_SMS_PROTOCOLL_ERROR";
        }
      }

      else if (a1 > 49)
      {
        switch(a1)
        {
          case '2':
            return "IBI_SMS_FACILITY_NOT_SUBSCRIBED";
          case 'E':
            return "IBI_SMS_REQ_FACILITY_NON_IMPL";
          case 'Q':
            return "IBI_SMS_INVALID_REFERENCE_VALUE";
        }
      }

      else
      {
        switch(a1)
        {
          case ')':
            return "IBI_SMS_TEMPORARY_FAILURE";
          case '*':
            return "IBI_SMS_CONGESTION";
          case '/':
            return "IBI_SMS_RESOURCES_UNAVAILABLE";
        }
      }
    }

    else if (a1 > 21)
    {
      if (a1 > 28)
      {
        switch(a1)
        {
          case 29:
            return "IBI_SMS_FACILITY_REJECTED";
          case 30:
            return "IBI_SMS_UNKNOWN_SUBSCRIBER";
          case 38:
            return "IBI_SMS_NETWORK_OUT_OF_ORDER";
        }
      }

      else
      {
        switch(a1)
        {
          case 22:
            return "IBI_SMS_MEMORY_CAPACITY_EXCEEDED";
          case 27:
            return "IBI_SMS_DEST_OUT_OF_SERVICE";
          case 28:
            return "IBI_SMS_UNIDENTIFIED_SUBSCRIBER";
        }
      }
    }

    else if (a1 > 15)
    {
      switch(a1)
      {
        case 16:
          return "IBI_SMS_NORMAL_CALL_CLEARING";
        case 17:
          return "IBI_SMS_CP_NETWORK_FAILURE";
        case 21:
          return "IBI_SMS_TRANSFER_REJECTED";
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          return "IBI_SMS_UNASSIGNED_NUMBER";
        case 8:
          return "IBI_SMS_OP_DETERMINED_BARRING";
        case 10:
          return "IBI_SMS_CALL_BARRED";
      }
    }

    return "???";
  }

  v1 = a1 - 287;
  result = "IBI_SMS_ABNORMAL_RELEASE_CHANNEL_UNACCEPTABLE";
  switch(v1)
  {
    case 0:
      return "IBI_SMS_NETWORK_FAILURE_UNSPECIFIED";
    case 1:
      return "IBI_SMS_NO_SERVICE";
    case 2:
      return "IBI_SMS_MS_ACCESS_CLASS_BARRED";
    case 3:
      return "IBI_SMS_NETWORK_NO_RESOURCE";
    case 4:
      return "IBI_SMS_SERVICE_BUSY";
    case 5:
      return "IBI_SMS_MS_FAILURE_UNSPECIFIED";
    case 6:
    case 7:
    case 8:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
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
    case 84:
    case 85:
    case 111:
    case 113:
    case 115:
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
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
      return "???";
    case 9:
      return "IBI_SMS_DUAL_SIM_RADIO_CONFLICT";
    case 10:
      return "IBI_SMS_NO_CARRIER_DUAL_SIM_CONFLICT";
    case 11:
      return "IBI_SMS_SERV_NOT_ALLOWED_IN_UE_OP_MODE";
    case 12:
      return "IBI_SMS_FAILURE_CAUSE_RSRVCC";
    case 53:
      return "IBI_SMS_SAPI3_RELEASE";
    case 54:
      return "IBI_SMS_LOWER_LAYER_FAILURE";
    case 55:
      return "IBI_SMS_MS_AUTH_FAILURE";
    case 56:
      return "IBI_SMS_PS_REJECT";
    case 57:
      return "IBI_SMS_SERVICE_REJECTED";
    case 58:
      return "IBI_SMS_ABORT_BY_NETWORK";
    case 59:
      return "IBI_SMS_MS_TIMEOUT";
    case 60:
      return "IBI_SMS_MS_DETACH";
    case 61:
      return "IBI_SMS_RR_CONN_RELEASE";
    case 62:
      return "IBI_SMS_MS_NOT_REGISTERED";
    case 63:
      return "IBI_SMS_REEST_FAILURE";
    case 64:
      return "IBI_SMS_MS_HANDOVER";
    case 65:
      return "IBI_SMS_MS_LINK_ESTAB_FAILURE";
    case 66:
      return "IBI_SMS_MS_RA_FAILURE";
    case 67:
      return "IBI_SMS_MS_LINK_ABORTION";
    case 68:
      return "IBI_SMS_L1_FAILURE";
    case 69:
      return "IBI_SMS_IMM_ASS_REJECT";
    case 70:
      return "IBI_SMS_PAGING_PENDING";
    case 71:
      return "IBI_SMS_ABNORMAL_RELEASE_UNSPECIFIED";
    case 72:
      return result;
    case 73:
      return "IBI_SMS_ABNORMAL_RELEASE_TIMER_EXPIRED";
    case 74:
      return "IBI_SMS_ABNORMAL_RELEASE_NO_ACT_ON_RADIO_PATH";
    case 75:
      return "IBI_SMS_MS_PREEMPTIVE_RELEASE";
    case 76:
      return "IBI_SMS_UTRAN_CONFIGURATION_UNKNOWN";
    case 77:
      return "IBI_SMS_HANDOVER_IMPOSSIBLE";
    case 78:
      return "IBI_SMS_CHANNEL_MODE_UNACCEPTABLE";
    case 79:
      return "IBI_SMS_FREQUENCY_NOT_IMPLEMENTED";
    case 80:
      return "IBI_SMS_ORIGINATOR_TALKER_LEAVING_GROUP_CALL_AREA";
    case 81:
      return "IBI_SMS_LOWER_LAYER_FAILURE_FROM_NW";
    case 82:
      return "IBI_SMS_CALL_ALREADY_CLEARED";
    case 83:
      return "IBI_SMS_SEMANTICALLY_INCORRECT_MSG";
    case 86:
      return "IBI_SMS_MSG_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE";
    case 87:
      return "IBI_SMS_CONDITIONAL_IE_ERROR";
    case 88:
      return "IBI_SMS_NO_CELL_ALLOCATION_AVAILABLE";
    case 89:
      return "IBI_SMS_PROTOCOL_ERROR_UNSPECIFIED";
    case 90:
      return "IBI_SMS_MS_NORMAL_EVENT";
    case 91:
      return "IBI_SMS_MS_UNSPECIFIED";
    case 92:
      return "IBI_SMS_PRE_EMPTIVE_RELEASE";
    case 93:
      return "IBI_SMS_MS_CONGESTION";
    case 94:
      return "IBI_SMS_RE_ESTABLISHMENT_REJECT";
    case 95:
      return "IBI_SMS_DIRECTED_SIGCONN_RE_ESTABLISHMENT";
    case 96:
      return "IBI_SMS_USER_INACTIVITY";
    case 97:
      return "IBI_SMS_MS_CONN_REL_LOWER_LAYER_FAILURE_DL";
    case 98:
      return "IBI_SMS_MS_CONN_REL_LOWER_LAYER_FAILURE_UL";
    case 99:
      return "IBI_SMS_MS_CELL_BARRED";
    case 100:
      return "IBI_SMS_MS_SIGN_CONN_REL";
    case 101:
      return "IBI_SMS_NAS_TRIGGERED_ABORT";
    case 102:
      return "IBI_SMS_MS_RRC_CONN_ESTABLISHMENT_FAILURE";
    case 103:
      return "IBI_SMS_MS_CONN_REJECT_REDIRECTION";
    case 104:
      return "IBI_SMS_RESOURCE_CONFLICT";
    case 105:
      return "IBI_SMS_MS_L2_CAUSE_SEQUENCE_ERROR";
    case 106:
      return "IBI_SMS_MS_L2_CAUSE_T200_EXP_N200_PLUS_1_TIMES";
    case 107:
      return "IBI_SMS_MS_L2_CAUSE_UNSOLICITED_DM_RESP_MFES";
    case 108:
      return "IBI_SMS_MS_L2_CAUSE_CONTENTION_RESOLUTION";
    case 109:
      return "IBI_SMS_MS_L2_CAUSE_NORMAL_CAUSE";
    case 110:
      return "IBI_SMS_BAND_CHANGED";
    case 112:
      return "IBI_SMS_PLMN_NOT_MATCHING";
    case 114:
      return "IBI_SMS_HOFRMUTRAN_REVERT_BACK_SYNC_FAIL";
    case 116:
      return "IBI_SMS_RELEASE_OOSA";
    case 225:
      return "IBI_SMS_RP_ACK";
    case 226:
      return "IBI_SMS_TIMER_EXPIRED";
    case 227:
      return "IBI_SMS_FORW_AVAIL_FAILED";
    case 228:
      return "IBI_SMS_FORW_AVAIL_ABORTED";
    case 229:
      return "IBI_SMS_TP_INVALID_MTI";
    case 230:
      return "IBI_SMS_TP_SRF_NOT_IN_PHASE1";
    case 231:
      return "IBI_SMS_TP_RDF_NOT_IN_PHASE1";
    case 232:
      return "IBI_SMS_TP_RPF_NOT_IN_PHASE1";
    case 233:
      return "IBI_SMS_TP_UDHF_NOT_IN_PHASE1";
    case 234:
      return "IBI_SMS_TP_MISSING_VALIDITY_PERIOD";
    case 235:
      return "IBI_SMS_TP_INVALID_TIME_STAMP";
    case 236:
      return "IBI_SMS_TP_MISSING_DEST_ADDRESS";
    case 237:
      return "IBI_SMS_TP_INVALID_DEST_ADDRESS";
    case 238:
      return "IBI_SMS_TP_MISSING_SC_ADDRESS";
    case 239:
      return "IBI_SMS_TP_INVALID_SC_ADDRESS";
    case 240:
      return "IBI_SMS_TP_INVALID_ALPHABET";
    case 241:
      return "IBI_SMS_TP_INVALID_USER_DATA_LENGTH";
    case 242:
      return "IBI_SMS_TP_MISSING_USER_DATA";
    case 243:
      return "IBI_SMS_TP_USER_DATA_TOO_LARGE";
    case 244:
      return "IBI_SMS_TP_CMD_REQ_NOT_IN_PHASE1";
    case 245:
      return "IBI_SMS_TP_INVALID_DEST_ADDR_SPEC_CMDS";
    case 246:
      return "IBI_SMS_TP_INVALID_CMD_DATA_LENGTH";
    case 247:
      return "IBI_SMS_TP_MISSING_CMD_DATA";
    case 248:
      return "IBI_SMS_TP_INVALID_CMD_DATA_TYPE";
    case 249:
      return "IBI_SMS_TP_CREATION_OF_MNR_FAILED";
    case 250:
      return "IBI_SMS_TP_CREATION_OF_CMM_FAILED";
    case 251:
      return "IBI_SMS_TP_MT_CONNECTION_LOST";
    case 252:
      return "IBI_SMS_TP_PENDING_MO_SMS";
    case 253:
      return "IBI_SMS_REJ_BY_SMS_CONTROL";
    case 254:
      return "IBI_SMS_NO_ERROR";
    case 255:
      return "IBI_SMS_NO_ERROR_NO_ICON_DISPLAY";
    case 256:
      return "IBI_SMS_FDN_FAILED";
    case 257:
      return "IBI_SMS_FDN_SCA_FAILED";
    case 258:
      return "IBI_SMS_FDN_DA_FAILED";
    case 259:
      return "IBI_SMS_BDN_FAILED";
    case 260:
      return "IBI_SMS_PP_UNSPECIFIED";
    case 261:
      return "IBI_SMS_UNDEFINED_RESULT";
    default:
      if ("IBI_SMS_ABNORMAL_RELEASE_CHANNEL_UNACCEPTABLE" == 127)
      {
        result = "IBI_SMS_INTERWORKING";
      }

      else
      {
        if ("IBI_SMS_ABNORMAL_RELEASE_CHANNEL_UNACCEPTABLE" != 212)
        {
          return "???";
        }

        result = "IBI_SMS_SEND_RESULT_SIM_TOOLKIT_BUSY";
      }

      break;
  }

  return result;
}

{
  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return "IBI_SMS_SENT";
    }

    if (a1 != 7)
    {
      if (a1 == 255)
      {
        return "IBI_SMS_UNDEFINED_TPDU_STATUS";
      }

      return "???";
    }

    return "IBI_SMS_UNSENT";
  }

  else
  {
    if (!a1)
    {
      return "IBI_SMS_EMPTY";
    }

    if (a1 != 1)
    {
      if (a1 == 3)
      {
        return "IBI_SMS_UNREAD";
      }

      return "???";
    }

    return "IBI_SMS_READ";
  }
}

{
  if (a1 <= 37)
  {
    if (a1 > 17)
    {
      if (a1 == 18)
      {
        return "IBI_SMS_SIM_FULL";
      }

      if (a1 == 24)
      {
        return "IBI_SMS_UNDEFINED_STORAGE_RESULT";
      }
    }

    else
    {
      if (!a1)
      {
        return "IBI_SMS_STORAGE_SUCCESSFUL";
      }

      if (a1 == 16)
      {
        return "IBI_SMS_MEMORY_FULL";
      }
    }

    return "???";
  }

  if (a1 > 39)
  {
    if (a1 == 40)
    {
      return "IBI_SMS_SEND_RP_ERROR";
    }

    if (a1 == 47)
    {
      return "IBI_SMS_REJ_PROTOCOL_ERROR_UNSPECIFIED";
    }

    return "???";
  }

  if (a1 == 38)
  {
    return "IBI_SMS_BUSY";
  }

  else
  {
    return "IBI_SMS_SEND_RP_ACKNOWLEDGE";
  }
}

{
  if (a1 <= 174)
  {
    if (a1 <= 143)
    {
      if (a1 > 129)
      {
        if (a1 == 130)
        {
          return "IBI_SMS_TP_FCS_CANNOT_REPLACE_SM";
        }

        if (a1 == 143)
        {
          return "IBI_SMS_TP_FCS_UNSPEC_TP_PID_ERROR";
        }
      }

      else
      {
        if (a1 == 128)
        {
          return "IBI_SMS_TP_FCS_TELEMATIC_NOT_SUPPORTED";
        }

        if (a1 == 129)
        {
          return "IBI_SMS_TP_FCS_SM_TYPE_0_NOT_SUPPORTED";
        }
      }
    }

    else if (a1 <= 158)
    {
      if (a1 == 144)
      {
        return "IBI_SMS_TP_FCS_DCS_NOT_SUPPORTED";
      }

      if (a1 == 145)
      {
        return "IBI_SMS_TP_FCS_MSG_CLASS_NOT_SUPPORTED";
      }
    }

    else
    {
      switch(a1)
      {
        case 159:
          return "IBI_SMS_TP_FCS_UNSPEC_TP_DCS_ERROR";
        case 160:
          return "IBI_SMS_TP_FCS_CMD_NOT_ACTIONED";
        case 161:
          return "IBI_SMS_TP_FCS_CMD_NOT_SUPPORTED";
      }
    }

    return "???";
  }

  switch(a1)
  {
    case 175:
      return "IBI_SMS_TP_FCS_UNSPEC_TP_CMD_ERROR";
    case 176:
      return "IBI_SMS_TP_FCS_TPDU_NOT_SUPPORTED";
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
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
      return "???";
    case 192:
      return "IBI_SMS_TP_FCS_SC_BUSY";
    case 193:
      return "IBI_SMS_TP_FCS_NO_SC_SUBSCRIPTION";
    case 194:
      return "IBI_SMS_TP_FCS_SC_SYSTEM_FAILURE";
    case 195:
      return "IBI_SMS_TP_FCS_INVALID_SME_ADDRESS";
    case 196:
      return "IBI_SMS_TP_FCS_DEST_SME_BARRED";
    case 197:
      return "IBI_SMS_TP_FCS_SM_REJ_DUPL_SM";
    case 198:
      return "IBI_SMS_TP_FCS_TP_VPF_NOT_SUPPORTED";
    case 199:
      return "IBI_SMS_TP_FCS_TP_VP_NOT_SUPPORTED";
    case 208:
      return "IBI_SMS_TP_FCS_SIM_SMS_STORE_FULL";
    case 209:
      return "IBI_SMS_TP_FCS_NO_SMS_ON_SIM";
    case 210:
      return "IBI_SMS_TP_FCS_ERROR_IN_MS";
    case 211:
      return "IBI_SMS_TP_FCS_MEM_CAP_EXCEEDED";
    case 212:
      return "IBI_SMS_TP_FCS_TOOLKIT_BUSY";
    case 213:
      return "IBI_SMS_TP_FCS_DATADOWNLOAD_ERROR";
    default:
      if (a1 == 255)
      {
        result = "IBI_SMS_TP_FCS_UNSPECIFIED";
      }

      else
      {
        if (a1 != 256)
        {
          return "???";
        }

        result = "IBI_SMS_TP_FCS_NO_ERROR";
      }

      break;
  }

  return result;
}

{
  if (a1)
  {
    return "???";
  }

  else
  {
    return "IBI_SS_ADDRESS_TYPE_PHONE_NUMBER";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_SS_LCS_OPERATION_TYPE_SET";
  }

  if (a1 == 1)
  {
    return "IBI_SS_LCS_OPERATION_TYPE_GET";
  }

  else
  {
    return v1;
  }
}

{
  v1 = a1 - 1;
  result = "IBI_SS_LCS_POS_CAP_CP_LOCATION_REQUEST_SUPPORT";
  switch(v1)
  {
    case 0:
      result = "IBI_SS_LCS_POS_CAP_LCS_NOTIFICATION_MECHANISM_SUPPORT";
      break;
    case 1:
      result = "IBI_SS_LCS_POS_CAP_LPP_SUPPORT";
      break;
    case 2:
      result = "IBI_SS_LCS_POS_CAP_GPS_FTA_MEAS_SUPPORT";
      break;
    case 3:
      result = "IBI_SS_LCS_POS_CAP_CP_POSITIONING_SUPPORT";
      break;
    case 4:
      result = "IBI_SS_LCS_POS_CAP_LTE_OTDOA_SUPPORT";
      break;
    case 5:
      result = "IBI_SS_LCS_POS_CAP_LTE_OTDOA_MODE";
      break;
    case 6:
      result = "IBI_SS_LCS_POS_CAP_LTE_ECID_SUPPORT";
      break;
    case 7:
      result = "IBI_SS_LCS_POS_CAP_LTE_INTER_FREQ_OTDOA_SUPPORT";
      break;
    case 8:
      result = "IBI_SS_LCS_POS_CAP_LTE_SON_LOCATION_AGE_LIMIT";
      break;
    case 9:
      result = "IBI_SS_LCS_POS_CAP_LTE_SON_ACTIVE_POS_FLAG";
      break;
    case 10:
      result = "IBI_SS_LCS_POS_CAP_LTE_MDT_LOCATION_AGE_LIMIT";
      break;
    case 11:
      result = "IBI_SS_LCS_POS_CAP_LTE_MDT_LOCATION_RESPONSE_TIME";
      break;
    case 12:
      result = "IBI_SS_LCS_POS_CAP_LTE_MDT_ACTIVE_POS_FLAG";
      break;
    case 13:
      result = "IBI_SS_LCS_POS_CAP_LTE_MDT_UE_RX_TX_TIME_DIFF_MEAS_SUPPORT";
      break;
    case 14:
      result = "IBI_SS_LCS_POS_CAP_GPS_STABILITY_LIMIT_SUPPORT";
      break;
    case 15:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_GSM_GPS_SUPPORT";
      break;
    case 16:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_GSM_GLONASS_SUPPORT";
      break;
    case 17:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_GSM_BDS_SUPPORT";
      break;
    case 18:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_UMTS_GPS_SUPPORT";
      break;
    case 19:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_UMTS_GLONASS_SUPPORT";
      break;
    case 20:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_UMTS_BDS_SUPPORT";
      break;
    case 21:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_LTE_GPS_SUPPORT";
      break;
    case 22:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_LTE_GLONASS_SUPPORT";
      break;
    case 23:
      result = "IBI_SS_LCS_POS_CAP_GNSS_SYSTEM_LTE_BDS_SUPPORT";
      break;
    case 24:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_GSM_MS_ASSISTED_SUPPORT";
      break;
    case 25:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_GSM_MS_BASED_SUPPORT";
      break;
    case 26:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_GSM_MS_STANDALONE_SUPPORT";
      break;
    case 27:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_UMTS_MS_ASSISTED_SUPPORT";
      break;
    case 28:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_UMTS_MS_BASED_SUPPORT";
      break;
    case 29:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_UMTS_MS_STANDALONE_SUPPORT";
      break;
    case 30:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_LTE_MS_ASSISTED_SUPPORT";
      break;
    case 31:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_LTE_MS_BASED_SUPPORT";
      break;
    case 32:
      result = "IBI_SS_LCS_POS_CAP_GNSS_MODE_LTE_MS_STANDALONE_SUPPORT";
      break;
    case 33:
      result = "IBI_SS_LCS_POS_CAP_UMTS_UE_RX_TX_TIME_DIFF_TYPE_2_MEAS_SUPPORT";
      break;
    case 34:
      return result;
    case 35:
      result = "IBI_SS_LCS_POS_CAP_CP_MTLR_TIMEOUT_DURATION";
      break;
    case 36:
      result = "IBI_SS_LCS_POS_CAP_MDT_SON_LOCATION_SUPPORT";
      break;
    case 37:
      result = "IBI_SS_LCS_POS_CAP_GNSS_AD_COMMON";
      break;
    case 38:
      result = "IBI_SS_LCS_POS_CAP_GNSS_AD_GPS";
      break;
    case 39:
      result = "IBI_SS_LCS_POS_CAP_GNSS_AD_GLONASS";
      break;
    case 40:
      result = "IBI_SS_LCS_POS_CAP_GNSS_AD_BDS";
      break;
    case 41:
      result = "IBI_SS_LCS_POS_CAP_GNSS_VEL_TYPES_SUPPORT";
      break;
    case 42:
      result = "IBI_SS_LCS_POS_CAP_GNSS_LOC_TYPES_SUPPORT";
      break;
    case 43:
      result = "IBI_SS_LCS_POS_CAP_LPP_WLAN_MEAS_SUPPORTED";
      break;
    case 44:
      result = "IBI_SS_LCS_POS_CAP_LPP_WLAN_RSSI_MEAS_SUPPORTED";
      break;
    case 45:
      result = "IBI_SS_LCS_POS_CAP_LPP_LOCATION_SOURCE_SUPPORTED";
      break;
    case 46:
    case 47:
      goto LABEL_5;
    case 48:
      result = "IBI_SS_LCS_POS_CAP_NR_ECID_SUPPORT";
      break;
    default:
      if ("IBI_SS_LCS_POS_CAP_CP_LOCATION_REQUEST_SUPPORT" == 0xFFFF)
      {
        result = "IBI_SS_LCS_POS_CAP_INVALID";
      }

      else
      {
LABEL_5:
        result = "???";
      }

      break;
  }

  return result;
}

{
  if (a1 <= 7)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return "IBI_SS_LCS_SHAPE_TYPE_POINT_UNCERTAIN_ELLIPSE";
      }

      if (a1 == 5)
      {
        return "IBI_SS_LCS_SHAPE_TYPE_POLYGON";
      }
    }

    else
    {
      if (!a1)
      {
        return "IBI_SS_LCS_SHAPE_TYPE_ELLIPSOID_POINT";
      }

      if (a1 == 1)
      {
        return "IBI_SS_LCS_SHAPE_TYPE_POINT_UNCERTAIN_CIRCLE";
      }
    }

    return "???";
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      return "IBI_SS_LCS_SHAPE_TYPE_ELLIPSOID_ARC";
    }

    if (a1 == 255)
    {
      return "IBI_SS_LCS_SHAPE_TYPE_NO_LOCATION";
    }

    return "???";
  }

  if (a1 == 8)
  {
    return "IBI_SS_LCS_SHAPE_TYPE_POINT_ALTITUDE";
  }

  else
  {
    return "IBI_SS_LCS_SHAPE_TYPE_POINT_ALTITUDE_UNCERTAIN_ELLIPSOID";
  }
}

{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "IBI_SS_LCS_VELOCITY_TYPE_HORIZONTAL_VELOCITY";
    }

    if (a1 == 1)
    {
      return "IBI_SS_LCS_VELOCITY_TYPE_HORIZONTAL_WITH_VERTICAL_VELOCITY";
    }
  }

  else
  {
    switch(a1)
    {
      case 255:
        return "IBI_SS_LCS_VELOCITY_TYPE_INVALID";
      case 3:
        return "IBI_SS_LCS_VELOCITY_TYPE_HORIZONTAL_WITH_VERTICAL_VELOCITY_AND_UNCERTAINTY";
      case 2:
        return "IBI_SS_LCS_VELOCITY_TYPE_HORIZONTAL_VELOCITY_WITH_UNCERTAINTY";
    }
  }

  return "???";
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_SS_LCS_VERIFY_RSP_TYPE_GRANTED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_SS_LCS_VERIFY_RSP_TYPE_DENIED";
  }
}

{
  if (a1 > 94)
  {
    if (a1 > 98)
    {
      if (a1 > 100)
      {
        if (a1 == 101)
        {
          return "IBI_SS_MM_MESSAGE_NOT_COMPATIBLE_WITH_THE_PROTOCOL_STATE";
        }

        else if (a1 == 111)
        {
          return "IBI_SS_MM_PROTOCOL_ERROR_UNSPECIFIED";
        }

        else
        {
          return "???";
        }
      }

      else if (a1 == 99)
      {
        return "IBI_SS_MM_INFO_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED";
      }

      else
      {
        return "IBI_SS_MM_CONDITIONAL_IE_ERROR";
      }
    }

    else if (a1 > 96)
    {
      if (a1 == 97)
      {
        return "IBI_SS_MM_MSG_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED";
      }

      else
      {
        return "IBI_SS_MM_MSG_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STACK";
      }
    }

    else if (a1 == 95)
    {
      return "IBI_SS_MM_SEMANTICALLY_INCORRECT_MESSAGE";
    }

    else
    {
      return "IBI_SS_MM_INVALID_MANDATORY_INFORMATION";
    }
  }

  else
  {
    result = "IBI_SS_MM_CALL_CANNOT_BE_IDENTIFIED";
    switch(a1)
    {
      case 0:
        result = "IBI_SS_MM_NO_CAUSE";
        break;
      case 2:
        result = "IBI_SS_MM_IMSI_UNKNOWN_IN_HLR";
        break;
      case 3:
        result = "IBI_SS_MM_ILLEGAL_MS";
        break;
      case 4:
        result = "IBI_SS_MM_IMSI_UNKNOWN_IN_VLR";
        break;
      case 5:
        result = "IBI_SS_MM_IMEI_NOT_ACCEPTED";
        break;
      case 6:
        result = "IBI_SS_MM_ILLEGAL_ME";
        break;
      case 7:
        result = "IBI_SS_MM_GPRS_NOT_ALLOWED";
        break;
      case 8:
        result = "IBI_SS_MM_GPRS_GSM_NOT_ALLOWED";
        break;
      case 9:
        result = "IBI_SS_MM_MS_IDENT_UNKNOWN";
        break;
      case 10:
        result = "IBI_SS_MM_IMP_DETACHED";
        break;
      case 11:
        result = "IBI_SS_MM_PLMN_NOT_ALLOWED";
        break;
      case 12:
        result = "IBI_SS_MM_LOCATION_AREA_NOT_ALLOWED";
        break;
      case 13:
        result = "IBI_SS_MM_ROAMING_NOT_ALLOWED_IN_THIS_LOCATION_AREA";
        break;
      case 14:
        result = "IBI_SS_MM_GPRS_PLMN_NOT_ALLOWED";
        break;
      case 15:
        result = "IBI_SS_MM_NO_SUITABLE_CELLS_IN_LOCATION_AREA";
        break;
      case 16:
        result = "IBI_SS_MSC_NOT_REACHABLE";
        break;
      case 17:
        result = "IBI_SS_MM_NETWORK_FAILURE";
        break;
      case 20:
        result = "IBI_SS_MM_MAC_FAILURE";
        break;
      case 21:
        result = "IBI_SS_MM_SYNCH_FAILURE";
        break;
      case 22:
        result = "IBI_SS_MM_CONGESTION";
        break;
      case 23:
        result = "IBI_SS_MM_GSM_AUTHENTICATION_UNACCEPTABLE";
        break;
      case 32:
        result = "IBI_SS_MM_SERVICE_OPTION_NOT_SUPPORTED";
        break;
      case 33:
        result = "IBI_SS_MM_REQUESTED_SERVICE_OPTION_NOT_SUBSCRIBED";
        break;
      case 34:
        result = "IBI_SS_MM_SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER";
        break;
      case 38:
        return result;
      case 40:
        result = "IBI_SS_MM_NO_PDP_CONTEXT_AKTIV";
        break;
      case 48:
        result = "IBI_SS_MM_RETRY_ON_NEW_CELL_BEG";
        break;
      case 63:
        result = "IBI_SS_MM_RETRY_ON_NEW_CELL_END";
        break;
      default:
        return "???";
    }
  }

  return result;
}

{
  if (a1 > 70)
  {
    if (a1 > 123)
    {
      if (a1 <= 125)
      {
        if (a1 == 124)
        {
          return "IBI_SS_NET_ERROR_SPECIAL_SERVICE_CODE";
        }

        else
        {
          return "IBI_SS_NET_ERROR_INVALID_DEFLECTED_TO_NUMBER";
        }
      }

      switch(a1)
      {
        case 126:
          return "IBI_SS_NET_ERROR_MAX_NUMBER_OF_MPTY_PARTICIPANTS_EXCEEDED";
        case 127:
          return "IBI_SS_NET_ERROR_RESOURCES_NOT_AVAILABLE";
        case 255:
          return "IBI_SS_NET_ERROR_INTERNAL_SS_TIME_OUT";
      }
    }

    else
    {
      if (a1 > 120)
      {
        if (a1 == 121)
        {
          return "IBI_SS_NET_ERROR_REJECTED_BY_USER";
        }

        if (a1 == 122)
        {
          return "IBI_SS_NET_ERROR_REJECTED_BY_NETWORK";
        }

        return "IBI_SS_NET_ERROR_DEFLECTION_TO_SERVED_SUBSCRIBER";
      }

      if (a1 == 71)
      {
        return "IBI_SS_NET_ERROR_UNKNOWN_ALPHABET";
      }

      if (a1 == 72)
      {
        return "IBI_SS_NET_ERROR_USSD_BUSY";
      }
    }

    return "???";
  }

  result = "IBI_SS_NET_ERROR_ABSENT_SUBSCRIBER";
  switch(a1)
  {
    case 0:
      result = "IBI_SS_NET_ERROR_INTERNAL_SS_ERROR";
      break;
    case 1:
      result = "IBI_SS_NET_ERROR_UNKNOWN_SUBSCRIBER";
      break;
    case 9:
      result = "IBI_SS_NET_ERROR_ILLEGAL_SUBSCRIBER";
      break;
    case 10:
      result = "IBI_SS_NET_ERROR_BEARERSERVICE_NOT_PROVISIONED";
      break;
    case 11:
      result = "IBI_SS_NET_ERROR_TELESERVICE_NOT_PROVISIONED";
      break;
    case 12:
      result = "IBI_SS_NET_ERROR_ILLEGAL_EQUIPMENT";
      break;
    case 13:
      result = "IBI_SS_NET_ERROR_CALL_BARRED";
      break;
    case 16:
      result = "IBI_SS_NET_ERROR_ILLEGAL_SS_OPERATION";
      break;
    case 17:
      result = "IBI_SS_NET_ERROR_ERROR_STATUS";
      break;
    case 18:
      result = "IBI_SS_NET_ERROR_NOT_AVAILABLE";
      break;
    case 19:
      result = "IBI_SS_NET_ERROR_SUBSCRIPTION_VIOLATION";
      break;
    case 20:
      result = "IBI_SS_NET_ERROR_INCOMPATABILITY";
      break;
    case 21:
      result = "IBI_SS_NET_ERROR_FACILITY_NOT_SUPPORTED";
      break;
    case 27:
      return result;
    case 29:
      result = "IBI_SS_NET_ERROR_SHORT_TERM_DENIAL";
      break;
    case 30:
      result = "IBI_SS_NET_ERROR_LONG_TERM_DENIAL";
      break;
    case 34:
      result = "IBI_SS_NET_ERROR_SYSTEM_FAILURE";
      break;
    case 35:
      result = "IBI_SS_NET_ERROR_DATA_MISSING";
      break;
    case 36:
      result = "IBI_SS_NET_ERROR_UNEXPECTED_DATA_VALUE";
      break;
    case 37:
      result = "IBI_SS_NET_ERROR_PW_REGISTRATION_FAILURE";
      break;
    case 38:
      result = "IBI_SS_NET_ERROR_NEGATIVE_PW_CHECK";
      break;
    case 43:
      result = "IBI_SS_NET_ERROR_NUMBER_OF_PW_ATTEMPTS_VIOLATION";
      break;
    case 54:
      result = "IBI_SS_NET_ERROR_POS_METHOD_FAILURE";
      break;
    default:
      return "???";
  }

  return result;
}

{
  if (a1 > 126)
  {
    if (a1 > 340)
    {
      if (a1 <= 1000)
      {
        if (a1 > 345)
        {
          if (a1 == 346)
          {
            return "IBI_SS_GSM_ERROR_MS_TIMEOUT";
          }

          if (a1 == 383)
          {
            return "IBI_SS_GSM_ERROR_MS_USER_INACTIVITY";
          }
        }

        else
        {
          if (a1 == 341)
          {
            return "IBI_SS_GSM_ERROR_MS_LOWER_LAYER_FAILURE";
          }

          if (a1 == 344)
          {
            return "IBI_SS_GSM_ERROR_MS_SERVICE_REJECTED";
          }
        }
      }

      else
      {
        if (a1 <= 1002)
        {
          if (a1 == 1001)
          {
            return "IBI_SS_GSM_ERROR_SS_CHANGED_TO_USSD";
          }

          else
          {
            return "IBI_SS_GSM_ERROR_USSD_CHANGED_TO_SS";
          }
        }

        switch(a1)
        {
          case 0x3EB:
            return "IBI_SS_GSM_ERROR_USSD_CHANGED_TO_CALL";
          case 0x3EC:
            return "IBI_SS_GSM_ERROR_SS_CHANGED_TO_CALL";
          case 0xFFFF:
            return "IBI_SS_GSM_ERROR_UNKNOWN_ERROR";
        }
      }
    }

    else if (a1 <= 286)
    {
      if (a1 > 278)
      {
        if (a1 == 279)
        {
          return "IBI_SS_GSM_ERROR_FDN_FAILED";
        }

        if (a1 == 280)
        {
          return "IBI_SS_GSM_ERROR_BDN_FAILED";
        }
      }

      else
      {
        if (a1 == 127)
        {
          return "IBI_SS_GSM_ERROR_INTERWORKING";
        }

        if (a1 == 278)
        {
          return "IBI_SS_GSM_ERROR_REJ_BY_CALL_CONTROL";
        }
      }
    }

    else
    {
      if (a1 <= 288)
      {
        if (a1 == 287)
        {
          return "IBI_SS_GSM_ERROR_NW_FAILURE_UNSPECIFIED";
        }

        else
        {
          return "IBI_SS_GSM_ERROR_MS_NO_SERVICE";
        }
      }

      switch(a1)
      {
        case 289:
          return "IBI_SS_GSM_ERROR_MS_ACCESS_CLASS_BARRED";
        case 296:
          return "IBI_SS_GSM_ERROR_DUAL_SIM_RADIO_CONFLICT";
        case 297:
          return "IBI_SS_GSM_ERROR_DUAL_SIM_NO_SERVICE";
      }
    }

    return "???";
  }

  v1 = a1 - 1;
  result = "IBI_SS_GSM_ERROR_ACCESS_INFORMATION_DISCARDED";
  switch(v1)
  {
    case 0:
      result = "IBI_SS_GSM_ERROR_UNASSIGNED_NUMBER";
      break;
    case 2:
      result = "IBI_SS_GSM_ERROR_NO_ROUTE";
      break;
    case 5:
      result = "IBI_SS_GSM_ERROR_CHANNEL_UNACCEPTABLE";
      break;
    case 7:
      result = "IBI_SS_GSM_ERROR_OPERATOR_BARRING";
      break;
    case 15:
      result = "IBI_SS_GSM_ERROR_NORMAL_CALL_CLEARING";
      break;
    case 16:
      result = "IBI_SS_GSM_ERROR_USER_BUSY";
      break;
    case 17:
      result = "IBI_SS_GSM_ERROR_NO_USER_RESPONDING";
      break;
    case 18:
      result = "IBI_SS_GSM_ERROR_USER_ALERTING_NO_ANSWER";
      break;
    case 20:
      result = "IBI_SS_GSM_ERROR_CALL_REJECTED";
      break;
    case 21:
      result = "IBI_SS_GSM_ERROR_NUMBER_CHANGED";
      break;
    case 25:
      result = "IBI_SS_GSM_ERROR_NON_SELECTED_USER_CLEARING";
      break;
    case 26:
      result = "IBI_SS_GSM_ERROR_DESTINATION_OUT_OF_ORDER";
      break;
    case 27:
      result = "IBI_SS_GSM_ERROR_INVALID_NUMBER_FORMAT";
      break;
    case 28:
      result = "IBI_SS_GSM_ERROR_FACILITY_REJECTED";
      break;
    case 29:
      result = "IBI_SS_GSM_ERROR_RESPONSE_TO_STATUS_ENQUIRY";
      break;
    case 30:
      result = "IBI_SS_GSM_ERROR_NORMAL_UNSPECIFIED";
      break;
    case 33:
      result = "IBI_SS_GSM_ERROR_NO_CIRCUIT_AVAILABLE";
      break;
    case 37:
      result = "IBI_SS_GSM_ERROR_NETWORK_OUT_OF_ORDER";
      break;
    case 40:
      result = "IBI_SS_GSM_ERROR_TEMPORARY_FAILURE";
      break;
    case 41:
      result = "IBI_SS_GSM_ERROR_SWITCH_CONGESTION";
      break;
    case 42:
      return result;
    case 43:
      result = "IBI_SS_GSM_ERROR_REQUESTED_CIRCUIT_NOT_AVAILABLE";
      break;
    case 46:
      result = "IBI_SS_GSM_ERROR_RESOURCES_UNAVAILABLE";
      break;
    case 48:
      result = "IBI_SS_GSM_ERROR_QUALITY_UNAVAILABLE";
      break;
    case 49:
      result = "IBI_SS_GSM_ERROR_FACILITY_NOT_SUBSCRIBED";
      break;
    case 54:
      result = "IBI_SS_GSM_ERROR_INCOMING_CALLS_BARRED_IN_CUG";
      break;
    case 56:
      result = "IBI_SS_GSM_ERROR_BEARER_CAPABILITY_NOT_ALLOWED";
      break;
    case 57:
      result = "IBI_SS_GSM_ERROR_BEARER_CAPABILITY_NOT_AVAILABLE";
      break;
    case 62:
      result = "IBI_SS_GSM_ERROR_SERVICE_NOT_AVAILABLE";
      break;
    case 64:
      result = "IBI_SS_GSM_ERROR_BEARER_SERVICE_NOT_IMPLEMENTED";
      break;
    case 67:
      result = "IBI_SS_GSM_ERROR_ACM_GREATER_OR_EQUAL_TO_ACM_MAX";
      break;
    case 68:
      result = "IBI_SS_GSM_ERROR_FACILITY_NOT_IMPLEMENTED";
      break;
    case 69:
      result = "IBI_SS_GSM_ERROR_ONLY_RESTRICTED_DIGITAL";
      break;
    case 78:
      result = "IBI_SS_GSM_ERROR_SERVICE_NOT_IMPLEMENTED";
      break;
    case 80:
      result = "IBI_SS_GSM_ERROR_INVALID_TI";
      break;
    case 86:
      result = "IBI_SS_GSM_ERROR_USER_NOT_IN_CUG";
      break;
    case 87:
      result = "IBI_SS_GSM_ERROR_INCOMPATIBLE_DESTINATION";
      break;
    case 90:
      result = "IBI_SS_GSM_ERROR_INVALID_TRANSIT_NETWORK";
      break;
    case 94:
      result = "IBI_SS_GSM_ERROR_SEMANTICS_INCORRECT";
      break;
    case 95:
      result = "IBI_SS_GSM_ERROR_INVALID_MANDATORY_INFORMATION";
      break;
    case 96:
      result = "IBI_SS_GSM_ERROR_UNKNOWN_MESSAGE_TYPE1";
      break;
    case 97:
      result = "IBI_SS_GSM_ERROR_UNEXPECTED_MESSAGE_TYPE";
      break;
    case 98:
      result = "IBI_SS_GSM_ERROR_UNEXPECTED_IE";
      break;
    case 99:
      result = "IBI_SS_GSM_ERROR_CONDITIONAL_IE_ERROR";
      break;
    case 100:
      result = "IBI_SS_GSM_ERROR_UNKNOWN_MESSAGE_TYPE2";
      break;
    case 101:
      result = "IBI_SS_GSM_ERROR_RECOVERY_ON_TIMER_EXPIRY";
      break;
    case 110:
      result = "IBI_SS_GSM_ERROR_PROTOCOL_ERROR";
      break;
    default:
      return "???";
  }

  return result;
}

{
  if ((a1 - 1) > 7)
  {
    return "???";
  }

  else
  {
    return off_29EDF79E0[a1 - 1];
  }
}

{
  result = "IBI_STW_CAUSE_ACTIVATION_IN_PROGRESS";
  switch(a1)
  {
    case 0:
      result = "IBI_STW_CAUSE_NONE";
      break;
    case 1:
      result = "IBI_STW_CAUSE_INTERNAL";
      break;
    case 2:
      result = "IBI_STW_CAUSE_NO_MEMORY";
      break;
    case 3:
      return result;
    case 4:
      result = "IBI_STW_CAUSE_DEACTIVATION_IN_PROGRESS";
      break;
    case 5:
      result = "IBI_STW_CAUSE_SUSPEND_IN_PROGRESS";
      break;
    case 6:
      result = "IBI_STW_CAUSE_RESUME_IN_PROGRESS";
      break;
    case 7:
      result = "IBI_STW_CAUSE_SERVICE_ACTIVE";
      break;
    case 8:
      result = "IBI_STW_CAUSE_SERVICE_NOT_ACTIVE";
      break;
    case 9:
      result = "IBI_STW_CAUSE_S4_DATA_MISSING";
      break;
    case 10:
      result = "IBI_STW_CAUSE_UE_CONFIG_MISSING";
      break;
    case 11:
      result = "IBI_STW_CAUSE_UE_CONFIG_FILE_DECODE_FAILURE";
      break;
    case 12:
      result = "IBI_STW_CAUSE_INVALID_ARG";
      break;
    case 13:
      result = "IBI_STW_CAUSE_MISSING_ARG";
      break;
    case 14:
      result = "IBI_STW_CAUSE_CPS_MODE_NOT_READY";
      break;
    case 15:
      result = "IBI_STW_CAUSE_MALFORMED_MSG";
      break;
    case 16:
      result = "IBI_STW_CAUSE_UNSUPPORTED_IN_CURRENT_SERVICE_STATE";
      break;
    case 17:
      result = "IBI_STW_CAUSE_UNSUPPORTED_IN_CURRENT_CONNECTION_STATE";
      break;
    case 18:
      result = "IBI_STW_CAUSE_S4_CONFIG_FAILURE";
      break;
    default:
      if (a1 == 0xFFFF)
      {
        result = "IBI_STW_CAUSE_MAX";
      }

      else
      {
        result = "???";
      }

      break;
  }

  return result;
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_STW_PREAMBLE_FORMAT_SHORT";
  }

  if (a1 == 1)
  {
    return "IBI_STW_PREAMBLE_FORMAT_LONG";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_STW_REGISTRATION_STATUS_REGISTERED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_STW_REGISTRATION_STATUS_NOT_REGISTERED";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_STW_STATE_SUSPEND";
  }

  if (a1 == 1)
  {
    return "IBI_STW_STATE_DEACTIVATE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "IBI_STW_RESULT_FAILURE";
  v2 = "???";
  if (a1 == 0xFFFF)
  {
    v2 = "IBI_STW_RESULT_MAX";
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_STW_RESULT_SUCCESS";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_STW_SHARED_SECRET_USAGE_STATUS_USED";
  }

  if (a1 == 1)
  {
    return "IBI_STW_SHARED_SECRET_USAGE_STATUS_UNUSED";
  }

  else
  {
    return v1;
  }
}

{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "IBI_STW_HEATMAP_VISIBILITY_LEVEL_NO_SIGNAL";
    }

    if (a1 == 1)
    {
      return "IBI_STW_HEATMAP_VISIBILITY_LEVEL_LOW";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "IBI_STW_HEATMAP_VISIBILITY_LEVEL_MEDIUM";
      case 3:
        return "IBI_STW_HEATMAP_VISIBILITY_LEVEL_HIGH";
      case 255:
        return "IBI_STW_HEATMAP_VISIBILITY_LEVEL_UNKNOWN";
    }
  }

  return "???";
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_VINYL_ATC_ICCID_ENABLED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_VINYL_ATC_ICCID_DISABLED";
  }
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "IBI_VINYL_ATC_SUCCESS";
  }

  if (a1 == 1)
  {
    return "IBI_VINYL_ATC_FAILURE";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_VINYL_PRLACT_PROFILE_ACTIVATE_SUCCESS";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_VINYL_PRLACT_PROFILE_ACTIVATE_FAILED";
  }
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_VINYL_PRLACT_PROFILE_PIN_ENABLED";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_VINYL_PRLACT_PROFILE_PIN_DISABLED";
  }
}

{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "IBI_VINYL_PRLACT_SIM_APP_USIM";
    }

    if (a1 == 1)
    {
      return "IBI_VINYL_PRLACT_SIM_APP_ISIM";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "IBI_VINYL_PRLACT_SIM_APP_CSIM";
      case 3:
        return "IBI_VINYL_PRLACT_SIM_MAX_NUM_APP";
      case 255:
        return "IBI_VINYL_PRLACT_SIM_APP_UNKNOWN";
    }
  }

  return "???";
}

{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "IBI_VINYL_PRLACT_SIM_FILE_MSISDN";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "IBI_VINYL_PRLACT_SIM_FILE_IMSI";
  }
}

{
  if ((a1 + 1) > 3)
  {
    return "???";
  }

  else
  {
    return off_29EDF7E88[a1 + 1];
  }
}

{
  if (a1)
  {
    return "???";
  }

  else
  {
    return "IBI_XCC_PERIPHERAL_GNSS";
  }
}

{
  if ((a1 + 1) > 4)
  {
    return "???";
  }

  else
  {
    return off_29EDF7EC0[a1 + 1];
  }
}

{
  if ((a1 - 2) > 7)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_29EE2F5F0[a1 - 2];
  }
}

{
  v1 = "UNKNOWN";
  if (a1 == 2)
  {
    v1 = "ARI_ATTR_GET";
  }

  if (a1 == 1)
  {
    return "ARI_ATTR_SET";
  }

  else
  {
    return v1;
  }
}

{
  if ((a1 + 1) > 5)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_29EE2F630[a1 + 1];
  }
}

{
  v1 = "UNKNOWN";
  if (!a1)
  {
    v1 = "ARI_ATTR_OFF";
  }

  if (a1 == 0x7FFFFFFF)
  {
    return "ARI_ATTR_ON";
  }

  else
  {
    return v1;
  }
}

void AriSdk::ARI_IBISimExtendedAuthReq_SDK::ARI_IBISimExtendedAuthReq_SDK(AriSdk::ARI_IBISimExtendedAuthReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 813924352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 813924352, 0);
}

void AriSdk::ARI_IBISimExtendedAuthReq_SDK::ARI_IBISimExtendedAuthReq_SDK(AriSdk::ARI_IBISimExtendedAuthReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimExtendedAuthReq_SDK::~ARI_IBISimExtendedAuthReq_SDK(AriSdk::ARI_IBISimExtendedAuthReq_SDK *this)
{
  *this = &unk_2A1D28278;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40104B78CFLL);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40104B78CFLL);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4075806E5BLL);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4075806E5BLL);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimExtendedAuthReq_SDK::~ARI_IBISimExtendedAuthReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimExtendedAuthReq_SDK::pack(AriSdk::ARI_IBISimExtendedAuthReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x11uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x11uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x100uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x100uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimExtendedAuthRspCb_SDK::ARI_IBISimExtendedAuthRspCb_SDK(AriSdk::ARI_IBISimExtendedAuthRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 822312960, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 822312960, 0);
}

void AriSdk::ARI_IBISimExtendedAuthRspCb_SDK::ARI_IBISimExtendedAuthRspCb_SDK(AriSdk::ARI_IBISimExtendedAuthRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimExtendedAuthRspCb_SDK::~ARI_IBISimExtendedAuthRspCb_SDK(AriSdk::ARI_IBISimExtendedAuthRspCb_SDK *this)
{
  *this = &unk_2A1D282B0;
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40104B78CFLL);
  }

  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 21);
  *(this + 21) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40FC6FA475);
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 19);
  *(this + 19) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C408EEE02DCLL);
  }

  v7 = *(this + 18);
  *(this + 18) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 17);
  *(this + 17) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4075806E5BLL);
  }

  v9 = *(this + 16);
  *(this + 16) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 15);
  *(this + 15) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4075806E5BLL);
  }

  v11 = *(this + 14);
  *(this + 14) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 13);
  *(this + 13) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4075806E5BLL);
  }

  v13 = *(this + 12);
  *(this + 12) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 11);
  *(this + 11) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 10);
  *(this + 10) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 9);
  *(this + 9) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 8);
  *(this + 8) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimExtendedAuthRspCb_SDK::~ARI_IBISimExtendedAuthRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}