uint64_t sub_1DD538AD0(__int16 a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(a1)
  {
    case 8:
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v7 = MEMORY[0x1E695C8F8];
      goto LABEL_8;
    case 14:
    case 25:
    case 27:
    case 32:
    case 33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v7 = MEMORY[0x1E695C958];
      goto LABEL_8;
    case 15:
    case 16:
    case 34:
    case 36:
    case 38:
    case 40:
    case 42:
    case 43:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v2 = MEMORY[0x1E695C970];
      goto LABEL_4;
    case 19:
    case 20:
    case 21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_1_89();
      *(v1 + 16) = xmmword_1DD643F90;
      v7 = MEMORY[0x1E695C590];
LABEL_8:
      v8 = *v7;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v9;
      break;
    case 28:
    case 29:
    case 35:
    case 37:
    case 39:
    case 41:
    case 44:
    case 45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = OUTLINED_FUNCTION_6();
      *(v1 + 16) = xmmword_1DD643F80;
      v2 = MEMORY[0x1E695C540];
LABEL_4:
      v3 = *v2;
      *(v1 + 32) = sub_1DD63FDD8();
      *(v1 + 40) = v4;
      v5 = *MEMORY[0x1E695C958];
      *(v1 + 48) = sub_1DD63FDD8();
      *(v1 + 56) = v6;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t static NLRelationlabel.makeCNLabelContactRelation(nlRelationLabel:)()
{

  v0 = sub_1DD532D04();
  if (v0 == 376)
  {
    return 0;
  }

  v1 = v0;
  if (sub_1DD538ED0(v0) == 0x796C696D6166 && v2 == 0xE600000000000000)
  {
    goto LABEL_9;
  }

  v4 = sub_1DD640CD8();

  if (v4)
  {
    return 0;
  }

  v5 = sub_1DD534E3C(v1);
  if (!v5[2])
  {
LABEL_9:

    return 0;
  }

  v6 = v5[4];
  v7 = v5[5];

  return v6;
}

uint64_t sub_1DD538D38()
{
  v0 = sub_1DD63FE58();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = v0;
  *(inited + 40) = v2;
  v4 = sub_1DD3B7F10();

  v6 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_4_61(v5, v7, v8, v9, v10, v11, v12, v13, MEMORY[0x1E69E6158], v4, v4, v4, 0, 0xE000000000000000, 32);
  v14 = OUTLINED_FUNCTION_0_108();
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  OUTLINED_FUNCTION_4_61(v14, v15, v16, v17, v18, v19, v20, v21, v41, v42, v4, v4, 45, 0xE100000000000000, 32);
  v22 = OUTLINED_FUNCTION_0_108();
  *(inited + 64) = v22;
  *(inited + 72) = v23;
  OUTLINED_FUNCTION_4_61(v22, v23, v24, v25, v26, v27, v28, v29, v6, v4, v4, v4, 95, 0xE100000000000000, 32);
  v30 = OUTLINED_FUNCTION_0_108();
  v32 = v31;

  v33 = 0;
  *(inited + 80) = v30;
  *(inited + 88) = v32;
  while (1)
  {
    v34 = v33 + 16;
    if (v33 == 64)
    {
      break;
    }

    v35 = inited + v33;
    v36 = *(v35 + 32);
    v37 = *(v35 + 40);

    v38 = sub_1DD532D04();
    v33 = v34;
    if (v38 != 376)
    {

      v39 = sub_1DD532D04();
      if (v39 != 376)
      {
        goto LABEL_7;
      }

      __break(1u);
      break;
    }
  }

  v39 = 376;
LABEL_7:
  swift_setDeallocating();
  sub_1DD46CAFC();
  return v39;
}

uint64_t sub_1DD538ED0(__int16 a1)
{
  result = 0x726567616E616DLL;
  switch(a1)
  {
    case 1:
      return 0x6E61747369737361;
    case 2:
      return 0x6573756F7073;
    case 3:
      return 0x796C696D6166;
    case 4:
      v3 = 0x656E74726170;
      return v3 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
    case 5:
      v5 = 0x6567616E616DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x5F72000000000000;
    case 6:
      v10 = 0x646E65697266;
      return v10 & 0xFFFFFFFFFFFFLL | 0x665F000000000000;
    case 7:
      return 0x746E65726170;
    case 8:
      return 0x726568746F6DLL;
    case 9:
      return 0x646E65697266;
    case 10:
      v7 = 0x747369737361;
      goto LABEL_33;
    case 11:
      v5 = 0x656E74726170;
      return v5 & 0xFFFFFFFFFFFFLL | 0x5F72000000000000;
    case 12:
      return 0x646E6162737568;
    case 13:
      v12 = 1752457574;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 14:
      v12 = 1953720691;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 15:
      v33 = 0x2D7265646C6FLL;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6973000000000000;
    case 16:
      return 0x2D7265676E756F79;
    case 17:
      return 0x646C696863;
    case 18:
      return 0x6C69686370657473;
    case 19:
      return 7237491;
    case 20:
    case 106:
      return 0x7265746867756164;
    case 21:
      return 0x665F646C696863;
    case 22:
      v10 = 0x6573756F7073;
      return v10 & 0xFFFFFFFFFFFFLL | 0x665F000000000000;
    case 23:
      return 1701210487;
    case 24:
      return 0x676E696C626973;
    case 25:
      return 0x2D7265676E756F79;
    case 26:
    case 160:
    case 163:
    case 164:
    case 169:
    case 230:
    case 234:
    case 288:
    case 367:
      OUTLINED_FUNCTION_5_64();
      return v29 - 10;
    case 27:
      v43 = 1953460834;
      goto LABEL_131;
    case 28:
      v15 = 0x2D7265646C6FLL;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 29:
      return 0x2D7265676E756F79;
    case 30:
      return 0x756761656C6C6F63;
    case 31:
      v43 = 1667327348;
LABEL_131:
      v3 = v43 & 0xFFFF0000FFFFFFFFLL | 0x656800000000;
      return v3 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
    case 32:
      return 0x207265676E756F79;
    case 33:
      return 0x6973207265646C65;
    case 34:
      return 0x747365676E756F79;
    case 35:
    case 65:
    case 75:
    case 76:
    case 77:
    case 103:
    case 249:
    case 306:
    case 373:
      OUTLINED_FUNCTION_5_64();
      return v49 - 19;
    case 36:
      return 0x207265676E756F79;
    case 37:
      return 0x207265676E756F79;
    case 38:
      return 0x7320747365646C65;
    case 39:
      return 0x6220747365646C65;
    case 40:
      v33 = 0x207265646C65;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6973000000000000;
    case 41:
      v15 = 0x207265646C65;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 42:
    case 67:
    case 83:
    case 158:
    case 161:
    case 167:
    case 192:
    case 251:
    case 252:
    case 260:
    case 308:
    case 309:
    case 375:
      OUTLINED_FUNCTION_5_64();
      return v38 - 16;
    case 43:
    case 59:
    case 60:
    case 61:
    case 78:
    case 104:
    case 214:
    case 328:
      OUTLINED_FUNCTION_5_64();
      return v53 - 18;
    case 44:
    case 80:
    case 92:
    case 193:
    case 287:
    case 320:
    case 330:
      OUTLINED_FUNCTION_5_64();
      return v40 - 15;
    case 45:
    case 281:
    case 296:
      OUTLINED_FUNCTION_5_64();
      return v19 - 17;
    case 46:
      return 0x6972665F656C616DLL;
    case 47:
      v10 = 0x656C616D6566;
      return v10 & 0xFFFFFFFFFFFFLL | 0x665F000000000000;
    case 48:
      v16 = 0x705F656C616DLL;
      return v16 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 49:
      return 0x705F656C616D6566;
    case 50:
      v9 = 0x72666C726967;
      return v9 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 51:
      return 0x6E65697266796F62;
    case 52:
      v16 = 0x70646E617267;
      return v16 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 53:
      v13 = 0x6D646E617267;
      goto LABEL_108;
    case 54:
    case 55:
    case 57:
    case 58:
    case 70:
    case 73:
    case 85:
    case 121:
    case 133:
    case 170:
      OUTLINED_FUNCTION_5_64();
      return v52 - 9;
    case 56:
      return 0x746166646E617267;
    case 62:
      return 0x696863646E617267;
    case 63:
      return 0x756164646E617267;
    case 64:
      return 0x6E6F73646E617267;
    case 66:
      return 0x7267207461657267;
    case 68:
      v4 = 0x746E65726170;
      return v4 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
    case 69:
      return 0x692D726568746F6DLL;
    case 71:
    case 74:
    case 86:
    case 111:
    case 173:
    case 176:
    case 178:
    case 180:
    case 182:
    case 200:
      OUTLINED_FUNCTION_5_64();
      return v34 - 6;
    case 72:
      v6 = 1752457574;
      goto LABEL_49;
    case 79:
    case 91:
    case 188:
    case 189:
    case 247:
    case 248:
    case 262:
    case 263:
    case 293:
    case 329:
      OUTLINED_FUNCTION_5_64();
      return v41 - 13;
    case 81:
      v6 = 1953720691;
LABEL_49:
      v4 = v6 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      return v4 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
    case 82:
    case 151:
    case 172:
    case 175:
    case 179:
    case 212:
    case 250:
    case 283:
    case 295:
    case 307:
    case 355:
    case 356:
    case 374:
      OUTLINED_FUNCTION_5_64();
      return v36 - 14;
    case 84:
    case 95:
    case 215:
    case 218:
      OUTLINED_FUNCTION_5_64();
      return v25 - 7;
    case 87:
    case 112:
    case 127:
    case 139:
    case 159:
    case 162:
    case 168:
    case 174:
    case 177:
    case 181:
    case 209:
    case 223:
    case 271:
    case 274:
    case 342:
    case 360:
      OUTLINED_FUNCTION_5_64();
      return v44 - 8;
    case 88:
      return 0xD000000000000023;
    case 89:
    case 115:
    case 123:
    case 124:
    case 135:
    case 136:
    case 144:
    case 166:
    case 197:
    case 217:
    case 233:
    case 238:
    case 243:
    case 244:
    case 245:
    case 246:
    case 302:
    case 316:
    case 317:
    case 366:
    case 370:
      OUTLINED_FUNCTION_5_64();
      return v46 - 3;
    case 90:
      return 0x2D726568746F7262;
    case 93:
    case 96:
    case 201:
      OUTLINED_FUNCTION_5_64();
      return v51 - 5;
    case 94:
    case 118:
    case 130:
    case 152:
    case 155:
    case 211:
    case 232:
    case 235:
    case 368:
      OUTLINED_FUNCTION_5_64();
      return v35 - 4;
    case 97:
    case 117:
    case 126:
    case 138:
    case 229:
    case 254:
    case 256:
    case 365:
      OUTLINED_FUNCTION_5_64();
      return v30 + 3;
    case 98:
    case 100:
    case 101:
    case 253:
    case 255:
    case 311:
    case 312:
    case 345:
      OUTLINED_FUNCTION_5_64();
      return v47 + 1;
    case 99:
    case 114:
    case 129:
    case 141:
    case 198:
    case 221:
    case 225:
    case 231:
    case 236:
    case 273:
    case 275:
    case 319:
    case 324:
    case 325:
    case 340:
    case 343:
    case 358:
    case 362:
    case 369:
      OUTLINED_FUNCTION_5_64();
      return v48 - 2;
    case 102:
    case 119:
    case 131:
    case 153:
    case 156:
    case 216:
    case 239:
    case 303:
    case 371:
      OUTLINED_FUNCTION_5_64();
      return v39 | 4;
    case 105:
      return 0x6E692D646C696863;
    case 107:
      return 0x6C2D6E692D6E6F73;
    case 108:
      return 0x6E6973756F63;
    case 109:
      return 0x756F635F656C616DLL;
    case 110:
      return 0x635F656C616D6566;
    case 113:
      return 0xD000000000000023;
    case 116:
    case 125:
    case 137:
    case 228:
    case 270:
    case 338:
    case 364:
      OUTLINED_FUNCTION_5_64();
      return v50 + 5;
    case 120:
    case 132:
    case 143:
    case 154:
    case 157:
    case 183:
    case 264:
    case 266:
    case 267:
    case 269:
    case 331:
    case 333:
    case 334:
    case 336:
      OUTLINED_FUNCTION_5_64();
      return v45 + 2;
    case 122:
    case 134:
    case 142:
    case 165:
    case 237:
    case 301:
    case 313:
    case 315:
    case 341:
    case 346:
    case 351:
    case 352:
    case 353:
      OUTLINED_FUNCTION_5_64();
      return v37 - 1;
    case 128:
      return 0xD000000000000023;
    case 140:
      return 0x1000000000000025;
    case 145:
      OUTLINED_FUNCTION_5_64();
      return v18 + 23;
    case 146:
      OUTLINED_FUNCTION_5_64();
      return v42 + 21;
    case 147:
      OUTLINED_FUNCTION_5_64();
      return v11 + 33;
    case 148:
      OUTLINED_FUNCTION_5_64();
      return v14 + 31;
    case 149:
      return 0x5F73746E65726170;
    case 150:
    case 258:
    case 282:
    case 289:
    case 290:
    case 297:
    case 326:
    case 327:
    case 354:
      OUTLINED_FUNCTION_5_64();
      return v26 - 12;
    case 171:
      return 0x6E7561646E617267;
    case 184:
      return 0xD000000000000023;
    case 185:
      return 0x636E75646E617267;
    case 186:
      return 0x73676E696C626973;
    case 187:
      return 0x726F5F656365696ELL;
    case 190:
      OUTLINED_FUNCTION_5_64();
      return v17 + 14;
    case 191:
      OUTLINED_FUNCTION_5_64();
      return v8 + 18;
    case 194:
    case 241:
    case 259:
    case 304:
    case 323:
    case 372:
      OUTLINED_FUNCTION_5_64();
      return v28 + 10;
    case 195:
    case 277:
    case 347:
      OUTLINED_FUNCTION_5_64();
      return v21 + 6;
    case 196:
      v9 = 0x6E646E617267;
      return v9 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 199:
      return 0x70656E646E617267;
    case 202:
      return 0x6572617070657473;
    case 203:
      v20 = 0x616670657473;
      goto LABEL_99;
    case 204:
      v20 = 0x6F6D70657473;
LABEL_99:
      result = v20 & 0xFFFFFFFFFFFFLL | 0x6874000000000000;
      break;
    case 205:
      result = 0x6E6F7370657473;
      break;
    case 206:
      result = 0x6775616470657473;
      break;
    case 207:
      v13 = 0x726270657473;
LABEL_108:
      result = v13 & 0xFFFFFFFFFFFFLL | 0x746F000000000000;
      break;
    case 208:
      result = 0x7473697370657473;
      break;
    case 210:
      result = 0x100000000000001DLL;
      break;
    case 213:
    case 261:
    case 286:
      OUTLINED_FUNCTION_5_64();
      result = v31 - 11;
      break;
    case 219:
      result = 0x656C636E75;
      break;
    case 220:
      result = 0xD000000000000023;
      break;
    case 222:
      result = 0xD000000000000023;
      break;
    case 224:
      result = 0xD000000000000023;
      break;
    case 226:
      result = 0xD000000000000023;
      break;
    case 227:
      result = 1953396065;
      break;
    case 240:
    case 337:
      OUTLINED_FUNCTION_5_64();
      result = v22 + 7;
      break;
    case 242:
    case 278:
    case 305:
    case 348:
      OUTLINED_FUNCTION_5_64();
      result = v32 + 9;
      break;
    case 257:
      result = 0x6A75675F746E7561;
      break;
    case 265:
    case 268:
    case 272:
    case 276:
    case 299:
    case 318:
    case 332:
    case 335:
    case 339:
    case 344:
    case 357:
    case 359:
    case 361:
    case 363:
      result = 0xD000000000000023;
      break;
    case 279:
    case 294:
    case 349:
      OUTLINED_FUNCTION_5_64();
      result = v23 | 0xC;
      break;
    case 280:
    case 322:
    case 350:
      OUTLINED_FUNCTION_5_64();
      result = v27 + 11;
      break;
    case 284:
      result = 0x616D5F656C636E75;
      break;
    case 285:
      result = 0x6C616D5F746E7561;
      break;
    case 291:
      result = 0x616B5F656C636E75;
      break;
    case 292:
      v7 = 0x6B5F746E7561;
LABEL_33:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x6E61000000000000;
      break;
    case 298:
      result = 0x61745F656C636E75;
      break;
    case 300:
      result = 0x6D61745F746E7561;
      break;
    case 310:
      result = 0x65745F656C636E75;
      break;
    case 314:
      result = 0x6C65745F746E7561;
      break;
    case 321:
      OUTLINED_FUNCTION_5_64();
      result = v24 | 8;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD53A9B0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD532D04();
  *a2 = result;
  return result;
}

uint64_t sub_1DD53A9E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD538ED0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRelationlabel(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLSemanticRelationLabel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE89)
  {
    if (a2 + 375 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 375 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 376;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x178;
  v5 = v6 - 376;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NLSemanticRelationLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 375 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 375 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE89)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE88)
  {
    v6 = ((a2 - 65161) >> 16) + 1;
    *result = a2 + 375;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 375;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD53AC5C()
{
  result = qword_1ECCDE640;
  if (!qword_1ECCDE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE640);
  }

  return result;
}

uint64_t type metadata accessor for NLv4SpeechAlternativeFetcher()
{
  result = qword_1EE160EC0;
  if (!qword_1EE160EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1DD53AD24@<X0>(void *__src@<X0>, unint64_t a2@<X8>)
{
  memcpy(v230, __src, 0x108uLL);
  LOBYTE(v229[0]) = BYTE8(v230[15]);
  if (sub_1DD422BD0())
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_115;
    }

    while (1)
    {
      v3 = sub_1DD63F9F8();
      v4 = __swift_project_value_buffer(v3, qword_1EE16F068);
      v5 = sub_1DD63F9D8();
      v6 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v6))
      {
        v7 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_16_38(v7);
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v8, v9, "fetching NLv4 speech alternatives");
        OUTLINED_FUNCTION_25_12();
      }

      v10 = *(v213 + *(type metadata accessor for NLv4SpeechAlternativeFetcher() + 20));
      if (!v10)
      {
        v161 = sub_1DD63F9D8();
        v175 = sub_1DD640378();
        if (!OUTLINED_FUNCTION_4_0(v175))
        {
          goto LABEL_105;
        }

        v176 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_16_38(v176);
        v166 = "could not fetch speech lattice";
LABEL_103:
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v164, v165, v166);
        OUTLINED_FUNCTION_25_12();
        goto LABEL_105;
      }

      v208 = v10;
      v11 = [v208 recognition];
      if (!v11 || (v12 = sub_1DD3CA4C0(v11)) == 0)
      {
        v167 = v208;
        v161 = sub_1DD63F9D8();
        v168 = sub_1DD640378();

        if (os_log_type_enabled(v161, v168))
        {
          v169 = OUTLINED_FUNCTION_54();
          v170 = swift_slowAlloc();
          v229[0] = v170;
          *v169 = 136315138;
          v222 = sub_1DD3CA538(v167);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFA8, &unk_1DD6444A0);
          v171 = sub_1DD63FE38();
          v173 = a2;
          v174 = sub_1DD39565C(v171, v172, v229);

          *(v169 + 4) = v174;
          a2 = v173;
          _os_log_impl(&dword_1DD38D000, v161, v168, "speech lattice does not contain any phrases: %s", v169, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v170);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();

          goto LABEL_106;
        }

        goto LABEL_105;
      }

      v13 = v12;
      v199 = *(&v230[5] + 1);
      v200 = *&v230[6];
      v201 = *(&v230[4] + 1);
      v202 = *&v230[5];
      v197 = a2;
      v198 = *&v230[4];
      v203 = *(&v230[3] + 1);
      v204 = *&v230[2];
      v205 = *(&v230[1] + 1);
      v228 = *&v230[1];
      v226 = *(&v230[2] + 8);
      v227 = v230[0];
      memcpy(v225, &v230[6] + 8, sizeof(v225));
      v14 = sub_1DD3CC020(v13);
      sub_1DD3C9478(v230, v229);
      a2 = 0;
      v196 = 0;
      v15 = v13 & 0xC000000000000001;
      v219 = v13 & 0xFFFFFFFFFFFFFF8;
      *&v16 = 134349056;
      v214 = v16;
      *&v16 = 136315650;
      v206 = v16;
      v212 = v4;
      v194 = v14;
      v195 = v13;
      v193 = v13 & 0xC000000000000001;
      while (1)
      {
LABEL_9:
        if (v14 == a2)
        {

          v178 = sub_1DD63F9D8();
          v179 = sub_1DD640358();
          if (OUTLINED_FUNCTION_4_0(v179))
          {
            v180 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_16_38(v180);
            OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v181, v182, "successfully fetched NLv4 speech alternatives");
            OUTLINED_FUNCTION_25_12();
          }

          v183 = v226;
          v184 = v197;
          *v197 = v227;
          v185 = v204;
          v186 = v205;
          *(v184 + 2) = v228;
          *(v184 + 3) = v186;
          *(v184 + 4) = v185;
          *(v184 + 40) = v183;
          v187 = v198;
          *(v184 + 7) = v203;
          *(v184 + 8) = v187;
          v188 = v202;
          *(v184 + 9) = v201;
          *(v184 + 10) = v188;
          v189 = v200;
          *(v184 + 11) = v199;
          *(v184 + 12) = v189;
          return memcpy(v184 + 104, v225, 0xA0uLL);
        }

        if (v15)
        {
          v17 = MEMORY[0x1E12B2C10](a2, v13);
        }

        else
        {
          if (a2 >= *(v219 + 16))
          {
            goto LABEL_113;
          }

          v17 = *(v13 + 8 * a2 + 32);
        }

        v18 = v17;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_112;
        }

        v19 = sub_1DD3CA3B4(v17);
        if (v19)
        {
          break;
        }

        v22 = sub_1DD63F9D8();
        v29 = sub_1DD640368();
        if (!OUTLINED_FUNCTION_2_4(v29))
        {
          goto LABEL_23;
        }

        v24 = v18;
        v30 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_9_44(v30);
        v27 = v22;
        v28 = "interpretations is nil for phrase %{public}ld, skipping phrase";
LABEL_22:
        _os_log_impl(&dword_1DD38D000, v27, v26, v28, v18, 0xCu);
        OUTLINED_FUNCTION_0_1();
        v18 = v24;
LABEL_23:

        ++a2;
      }

      v20 = v19;
      v21 = v19 >> 62 ? sub_1DD6407B8() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 <= 1)
      {
        break;
      }

      v191 = (a2 + 1);
      v222 = MEMORY[0x1E69E7CC0];
      v209 = v21;
      sub_1DD42BB50(0, v21, 0);
      v31 = 0;
      v32 = v222;
      v210 = v20;
      v211 = v20 & 0xC000000000000001;
      v207 = v20 + 32;
      v192 = v18;
LABEL_25:
      v33 = v211;
      sub_1DD408BFC(v31);
      v218 = v32;
      if (v33)
      {
        v34 = MEMORY[0x1E12B2C10](v31, v20);
      }

      else
      {
        v34 = *(v207 + 8 * v31);
      }

      v35 = v34;
      v217 = v31 + 1;
      v36 = [v34 averageConfidenceScore];
      v216 = v35;
      v37 = sub_1DD3CA3D0(v35);
      v38 = MEMORY[0x1E69E7CC0];
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      v40 = sub_1DD3CC020(v39);
      v41 = 0;
      while (1)
      {
        if (v40 == v41)
        {

          v220 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
          sub_1DD4477A4();
          v55 = sub_1DD63FD58();
          v57 = v56;

          v32 = v218;
          v222 = v218;
          v59 = *(v218 + 16);
          v58 = *(v218 + 24);
          if (v59 >= v58 >> 1)
          {
            v61 = OUTLINED_FUNCTION_1_0(v58);
            sub_1DD42BB50(v61, v59 + 1, 1);
            v32 = v222;
          }

          *(v32 + 16) = v59 + 1;
          v60 = v32 + 24 * v59;
          *(v60 + 32) = v36;
          *(v60 + 40) = v55;
          *(v60 + 48) = v57;
          v20 = v210;
          v31 = v217;
          if (v217 == v209)
          {

            v224 = v32;
            v62 = sub_1DD63F9D8();
            v63 = sub_1DD640368();
            if (OUTLINED_FUNCTION_4_0(v63))
            {
              v64 = OUTLINED_FUNCTION_54();
              LOBYTE(v20) = v64;
              *v64 = v214;
              *(v64 + 4) = *(v32 + 16);
              _os_log_impl(&dword_1DD38D000, v62, v55, "number of alternatives before filtering: %{public}ld", v64, 0xCu);
              OUTLINED_FUNCTION_25_12();
            }

            v65 = *(v32 + 16);
            v66 = 0.0;
            v67 = v65;
            for (i = 32; v67; --v67)
            {
              if (v66 <= *(v32 + i))
              {
                v66 = *(v32 + i);
              }

              i += 24;
            }

            v69 = 0;
            v70 = MEMORY[0x1E69E7CC0];
LABEL_55:
            v71 = 24 * v69;
            while (v65 != v69)
            {
              if (v69 >= *(v32 + 16))
              {
                goto LABEL_114;
              }

              ++v69;
              v72 = v71 + 24;
              v73 = *(v32 + v71 + 32);
              v71 += 24;
              if (v73 / v66 >= 0.2)
              {
                v74 = *(v32 + v72 + 16);
                v55 = *(v32 + v72 + 24);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v222 = v70;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1DD42BB50(0, *(v70 + 16) + 1, 1);
                  v70 = v222;
                }

                a2 = *(v70 + 16);
                v76 = *(v70 + 24);
                v20 = a2 + 1;
                if (a2 >= v76 >> 1)
                {
                  v78 = OUTLINED_FUNCTION_1_0(v76);
                  sub_1DD42BB50(v78, a2 + 1, 1);
                  v70 = v222;
                }

                *(v70 + 16) = v20;
                v77 = v70 + 24 * a2;
                *(v77 + 32) = v73;
                *(v77 + 40) = v74;
                *(v77 + 48) = v55;
                goto LABEL_55;
              }
            }

            swift_beginAccess();
            v224 = v70;

            v79 = sub_1DD63F9D8();
            v80 = sub_1DD640368();
            if (OUTLINED_FUNCTION_4_0(v80))
            {
              v81 = OUTLINED_FUNCTION_54();
              LOBYTE(v20) = v81;
              *v81 = v214;
              *(v81 + 4) = *(v70 + 16);
              _os_log_impl(&dword_1DD38D000, v79, v55, "number of alternatives after filtering: %{public}ld", v81, 0xCu);
              OUTLINED_FUNCTION_25_12();
            }

            v83 = *(v70 + 16);
            if (v83)
            {

              v218 = v70;
              v84 = (v70 + 48);
              v85 = v84;
              do
              {
                v86 = *(v85 - 2);
                v88 = *(v85 - 1);
                v87 = *v85;

                v89 = sub_1DD63F9D8();
                v90 = sub_1DD640368();
                if (OUTLINED_FUNCTION_2_4(v90))
                {
                  v91 = swift_slowAlloc();
                  v92 = swift_slowAlloc();
                  v222 = v92;
                  *v91 = v206;
                  v93 = sub_1DD39565C(v88, v87, &v222);

                  *(v91 + 4) = v93;
                  *(v91 + 12) = 2048;
                  *(v91 + 14) = v86;
                  *(v91 + 22) = 2048;
                  *(v91 + 24) = v86 / v66;
                  _os_log_impl(&dword_1DD38D000, v89, v20, "speech alternative. token=%s score=%f relativescore=%f", v91, 0x20u);
                  __swift_destroy_boxed_opaque_existential_1(v92);
                  OUTLINED_FUNCTION_0_1();
                  OUTLINED_FUNCTION_0_1();
                }

                else
                {
                }

                v85 += 3;
                --v83;
              }

              while (v83);
              v94 = v218;

              v95 = *(v94 + 16);
              if (v95)
              {
                v222 = MEMORY[0x1E69E7CC0];

                sub_1DD42A2D4();
                v96 = v222;
                v13 = v195;
                do
                {
                  v98 = *(v84 - 1);
                  v97 = *v84;
                  v222 = v96;
                  v100 = *(v96 + 16);
                  v99 = *(v96 + 24);

                  if (v100 >= v99 >> 1)
                  {
                    sub_1DD42A2D4();
                    v96 = v222;
                  }

                  *(v96 + 16) = v100 + 1;
                  v101 = v96 + 16 * v100;
                  *(v101 + 32) = v98;
                  *(v101 + 40) = v97;
                  v84 += 3;
                  --v95;
                }

                while (v95);
              }

              else
              {
                v96 = MEMORY[0x1E69E7CC0];
                v13 = v195;
              }
            }

            else
            {
              v96 = MEMORY[0x1E69E7CC0];
              v13 = v195;
            }

            v102 = &v190;
            v222 = v205;
            v223 = v204;
            MEMORY[0x1EEE9AC00](v82);
            OUTLINED_FUNCTION_31_0();
            *(v103 - 16) = &v222;
            OUTLINED_FUNCTION_15_37();
            v104 = v196;
            v105 = sub_1DD450388();
            if (v105)
            {
              goto LABEL_83;
            }

            v102 = &v190;
            v222 = v203;
            v223 = v198;
            MEMORY[0x1EEE9AC00](v105);
            OUTLINED_FUNCTION_31_0();
            *(v106 - 16) = &v222;
            OUTLINED_FUNCTION_15_37();
            v107 = sub_1DD450388();
            if (v107)
            {
              goto LABEL_83;
            }

            v102 = &v190;
            v222 = v201;
            v223 = v202;
            MEMORY[0x1EEE9AC00](v107);
            OUTLINED_FUNCTION_31_0();
            *(v108 - 16) = &v222;
            OUTLINED_FUNCTION_15_37();
            v109 = sub_1DD450388();
            if (v109)
            {
LABEL_83:
              v196 = v104;
              goto LABEL_84;
            }

            v102 = &v190;
            v222 = v199;
            v223 = v200;
            MEMORY[0x1EEE9AC00](v109);
            OUTLINED_FUNCTION_31_0();
            *(v130 - 16) = &v222;
            OUTLINED_FUNCTION_15_37();
            v131 = sub_1DD450388();
            v196 = v104;
            if (!v131)
            {
              v102 = v213;
              if (sub_1DD4F9BB8())
              {
                goto LABEL_91;
              }

              v222 = sub_1DD63D118();
              v223 = v132;
              v220 = 24938;
              v221 = 0xE200000000000000;
              sub_1DD3B52B8();
              sub_1DD3B530C();
              v102 = sub_1DD63FD48();

              if (v102 & 1) != 0 || (v222 = sub_1DD63D118(), v223 = v133, v220 = 28523, v221 = 0xE200000000000000, v102 = sub_1DD63FD48(), , (v102))
              {
LABEL_91:
                OUTLINED_FUNCTION_4_62();
                v137 = sub_1DD53BD44(v134, v135, v136);
                OUTLINED_FUNCTION_12_33(v137);
                v138 = OUTLINED_FUNCTION_7_48();
                v203 = sub_1DD53BD44(v138, v139, v140);
                v118 = v141;

                OUTLINED_FUNCTION_4_62();
                v201 = sub_1DD53BD44(v142, v143, v144);
                v123 = v145;

                OUTLINED_FUNCTION_4_62();
                v127 = sub_1DD53BD44(v146, v147, v148);
LABEL_85:
                v199 = v127;
                v129 = v128;
              }

              else
              {
                OUTLINED_FUNCTION_4_62();
                v152 = sub_1DD53BF3C(v149, v150, v151);
                OUTLINED_FUNCTION_12_33(v152);
                v153 = OUTLINED_FUNCTION_7_48();
                v156 = sub_1DD53BF3C(v153, v154, v155);
                v118 = v157;

                v201 = sub_1DD53BF3C(v156, v118, v96);
                v123 = v158;

                v203 = v156;
                v199 = sub_1DD53BF3C(v156, v118, v96);
                v129 = v159;
              }

              v204 = v102;
              v198 = v118;
              v202 = v123;
              v200 = v129;
              v15 = v193;
              v14 = v194;
              a2 = v191;
              goto LABEL_9;
            }

LABEL_84:
            OUTLINED_FUNCTION_4_62();
            v113 = sub_1DD53BC5C(v110, v111, v112);
            OUTLINED_FUNCTION_12_33(v113);
            v114 = OUTLINED_FUNCTION_7_48();
            v203 = sub_1DD53BC5C(v114, v115, v116);
            v118 = v117;

            OUTLINED_FUNCTION_4_62();
            v201 = sub_1DD53BC5C(v119, v120, v121);
            v123 = v122;

            OUTLINED_FUNCTION_4_62();
            v127 = sub_1DD53BC5C(v124, v125, v126);
            goto LABEL_85;
          }

          goto LABEL_25;
        }

        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1E12B2C10](v41, v39);
        }

        else
        {
          if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_111;
          }

          v42 = *(v39 + 8 * v41 + 32);
        }

        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        a2 = v42;
        v44 = [a2 text];
        if (v44)
        {
          v45 = v44;
          v46 = sub_1DD63FDD8();
          v215 = v47;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = *(v38 + 16);
            sub_1DD3BE2A4();
            v38 = v53;
          }

          v49 = *(v38 + 16);
          v48 = *(v38 + 24);
          a2 = v49 + 1;
          if (v49 >= v48 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v48);
            sub_1DD3BE2A4();
            v38 = v54;
          }

          *(v38 + 16) = a2;
          v50 = v38 + 16 * v49;
          v51 = v215;
          *(v50 + 32) = v46;
          *(v50 + 40) = v51;
          v41 = v43;
        }

        else
        {

          ++v41;
        }
      }

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
      OUTLINED_FUNCTION_0_5();
    }

    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_2_4(v23))
    {
      goto LABEL_23;
    }

    v24 = v18;
    v25 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_9_44(v25);
    v27 = v22;
    v28 = "interpretations < 2 for phrase %{public}ld, skipping phrase";
    goto LABEL_22;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v160 = sub_1DD63F9F8();
  __swift_project_value_buffer(v160, qword_1EE16F068);
  v161 = sub_1DD63F9D8();
  v162 = sub_1DD640378();
  if (OUTLINED_FUNCTION_4_0(v162))
  {
    v163 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16_38(v163);
    v166 = "no need to fetch speech alternatives for NLv3 person";
    goto LABEL_103;
  }

LABEL_105:

LABEL_106:
  memcpy(a2, v230, 0x108uLL);
  return sub_1DD3C9478(v230, v229);
}

uint64_t sub_1DD53BC5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (v8[0] = a1, v8[1] = a2, MEMORY[0x1EEE9AC00](a1), OUTLINED_FUNCTION_31_0(), *(v6 - 16) = v8, sub_1DD450388()))
  {
    v8[0] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    return OUTLINED_FUNCTION_11_42();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1DD53BD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  swift_bridgeObjectRetain_n();
  v6 = (a3 + 40);
  v7 = v5;
  if (v5)
  {
    while (1)
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      sub_1DD3B7F10();

      if (sub_1DD6406D8())
      {
        break;
      }

      v6 += 2;
      if (!--v7)
      {
        goto LABEL_4;
      }
    }

    swift_bridgeObjectRelease_n();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4();
    v10 = (a3 + 40);
    do
    {
      v18 = *(v10 - 1);
      v19 = *v10;
      v11 = OUTLINED_FUNCTION_8_51();
      v13 = v12;
      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v14);
        sub_1DD42A2D4();
      }

      *(v20 + 16) = v15 + 1;
      v16 = v20 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v10 += 2;
      --v5;
    }

    while (v5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    a1 = OUTLINED_FUNCTION_11_42();
  }

  else
  {
LABEL_4:
    swift_bridgeObjectRelease_n();
  }

  return a1;
}

uint64_t sub_1DD53BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v29 - v8;
  v9 = *(a3 + 16);
  v29 = v9;
  v30 = a3;
  v10 = (a3 + 40);
  if (v9)
  {
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v39 = a1;
      v40 = a2;
      v37 = 25180;
      v38 = 0xE200000000000000;

      MEMORY[0x1E12B2260](v12, v11);
      MEMORY[0x1E12B2260](25180, 0xE200000000000000);
      v13 = sub_1DD63D168();
      v14 = v33;
      __swift_storeEnumTagSinglePayload(v33, 1, 1, v13);
      sub_1DD3B7F10();
      sub_1DD6406A8();
      v16 = v15;
      sub_1DD401EB8(v14);

      if ((v16 & 1) == 0)
      {
        break;
      }

      v10 += 2;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }

    v33 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    v17 = v29;
    sub_1DD42A2D4();
    v18 = v36;
    v19 = (v30 + 40);
    v31 = v12;
    v32 = a2;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v39 = v33;
      v40 = a2;
      v37 = v12;
      v38 = v11;
      v34 = v20;
      v35 = v21;
      v22 = OUTLINED_FUNCTION_8_51();
      v24 = v23;
      v36 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v25);
        sub_1DD42A2D4();
        v18 = v36;
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 += 2;
      --v17;
      v12 = v31;
      a2 = v32;
    }

    while (v17);

    v39 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    a1 = OUTLINED_FUNCTION_11_42();
  }

  else
  {
LABEL_4:
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_11_42()
{

  return sub_1DD63FD58();
}

uint64_t OUTLINED_FUNCTION_12_33(uint64_t a1)
{
  *(v1 + 120) = a1;
}

uint64_t sub_1DD53C21C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE648, &unk_1DD6586A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6504B0;
  *(inited + 32) = 0x746C7561666564;
  *(inited + 40) = 0xE700000000000000;
  v41 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 48) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:)(12, 0, 0, &v41);
  *(inited + 56) = 21569;
  *(inited + 64) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v1 = OUTLINED_FUNCTION_0_109();
  *(inited + 72) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 1, 59, 59, v5);
  *(inited + 80) = 20035;
  *(inited + 88) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v6 = OUTLINED_FUNCTION_0_109();
  *(inited + 96) = OUTLINED_FUNCTION_2_78(v6, v7, v8, v9, v10, v11, v12, v13);
  *(inited + 104) = 17732;
  *(inited + 112) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v14 = OUTLINED_FUNCTION_0_109();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v14, v15, v16, v17, 1, 59, 59, v18);
  *(inited + 128) = 19272;
  *(inited + 136) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v19 = OUTLINED_FUNCTION_0_109();
  *(inited + 144) = OUTLINED_FUNCTION_2_78(v19, v20, v21, v22, v23, v24, v25, v26);
  *(inited + 152) = 21317;
  *(inited + 160) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v27 = OUTLINED_FUNCTION_0_109();
  *(inited + 168) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v27, v28, v29, v30, 2, 59, 59, v31);
  *(inited + 176) = 22356;
  *(inited + 184) = 0xE200000000000000;
  v41 = 1;
  swift_allocObject();
  v32 = OUTLINED_FUNCTION_0_109();
  *(inited + 192) = OUTLINED_FUNCTION_2_78(v32, v33, v34, v35, v36, v37, v38, v39);
  return sub_1DD63FC88();
}

uint64_t sub_1DD53C3D8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v67 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v7 = *(*(v74 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v74);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64[-v11];
  sub_1DD4BF298(a1, &v64[-v11]);
  v13 = v12[3];
  v14 = v12[4];
  OUTLINED_FUNCTION_0_110();
  if (v15)
  {

    v16 = OUTLINED_FUNCTION_1_91();
    v5 = v13;
    if (v13)
    {

      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v3 = v16;
    v4 = v17;
    swift_bridgeObjectRelease_n();
    v12[3] = v3;
    v12[4] = v4;
  }

  v18 = v12[5];
  v19 = v12[6];
  OUTLINED_FUNCTION_0_110();
  if (v20)
  {

    OUTLINED_FUNCTION_1_91();
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v12[5] = v3;
    v12[6] = v4;
  }

  v21 = v12[7];
  v22 = v12[8];
  OUTLINED_FUNCTION_0_110();
  if (v23)
  {

    OUTLINED_FUNCTION_1_91();
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v12[7] = v3;
    v12[8] = v4;
  }

  v24 = v12[9];
  v25 = v12[10];
  OUTLINED_FUNCTION_0_110();
  if (v26)
  {

    OUTLINED_FUNCTION_1_91();
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v12[9] = v3;
    v12[10] = v4;
  }

  v27 = v12[11];
  v28 = v12[12];
  OUTLINED_FUNCTION_0_110();
  if (v29)
  {

    OUTLINED_FUNCTION_1_91();
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v12[11] = v3;
    v12[12] = v4;
  }

  v30 = v12[15];
  v31 = v12[16];
  OUTLINED_FUNCTION_0_110();
  if (v32)
  {

    OUTLINED_FUNCTION_1_91();
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v12[15] = v3;
    v12[16] = v4;
  }

  v33 = v12[17];
  v34 = v12[18];
  OUTLINED_FUNCTION_0_110();
  if (v35)
  {

    OUTLINED_FUNCTION_1_91();
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v12[17] = v3;
    v12[18] = v4;
  }

  v36 = v12[19];
  v37 = v12[20];
  OUTLINED_FUNCTION_0_110();
  if (v38)
  {

    OUTLINED_FUNCTION_1_91();
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v12[19] = v3;
    v12[20] = v4;
  }

  if (v12[23])
  {
    v39 = v12[22];
    v40 = v12[23];

    v41 = OUTLINED_FUNCTION_1_91();
    v43 = v42;

    if (v39)
    {
      return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v44 = v12[23];

    v12[22] = v41;
    v12[23] = v43;
  }

  v45 = v74;
  v46 = v12 + *(v74 + 36);
  v46[*(type metadata accessor for ContactResolver.SignalSet(0) + 184)] = 1;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v47 = sub_1DD63F9F8();
  __swift_project_value_buffer(v47, qword_1EE16F068);
  sub_1DD4BF298(a1, v10);
  v48 = sub_1DD63F9D8();
  v49 = sub_1DD640368();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68[0] = v66;
    *v50 = 136315394;
    memcpy(v70, v10, sizeof(v70));
    memcpy(v73, v10, 0x108uLL);
    sub_1DD3C9478(v70, v72);
    v65 = v49;
    v51 = ContactQuery.description.getter();
    v53 = v52;
    memcpy(v71, v73, sizeof(v71));
    sub_1DD3C9580(v71);
    sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    v54 = sub_1DD39565C(v51, v53, v68);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    swift_beginAccess();
    OUTLINED_FUNCTION_5_65(v72);
    OUTLINED_FUNCTION_5_65(v69);
    sub_1DD3C9478(v72, v73);
    v55 = ContactQuery.description.getter();
    v57 = v56;
    memcpy(v73, v69, 0x108uLL);
    sub_1DD3C9580(v73);
    v58 = sub_1DD39565C(v55, v57, v68);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_1DD38D000, v48, v65, "Original Query: %s\n\nNormalized Query: %s", v50, 0x16u);
    v59 = v66;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v59, -1, -1);
    v45 = v74;
    MEMORY[0x1E12B3DA0](v50, -1, -1);
  }

  else
  {

    sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_5_65(v70);
  OUTLINED_FUNCTION_5_65(v69);
  memcpy(v71, a1, sizeof(v71));
  memcpy(v68, a1, sizeof(v68));
  sub_1DD3C9478(v70, v73);
  sub_1DD3C9478(v71, v73);
  v60 = static ContactQuery.== infix(_:_:)(v69, v68);
  memcpy(v72, v68, sizeof(v72));
  sub_1DD3C9580(v72);
  memcpy(v73, v69, 0x108uLL);
  sub_1DD3C9580(v73);
  if (v60)
  {
    v61 = 1;
    v62 = v67;
  }

  else
  {
    v62 = v67;
    sub_1DD4BF298(v12, v67);
    v61 = 0;
  }

  __swift_storeEnumTagSinglePayload(v62, v61, 1, v45);
  return sub_1DD3D40D8(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
}

uint64_t sub_1DD53C9B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE658, &qword_1DD664070);
  v4 = sub_1DD63DA78();
  OUTLINED_FUNCTION_4_63(v4);
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  (*(v6 + 104))(v10 + v9, *MEMORY[0x1E69B2898], v2);
  v11 = sub_1DD63DAA8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1DD63DA98();
  if (v1)
  {
    v14 = sub_1DD63D168();
    OUTLINED_FUNCTION_2_0(v14);
    (*(v15 + 8))(a1);
  }

  else
  {
    v2 = sub_1DD63DA88();
    v17 = sub_1DD63D168();
    OUTLINED_FUNCTION_2_0(v17);
    (*(v18 + 8))(a1);
  }

  return v2;
}

unint64_t sub_1DD53CB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE650, &unk_1DD658720);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1DD63DAE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v29 = a1;
  sub_1DD63DA58();
  sub_1DD53D0F0(&qword_1EE165CB0);
  sub_1DD640068();
  sub_1DD53D0F0(&qword_1EE165CA8);
  v13 = (v7 + 32);
  v25 = v7;
  v14 = (v7 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD640628();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      break;
    }

    v15 = *v13;
    (*v13)(v12, v5, v6);
    if (sub_1DD63DAD8())
    {
      v15(v26, v12, v6);
      v16 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B9B0(0, *(v16 + 16) + 1, 1);
        v16 = v28;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v27 = v19 + 1;
        v24 = v19;
        sub_1DD42B9B0(v18 > 1, v19 + 1, 1);
        v20 = v27;
        v19 = v24;
        v16 = v28;
      }

      *(v16 + 16) = v20;
      v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = v16;
      v15((v16 + v21 + *(v25 + 72) * v19), v26, v6);
    }

    else
    {
      (*v14)(v12, v6);
    }
  }

  sub_1DD3D40D8(v5, &qword_1ECCDE650, &unk_1DD658720);
  return v27;
}

uint64_t sub_1DD53CE90()
{
  v2 = v0;
  v3 = sub_1DD63DAE8();
  v4 = OUTLINED_FUNCTION_4_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD63DA68();
  if (!v0)
  {
    v12 = sub_1DD53CB80(v11);
    v13 = *(v12 + 16);
    if (v13)
    {
      v31 = v10;
      v27[2] = 0;
      v33 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v14 = v33;
      v16 = *(v6 + 16);
      v15 = v6 + 16;
      v17 = *(v15 + 64);
      v27[1] = v12;
      v18 = v12 + ((v17 + 32) & ~v17);
      v29 = *(v15 + 56);
      v30 = v16;
      v28 = (v15 - 8);
      v32 = v15;
      do
      {
        v19 = v31;
        v30(v31, v18, v1);
        v20 = sub_1DD63DAC8();
        v22 = v21;
        v23 = v1;
        (*v28)(v19, v1);
        v33 = v14;
        v24 = *(v14 + 16);
        if (v24 >= *(v14 + 24) >> 1)
        {
          sub_1DD42A2D4();
          v14 = v33;
        }

        *(v14 + 16) = v24 + 1;
        v25 = v14 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v18 += v29;
        --v13;
        v1 = v23;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v33 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v2 = sub_1DD63FD58();
  }

  return v2;
}

uint64_t sub_1DD53D0F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63DA58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD53D150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD53D190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD53D1F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1DD42B3E4(0, v1, 0);
  v2 = v31;
  result = sub_1DD55B198(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_1DD42B3E4((v14 > 1), v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = 0;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1DD3AA558(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD53D430(uint64_t a1, uint64_t a2)
{
  v12 = *v2;
  v11 = *(v2 + 2);
  v6 = *(v2 + 5);
  v5 = *(v2 + 6);
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = v2[2];
  *(v7 + 64) = *(v2 + 6);
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  sub_1DD406EC4(&v12, v10);
  sub_1DD53DB8C(&v11, v10);

  sub_1DD63D9C8();
}

void sub_1DD53D50C(uint64_t *a1, double *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v54 = sub_1DD63D4F8();
  v53 = *(v54 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_1DD63D078();
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = *a1;
  v15 = *(a2 + 4);
  v16 = *(a2 + 5);
  v60 = v51 - v17;
  v15(v13);
  v58 = a2;
  v18 = *(a2 + 2);
  v19 = sub_1DD53D1F0(v18);
  v20 = sub_1DD3B80F8(v19);
  v21 = sub_1DD3CC020(v14);
  if (!v21)
  {
LABEL_34:
    v48 = v52;
    *v52 = v20;
    v49 = v53;
    v50 = v54;
    (*(v53 + 104))(v48, *MEMORY[0x1E69D2B60], v54);

    v56(v48);
    (*(v49 + 8))(v48, v50);
    (*(v8 + 8))(v60, v59);

    return;
  }

  v22 = v21;
  v23 = 0;
  v66 = v14 & 0xC000000000000001;
  v63 = v14 & 0xFFFFFFFFFFFFFF8;
  v64 = v21;
  v61 = v11;
  v62 = v14 + 32;
  v57 = (v8 + 8);
  while (1)
  {
    if (v66)
    {
      v24 = MEMORY[0x1E12B2C10](v23, v14);
    }

    else
    {
      if (v23 >= *(v63 + 16))
      {
        goto LABEL_36;
      }

      v24 = *(v62 + 8 * v23);
    }

    v25 = v24;
    v26 = __OFADD__(v23++, 1);
    if (v26)
    {
      break;
    }

    v27 = sub_1DD4EF3B8(v24);
    if (!v28)
    {
      goto LABEL_25;
    }

    v29 = v28;
    if (!*(v18 + 16))
    {

LABEL_25:

      goto LABEL_30;
    }

    v30 = v27;
    v65 = v20;
    v31 = v14;
    v32 = *(v18 + 40);
    sub_1DD640E28();
    sub_1DD63FD28();
    v33 = sub_1DD640E78();
    v34 = ~(-1 << *(v18 + 32));
    do
    {
      v35 = v33 & v34;
      if (((*(v18 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
      {
        goto LABEL_28;
      }

      v36 = (*(v18 + 48) + 16 * v35);
      if (*v36 == v30 && v29 == v36[1])
      {
        break;
      }

      v38 = sub_1DD640CD8();
      v33 = v35 + 1;
    }

    while ((v38 & 1) == 0);
    v39 = [v25 absoluteTimestamp];
    if (!v39)
    {
      goto LABEL_28;
    }

    v40 = v39;
    v41 = v61;
    sub_1DD63D048();

    sub_1DD63CF88();
    if (v42 >= v58[3])
    {
      (*v57)(v41, v59);
LABEL_28:

      v14 = v31;
      v20 = v65;
      goto LABEL_29;
    }

    if ([v25 playbackState] != 1)
    {
      (*v57)(v61, v59);
      goto LABEL_28;
    }

    v43 = v65;
    v14 = v31;
    if (*(v65 + 16))
    {
      v44 = sub_1DD3978DC();
      v20 = v43;
      if (v45)
      {
        v46 = *(*(v43 + 56) + 8 * v44);
        v26 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v26)
        {
          goto LABEL_37;
        }

        v51[1] = v47;
        swift_isUniquelyReferenced_nonNull_native();
        v67 = v43;
        sub_1DD3FFCE8();

        (*v57)(v61, v59);
        v20 = v67;
      }

      else
      {
        (*v57)(v61, v59);
      }
    }

    else
    {
      (*v57)(v61, v59);

      v20 = v43;
    }

LABEL_29:
    v22 = v64;
LABEL_30:
    if (v23 == v22)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1DD53DA28()
{
  v0 = qword_1ECCDE660;

  return v0;
}

uint64_t sub_1DD53DA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53DB2C();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD53DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53DB2C();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD53DB2C()
{
  result = qword_1ECCDE670;
  if (!qword_1ECCDE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE670);
  }

  return result;
}

uint64_t sub_1DD53DB8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD10, &qword_1DD6589F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD53DC10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DD42B3E4(0, v3, 0);
    v5 = v41;
    result = sub_1DD55B198(v4);
    v8 = result;
    v10 = v9;
    v11 = 0;
    v40 = v4 + 56;
    v33 = v4 + 64;
    v34 = v3;
    v35 = v4;
    v36 = a2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v12 = v8 >> 6;
        if ((*(v40 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_34;
        }

        v37 = v11;
        v38 = v7;
        v13 = (*(v4 + 48) + 16 * v8);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(a2 + 16);

        if (v16)
        {

          v17 = sub_1DD3978DC();
          if (v18)
          {
            v19 = *(*(a2 + 56) + 8 * v17);
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        v22 = v38;
        if (v21 >= v20 >> 1)
        {
          result = sub_1DD42B3E4((v20 > 1), v21 + 1, 1);
          v22 = v38;
        }

        *(v5 + 16) = v21 + 1;
        v23 = (v5 + 24 * v21);
        v23[4] = v15;
        v23[5] = v14;
        v23[6] = v19;
        if (v10)
        {
          goto LABEL_38;
        }

        v4 = v35;
        a2 = v36;
        v24 = 1 << *(v35 + 32);
        if (v8 >= v24)
        {
          goto LABEL_35;
        }

        v25 = *(v40 + 8 * v12);
        if ((v25 & (1 << v8)) == 0)
        {
          goto LABEL_36;
        }

        if (*(v35 + 36) != v22)
        {
          goto LABEL_37;
        }

        v26 = v25 & (-2 << (v8 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v27 = v34;
        }

        else
        {
          v39 = v5;
          v28 = v12 << 6;
          v29 = v12 + 1;
          v27 = v34;
          v30 = (v33 + 8 * v12);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_1DD3AA558(v8, v22, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_25;
            }
          }

          result = sub_1DD3AA558(v8, v22, 0);
LABEL_25:
          v5 = v39;
        }

        v11 = v37 + 1;
        if (v37 + 1 == v27)
        {

          return v5;
        }

        v10 = 0;
        v7 = *(v35 + 36);
        v8 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD53DEE4(uint64_t a1, uint64_t a2)
{
  v12 = *v2;
  v11 = *(v2 + 2);
  v6 = *(v2 + 5);
  v5 = *(v2 + 6);
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = v2[2];
  *(v7 + 64) = *(v2 + 6);
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  sub_1DD406EC4(&v12, v10);
  sub_1DD53DB8C(&v11, v10);

  sub_1DD63D9C8();
}

uint64_t sub_1DD53DFC0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v72 = a4;
  v73 = a3;
  v6 = sub_1DD63D4F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70 = (v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1DD63D078();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v63 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v63 - v20;
  v22 = *a1;
  v23 = *(a2 + 40);
  (*(a2 + 32))(v19);
  v24 = -*(a2 + 24);
  sub_1DD63CF98();
  v68 = v17;
  v75 = v17;
  sub_1DD5E82F0(sub_1DD53EB88, v74, v22);
  sub_1DD63CF98();
  v67 = *(a2 + 16);
  v25 = sub_1DD63D8E8();

  v26 = *(v11 + 8);
  v71 = v10;
  v69 = v11 + 8;
  result = v26(v14, v10);
  v28 = 0;
  v29 = v25 + 64;
  v30 = 1 << *(v25 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v25 + 64);
  v33 = (v30 + 63) >> 6;
  v34 = 0.0;
  if (v32)
  {
    while (1)
    {
      v35 = v28;
LABEL_9:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v34 = v34 + *(*(v25 + 56) + ((v35 << 9) | (8 * v36)));
      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v35 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v35 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v35);
    ++v28;
    if (v32)
    {
      v28 = v35;
      goto LABEL_9;
    }
  }

  v63[1] = 0;
  v64 = v26;
  v65 = v7;
  v66 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
  result = sub_1DD640A58();
  v37 = result;
  v38 = 0;
  v39 = 1 << *(v25 + 32);
  v40 = *(v25 + 64);
  v41 = -1;
  if (v39 < 64)
  {
    v41 = ~(-1 << v39);
  }

  v42 = v41 & v40;
  v43 = (v39 + 63) >> 6;
  v44 = result + 64;
  if ((v41 & v40) == 0)
  {
LABEL_15:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_28;
      }

      if (v38 >= v43)
      {

        v56 = sub_1DD53DC10(v67, v37);

        v57 = sub_1DD3B80F8(v56);
        v58 = v70;
        *v70 = v57;
        v60 = v65;
        v59 = v66;
        (*(v65 + 104))(v58, *MEMORY[0x1E69D2B60], v66);
        v73(v58);
        (*(v60 + 8))(v58, v59);
        v61 = v71;
        v62 = v64;
        v64(v21, v71);
        return v62(v68, v61);
      }

      v47 = *(v29 + 8 * v38);
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v42 = (v47 - 1) & v47;
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v45 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_20:
    v48 = v45 | (v38 << 6);
    v49 = round(*(*(v25 + 56) + 8 * v48) * 1000.0 / v34);
    if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v49 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v49 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v50 = (*(v25 + 48) + 16 * v48);
    v51 = *v50;
    result = v50[1];
    *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v52 = (v37[6] + 16 * v48);
    *v52 = v51;
    v52[1] = result;
    *(v37[7] + 8 * v48) = v49;
    v53 = v37[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_32;
    }

    v37[2] = v55;

    if (!v42)
    {
      goto LABEL_15;
    }
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DD53E4C0@<X0>(void **a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v6 = sub_1DD63D918();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD63D8F8();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = v52 - v13;
  v14 = sub_1DD63D078();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v52 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v52 - v23;
  v25 = *a1;
  v26 = sub_1DD4EF3B8(*a1);
  if (!v27)
  {
    goto LABEL_13;
  }

  v52[1] = v26;
  v60 = a3;
  v28 = [v25 absoluteTimestamp];
  if (!v28)
  {

LABEL_12:
    a3 = v60;
LABEL_13:
    v38 = sub_1DD63D8D8();
    v39 = a3;
    return __swift_storeEnumTagSinglePayload(v39, 1, 1, v38);
  }

  v29 = v28;
  v52[2] = v3;
  sub_1DD63D048();

  v30 = *(v15 + 32);
  v30(v24, v21, v14);
  if ((sub_1DD63CFB8() & 1) == 0)
  {
    (*(v15 + 8))(v24, v14);

    goto LABEL_12;
  }

  v61 = v30;
  v31 = sub_1DD4EF3B8(v25);
  if (v32)
  {
    v33 = v31;
    v34 = v32;

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {
      goto LABEL_15;
    }
  }

  v36 = [v25 bundleID];
  if (v36)
  {

    v37 = &selRef_setUnderlyingQueue_;
  }

  else
  {
LABEL_15:
    v37 = &selRef_setUnderlyingQueue_;
    if (![v25 playbackState])
    {

      v47 = v60;
      v61(v60, v24, v14);
      v48 = MEMORY[0x1E69D2C58];
      goto LABEL_22;
    }
  }

  v41 = [v25 v37[19]];
  v42 = v60;
  if (v41 - 2 < 4)
  {
    v43 = MEMORY[0x1E69D2C68];
LABEL_18:
    v44 = v55;
    v45 = v56;
    v46 = v53;
    (*(v55 + 104))(v53, *v43, v56);
    (*(v15 + 16))(v18, v24, v14);
    (*(v44 + 16))(v54, v46, v45);
    sub_1DD63D908();
    (*(v44 + 8))(v46, v45);
    (*(v15 + 8))(v24, v14);
    v47 = v60;
    (*(v57 + 32))(v60, v59, v58);
    v48 = MEMORY[0x1E69D2C50];
LABEL_22:
    v50 = *v48;
    v51 = sub_1DD63D8D8();
    (*(*(v51 - 8) + 104))(v47, v50, v51);
    return __swift_storeEnumTagSinglePayload(v47, 0, 1, v51);
  }

  v49 = v41;
  if (v41 == 1)
  {
    v43 = MEMORY[0x1E69D2C70];
    goto LABEL_18;
  }

  if (!v41)
  {
    (*(v15 + 8))(v24, v14);

    v38 = sub_1DD63D8D8();
    v39 = v42;
    return __swift_storeEnumTagSinglePayload(v39, 1, 1, v38);
  }

  type metadata accessor for BMMediaNowPlayingPlaybackState(0);
  v62 = v49;
  result = sub_1DD640D38();
  __break(1u);
  return result;
}

uint64_t sub_1DD53EA24()
{
  v0 = qword_1ECCDE678;

  return v0;
}

uint64_t sub_1DD53EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53EB28();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD53EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53EB28();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD53EB28()
{
  result = qword_1ECCDE688;
  if (!qword_1ECCDE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE688);
  }

  return result;
}

uint64_t DateTime.Date.Holiday.ObservanceType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD53EBCC()
{
  result = qword_1ECCDE690;
  if (!qword_1ECCDE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE690);
  }

  return result;
}

uint64_t sub_1DD53EC28@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.ObservanceType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s14ObservanceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD53EDDC()
{
  result = qword_1ECCDE698;
  if (!qword_1ECCDE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE698);
  }

  return result;
}

__n128 Occupant.init(firstName:lastName:fullName:nickName:relationship:selfReference:company:namePrefix:namePostfix:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, __int16 *a8@<X7>, uint64_t a9@<X8>, __int16 *a10)
{
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  v12 = *(a3 + 16);
  v13 = *(a4 + 16);
  v14 = *(a5 + 16);
  v15 = *(a6 + 16);
  v16 = a7[1].n128_u16[0];
  v17 = *a8;
  v18 = *a10;
  *a9 = *a1;
  *(a9 + 16) = v10;
  *(a9 + 24) = *a2;
  *(a9 + 40) = v11;
  *(a9 + 48) = *a3;
  *(a9 + 64) = v12;
  *(a9 + 72) = *a4;
  *(a9 + 88) = v13;
  *(a9 + 96) = *a5;
  *(a9 + 112) = v14;
  *(a9 + 120) = *a6;
  *(a9 + 136) = v15;
  result = *a7;
  *(a9 + 144) = *a7;
  *(a9 + 160) = v16;
  *(a9 + 162) = v17;
  *(a9 + 164) = v18;
  return result;
}

double sub_1DD53EEB8@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[4];
  v24 = v1[3];
  v25 = *v1;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[10];
  v23 = v1[9];
  v8 = v1[13];
  v10 = v1[18];
  v9 = v1[19];
  if (v8)
  {
    v11 = v1[12];

    sub_1DD4178B4(0, 0, 0);
  }

  else
  {

    v11 = 0;
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = 0;
  if (v5)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  if (v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  v17 = v23;
  v18 = v24;
  if (!v7)
  {
    v17 = 0;
  }

  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  if (!v4)
  {
    v18 = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v20 = v25;
  if (v3)
  {
    v21 = v3;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  *(a1 + 56) = v20;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = v17;
  *(a1 + 144) = v16;
  *(a1 + 152) = v13;
  *(a1 + 160) = v12;
  *(a1 + 168) = 0;
  *(a1 + 176) = v11;
  *(a1 + 184) = v8;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 240) = MEMORY[0x1E69E7CC0];
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  return result;
}

uint64_t Occupant.firstName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return OUTLINED_FUNCTION_2_3(v1[1], a1);
}

uint64_t Occupant.lastName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return OUTLINED_FUNCTION_2_3(*(v1 + 32), a1);
}

uint64_t Occupant.fullName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 64);
  return OUTLINED_FUNCTION_2_3(*(v1 + 56), a1);
}

uint64_t Occupant.nickName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 88);
  return OUTLINED_FUNCTION_2_3(*(v1 + 80), a1);
}

uint64_t Occupant.relationship.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Occupant.selfReference.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 136);
  return OUTLINED_FUNCTION_2_3(*(v1 + 128), a1);
}

uint64_t Occupant.company.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 160);
  return OUTLINED_FUNCTION_2_3(*(v1 + 152), a1);
}

uint64_t static Occupant.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = *(a1 + 20);
  v80 = a1[6];
  v81 = a1[7];
  v79 = *(a1 + 32);
  v75 = a1[9];
  v77 = a1[10];
  v74 = *(a1 + 44);
  v5 = a1[13];
  v70 = a1[12];
  v69 = *(a1 + 112);
  v7 = a1[15];
  v6 = a1[16];
  v8 = *(a1 + 68);
  v9 = a1[18];
  v10 = a1[19];
  v11 = *(a1 + 80);
  v12 = *(a1 + 81);
  v13 = *(a1 + 82);
  v14 = a2[1];
  v16 = a2[3];
  v15 = a2[4];
  v17 = *(a2 + 20);
  v18 = a2[7];
  v78 = a2[6];
  v19 = *(a2 + 32);
  v72 = a2[9];
  v76 = a2[10];
  v71 = *(a2 + 44);
  v68 = a2[12];
  v73 = a2[13];
  v67 = *(a2 + 112);
  v21 = a2[15];
  v20 = a2[16];
  v22 = *(a2 + 68);
  v23 = a2[18];
  v24 = a2[19];
  v25 = *(a2 + 80);
  v26 = *(a2 + 81);
  v27 = *(a2 + 82);
  if (a1[1])
  {
    v64 = HIBYTE(*(a2 + 68));
    v65 = a1[15];
    v28 = *a2;
    v29 = *(a2 + 8);
    v82 = *a1;
    v83 = *(a1 + 8);
    if (!v14)
    {
      goto LABEL_21;
    }

    v62 = a1[16];
    v63 = a1[13];
    v60 = a1[19];
    v61 = a2[16];
    v56 = HIBYTE(*(a2 + 80));
    v57 = a1[18];
    v59 = a2[19];
    v55 = *(a2 + 81);
    v54 = *(a2 + 82);
    swift_bridgeObjectRetain_n();

    v30 = OUTLINED_FUNCTION_7_49();
    v32 = static OccupantName.== infix(_:_:)(v30, v31);

    if ((v32 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v2)
    {
LABEL_5:
      if (!v15)
      {
        goto LABEL_21;
      }

      swift_bridgeObjectRetain_n();

      v33 = OUTLINED_FUNCTION_7_49();
      v35 = static OccupantName.== infix(_:_:)(v33, v34);

      if ((v35 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_21;
    }

    v64 = HIBYTE(*(a2 + 68));
    v66 = a1[15];
    v62 = a1[16];
    v63 = a1[13];
    v60 = a1[19];
    v61 = a2[16];
    v56 = HIBYTE(*(a2 + 80));
    v58 = a1[18];
    v59 = a2[19];
    v55 = *(a2 + 81);
    v54 = *(a2 + 82);

    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (v15)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v81)
  {
    if (!v18)
    {
      goto LABEL_21;
    }

    swift_bridgeObjectRetain_n();

    v36 = OUTLINED_FUNCTION_7_49();
    static OccupantName.== infix(_:_:)(v36, v37);
    OUTLINED_FUNCTION_9_45();

    if ((v2 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_21;
    }
  }

  if (v77)
  {
    if (!v76)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_8_52(SHIBYTE(v71));
    swift_bridgeObjectRetain_n();

    v40 = OUTLINED_FUNCTION_7_49();
    static OccupantName.== infix(_:_:)(v40, v41);
    OUTLINED_FUNCTION_9_45();

    if ((v76 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v76)
    {
      goto LABEL_21;
    }
  }

  if (v63)
  {
    if (!v73)
    {
      goto LABEL_21;
    }

    swift_bridgeObjectRetain_n();

    v42 = OUTLINED_FUNCTION_7_49();
    static OccupantRelationship.== infix(_:_:)(v42, v43);
    OUTLINED_FUNCTION_9_45();

    if ((v73 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v73)
    {
      goto LABEL_21;
    }
  }

  if (v62)
  {
    if (!v61)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_8_52(v64);
    swift_bridgeObjectRetain_n();

    v44 = OUTLINED_FUNCTION_7_49();
    static OccupantName.== infix(_:_:)(v44, v45);
    OUTLINED_FUNCTION_9_45();

    if ((v61 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v61)
    {
      goto LABEL_21;
    }
  }

  if (v60)
  {
    if (v59)
    {
      OUTLINED_FUNCTION_8_52(v56);
      swift_bridgeObjectRetain_n();

      v46 = OUTLINED_FUNCTION_7_49();
      static OccupantName.== infix(_:_:)(v46, v47);
      OUTLINED_FUNCTION_9_45();

      if ((v59 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_53;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v59)
  {
    goto LABEL_21;
  }

LABEL_53:
  OUTLINED_FUNCTION_10_41();
  if (v48)
  {
    if ((v55 & 0xFF00) != 0x300)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_41();
    if (v48)
    {
      goto LABEL_22;
    }

    v49 = OUTLINED_FUNCTION_7_49();
    if ((static OccupantNamePrefix.== infix(_:_:)(v49, v50) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_10_41();
  if (v48)
  {
    v38 = (v54 & 0xFF00) == 768;
    return v38 & 1;
  }

  OUTLINED_FUNCTION_10_41();
  if (!v51)
  {
    v52 = OUTLINED_FUNCTION_7_49();
    v38 = static OccupantNamePostfix.== infix(_:_:)(v52, v53);
    return v38 & 1;
  }

LABEL_22:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1DD53F67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6B63696ELL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65666552666C6573 && a2 == 0xED000065636E6572;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x796E61706D6F63 && a2 == 0xE700000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x74736F50656D616ELL && a2 == 0xEB00000000786966)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1DD640CD8();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1DD53F968(char a1)
{
  result = 0x6D614E7473726966;
  switch(a1)
  {
    case 1:
      v3 = 1953718636;
      goto LABEL_6;
    case 2:
      v3 = 1819047270;
      goto LABEL_6;
    case 3:
      v3 = 1801677166;
LABEL_6:
      result = v3 | 0x656D614E00000000;
      break;
    case 4:
      result = 0x6E6F6974616C6572;
      break;
    case 5:
      result = 0x65666552666C6573;
      break;
    case 6:
      result = 0x796E61706D6F63;
      break;
    case 7:
      result = 0x66657250656D616ELL;
      break;
    case 8:
      result = 0x74736F50656D616ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD53FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD53F67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD53FAA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD53F960();
  *a1 = result;
  return result;
}

uint64_t sub_1DD53FAD0(uint64_t a1)
{
  v2 = sub_1DD5405F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD53FB0C(uint64_t a1)
{
  v2 = sub_1DD5405F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Occupant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE6A0, &qword_1DD658B08);
  v4 = OUTLINED_FUNCTION_0(v3);
  v47 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 8);
  v13 = v1[4];
  v44 = v1[3];
  v45 = v13;
  v51 = *(v1 + 20);
  v14 = v1[6];
  v42 = v1[7];
  v43 = v14;
  LODWORD(v14) = *(v1 + 32);
  v15 = v1[10];
  v38 = v1[9];
  v39 = v15;
  v40 = *(v1 + 44);
  v41 = v14;
  v16 = v1[13];
  v35 = v1[12];
  v36 = v16;
  v37 = *(v1 + 112);
  v17 = v1[16];
  v32 = v1[15];
  v33 = v17;
  v34 = *(v1 + 68);
  v18 = v1[19];
  v29 = v1[18];
  v30 = v18;
  v31 = *(v1 + 80);
  v28 = *(v1 + 81);
  v27 = *(v1 + 82);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5405F0();

  sub_1DD640EF8();
  v48 = v10;
  v49 = v11;
  v50 = v12;
  v52 = 0;
  sub_1DD540644();
  OUTLINED_FUNCTION_1_92();
  v20 = v46;
  sub_1DD640C08();
  if (v20)
  {

    return (*(v47 + 8))(v9, v3);
  }

  else
  {
    v22 = v41;
    v23 = v42;
    v24 = v43;
    v25 = v47;

    v48 = v44;
    v49 = v45;
    v50 = v51;
    v52 = 1;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v48 = v24;
    v49 = v23;
    v50 = v22;
    v52 = 2;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v48 = v38;
    v49 = v39;
    v50 = v40;
    v52 = 3;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v48 = v35;
    v49 = v36;
    LOBYTE(v50) = v37;
    v52 = 4;
    sub_1DD540698();

    OUTLINED_FUNCTION_3_64();
    sub_1DD640C08();

    v48 = v32;
    v49 = v33;
    v50 = v34;
    v52 = 5;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v48 = v29;
    v49 = v30;
    v50 = v31;
    v52 = 6;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    LOWORD(v48) = v28;
    v52 = 7;
    sub_1DD5406EC();
    OUTLINED_FUNCTION_3_64();
    sub_1DD640C08();
    LOWORD(v48) = v27;
    v52 = 8;
    sub_1DD540740();
    OUTLINED_FUNCTION_3_64();
    sub_1DD640C08();
    return (*(v25 + 8))(v9, v3);
  }
}

uint64_t Occupant.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE6D0, &qword_1DD658B10);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[3];
  v10 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DD5405F0();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  sub_1DD540794();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v36 = v39;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v28 = v40;
  v29 = v38;
  v30 = v38;
  v35 = v39;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v27 = v40;
  v34 = v39;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v25 = v40;
  v26 = v38;
  v33 = v39;
  sub_1DD5407E8();
  OUTLINED_FUNCTION_2_80();
  sub_1DD640B18();
  v23 = v38;
  v22 = v40;
  v32 = v39;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v20 = v40;
  v21 = v38;
  v11 = v38;
  v31 = v39;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v12 = v39;
  v19 = v38;
  v18 = v40;
  LOBYTE(v37[0]) = 7;
  sub_1DD54083C();
  OUTLINED_FUNCTION_2_80();
  sub_1DD640B18();
  v17 = v40;
  v16 = v38;
  v64 = 8;
  sub_1DD540890();
  sub_1DD640B18();
  v13 = OUTLINED_FUNCTION_4_64();
  v14(v13);
  v24 = v65;
  v37[0] = v30;
  v37[1] = v36;
  LOWORD(v37[2]) = v28;
  v37[3] = v29;
  v37[4] = v35;
  LOWORD(v37[5]) = v27;
  v37[6] = v26;
  v37[7] = v34;
  LOWORD(v37[8]) = v25;
  v37[9] = v23;
  v37[10] = v33;
  LOWORD(v37[11]) = v22;
  v37[12] = v21;
  v37[13] = v32;
  LOBYTE(v37[14]) = v20;
  v37[15] = v11;
  v37[16] = v31;
  LOWORD(v37[17]) = v17;
  v37[18] = v19;
  v37[19] = v12;
  LOWORD(v37[20]) = v18;
  WORD1(v37[20]) = v16;
  WORD2(v37[20]) = v65;
  memcpy(a2, v37, 0xA6uLL);
  sub_1DD5408E4(v37, &v38);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v38 = v30;
  v39 = v36;
  v40 = v28;
  v41 = v29;
  v42 = v35;
  v43 = v27;
  v44 = v26;
  v45 = v34;
  v46 = v25;
  v47 = v23;
  v48 = v33;
  v49 = v22;
  v50 = v21;
  v51 = v32;
  v52 = v20;
  *v53 = v68[0];
  *&v53[3] = *(v68 + 3);
  v54 = v11;
  v55 = v31;
  v56 = v17;
  v57 = v66;
  v58 = v67;
  v59 = v19;
  v60 = v12;
  v61 = v18;
  v62 = v16;
  v63 = v24;
  return sub_1DD54091C(&v38);
}

unint64_t sub_1DD5405F0()
{
  result = qword_1ECCDE6A8;
  if (!qword_1ECCDE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6A8);
  }

  return result;
}

unint64_t sub_1DD540644()
{
  result = qword_1ECCDE6B0;
  if (!qword_1ECCDE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6B0);
  }

  return result;
}

unint64_t sub_1DD540698()
{
  result = qword_1ECCDE6B8;
  if (!qword_1ECCDE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6B8);
  }

  return result;
}

unint64_t sub_1DD5406EC()
{
  result = qword_1ECCDE6C0;
  if (!qword_1ECCDE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6C0);
  }

  return result;
}

unint64_t sub_1DD540740()
{
  result = qword_1ECCDE6C8;
  if (!qword_1ECCDE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6C8);
  }

  return result;
}

unint64_t sub_1DD540794()
{
  result = qword_1ECCDE6D8;
  if (!qword_1ECCDE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6D8);
  }

  return result;
}

unint64_t sub_1DD5407E8()
{
  result = qword_1ECCDE6E0;
  if (!qword_1ECCDE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6E0);
  }

  return result;
}

unint64_t sub_1DD54083C()
{
  result = qword_1ECCDE6E8;
  if (!qword_1ECCDE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6E8);
  }

  return result;
}

unint64_t sub_1DD540890()
{
  result = qword_1ECCDE6F0;
  if (!qword_1ECCDE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6F0);
  }

  return result;
}

uint64_t sub_1DD540954(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 166))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5409A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 164) = 0;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 166) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 166) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonPlaceName.BoundedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Occupant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD540BA4()
{
  result = qword_1ECCDE6F8;
  if (!qword_1ECCDE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6F8);
  }

  return result;
}

unint64_t sub_1DD540BFC()
{
  result = qword_1ECCDE700;
  if (!qword_1ECCDE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE700);
  }

  return result;
}

unint64_t sub_1DD540C54()
{
  result = qword_1ECCDE708;
  if (!qword_1ECCDE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE708);
  }

  return result;
}

uint64_t OccupantName.Prefix.rawValue.getter()
{
  if (*v0)
  {
    result = 1918985582;
  }

  else
  {
    result = 29793;
  }

  *v0;
  return result;
}

uint64_t OccupantName.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static OccupantName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || (sub_1DD3B2D98(v2 & 1, v4 & 1) & 1) == 0)
  {
    return 0;
  }

  result = v5 == 2 && v3 == 2;
  if (v3 != 2 && v5 != 2)
  {

    return sub_1DD3B2D98(v3 & 1, v5 & 1);
  }

  return result;
}

uint64_t sub_1DD540FD8(uint64_t a1)
{
  v2 = sub_1DD54144C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD541014(uint64_t a1)
{
  v2 = sub_1DD54144C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE710, &qword_1DD658D30);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DD54144C();
  sub_1DD640EF8();
  v29 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_1DD5414A0();
    sub_1DD640C08();
    v26 = v20;
    v25 = 2;
    sub_1DD5414F4();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t OccupantName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE730, &qword_1DD658D38);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54144C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD541548();
  OUTLINED_FUNCTION_3_4();
  sub_1DD54159C();
  OUTLINED_FUNCTION_3_4();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD54144C()
{
  result = qword_1ECCDE718;
  if (!qword_1ECCDE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE718);
  }

  return result;
}

unint64_t sub_1DD5414A0()
{
  result = qword_1ECCDE720;
  if (!qword_1ECCDE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE720);
  }

  return result;
}

unint64_t sub_1DD5414F4()
{
  result = qword_1ECCDE728;
  if (!qword_1ECCDE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE728);
  }

  return result;
}

unint64_t sub_1DD541548()
{
  result = qword_1ECCDE738;
  if (!qword_1ECCDE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE738);
  }

  return result;
}

unint64_t sub_1DD54159C()
{
  result = qword_1ECCDE740;
  if (!qword_1ECCDE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE740);
  }

  return result;
}

unint64_t sub_1DD5415F4()
{
  result = qword_1ECCDE748;
  if (!qword_1ECCDE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE748);
  }

  return result;
}

unint64_t sub_1DD54164C()
{
  result = qword_1ECCDE750;
  if (!qword_1ECCDE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE750);
  }

  return result;
}

_BYTE *sub_1DD5416B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OccupantName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD541870()
{
  result = qword_1ECCDE758;
  if (!qword_1ECCDE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE758);
  }

  return result;
}

unint64_t sub_1DD5418C8()
{
  result = qword_1ECCDE760;
  if (!qword_1ECCDE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE760);
  }

  return result;
}

unint64_t sub_1DD541920()
{
  result = qword_1ECCDE768;
  if (!qword_1ECCDE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE768);
  }

  return result;
}

unint64_t sub_1DD541974()
{
  result = qword_1ECCDE770;
  if (!qword_1ECCDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE770);
  }

  return result;
}

unint64_t sub_1DD5419C8()
{
  result = qword_1ECCDE778;
  if (!qword_1ECCDE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE778);
  }

  return result;
}

SiriInference::OccupantNamePostfix::Value_optional __swiftcall OccupantNamePostfix.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t OccupantNamePostfix.Value.rawValue.getter()
{
  result = 0x726F696E756ALL;
  switch(*v0)
  {
    case 1:
      result = 0x726F696E6573;
      break;
    case 2:
      result = 0x746361746E6F63;
      break;
    case 3:
      result = 7237491;
      break;
    case 4:
      result = 0x6E6F73646E617267;
      break;
    case 5:
      result = 0x77656870656ELL;
      break;
    case 6:
      result = 29293;
      break;
    case 7:
      result = 7565933;
      break;
    case 8:
      result = 29549;
      break;
    case 9:
      result = 29284;
      break;
    case 0xA:
      result = 1718579824;
      break;
    case 0xB:
      result = 0x636F737361;
      break;
    case 0xC:
      result = 7759218;
      break;
    case 0xD:
      result = 29286;
      break;
    case 0xE:
      result = 2037675105;
      break;
    case 0xF:
      result = 7237480;
      break;
    case 0x10:
      result = 1936028272;
      break;
    case 0x11:
      result = 7761767;
      break;
    case 0x12:
      result = 0x6863616F63;
      break;
    case 0x13:
      result = 6514287;
      break;
    case 0x14:
      result = 1953522019;
      break;
    case 0x15:
      result = 7106403;
      break;
    case 0x16:
      result = 0x6C6F6320746CLL;
      break;
    case 0x17:
      result = 6971757;
      break;
    case 0x18:
      result = 29804;
      break;
    case 0x19:
      result = 7628659;
      break;
    case 0x1A:
      result = 7499892;
      break;
    case 0x1B:
      result = 1919184227;
      break;
    case 0x1C:
      result = 0x72646D6320746CLL;
      break;
    case 0x1D:
      result = 7106659;
      break;
    case 0x1E:
      v2 = 25956;
      goto LABEL_30;
    case 0x1F:
      result = 7234919;
      break;
    case 0x20:
      v2 = 30320;
LABEL_30:
      result = v2 | 0x740000u;
      break;
    case 0x21:
      result = 7169121;
      break;
    case 0x22:
      result = 29299;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD541E6C@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePostfix.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::OccupantNamePostfix::Prefix_optional __swiftcall OccupantNamePostfix.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t OccupantNamePostfix.Prefix.rawValue.getter()
{
  if (*v0)
  {
    result = 1918985582;
  }

  else
  {
    result = 29793;
  }

  *v0;
  return result;
}

uint64_t sub_1DD541FEC@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePostfix.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static OccupantNamePostfix.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1DD3B0024(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {

    return sub_1DD3B2D98(v2 & 1, v3 & 1);
  }

  return result;
}

uint64_t sub_1DD542158(uint64_t a1)
{
  v2 = sub_1DD542544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD542194(uint64_t a1)
{
  v2 = sub_1DD542544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantNamePostfix.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE780, &qword_1DD659110);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD542544();
  sub_1DD640EF8();
  v20 = v12;
  v19 = 0;
  sub_1DD542598();
  sub_1DD640C68();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_1DD5425EC();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t OccupantNamePostfix.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE7A0, &qword_1DD659118);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD542544();
  sub_1DD640ED8();
  if (!v2)
  {
    v20 = 0;
    sub_1DD542640();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v14 = v21;
    v18 = 1;
    sub_1DD542694();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v8 + 8))(v12, v5);
    v15 = v19;
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD542544()
{
  result = qword_1ECCDE788;
  if (!qword_1ECCDE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE788);
  }

  return result;
}

unint64_t sub_1DD542598()
{
  result = qword_1ECCDE790;
  if (!qword_1ECCDE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE790);
  }

  return result;
}

unint64_t sub_1DD5425EC()
{
  result = qword_1ECCDE798;
  if (!qword_1ECCDE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE798);
  }

  return result;
}

unint64_t sub_1DD542640()
{
  result = qword_1ECCDE7A8;
  if (!qword_1ECCDE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7A8);
  }

  return result;
}

unint64_t sub_1DD542694()
{
  result = qword_1ECCDE7B0;
  if (!qword_1ECCDE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7B0);
  }

  return result;
}

unint64_t sub_1DD5426EC()
{
  result = qword_1ECCDE7B8;
  if (!qword_1ECCDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7B8);
  }

  return result;
}

unint64_t sub_1DD542744()
{
  result = qword_1ECCDE7C0;
  if (!qword_1ECCDE7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDE7C8, &qword_1DD6591C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7C0);
  }

  return result;
}

unint64_t sub_1DD5427AC()
{
  result = qword_1ECCDE7D0;
  if (!qword_1ECCDE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OccupantNamePrefix(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OccupantNamePostfix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OccupantNamePrefix.Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OccupantNamePostfix.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD542AE0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD542BC0()
{
  result = qword_1ECCDE7D8;
  if (!qword_1ECCDE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7D8);
  }

  return result;
}

unint64_t sub_1DD542C18()
{
  result = qword_1ECCDE7E0;
  if (!qword_1ECCDE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7E0);
  }

  return result;
}

unint64_t sub_1DD542C70()
{
  result = qword_1ECCDE7E8;
  if (!qword_1ECCDE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7E8);
  }

  return result;
}

unint64_t sub_1DD542CC4()
{
  result = qword_1ECCDE7F0;
  if (!qword_1ECCDE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7F0);
  }

  return result;
}

unint64_t sub_1DD542D18()
{
  result = qword_1ECCDE7F8;
  if (!qword_1ECCDE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7F8);
  }

  return result;
}

SiriInference::OccupantNamePrefix::Value_optional __swiftcall OccupantNamePrefix.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t OccupantNamePrefix.Value.rawValue.getter()
{
  result = 29293;
  switch(*v0)
  {
    case 1:
      result = 7565933;
      break;
    case 2:
      result = 29549;
      break;
    case 3:
      result = 29284;
      break;
    case 4:
      result = 1718579824;
      break;
    case 5:
      result = 0x636F737361;
      break;
    case 6:
      result = 7759218;
      break;
    case 7:
      result = 29286;
      break;
    case 8:
      result = 2037675105;
      break;
    case 9:
      result = 7237480;
      break;
    case 0xA:
      result = 1936028272;
      break;
    case 0xB:
      result = 7761767;
      break;
    case 0xC:
      result = 0x6863616F63;
      break;
    case 0xD:
      result = 6514287;
      break;
    case 0xE:
      result = 1953522019;
      break;
    case 0xF:
      result = 7106403;
      break;
    case 0x10:
      result = 0x6C6F6320746CLL;
      break;
    case 0x11:
      result = 6971757;
      break;
    case 0x12:
      result = 29804;
      break;
    case 0x13:
      result = 7628659;
      break;
    case 0x14:
      result = 7499892;
      break;
    case 0x15:
      result = 1919184227;
      break;
    case 0x16:
      result = 0x72646D6320746CLL;
      break;
    case 0x17:
      result = 7106659;
      break;
    case 0x18:
      v2 = 25956;
      goto LABEL_37;
    case 0x19:
      result = 7234919;
      break;
    case 0x1A:
      v2 = 30320;
LABEL_37:
      result = v2 | 0x740000u;
      break;
    case 0x1B:
      result = 7169121;
      break;
    case 0x1C:
      result = 29299;
      break;
    case 0x1D:
      result = 0x726F696E756ALL;
      break;
    case 0x1E:
      result = 0x726F696E6573;
      break;
    case 0x1F:
      result = 0x746361746E6F63;
      break;
    case 0x20:
      result = 7237491;
      break;
    case 0x21:
      result = 0x6E6F73646E617267;
      break;
    case 0x22:
      result = 0x77656870656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5431A8@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePrefix.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::OccupantNamePrefix::Prefix_optional __swiftcall OccupantNamePrefix.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t OccupantNamePrefix.Prefix.rawValue.getter()
{
  if (*v0)
  {
    result = 1918985582;
  }

  else
  {
    result = 29793;
  }

  *v0;
  return result;
}

uint64_t sub_1DD543318@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePrefix.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static OccupantNamePrefix.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1DD3B0164(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {

    return sub_1DD3B2D98(v2 & 1, v3 & 1);
  }

  return result;
}

uint64_t sub_1DD543484(uint64_t a1)
{
  v2 = sub_1DD543870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5434C0(uint64_t a1)
{
  v2 = sub_1DD543870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantNamePrefix.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE800, &qword_1DD6595B0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD543870();
  sub_1DD640EF8();
  v20 = v12;
  v19 = 0;
  sub_1DD5438C4();
  sub_1DD640C68();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_1DD543918();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t OccupantNamePrefix.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE820, &qword_1DD6595B8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD543870();
  sub_1DD640ED8();
  if (!v2)
  {
    v20 = 0;
    sub_1DD54396C();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v14 = v21;
    v18 = 1;
    sub_1DD5439C0();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v8 + 8))(v12, v5);
    v15 = v19;
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD543870()
{
  result = qword_1ECCDE808;
  if (!qword_1ECCDE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE808);
  }

  return result;
}

unint64_t sub_1DD5438C4()
{
  result = qword_1ECCDE810;
  if (!qword_1ECCDE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE810);
  }

  return result;
}

unint64_t sub_1DD543918()
{
  result = qword_1ECCDE818;
  if (!qword_1ECCDE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE818);
  }

  return result;
}

unint64_t sub_1DD54396C()
{
  result = qword_1ECCDE828;
  if (!qword_1ECCDE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE828);
  }

  return result;
}

unint64_t sub_1DD5439C0()
{
  result = qword_1ECCDE830;
  if (!qword_1ECCDE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE830);
  }

  return result;
}

unint64_t sub_1DD543A18()
{
  result = qword_1ECCDE838;
  if (!qword_1ECCDE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE838);
  }

  return result;
}

unint64_t sub_1DD543A70()
{
  result = qword_1ECCDE840;
  if (!qword_1ECCDE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE840);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OccupantNamePrefix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OccupantNamePrefix.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD543C80(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD543D60()
{
  result = qword_1ECCDE848;
  if (!qword_1ECCDE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE848);
  }

  return result;
}

unint64_t sub_1DD543DB8()
{
  result = qword_1ECCDE850;
  if (!qword_1ECCDE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE850);
  }

  return result;
}

unint64_t sub_1DD543E10()
{
  result = qword_1ECCDE858;
  if (!qword_1ECCDE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE858);
  }

  return result;
}

unint64_t sub_1DD543E64()
{
  result = qword_1ECCDE860;
  if (!qword_1ECCDE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE860);
  }

  return result;
}

unint64_t sub_1DD543EB8()
{
  result = qword_1ECCDE868;
  if (!qword_1ECCDE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE868);
  }

  return result;
}

SiriInference::OccupantRelationship::Prefix_optional __swiftcall OccupantRelationship.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OccupantRelationship.Prefix.rawValue.getter()
{
  v1 = 29545;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 29793;
  }
}

uint64_t sub_1DD543FE8@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantRelationship.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OccupantRelationship.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static OccupantRelationship.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 3 && (v2 == 3);
    if (v2 != 3 && v3 != 3)
    {

      return sub_1DD3B14A0(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD544198(uint64_t a1)
{
  v2 = sub_1DD54459C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5441D4(uint64_t a1)
{
  v2 = sub_1DD54459C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantRelationship.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE870, &qword_1DD659A10);
  v5 = OUTLINED_FUNCTION_0(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54459C();
  sub_1DD640EF8();
  v20 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_1DD5445F0();
    sub_1DD640C08();
  }

  return (*(v16 + 8))(v10, v4);
}

uint64_t OccupantRelationship.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE888, &qword_1DD659A18);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54459C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD544644();
  sub_1DD640B18();
  v13 = OUTLINED_FUNCTION_41();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD54459C()
{
  result = qword_1ECCDE878;
  if (!qword_1ECCDE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE878);
  }

  return result;
}

unint64_t sub_1DD5445F0()
{
  result = qword_1ECCDE880;
  if (!qword_1ECCDE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE880);
  }

  return result;
}

unint64_t sub_1DD544644()
{
  result = qword_1ECCDE890;
  if (!qword_1ECCDE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE890);
  }

  return result;
}

unint64_t sub_1DD54469C()
{
  result = qword_1ECCDE898;
  if (!qword_1ECCDE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE898);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OccupantRelationship.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OccupantRelationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5448BC()
{
  result = qword_1ECCDE8A0;
  if (!qword_1ECCDE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8A0);
  }

  return result;
}

unint64_t sub_1DD544914()
{
  result = qword_1ECCDE8A8;
  if (!qword_1ECCDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8A8);
  }

  return result;
}

unint64_t sub_1DD54496C()
{
  result = qword_1ECCDE8B0;
  if (!qword_1ECCDE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8B0);
  }

  return result;
}

unint64_t sub_1DD5449C0()
{
  result = qword_1ECCDE8B8;
  if (!qword_1ECCDE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8B8);
  }

  return result;
}

uint64_t sub_1DD544A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v3 = 0;
  v2 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(6, 0, 0, &v3, 9, 0, 0, &v2);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void *sub_1DD544AE4(void *a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v96 = sub_1DD63D168();
  v5 = OUTLINED_FUNCTION_0(v96);
  v118 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v95 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v89 - v13;
  v15 = sub_1DD63D078();
  v16 = OUTLINED_FUNCTION_0(v15);
  v117 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v110 = sub_1DD63D328();
  v23 = OUTLINED_FUNCTION_0(v110);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v109 = v29 - v28;
  v30 = sub_1DD63D2D8();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v108 = v37 - v36;
  v107 = sub_1DD63CBB8();
  v38 = OUTLINED_FUNCTION_0(v107);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  v45 = v44 - v43;
  if (*(a2 + 17) == 1)
  {
    v106 = v14;
    v46 = a1[2];
    if (v46)
    {
      v105 = v30;
      v97 = v22;
      v112 = v15;
      v47 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
      v103 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone;
      v93 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
      v92 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere;
      v48 = (a1 + 4);
      swift_beginAccess();
      v49 = (v33 + 16);
      v102 = (v25 + 16);
      v101 = v25 + 8;
      v100 = (v33 + 8);
      v91 = v117 + 32;
      v90 = (v118 + 2);
      v89[1] = v118 + 1;
      v89[0] = v117 + 8;
      v99 = v40 + 8;
      a1 = MEMORY[0x1E69E7CC0];
      v50 = v46;
      v94 = v45;
      v104 = v46;
      v111 = (v33 + 16);
      v98 = v47;
      while (1)
      {
        memcpy(__dst, v48, 0x49uLL);
        if (v46 == 1 || LOBYTE(__dst[9]))
        {
          sub_1DD474708(__dst, v120);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_4_65();
            a1 = v85;
          }

          v68 = a1[2];
          v69 = v68 + 1;
          if (v68 >= a1[3] >> 1)
          {
            OUTLINED_FUNCTION_3_65();
            a1 = v70;
          }
        }

        else
        {
          v116 = v48;
          v117 = v50;
          v118 = a1;
          v51 = type metadata accessor for DateTime();
          v114 = __dst[0];
          v115 = *v49;
          v52 = v45;
          v53 = v113;
          v54 = v108;
          v55 = v105;
          v115(v108, v113 + v47, v105);
          v56 = v47;
          v57 = v109;
          v58 = v110;
          (*v102)(v109, v53 + v103, v110);
          sub_1DD474708(__dst, v120);
          sub_1DD474708(__dst, v120);
          v59 = v114;
          v114 = v51;
          sub_1DD488550(v59, v54, v57);
          sub_1DD3ADFD0(__dst, &qword_1ECCDBCF0, &qword_1DD649E60);
          OUTLINED_FUNCTION_16_0(&__dst[3]);
          v60(v57, v58);
          v61 = *v100;
          (*v100)(v54, v55);
          v62 = v53 + v56;
          v63 = v52;
          v49 = v111;
          v64 = v115;
          v115(v54, v62, v55);
          v65 = v106;
          sub_1DD63D248();
          v61(v54, v55);
          v66 = v112;
          if (__swift_getEnumTagSinglePayload(v65, 1, v112) == 1)
          {
            OUTLINED_FUNCTION_16_0(&__dst[1]);
            v67(v63, v107);
            sub_1DD3ADFD0(__dst, &qword_1ECCDBCF0, &qword_1DD649E60);
            sub_1DD3ADFD0(v65, &qword_1ECCDEBC0, &qword_1DD6445A0);
            a1 = v118;
            v45 = v63;
            v46 = v104;
            v47 = v98;
            v50 = v117;
LABEL_20:
            v48 = v116;
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_16_0(v122);
          v71 = v97;
          v72(v97, v65, v66);
          v120[0] = 36;
          v47 = v98;
          v73 = v113;
          v64(v54, v113 + v98, v55);
          v74 = v71;
          v75 = v95;
          v76 = v96;
          (*v90)(v95, v73 + v93, v96);
          v119 = *(v73 + v92);
          sub_1DD41B2C8();
          v77 = sub_1DD63FC88();
          v78 = DefinedDateTimeRangeStore.isDateInDefinedDateTimeRange(_:dateTimeRange:calendar:locale:hemisphere:overrides:)(v74, v120, v54, v75, &v119, v77);

          OUTLINED_FUNCTION_16_0(v121);
          v79(v75, v76);
          v61(v54, v55);
          v50 = v117;
          if ((v78 & 1) == 0)
          {
            sub_1DD3ADFD0(__dst, &qword_1ECCDBCF0, &qword_1DD649E60);
            OUTLINED_FUNCTION_16_0(v120);
            v83(v74, v112);
            OUTLINED_FUNCTION_16_0(&__dst[1]);
            v45 = v94;
            v84(v94, v107);
            a1 = v118;
            v46 = v104;
            v49 = v111;
            goto LABEL_20;
          }

          a1 = v118;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v104;
          v48 = v116;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_4_65();
            a1 = v86;
          }

          v49 = v111;
          v68 = a1[2];
          v69 = v68 + 1;
          v45 = v94;
          if (v68 >= a1[3] >> 1)
          {
            OUTLINED_FUNCTION_3_65();
            a1 = v87;
          }

          OUTLINED_FUNCTION_16_0(v120);
          v81(v97, v112);
          OUTLINED_FUNCTION_16_0(&__dst[1]);
          v82(v45, v107);
        }

        a1[2] = v69;
        memcpy(&a1[10 * v68 + 4], __dst, 0x49uLL);
LABEL_21:
        v48 += 80;
        if (!--v50)
        {
          return a1;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return a1;
}

void OUTLINED_FUNCTION_3_65()
{

  sub_1DD3C0098();
}

uint64_t Logger.asyncBackground(_:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v44 = sub_1DD63FB78();
  v2 = OUTLINED_FUNCTION_0(v44);
  v47 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v43 = v7 - v6;
  v8 = sub_1DD63FBD8();
  v9 = OUTLINED_FUNCTION_0(v8);
  v45 = v10;
  v46 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_1DD63F9F8();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = sub_1DD63FB88();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  (*(v25 + 104))(v30, *MEMORY[0x1E69E7FA0], v22);
  v31 = sub_1DD6404B8();
  (*(v25 + 8))(v30, v22);
  (*(v19 + 16))(v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v40[1], v16);
  v32 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v33 = swift_allocObject();
  (*(v19 + 32))(v33 + v32, v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v34 = (v33 + ((v21 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v42;
  *v34 = v41;
  v34[1] = v35;
  aBlock[4] = sub_1DD545A7C;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD3CBCD0;
  aBlock[3] = &block_descriptor_13;
  v36 = _Block_copy(aBlock);

  sub_1DD63FBA8();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1DD52DA40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD44FA38();
  v38 = v43;
  v37 = v44;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v15, v38, v36);
  _Block_release(v36);

  (*(v47 + 8))(v38, v37);
  (*(v45 + 8))(v15, v46);
}

uint64_t sub_1DD5458DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DD39638C(0, &unk_1EE166450, 0x1E69E9BF8);
  result = sub_1DD6405E8();
  *a4 = result;
  return result;
}

void sub_1DD545954(uint64_t a1, uint64_t (*a2)(void))
{

  oslog = sub_1DD63F9D8();
  v3 = sub_1DD640368();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = a2();
    v8 = sub_1DD39565C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DD38D000, oslog, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
    MEMORY[0x1E12B3DA0](v4, -1, -1);
  }
}

void sub_1DD545A7C()
{
  v1 = *(sub_1DD63F9F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_1DD545954(v0 + v2, v4);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_1EE1664F8;
  if (!qword_1EE1664F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD545B98()
{
  result = sub_1DD63F9C8();
  if (v1 <= 0x3F)
  {
    result = sub_1DD39638C(319, &unk_1EE166450, 0x1E69E9BF8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD545C68()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1EE16F0C8);
  OUTLINED_FUNCTION_4_66();
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16F0C0;
  return sub_1DD63FA08();
}

uint64_t sub_1DD545D30()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1ECD0DDA8);
  OUTLINED_FUNCTION_4_66();
  return OUTLINED_FUNCTION_2_81();
}

uint64_t sub_1DD545D88()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1ECD0DDC0);
  OUTLINED_FUNCTION_4_66();
  return OUTLINED_FUNCTION_2_81();
}

uint64_t sub_1DD545E60()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1EE16EF28);
  OUTLINED_FUNCTION_4_66();
  return sub_1DD63F9E8();
}

uint64_t sub_1DD545EF8()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1ECD0DDF0);
  OUTLINED_FUNCTION_4_66();
  return sub_1DD63F9E8();
}

uint64_t sub_1DD545F88(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DD63F9E8();
}

uint64_t type metadata accessor for PartialNameQueryExpander()
{
  result = qword_1EE161600;
  if (!qword_1EE161600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD546074()
{
  result = type metadata accessor for StringTokenizer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD5460E0()
{
  v0 = sub_1DD63D4A8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD63D498();
  qword_1ECD0DE08 = result;
  return result;
}

uint64_t sub_1DD546120(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v87 = a4;
  v88 = a3;
  v85 = a2;
  v90 = sub_1DD63D368();
  v5 = OUTLINED_FUNCTION_0(v90);
  v76 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v73 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v86 = sub_1DD63D358();
  v15 = OUTLINED_FUNCTION_0(v86);
  v84 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v89 = v20 - v19;
  OUTLINED_FUNCTION_6_2();
  v21 = type metadata accessor for Signpost();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_57();
  v26 = swift_allocObject();
  v82 = v26;
  *(v26 + 16) = 0;
  v79 = v26 + 16;
  OUTLINED_FUNCTION_57();
  v27 = swift_allocObject();
  v81 = v27;
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  v74 = (v27 + 16);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v28 = qword_1EE16F0C0;
  v29 = v25 + *(v21 + 20);
  *v29 = "Geocoding POI with Pegasus";
  *(v29 + 8) = 26;
  *(v29 + 16) = 2;
  v30 = v28;
  sub_1DD63F9B8();
  *(v25 + *(v21 + 24)) = v30;
  v31 = v30;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DD643F90;
  v33 = sub_1DD6408F8();
  v35 = v34;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1DD392BD8();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v78 = v31;
  v83 = v25;
  sub_1DD63F998();

  v93[5] = MEMORY[0x1E69E7CD0];
  if (qword_1ECCDB0F0 != -1)
  {
    swift_once();
  }

  v36 = sub_1DD63D458();
  v38 = v37;
  v39 = *v37;
  swift_isUniquelyReferenced_nonNull_native();
  v91[0] = *v38;
  sub_1DD3FFBC0();
  *v38 = v91[0];
  v36(v93, 0);
  v40 = dispatch_group_create();
  dispatch_group_enter(v40);
  sub_1DD63D348();
  v41 = sub_1DD547860(v85);
  sub_1DD63D338();

  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  (*(v43 + 8))(v42, v43);
  sub_1DD63D468();

  v44 = v14;
  v45 = v77;
  if (qword_1ECCDB0B8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v46 = sub_1DD63F9F8();
  __swift_project_value_buffer(v46, qword_1ECD0DDA8);
  v47 = v76;
  v48 = *(v76 + 16);
  v85 = v44;
  v49 = v90;
  v48(v45, v44, v90);
  sub_1DD3C2388(a1, v93);
  v50 = sub_1DD63F9D8();
  v51 = sub_1DD640368();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v92[0] = v73;
    *v52 = 136315394;
    v48(v75, v45, v90);
    v53 = sub_1DD63FE38();
    v55 = v54;
    v77 = *(v47 + 8);
    (v77)(v45, v90);
    v56 = sub_1DD39565C(v53, v55, v92);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    sub_1DD3C2388(v93, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8D8, &qword_1DD659DB8);
    v57 = sub_1DD63FE38();
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1(v93);
    v60 = sub_1DD39565C(v57, v59, v92);

    *(v52 + 14) = v60;
    _os_log_impl(&dword_1DD38D000, v50, v51, "Constructed Pegasus Search Request: %s with query value: %s", v52, 0x16u);
    swift_arrayDestroy();
    v49 = v90;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v93);
    v77 = *(v47 + 8);
    (v77)(v45, v49);
  }

  v61 = v85;
  v93[0] = sub_1DD63D478();
  v62 = swift_allocObject();
  v63 = v81;
  v62[2] = v40;
  v62[3] = v63;
  v64 = v82;
  v62[4] = v80;
  v62[5] = v64;
  v65 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8C8, &qword_1DD659DB0);
  sub_1DD547A84();
  sub_1DD63FB28();

  sub_1DD63FB18();

  sub_1DD546F00();
  swift_bridgeObjectRelease_n();
  swift_beginAccess();
  v66 = *(v64 + 16);
  if (v66)
  {
    v67 = v66;
    sub_1DD6404C8();
    OUTLINED_FUNCTION_3_66();
    v68 = v66;
    v88(v66, 1);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_3_66();
    v69 = v74;
    swift_beginAccess();
    v70 = *v69;

    v88(v71, 0);
  }

  (v77)(v61, v49);
  (*(v84 + 8))(v89, v86);
  sub_1DD41BFFC(0);
}

void sub_1DD546A38(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v49 = a2;
  v46 = a3;
  v6 = sub_1DD63D488();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = sub_1DD63D3A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8E0, &qword_1DD659DC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  sub_1DD547AE8(a1, &v44 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v7 + 32);
    v25(v15, v24, v6);
    if (qword_1ECCDB0B8 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD63F9F8();
    __swift_project_value_buffer(v26, qword_1ECD0DDA8);
    v27 = *(v7 + 16);
    v27(v12, v15, v6);
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640378();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = v7 + 32;
      v31 = v30;
      v44 = swift_slowAlloc();
      v45 = v25;
      v50 = v44;
      *v31 = 136315138;
      v27(v47, v12, v6);
      v32 = sub_1DD63FE38();
      v34 = v33;
      (*(v7 + 8))(v12, v6);
      v35 = sub_1DD39565C(v32, v34, &v50);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1DD38D000, v28, v29, "error getting searchResponse: %s", v31, 0xCu);
      v36 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      v25 = v45;
      MEMORY[0x1E12B3DA0](v36, -1, -1);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    sub_1DD547B58();
    v37 = swift_allocError();
    v25(v38, v15, v6);
    v39 = v48;
    swift_beginAccess();
    v40 = *(v39 + 16);
    *(v39 + 16) = v37;
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    v41 = sub_1DD547068();
    (*(v17 + 8))(v20, v16);
    v42 = v46;
    swift_beginAccess();
    v43 = *(v42 + 16);
    *(v42 + 16) = v41;
  }

  dispatch_group_leave(v49);
}

void sub_1DD546F00()
{
  if (qword_1ECCDB0B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1ECD0DDA8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "Waiting for pegasus response", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  sub_1DD640418();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v4, v5, "Done waiting for pegasus response", v6, 2u);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
  }
}

uint64_t sub_1DD547068()
{
  v82 = sub_1DD63D3C8();
  v0 = OUTLINED_FUNCTION_0(v82);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v79 = sub_1DD63D428();
  v8 = OUTLINED_FUNCTION_0(v79);
  v83 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v78 = v13 - v12;
  OUTLINED_FUNCTION_6_2();
  v75 = sub_1DD63D3E8();
  v14 = OUTLINED_FUNCTION_0(v75);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_2();
  v77 = sub_1DD63D408();
  v17 = OUTLINED_FUNCTION_0(v77);
  v80 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v76 = v22 - v21;
  OUTLINED_FUNCTION_6_2();
  v85 = sub_1DD63D448();
  v23 = OUTLINED_FUNCTION_0(v85);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  v31 = sub_1DD63D388();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  sub_1DD63D398();
  sub_1DD63D378();
  (*(v34 + 8))(v39, v31);
  v40 = sub_1DD63D438();
  (*(v25 + 8))(v30, v85);
  v71 = *(v40 + 16);
  if (v71)
  {
    v41 = 0;
    v74 = v40 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v73 = (v83 + 8);
    v42 = MEMORY[0x1E69E7CC0];
    v72 = v40;
    v43 = v80;
    while (v41 < *(v40 + 16))
    {
      v81 = v41;
      v44 = v43;
      (*(v43 + 16))(v76, v74 + *(v43 + 72) * v41, v77);
      sub_1DD63D3F8();
      (*(v44 + 8))(v76, v77);
      sub_1DD63D418();
      (*v73)(v78, v79);
      v45 = sub_1DD63D3D8();
      v86 = *(v45 + 16);
      if (v86)
      {
        sub_1DD39638C(0, &qword_1ECCDE0B0, 0x1E69A21E0);
        v46 = 0;
        v84 = v45 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        while (v46 < *(v45 + 16))
        {
          (*(v2 + 16))(v7, v84 + *(v2 + 72) * v46, v82);
          v47 = sub_1DD63D3B8();
          v49 = v48;
          (*(v2 + 8))(v7, v82);
          v50 = sub_1DD5477E0(v47, v49);
          if (v50)
          {
            v51 = v50;
            v52 = v89;
            sub_1DD4FDE9C(v51, v88);
            if (v52)
            {

              v64 = OUTLINED_FUNCTION_5_67();
              v65(v64);

              return v42;
            }

            memcpy(v87, v88, sizeof(v87));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v89 = 0;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = *(v42 + 16);
              sub_1DD3C0504();
              v42 = v60;
            }

            v54 = *(v42 + 16);
            if (v54 >= *(v42 + 24) >> 1)
            {
              sub_1DD3C0504();
              v42 = v61;
            }

            *(v42 + 16) = v54 + 1;
            memcpy((v42 + 712 * v54 + 32), v87, 0x2C8uLL);
          }

          else
          {
            if (qword_1ECCDB0B8 != -1)
            {
              OUTLINED_FUNCTION_0_8();
              swift_once();
            }

            v55 = sub_1DD63F9F8();
            __swift_project_value_buffer(v55, qword_1ECD0DDA8);
            v56 = sub_1DD63F9D8();
            v57 = sub_1DD640368();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_1DD38D000, v56, v57, "Couldn't deserialize geomapitem", v58, 2u);
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();
            }
          }

          if (v86 == ++v46)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      v41 = v81 + 1;

      v62 = OUTLINED_FUNCTION_5_67();
      v63(v62);
      v43 = v80;
      v40 = v72;
      if (v81 + 1 == v71)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (qword_1ECCDB0B8 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v66 = sub_1DD63F9F8();
  __swift_project_value_buffer(v66, qword_1ECD0DDA8);

  v67 = sub_1DD63F9D8();
  v68 = sub_1DD640368();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134217984;
    *(v69 + 4) = *(v42 + 16);

    _os_log_impl(&dword_1DD38D000, v67, v68, "Returning %ld locations", v69, 0xCu);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {
  }

  return v42;
}

id sub_1DD5477E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1DD63CF08();
    sub_1DD3AD77C(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() mapItemStorageForSerializedPlaceData_];

  return v5;
}

id sub_1DD547860(uint64_t a1)
{
  v2 = sub_1DD63D078();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = type metadata accessor for LocationResolutionContext();
  v8 = a1 + *(v7 + 32);
  v9 = 0.0;
  if (*(v8 + 8))
  {
    v10 = 0.0;
  }

  else
  {
    v11 = a1 + *(v7 + 36);
    v10 = 0.0;
    if ((*(v11 + 8) & 1) == 0)
    {
      v9 = *v11;
      v10 = *v8;
    }
  }

  v12 = CLLocationCoordinate2DMake(v10, v9);
  sub_1DD39638C(0, &qword_1ECCDE8C0, 0x1E6985C40);
  sub_1DD63CF58();
  return sub_1DD547954(v6, v12.latitude, v12.longitude, 0.0, 0.0, 0.0);
}

id sub_1DD547954(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_1DD63CFA8();
  v14 = [v12 initWithCoordinate:v13 altitude:a2 horizontalAccuracy:a3 verticalAccuracy:a4 timestamp:{a5, a6}];

  v15 = sub_1DD63D078();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

unint64_t sub_1DD547A84()
{
  result = qword_1ECCDE8D0;
  if (!qword_1ECCDE8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDE8C8, &qword_1DD659DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8D0);
  }

  return result;
}

uint64_t sub_1DD547AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8E0, &qword_1DD659DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD547B58()
{
  result = qword_1ECCDE8E8;
  if (!qword_1ECCDE8E8)
  {
    sub_1DD63D488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_66()
{
  v2 = *(v0 - 296);
  v3 = *(v0 - 256);

  return sub_1DD63F9A8();
}

uint64_t sub_1DD547BD8()
{
  v1 = OUTLINED_FUNCTION_4_67();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = OUTLINED_FUNCTION_0_111(v5, v14);
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_67();
  result = v9(v8);
  if (result == *MEMORY[0x1E69D1890])
  {
    v11 = 4;
LABEL_7:
    *v0 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E69D1880])
  {
    v11 = 3;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E69D1A00])
  {
    v11 = 2;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E69D18E8])
  {
    *v0 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69D19C0])
    {
      v11 = 1;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1878])
    {
      v11 = 5;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1888])
    {
      v11 = 6;
      goto LABEL_7;
    }

    v12 = OUTLINED_FUNCTION_2_82(7);
    return v13(v12);
  }

  return result;
}

uint64_t sub_1DD547D58()
{
  v1 = OUTLINED_FUNCTION_4_67();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = OUTLINED_FUNCTION_0_111(v5, v14);
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_67();
  result = v9(v8);
  if (result == *MEMORY[0x1E69D18A0])
  {
    *v0 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D19A0])
  {
    v11 = 1;
LABEL_7:
    *v0 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E69D18B8])
  {
    v11 = 2;
    goto LABEL_7;
  }

  v12 = OUTLINED_FUNCTION_2_82(3);
  return v13(v12);
}

uint64_t sub_1DD547E68@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v4 = v3;
  v73 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8F0, &qword_1DD659DD8);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  v74 = sub_1DD63E1B8();
  v20 = OUTLINED_FUNCTION_0(v74);
  v72 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v67 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  v31 = sub_1DD63E118();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v32);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v39, v4, v31, v37);
  result = (*(v34 + 88))(v39, v31);
  if (result == *MEMORY[0x1E69D1910])
  {
    v41 = (a2 & 1) == 0;
    v42 = 32;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D18B0])
  {
    v41 = (a2 & 1) == 0;
    v42 = 31;
    goto LABEL_5;
  }

  if (result != *MEMORY[0x1E69D1970])
  {
    if (result == *MEMORY[0x1E69D19D0])
    {
      v42 = 2;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D18F0])
    {
      v42 = 3;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D18D0])
    {
      v42 = 14;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D19C8])
    {
      *a3 = 0;
      return result;
    }

    if (result == *MEMORY[0x1E69D1968])
    {
      sub_1DD5493B4(v73, v19);
      v50 = v74;
      if (__swift_getEnumTagSinglePayload(v19, 1, v74) == 1)
      {
        result = sub_1DD3ADFD0(v19, &qword_1ECCDD2B0, &qword_1DD64F430);
      }

      else
      {
        v51 = v72;
        (*(v72 + 32))(v30, v19, v50);
        v52 = *MEMORY[0x1E69D1A78];
        v53 = OUTLINED_FUNCTION_6_60(v51);
        v54(v53);
        v55 = sub_1DD63E1A8();
        v56 = *(v51 + 8);
        v56(v19, v50);
        result = (v56)(v30, v50);
        if (v55)
        {
          v42 = 7;
          goto LABEL_7;
        }
      }

      v42 = 12;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D19E8])
    {
      v42 = 22;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1900])
    {
      v42 = 6;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1950])
    {
      v42 = 23;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1960])
    {
      v42 = 5;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D18E0])
    {
      v57 = v72;
      v58 = v69;
      v59 = v74;
      (*(v72 + 104))(v69, *MEMORY[0x1E69D1A60], v74);
      __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
      v60 = *(v68 + 48);
      v61 = v70;
      sub_1DD5493B4(v73, v70);
      sub_1DD5493B4(v58, v61 + v60);
      OUTLINED_FUNCTION_11_5(v61);
      if (v41)
      {
        sub_1DD3ADFD0(v58, &qword_1ECCDD2B0, &qword_1DD64F430);
        OUTLINED_FUNCTION_11_5(v61 + v60);
        if (v41)
        {
          result = sub_1DD3ADFD0(v61, &qword_1ECCDD2B0, &qword_1DD64F430);
          goto LABEL_44;
        }
      }

      else
      {
        v62 = v67;
        sub_1DD5493B4(v61, v67);
        OUTLINED_FUNCTION_11_5(v61 + v60);
        if (!v63)
        {
          v64 = v71;
          (*(v57 + 32))(v71, v61 + v60, v59);
          sub_1DD549424();
          v65 = sub_1DD63FD98();
          v66 = *(v57 + 8);
          v66(v64, v59);
          sub_1DD3ADFD0(v58, &qword_1ECCDD2B0, &qword_1DD64F430);
          v66(v62, v59);
          result = sub_1DD3ADFD0(v61, &qword_1ECCDD2B0, &qword_1DD64F430);
          if ((v65 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_44:
          v42 = 24;
          goto LABEL_7;
        }

        sub_1DD3ADFD0(v58, &qword_1ECCDD2B0, &qword_1DD64F430);
        (*(v57 + 8))(v62, v59);
      }

      result = sub_1DD3ADFD0(v61, &qword_1ECCDE8F0, &qword_1DD659DD8);
LABEL_49:
      v42 = 16;
      goto LABEL_7;
    }

    if (result != *MEMORY[0x1E69D1980])
    {
      if (result == *MEMORY[0x1E69D1890] || result == *MEMORY[0x1E69D1880] || result == *MEMORY[0x1E69D1A00] || result == *MEMORY[0x1E69D18E8] || result == *MEMORY[0x1E69D19C0] || result == *MEMORY[0x1E69D1878] || result == *MEMORY[0x1E69D1888])
      {
        result = __swift_getEnumTagSinglePayload(v73, 1, v74);
        if (result == 1)
        {
          v42 = 38;
        }

        else
        {
          v42 = 8;
        }

        goto LABEL_7;
      }

      if (result == *MEMORY[0x1E69D1898])
      {
        v41 = (a2 & 1) == 0;
        v42 = 8;
      }

      else
      {
        if (result == *MEMORY[0x1E69D1998])
        {
          v42 = 19;
          goto LABEL_7;
        }

        if (result == *MEMORY[0x1E69D18C0])
        {
          v41 = (a2 & 1) == 0;
          v42 = 10;
        }

        else
        {
          if (result != *MEMORY[0x1E69D18D8])
          {
            if (result == *MEMORY[0x1E69D1930])
            {
              v42 = 17;
            }

            else if (result == *MEMORY[0x1E69D1938])
            {
              v42 = 18;
            }

            else if (result == *MEMORY[0x1E69D1948])
            {
              v42 = 20;
            }

            else
            {
              if (result != *MEMORY[0x1E69D18A8])
              {
                if (result != *MEMORY[0x1E69D18C8])
                {
                  *a3 = 38;
                  return (*(v34 + 8))(v39, v31);
                }

                v41 = (a2 & 1) == 0;
                v42 = 11;
                goto LABEL_5;
              }

              v42 = 1;
            }

            goto LABEL_7;
          }

          v41 = (a2 & 1) == 0;
          v42 = 9;
        }
      }

LABEL_5:
      if (!v41)
      {
        v42 = 38;
      }

      goto LABEL_7;
    }

    goto LABEL_44;
  }

  sub_1DD5493B4(v73, v16);
  v43 = v74;
  if (__swift_getEnumTagSinglePayload(v16, 1, v74) == 1)
  {
    result = sub_1DD3ADFD0(v16, &qword_1ECCDD2B0, &qword_1DD64F430);
LABEL_16:
    v42 = 15;
    goto LABEL_7;
  }

  v44 = v72;
  (*(v72 + 32))(v25, v16, v43);
  v45 = *MEMORY[0x1E69D1A78];
  v46 = OUTLINED_FUNCTION_6_60(v44);
  v47(v46);
  v48 = sub_1DD63E1A8();
  v49 = *(v44 + 8);
  v49(v19, v43);
  result = (v49)(v25, v43);
  if ((v48 & 1) == 0)
  {
    goto LABEL_16;
  }

  v42 = 4;
LABEL_7:
  *a3 = v42;
  return result;
}

uint64_t sub_1DD5487FC()
{
  v1 = v0;
  v2 = sub_1DD63E118();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v10, v1, v2, v8);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == *MEMORY[0x1E69D1940])
  {
    v21 = 6;
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29();
    v12 = &v21;
  }

  else if (v11 == *MEMORY[0x1E69D1918])
  {
    v15 = 0;
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29();
    v12 = &v15;
  }

  else if (v11 == *MEMORY[0x1E69D1988])
  {
    v16 = 1;
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29();
    v12 = &v16;
  }

  else if (v11 == *MEMORY[0x1E69D19F8])
  {
    v17 = 2;
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29();
    v12 = &v17;
  }

  else if (v11 == *MEMORY[0x1E69D19B8])
  {
    v18 = 3;
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29();
    v12 = &v18;
  }

  else if (v11 == *MEMORY[0x1E69D1908])
  {
    v19 = 4;
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29();
    v12 = &v19;
  }

  else
  {
    if (v11 != *MEMORY[0x1E69D19A8])
    {
      (*(v5 + 8))(v10, v2);
      return 0;
    }

    v20 = 5;
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29();
    v12 = &v20;
  }

  return DateTime.Date.init(withDayOfWeek:)(v12);
}

uint64_t sub_1DD548A5C()
{
  v1 = OUTLINED_FUNCTION_4_67();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = OUTLINED_FUNCTION_0_111(v5, v22);
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_67();
  result = v9(v8);
  if (result == *MEMORY[0x1E69D18A0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D19A0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D1870])
  {
    v11 = 5;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1928])
  {
    v11 = 10;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1910])
  {
    v11 = 6;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18B0])
  {
    v11 = 4;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1970] || result == *MEMORY[0x1E69D18F0] || result == *MEMORY[0x1E69D18D0] || result == *MEMORY[0x1E69D19C8] || result == *MEMORY[0x1E69D1968] || result == *MEMORY[0x1E69D19E8] || result == *MEMORY[0x1E69D1900] || result == *MEMORY[0x1E69D1950] || result == *MEMORY[0x1E69D1960] || result == *MEMORY[0x1E69D18E0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D19F0] || result == *MEMORY[0x1E69D1980])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D1860])
  {
LABEL_4:
    v11 = 1;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1890] || result == *MEMORY[0x1E69D1880] || result == *MEMORY[0x1E69D1A00] || result == *MEMORY[0x1E69D18E8] || result == *MEMORY[0x1E69D19C0] || result == *MEMORY[0x1E69D1878] || result == *MEMORY[0x1E69D1888])
  {
LABEL_2:
    v11 = 13;
LABEL_13:
    *v0 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E69D1898] || result == *MEMORY[0x1E69D1940] || result == *MEMORY[0x1E69D1918] || result == *MEMORY[0x1E69D1988] || result == *MEMORY[0x1E69D19F8] || result == *MEMORY[0x1E69D19B8] || result == *MEMORY[0x1E69D1908] || result == *MEMORY[0x1E69D19A8] || result == *MEMORY[0x1E69D19D8])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D18C0])
  {
    v11 = 11;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D19E0])
  {
    v11 = 3;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18D8])
  {
    v11 = 7;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1978])
  {
    v11 = 8;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1920])
  {
    v11 = 9;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18C8])
  {
    v11 = 12;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18F8])
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1958])
  {
    *v0 = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_2_82(13);
    return v21(v20);
  }

  return result;
}

uint64_t sub_1DD548EC4()
{
  v1 = OUTLINED_FUNCTION_4_67();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = OUTLINED_FUNCTION_0_111(v5, v38);
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_67();
  result = v9(v8);
  if (result == *MEMORY[0x1E69D18A0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D19A0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D1870])
  {
    v11 = 5;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1928])
  {
    v11 = 10;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1910])
  {
    v11 = 6;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18B0])
  {
    v11 = 4;
    goto LABEL_13;
  }

  v12 = result == *MEMORY[0x1E69D1970] || result == *MEMORY[0x1E69D19D0];
  v13 = v12 || result == *MEMORY[0x1E69D18F0];
  v14 = v13 || result == *MEMORY[0x1E69D18D0];
  v15 = v14 || result == *MEMORY[0x1E69D18B8];
  v16 = v15 || result == *MEMORY[0x1E69D19C8];
  v17 = v16 || result == *MEMORY[0x1E69D1968];
  v18 = v17 || result == *MEMORY[0x1E69D19E8];
  v19 = v18 || result == *MEMORY[0x1E69D1900];
  v20 = v19 || result == *MEMORY[0x1E69D1950];
  v21 = v20 || result == *MEMORY[0x1E69D1960];
  if (v21 || result == *MEMORY[0x1E69D18E0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D19F0] || result == *MEMORY[0x1E69D1980])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D1860])
  {
LABEL_4:
    v11 = 1;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1890] || result == *MEMORY[0x1E69D1880] || result == *MEMORY[0x1E69D1A00] || result == *MEMORY[0x1E69D18E8] || result == *MEMORY[0x1E69D19C0] || result == *MEMORY[0x1E69D1878] || result == *MEMORY[0x1E69D1888])
  {
LABEL_2:
    v11 = 13;
LABEL_13:
    *v0 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E69D1898])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D1940] || result == *MEMORY[0x1E69D1918] || result == *MEMORY[0x1E69D1988] || result == *MEMORY[0x1E69D19F8] || result == *MEMORY[0x1E69D19B8] || result == *MEMORY[0x1E69D1908] || result == *MEMORY[0x1E69D19A8] || result == *MEMORY[0x1E69D19D8] || result == *MEMORY[0x1E69D1998] || result == *MEMORY[0x1E69D1990] || result == *MEMORY[0x1E69D18C0])
  {
    v11 = 11;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D19E0])
  {
    v11 = 3;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1868])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D18D8])
  {
    v11 = 7;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1978])
  {
    v11 = 8;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1930] || result == *MEMORY[0x1E69D1938] || result == *MEMORY[0x1E69D1948] || result == *MEMORY[0x1E69D18A8])
  {
    goto LABEL_110;
  }

  if (result == *MEMORY[0x1E69D1920])
  {
    v11 = 9;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D19B0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D18C8])
  {
LABEL_110:
    v11 = 12;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18F8])
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1958])
  {
    *v0 = 0;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_2_82(13);
    return v37(v36);
  }

  return result;
}

uint64_t sub_1DD5493B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD549424()
{
  result = qword_1ECCDE8F8;
  if (!qword_1ECCDE8F8)
  {
    sub_1DD63E1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8F8);
  }

  return result;
}

SiriInference::PersonPlace::Value_optional __swiftcall PersonPlace.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

void *PersonPlace.init(personPlaceName:personPlaceReference:personPlaceId:occupant:)@<X0>(void *__src@<X4>, uint64_t a2@<X0>, char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 18);
  v8 = *a3;
  *a6 = *a2;
  *(a6 + 18) = v7;
  *(a6 + 16) = v6;
  *(a6 + 19) = v8;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return memcpy((a6 + 40), __src, 0xA6uLL);
}

uint64_t PersonPlace.Value.rawValue.getter()
{
  if (*v0)
  {
    result = 31085;
  }

  else
  {
    result = 6647407;
  }

  *v0;
  return result;
}

uint64_t sub_1DD549580@<X0>(uint64_t *a1@<X8>)
{
  result = PersonPlace.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonPlace.personPlaceName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 18) = v4;
  *(a1 + 16) = v3;
}

uint64_t PersonPlace.personPlaceId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PersonPlace.occupant.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0xA6uLL);
  memcpy(a1, (v1 + 40), 0xA6uLL);
  return sub_1DD54A35C(__dst, v4);
}

uint64_t static PersonPlace.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 18);
  v6 = *(a1 + 8);
  v19 = *(a1 + 19);
  v17 = a1[3];
  v20 = a1[4];
  memcpy(__dst, a1 + 5, 0xA6uLL);
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a2 + 18);
  v10 = *(a2 + 8);
  v18 = *(a2 + 19);
  v11 = a2[4];
  v16 = a2[3];
  memcpy(__src, a2 + 5, 0xA6uLL);
  if (v3)
  {
    v27[0] = v4;
    v27[1] = v3;
    LOWORD(v27[2]) = v6;
    BYTE2(v27[2]) = (v6 | (v5 << 16)) >> 16;
    if (v7)
    {
      v25[0] = v8;
      v25[1] = v7;
      LOWORD(v25[2]) = v10;
      BYTE2(v25[2]) = (v10 | (v9 << 16)) >> 16;
      swift_bridgeObjectRetain_n();

      v12 = static PersonPlaceName.== infix(_:_:)(v27, v25);

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (v20)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v15 = v17 == v16 && v20 == v11;
    if (!v15 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v11)
  {
    goto LABEL_7;
  }

  if (v19 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v18 == 2 || (sub_1DD3B16A8(v19 & 1) & 1) == 0)
  {
    goto LABEL_7;
  }

  memcpy(v27, __dst, 0xA6uLL);
  memcpy(&v27[21], __src, 0xA6uLL);
  memcpy(v28, __dst, 0xA6uLL);
  if (OUTLINED_FUNCTION_0_99(v28) == 1)
  {
    memcpy(v25, &v27[21], 0xA6uLL);
    if (OUTLINED_FUNCTION_0_99(v25) == 1)
    {
      OUTLINED_FUNCTION_2_83(v26);
      sub_1DD54A35C(__dst, v24);
      sub_1DD54A35C(__src, v24);
      sub_1DD3ADFD0(v26, &qword_1ECCDE900, &qword_1DD659DE0);
      v13 = 1;
      return v13 & 1;
    }

    sub_1DD54A35C(__dst, v26);
    sub_1DD54A35C(__src, v26);
  }

  else
  {
    OUTLINED_FUNCTION_2_83(v26);
    OUTLINED_FUNCTION_2_83(v24);
    memcpy(v25, &v27[21], 0xA6uLL);
    if (OUTLINED_FUNCTION_0_99(v25) != 1)
    {
      memcpy(v23, &v27[21], 0xA6uLL);
      sub_1DD54A35C(__dst, v22);
      sub_1DD54A35C(__src, v22);
      sub_1DD54A35C(v26, v22);
      v13 = static Occupant.== infix(_:_:)(v24, v23);
      memcpy(v21, v23, 0xA6uLL);
      sub_1DD54091C(v21);
      memcpy(v22, v24, 0xA6uLL);
      sub_1DD54091C(v22);
      OUTLINED_FUNCTION_2_83(v23);
      sub_1DD3ADFD0(v23, &qword_1ECCDE900, &qword_1DD659DE0);
      return v13 & 1;
    }

    OUTLINED_FUNCTION_2_83(v23);
    sub_1DD54A35C(__dst, v22);
    sub_1DD54A35C(__src, v22);
    sub_1DD54A35C(v26, v22);
    sub_1DD54091C(v23);
  }

  memcpy(v25, v27, 0x14EuLL);
  sub_1DD3ADFD0(v25, &qword_1ECCDE908, &qword_1DD659DE8);
LABEL_7:
  v13 = 0;
  return v13 & 1;
}