_BYTE *TagToString(uint64_t a1, char *a2, uint64_t a3)
{
  *a2 = 0;
  if (a1)
  {
    if (nodeIsElement(a1))
    {
      v14 = *(a1 + 64);
      v11 = "<%s>";
LABEL_4:
      tmbsnprintf(a2, a3, v11, v6, v7, v8, v9, v10, v14);
      goto LABEL_5;
    }

    v13 = *(a1 + 80);
    if (v13 > 5)
    {
      if (v13 == 13)
      {
        v11 = "XML declaration";
        goto LABEL_4;
      }

      if (v13 == 6)
      {
        tmbsnprintf(a2, a3, "</%s>", v6, v7, v8, v9, v10, *(a1 + 64));
        goto LABEL_5;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v11 = "<!DOCTYPE>";
        goto LABEL_4;
      }

      if (v13 == 4)
      {
        v11 = "plain text";
        goto LABEL_4;
      }
    }

    if (*(a1 + 64))
    {
      tmbsnprintf(a2, a3, "%s", v6, v7, v8, v9, v10, *(a1 + 64));
    }
  }

LABEL_5:

  return tmbstrlen(a2);
}

uint64_t messageNode(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3)
  {
    v11 = *(a3 + 84);
    v12 = *(a3 + 88);
  }

  else
  {
    v13 = *(a1 + 104);
    if (v13)
    {
      v11 = *v13;
      v12 = v13[1];
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  return messagePos(a1, a2, v11, v12, a4, &a9);
}

uint64_t ReportMissingAttr(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
    ;
  }

  TagToString(a2, v11, 64);
  result = messageNode(a1, 1, a2, "%s lacks %s attribute", v5, v6, v7, v8, v11);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DisplayHTMLTableAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  tidy_out(a1, " \n", a3, a4, a5, a6, a7, a8, v95);
  tidy_out(a1, "      - First, search left from the cell's position to find row header cells.\n", v10, v11, v12, v13, v14, v15, v96);
  tidy_out(a1, "      - Then search upwards to find column header cells.\n", v16, v17, v18, v19, v20, v21, v97);
  tidy_out(a1, "      - The search in a given direction stops when the edge of the table is\n", v22, v23, v24, v25, v26, v27, v98);
  tidy_out(a1, "        reached or when a data cell is found after a header cell.\n", v28, v29, v30, v31, v32, v33, v99);
  tidy_out(a1, "      - Row headers are inserted into the list in the order they appear in\n", v34, v35, v36, v37, v38, v39, v100);
  tidy_out(a1, "        the table. \n", v40, v41, v42, v43, v44, v45, v101);
  tidy_out(a1, "      - For left-to-right tables, headers are inserted from left to right.\n", v46, v47, v48, v49, v50, v51, v102);
  tidy_out(a1, "      - Column headers are inserted after row headers, in \n", v52, v53, v54, v55, v56, v57, v103);
  tidy_out(a1, "        the order they appear in the table, from top to bottom. \n", v58, v59, v60, v61, v62, v63, v104);
  tidy_out(a1, "      - If a header cell has the headers attribute set, then the headers \n", v64, v65, v66, v67, v68, v69, v105);
  tidy_out(a1, "        referenced by this attribute are inserted into the list and the \n", v70, v71, v72, v73, v74, v75, v106);
  tidy_out(a1, "        search stops for the current direction.\n", v76, v77, v78, v79, v80, v81, v107);
  tidy_out(a1, "        TD cells that set the axis attribute are also treated as header cells.\n", v82, v83, v84, v85, v86, v87, v108);

  return tidy_out(a1, " \n", v88, v89, v90, v91, v92, v93, a9);
}

uint64_t tidy_out(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *&v15[2047] = *MEMORY[0x29EDCA608];
  if (!*(result + 256))
  {
    v9 = result;
    result = tmbvsnprintf(&v14, 2048, a2, &a9);
    v10 = v14;
    if (v14)
    {
      v11 = v15;
      do
      {
        result = WriteChar(v10, *(v9 + 4848));
        v12 = *v11++;
        v10 = v12;
      }

      while (v12);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ReportAccessWarning(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3 == 80)
  {
    v9 = "specified input encoding (%s) does not match actual input encoding (%s)";
  }

  else
  {
    v10 = 1;
    do
    {
      v11 = &msgFormat + 16 * v10;
      v9 = *(v11 + 1);
      if (!v9)
      {
        break;
      }

      ++v10;
    }

    while (*v11 != a3);
  }

  *(a1 + 4900) = 1;
  return messageNode(a1, 3, a2, v9, a5, a6, a7, a8, a9);
}

uint64_t ReportWarning(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v41 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  if (a4 == 80)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = TagToString(a3, &v25, 256);
    goto LABEL_20;
  }

  v10 = 1;
  do
  {
    v11 = &msgFormat + 16 * v10;
    v12 = *(v11 + 1);
    if (!v12)
    {
      break;
    }

    ++v10;
  }

  while (*v11 != a4);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  result = TagToString(a3, &v25, 256);
  if (a4 > 39)
  {
    if (a4 != 85)
    {
      if (a4 != 40)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v21 = *(a3 + 64);
LABEL_18:
    v23 = v21;
LABEL_19:
    result = messageNode(a1, 1, v5, v12, v13, v14, v15, v16, v23);
    goto LABEL_20;
  }

  if (a4 == 9)
  {
    v21 = &v25;
    goto LABEL_18;
  }

  if (a4 == 20)
  {
    TagToString(a2, v24, 256);
    result = messageNode(a1, 1, v5, v12, v17, v18, v19, v20, v24);
  }

LABEL_20:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ReportNotice(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v38 = *MEMORY[0x29EDCA608];
  if (a4 == 80)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    result = TagToString(a3, &v22, 256);
  }

  else
  {
    v9 = 1;
    do
    {
      v10 = &msgFormat + 16 * v9;
      v11 = *(v10 + 1);
      if (!v11)
      {
        break;
      }

      ++v9;
    }

    while (*v10 != a4);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    memset(v21, 0, sizeof(v21));
    result = TagToString(a3, &v22, 256);
    if (a4 == 83)
    {
      if (a2)
      {
        v4 = a2;
      }

      TagToString(a2, v21, 256);
      result = messageNode(a1, 1, v4, v11, v16, v17, v18, v19, v21);
    }

    else if (a4 == 23)
    {
      TagToString(a2, v21, 256);
      result = messageNode(a1, 1, a2, v11, v12, v13, v14, v15, v21);
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ReportError(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(v31, 0, sizeof(v31));
  memset(&v30[2], 0, 224);
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  memset(v30, 0, 32);
  if (a4 == 80)
  {
    result = TagToString(a3, v31, 256);
  }

  else
  {
    v10 = 1;
    do
    {
      v11 = &msgFormat + 16 * v10;
      v12 = *(v11 + 1);
      if (!v12)
      {
        break;
      }

      ++v10;
    }

    while (*v11 != a4);
    result = TagToString(a3, v31, 256);
    switch(a4)
    {
      case 6:
        v22 = *(a2 + 64);
        goto LABEL_26;
      case 7:
        v22 = *(a2 + 64);
        goto LABEL_26;
      case 8:
        if (*(a1 + 4912))
        {
          v24 = 4;
        }

        else
        {
          v24 = 1;
        }

        v27 = v31;
        v23 = a1;
        goto LABEL_17;
      case 10:
      case 24:
        v22 = *(a3 + 64);
LABEL_26:
        LOBYTE(v27) = v22;
        goto LABEL_27;
      case 11:
        v27 = v31;
        v29 = *(a2 + 64);
        goto LABEL_27;
      case 12:
      case 13:
      case 15:
      case 38:
        v17 = *(a3 + 64);
        goto LABEL_15;
      case 14:
      case 19:
      case 21:
      case 26:
      case 39:
        v17 = v31;
        goto LABEL_15;
      case 17:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 37:
        goto LABEL_27;
      case 23:
      case 25:
      case 36:
      case 41:
        TagToString(a2, v30, 256);
        result = messageNode(a1, 1, a2, v12, v18, v19, v20, v21, v30);
        break;
      case 42:
      case 44:
      case 45:
        goto LABEL_16;
      case 46:
      case 47:
        v17 = *(a3 + 64);
        v28 = *(a2 + 64);
LABEL_15:
        LOBYTE(v27) = v17;
LABEL_16:
        v23 = a1;
        v24 = 1;
LABEL_17:
        v25 = a3;
        goto LABEL_28;
      case 84:
        TagToString(a2, v30, 256);
        v27 = v30;
LABEL_27:
        v23 = a1;
        v24 = 1;
        v25 = v5;
LABEL_28:
        result = messageNode(v23, v24, v25, v12, v13, v14, v15, v16, v27);
        break;
      default:
        break;
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ReportFatal(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(v22, 0, sizeof(v22));
  if (a4 == 80)
  {
    goto LABEL_21;
  }

  v9 = a3;
  v10 = result;
  v11 = 1;
  do
  {
    v12 = &msgFormat + 16 * v11;
    v13 = *(v12 + 1);
    if (!v13)
    {
      break;
    }

    ++v11;
  }

  while (*v12 != a4);
  if (a4 <= 17)
  {
    if (a4 != 13)
    {
      if (a4 == 16)
      {
        goto LABEL_12;
      }

LABEL_21:
      v20 = *MEMORY[0x29EDCA608];
      return result;
    }

    v15 = *(a3 + 64);
LABEL_20:
    result = messageNode(result, 4, a3, v13, a5, a6, a7, a8, v15);
    goto LABEL_21;
  }

  if (a4 == 47)
  {
    v15 = *(a3 + 64);
    v21 = *(a2 + 64);
    goto LABEL_20;
  }

  if (a4 == 22)
  {
    TagToString(a3, v22, 256);
    result = messageNode(v10, 4, v9, v13, v16, v17, v18, v19, v22);
    goto LABEL_21;
  }

  if (a4 != 18)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (a2)
  {
    a3 = a2;
  }

  v14 = *MEMORY[0x29EDCA608];

  return messageNode(result, 4, a3, v13, a5, a6, a7, a8, a9);
}

_DWORD *ErrorSummary(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = result;
  v10 = result[36] - 2;
  if (v10 > 6)
  {
    v11 = "specified";
  }

  else
  {
    v11 = off_29F27A430[v10];
  }

  v12 = result[1225];
  if ((v12 & 0x20) != 0)
  {
    result[1225] = v12 & 0xFFFFFFCF;
  }

  v13 = result[1227];
  if (v13)
  {
    if (v13)
    {
      tidy_out(result, "It is unlikely that vendor-specific, system-dependent encodings\n", a3, a4, a5, a6, a7, a8, v402);
      tidy_out(v9, "work widely enough on the World Wide Web; you should avoid using the \n", v14, v15, v16, v17, v18, v19, v403);
      tidy_out(v9, "%s", v20, v21, v22, v23, v24, v25, v11);
      tidy_out(v9, " character encoding, instead you are recommended to\n", v26, v27, v28, v29, v30, v31, v404);
      result = tidy_out(v9, "use named entities, e.g. &trade;.\n\n", v32, v33, v34, v35, v36, v37, v405);
      v13 = *(v9 + 4908);
    }

    if ((v13 & 0x42) != 0)
    {
      tidy_out(v9, "Character codes 128 to 159 (U+0080 to U+009F) are not allowed in HTML;\n", a3, a4, a5, a6, a7, a8, v402);
      tidy_out(v9, "even if they were, they would likely be unprintable control characters.\n", v38, v39, v40, v41, v42, v43, v406);
      tidy_out(v9, "Tidy assumed you wanted to refer to a character with the same byte value in the \n", v44, v45, v46, v47, v48, v49, v407);
      tidy_out(v9, "%s", v50, v51, v52, v53, v54, v55, v11);
      result = tidy_out(v9, " encoding and replaced that reference with the Unicode equivalent.\n\n", v56, v57, v58, v59, v60, v61, v408);
      v13 = *(v9 + 4908);
    }

    if ((v13 & 4) != 0)
    {
      tidy_out(v9, "Character codes for UTF-8 must be in the range: U+0000 to U+10FFFF.\n", a3, a4, a5, a6, a7, a8, v402);
      tidy_out(v9, "The definition of UTF-8 in Annex D of ISO/IEC 10646-1:2000 also\n", v161, v162, v163, v164, v165, v166, v423);
      tidy_out(v9, "allows for the use of five- and six-byte sequences to encode\n", v167, v168, v169, v170, v171, v172, v424);
      tidy_out(v9, "characters that are outside the range of the Unicode character set;\n", v173, v174, v175, v176, v177, v178, v425);
      tidy_out(v9, "those five- and six-byte sequences are illegal for the use of\n", v179, v180, v181, v182, v183, v184, v426);
      tidy_out(v9, "UTF-8 as a transformation of Unicode characters. ISO/IEC 10646\n", v185, v186, v187, v188, v189, v190, v427);
      tidy_out(v9, "does not allow mapping of unpaired surrogates, nor U+FFFE and U+FFFF\n", v191, v192, v193, v194, v195, v196, v428);
      tidy_out(v9, "(but it does allow other noncharacters). For more information please refer to\n", v197, v198, v199, v200, v201, v202, v429);
      result = tidy_out(v9, "http://www.unicode.org/unicode and http://www.cl.cam.ac.uk/~mgk25/unicode.html\n\n", v203, v204, v205, v206, v207, v208, v430);
      v13 = *(v9 + 4908);
      if ((v13 & 8) == 0)
      {
LABEL_13:
        if ((v13 & 0x20) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((v13 & 8) == 0)
    {
      goto LABEL_13;
    }

    tidy_out(v9, "Character codes for UTF-16 must be in the range: U+0000 to U+10FFFF.\n", a3, a4, a5, a6, a7, a8, v402);
    tidy_out(v9, "The definition of UTF-16 in Annex C of ISO/IEC 10646-1:2000 does not allow the\n", v209, v210, v211, v212, v213, v214, v431);
    tidy_out(v9, "mapping of unpaired surrogates. For more information please refer to\n", v215, v216, v217, v218, v219, v220, v432);
    result = tidy_out(v9, "http://www.unicode.org/unicode and http://www.cl.cam.ac.uk/~mgk25/unicode.html\n\n", v221, v222, v223, v224, v225, v226, v433);
    if ((*(v9 + 4908) & 0x20) != 0)
    {
LABEL_14:
      tidy_out(v9, "URIs must be properly escaped, they must not contain unescaped\n", a3, a4, a5, a6, a7, a8, v402);
      tidy_out(v9, "characters below U+0021 including the space character and not\n", v62, v63, v64, v65, v66, v67, v409);
      tidy_out(v9, "above U+007E. Tidy escapes the URI for you as recommended by\n", v68, v69, v70, v71, v72, v73, v410);
      tidy_out(v9, "HTML 4.01 section B.2.1 and XML 1.0 section 4.2.2. Some user agents\n", v74, v75, v76, v77, v78, v79, v411);
      tidy_out(v9, "use another algorithm to escape such URIs and some server-sided\n", v80, v81, v82, v83, v84, v85, v412);
      tidy_out(v9, "scripts depend on that. If you want to depend on that, you must\n", v86, v87, v88, v89, v90, v91, v413);
      tidy_out(v9, "escape the URI by your own. For more information please refer to\n", v92, v93, v94, v95, v96, v97, v414);
      result = tidy_out(v9, "http://www.w3.org/International/O-URL-and-ident.html\n\n", v98, v99, v100, v101, v102, v103, v415);
    }
  }

LABEL_15:
  if (*(v9 + 4912))
  {
    tidy_out(v9, "You may need to move one or both of the <form> and </form>\n", a3, a4, a5, a6, a7, a8, v402);
    tidy_out(v9, "tags. HTML elements should be properly nested and form elements\n", v104, v105, v106, v107, v108, v109, v416);
    tidy_out(v9, "are no exception. For instance you should not place the <form>\n", v110, v111, v112, v113, v114, v115, v417);
    tidy_out(v9, "in one table cell and the </form> in another. If the <form> is\n", v116, v117, v118, v119, v120, v121, v418);
    tidy_out(v9, "placed before a table, the </form> cannot be placed inside the\n", v122, v123, v124, v125, v126, v127, v419);
    result = tidy_out(v9, "table! Note that one form can't be nested inside another!\n\n", v128, v129, v130, v131, v132, v133, v420);
  }

  v134 = *(v9 + 4900);
  if (v134)
  {
    if (*(v9 + 744))
    {
      tidy_out(v9, "For further advice on how to make your pages accessible, see\n", a3, a4, a5, a6, a7, a8, v402);
      tidy_out(v9, "%s", v135, v136, v137, v138, v139, v140, "http://www.w3.org/WAI/GL");
      tidy_out(v9, " and\n", v141, v142, v143, v144, v145, v146, v421);
      tidy_out(v9, "%s", v147, v148, v149, v150, v151, v152, "http://www.aprompt.ca/Tidy/accessibilitychecks.html");
      v159 = "You may also want to try http://www.cast.org/bobby/ which is a free Web-based\n";
      v160 = ".\n";
LABEL_31:
      tidy_out(v9, v160, v153, v154, v155, v156, v157, v158, v422);
      tidy_out(v9, v159, v269, v270, v271, v272, v273, v274, v441);
      result = tidy_out(v9, "service for checking URLs for accessibility.\n\n", v275, v276, v277, v278, v279, v280, v442);
      goto LABEL_32;
    }

    if ((v134 & 4) != 0)
    {
      tidy_out(v9, "The table summary attribute should be used to describe\n", a3, a4, a5, a6, a7, a8, v402);
      tidy_out(v9, "the table structure. It is very helpful for people using\n", v336, v337, v338, v339, v340, v341, v452);
      tidy_out(v9, "non-visual browsers. The scope and headers attributes for\n", v342, v343, v344, v345, v346, v347, v453);
      tidy_out(v9, "table cells are useful for specifying which headers apply\n", v348, v349, v350, v351, v352, v353, v454);
      tidy_out(v9, "to each table cell, enabling non-visual browsers to provide\n", v354, v355, v356, v357, v358, v359, v455);
      tidy_out(v9, "a meaningful context for each cell.\n\n", v360, v361, v362, v363, v364, v365, v456);
      v134 = *(v9 + 4900);
      if ((v134 & 1) == 0)
      {
LABEL_25:
        if ((v134 & 8) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_48;
      }
    }

    else if ((v134 & 1) == 0)
    {
      goto LABEL_25;
    }

    tidy_out(v9, "The alt attribute should be used to give a short description\n", a3, a4, a5, a6, a7, a8, v402);
    tidy_out(v9, "of an image; longer descriptions should be given with the\n", v366, v367, v368, v369, v370, v371, v457);
    tidy_out(v9, "longdesc attribute which takes a URL linked to the description.\n", v372, v373, v374, v375, v376, v377, v458);
    tidy_out(v9, "These measures are needed for people using non-graphical browsers.\n\n", v378, v379, v380, v381, v382, v383, v459);
    v134 = *(v9 + 4900);
    if ((v134 & 8) == 0)
    {
LABEL_26:
      if ((v134 & 2) == 0)
      {
LABEL_28:
        if ((v134 & 0x30) == 0x10)
        {
          tidy_out(v9, "Pages designed using frames presents problems for\n", a3, a4, a5, a6, a7, a8, v402);
          tidy_out(v9, "people who are either blind or using a browser that\n", v239, v240, v241, v242, v243, v244, v436);
          tidy_out(v9, "doesn't support frames. A frames-based page should always\n", v245, v246, v247, v248, v249, v250, v437);
          tidy_out(v9, "include an alternative layout inside a NOFRAMES element.\n\n", v251, v252, v253, v254, v255, v256, v438);
        }

        tidy_out(v9, "For further advice on how to make your pages accessible\n", a3, a4, a5, a6, a7, a8, v402);
        tidy_out(v9, "see ", v257, v258, v259, v260, v261, v262, v439);
        tidy_out(v9, "http://www.w3.org/WAI/GL", v263, v264, v265, v266, v267, v268, v440);
        v159 = "http://www.cast.org/bobby/ which is a free Web-based\n";
        v160 = ". You may also want to try\n";
        goto LABEL_31;
      }

LABEL_27:
      tidy_out(v9, "For hypertext links defined using a client-side image map, you\n", a3, a4, a5, a6, a7, a8, v402);
      tidy_out(v9, "need to use the alt attribute to provide a textual description\n", v227, v228, v229, v230, v231, v232, v434);
      tidy_out(v9, "of the link for people using non-graphical browsers.\n\n", v233, v234, v235, v236, v237, v238, v435);
      v134 = *(v9 + 4900);
      goto LABEL_28;
    }

LABEL_48:
    tidy_out(v9, "Use client-side image maps in preference to server-side image\n", a3, a4, a5, a6, a7, a8, v402);
    tidy_out(v9, "maps as the latter are inaccessible to people using non-\n", v384, v385, v386, v387, v388, v389, v460);
    tidy_out(v9, "graphical browsers. In addition, client-side maps are easier\n", v390, v391, v392, v393, v394, v395, v461);
    tidy_out(v9, "to set up and provide immediate feedback to users.\n\n", v396, v397, v398, v399, v400, v401, v462);
    v134 = *(v9 + 4900);
    if ((v134 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_32:
  v281 = *(v9 + 4904);
  if (!v281)
  {
    return result;
  }

  if ((v281 & 2) != 0)
  {
    tidy_out(v9, "The Cascading Style Sheets (CSS) Positioning mechanism\n", a3, a4, a5, a6, a7, a8, v402);
    tidy_out(v9, "is recommended in preference to the proprietary <LAYER>\n", v282, v283, v284, v285, v286, v287, v443);
    result = tidy_out(v9, "element due to limited vendor support for LAYER.\n\n", v288, v289, v290, v291, v292, v293, v444);
    v281 = *(v9 + 4904);
    if ((v281 & 1) == 0)
    {
LABEL_35:
      if ((v281 & 8) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_41;
    }
  }

  else if ((v281 & 1) == 0)
  {
    goto LABEL_35;
  }

  tidy_out(v9, "You are recommended to use CSS for controlling white\n", a3, a4, a5, a6, a7, a8, v402);
  tidy_out(v9, "space (e.g. for indentation, margins and line spacing).\n", v294, v295, v296, v297, v298, v299, v445);
  result = tidy_out(v9, "The proprietary <SPACER> element has limited vendor support.\n\n", v300, v301, v302, v303, v304, v305, v446);
  v281 = *(v9 + 4904);
  if ((v281 & 8) == 0)
  {
LABEL_36:
    if ((v281 & 4) == 0)
    {
      goto LABEL_37;
    }

LABEL_42:
    tidy_out(v9, "You are recommended to use CSS to control line wrapping.\n", a3, a4, a5, a6, a7, a8, v402);
    tidy_out(v9, "Use white-space: nowrap to inhibit wrapping in place\n", v324, v325, v326, v327, v328, v329, v450);
    result = tidy_out(v9, "of inserting <NOBR>...</NOBR> into the markup.\n\n", v330, v331, v332, v333, v334, v335, v451);
    if ((*(v9 + 4904) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_41:
  tidy_out(v9, "You are recommended to use CSS to specify the font and\n", a3, a4, a5, a6, a7, a8, v402);
  tidy_out(v9, "properties such as its size and color. This will reduce\n", v306, v307, v308, v309, v310, v311, v447);
  tidy_out(v9, "the size of HTML files and make them easier to maintain\n", v312, v313, v314, v315, v316, v317, v448);
  result = tidy_out(v9, "compared with using <FONT> elements.\n\n", v318, v319, v320, v321, v322, v323, v449);
  v281 = *(v9 + 4904);
  if ((v281 & 4) != 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  if ((v281 & 0x10) == 0)
  {
    return result;
  }

LABEL_43:

  return tidy_out(v9, "You are recommended to use CSS to specify page and link colors\n", a3, a4, a5, a6, a7, a8, a9);
}

uint64_t NeedsAuthorIntervention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  tidy_out(a1, "This document has errors that must be fixed before\n", a3, a4, a5, a6, a7, a8, v17);

  return tidy_out(a1, "using HTML Tidy to generate a tidied up version.\n\n", v10, v11, v12, v13, v14, v15, a9);
}

uint64_t GeneralInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  tidy_out(a1, "To learn more about HTML Tidy see http://tidy.sourceforge.net\n", a3, a4, a5, a6, a7, a8, v29);
  tidy_out(a1, "Please send bug reports to html-tidy@w3.org\n", v10, v11, v12, v13, v14, v15, v30);
  tidy_out(a1, "HTML and CSS specifications are available from http://www.w3.org/\n", v16, v17, v18, v19, v20, v21, v31);

  return tidy_out(a1, "Lobby your company to join W3C, see http://www.w3.org/Consortium\n", v22, v23, v24, v25, v26, v27, a9);
}

uint64_t AccessibilityHelloMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  tidy_out(a1, "\n", a3, a4, a5, a6, a7, a8, v23);
  tidy_out(a1, "Accessibility Checks: Version 0.1\n", v10, v11, v12, v13, v14, v15, v24);

  return tidy_out(a1, "\n", v16, v17, v18, v19, v20, v21, a9);
}

uint64_t ReportMarkupVersion(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = result;
  if (*(result + 4952))
  {
    result = message(result, 0, "Doctype given is %s", a4, a5, a6, a7, a8, *(result + 4952));
  }

  if (!*(v9 + 280))
  {
    v10 = *(*(v9 + 104) + 28);
    v11 = ApparentVersion(v9);
    v12 = HTMLVersionNameFromCode(v11);
    v18 = "HTML Proprietary";
    if (v12)
    {
      LOBYTE(v18) = v12;
    }

    message(v9, 0, "Document content looks like %s", v13, v14, v15, v16, v17, v18);
    result = WarnMissingSIInEmittedDocType(v9);
    if (result)
    {

      return message(v9, 0, "No system identifier in emitted doctype", v19, v20, v21, v22, v23, a9);
    }
  }

  return result;
}

uint64_t ReportNumWarnings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 4876))
  {
    *(a1 + 4876);
    tidy_out(a1, "%u %s, %u %s were found!", a3, a4, a5, a6, a7, a8, *(a1 + 4880));
    v10 = " Not all warnings/errors were shown.\n\n";
    if (*(a1 + 632) >= *(a1 + 4876) && *(a1 + 248))
    {
      v10 = "\n\n";
    }
  }

  else
  {
    v10 = "No warnings or errors were found.\n\n";
  }

  return tidy_out(a1, v10, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t messagePos(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, va_list a6)
{
  v9 = result;
  *&v32[2047] = *MEMORY[0x29EDCA608];
  v10 = *(result + 4876);
  v11 = *(result + 632);
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        ++*(result + 4884);
        break;
      case 4:
        *(result + 4876) = v10 + 1;
        break;
      case 5:
        ++*(result + 4892);
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      ++*(result + 4880);
      if (v11 <= v10 || !*(result + 248))
      {
        goto LABEL_37;
      }

      goto LABEL_17;
    }

    if (a2 == 2)
    {
      ++*(result + 4872);
    }
  }

  else
  {
    ++*(result + 4888);
  }

  if (v11 <= v10)
  {
    goto LABEL_37;
  }

LABEL_17:
  tmbvsnprintf(&v31, 2048, a5, a6);
  v17 = *(v9 + 4856);
  if (!v17 || (result = v17(v9, a2, a3, a4, &v31), result))
  {
    if (a3 >= 1 && a4 >= 1)
    {
      v29 = 0;
      if (*(v9 + 560) && (v18 = *(v9 + 568)) != 0)
      {
        tmbsnprintf(&v29, 64, "%s:%d:%d: ", v12, v13, v14, v15, v16, v18);
      }

      else
      {
        tmbsnprintf(&v29, 64, "line %d column %d - ", v12, v13, v14, v15, v16, a3);
      }

      tmbstrlen(&v29);
      v19 = v29;
      if (v29)
      {
        v20 = v30;
        do
        {
          WriteChar(v19, *(v9 + 4848));
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }

    v29 = 0;
    if (a2 <= 6)
    {
      tmbstrncpy(&v29, off_29F27A468[a2], 64);
    }

    tmbstrlen(&v29);
    v22 = v29;
    if (v29)
    {
      v23 = v30;
      do
      {
        WriteChar(v22, *(v9 + 4848));
        v24 = *v23++;
        v22 = v24;
      }

      while (v24);
    }

    v25 = v31;
    if (v31)
    {
      v26 = v32;
      do
      {
        WriteChar(v25, *(v9 + 4848));
        v27 = *v26++;
        v25 = v27;
      }

      while (v27);
    }

    result = WriteChar(10, *(v9 + 4848));
  }

LABEL_37:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CheckNodeIntegrity(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2 || *(v2 + 16) == a1)
  {
    v3 = a1[2];
    if (!v3 || *(v3 + 8) == a1)
    {
      v5 = *a1;
      if (!*a1 || (v2 || *(v5 + 24) == a1) && (v3 || *(v5 + 32) == a1))
      {
        v6 = a1[3];
        if (!v6)
        {
          return 1;
        }

        while (*v6 == a1)
        {
          result = CheckNodeIntegrity(v6);
          if (!result)
          {
            return result;
          }

          v6 = v6[2];
          if (!v6)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t IsNewNode(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 56)) != 0)
  {
    return *(v1 + 32) & 0x100000;
  }

  else
  {
    return 1;
  }
}

_BYTE *CoerceNode(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = LookupTagDef(a3);
  v10 = InferredTag(a1, *v9);
  if (a4)
  {
    ReportWarning(a1, a2, v10, 20);
  }

  else if (a5)
  {
    ReportError(a1, a2, v10, 84);
  }

  else
  {
    ReportNotice(a1, a2, v10, 83);
  }

  v11 = linkedOnOrAfter2024EReleases();
  v12 = *(v10 + 8);
  if (v11)
  {
    free(v12);
    *(v10 + 8) = 0;
  }

  else
  {
    _MemFree(v12);
  }

  if (linkedOnOrAfter2024EReleases())
  {
    free(v10);
  }

  else
  {
    _MemFree(v10);
  }

  *(a2 + 48) = *(a2 + 56);
  *(a2 + 56) = v9;
  *(a2 + 80) = 5;
  *(a2 + 96) = 1;
  v13 = linkedOnOrAfter2024EReleases();
  v14 = *(a2 + 64);
  if (v13)
  {
    free(v14);
    *(a2 + 64) = 0;
  }

  else
  {
    _MemFree(v14);
  }

  result = tmbstrdup(*(v9 + 1));
  *(a2 + 64) = result;
  return result;
}

uint64_t *RemoveNode(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  if (v2)
  {
    *(v2 + 16) = v1;
  }

  if (v1)
  {
    *(v1 + 8) = v2;
  }

  v3 = *result;
  if (*result)
  {
    if (*(v3 + 24) == result)
    {
      *(v3 + 24) = v1;
    }

    if (*(v3 + 32) == result)
    {
      *(v3 + 32) = result[1];
    }
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t DiscardElement(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2[2];
  RemoveNode(a2);
  FreeNode(a1, a2);
  return v4;
}

uint64_t InsertNodeAtStart(uint64_t result, void *a2)
{
  *a2 = result;
  v2 = *(result + 24);
  v3 = (v2 + 8);
  if (!v2)
  {
    v3 = (result + 32);
  }

  *v3 = a2;
  a2[1] = 0;
  a2[2] = v2;
  *(result + 24) = a2;
  return result;
}

uint64_t InsertNodeAtEnd(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  *a2 = result;
  a2[1] = v2;
  if (v2)
  {
    v3 = (v2 + 16);
  }

  else
  {
    v3 = (result + 24);
  }

  *v3 = a2;
  *(result + 32) = a2;
  return result;
}

__int128 *InsertNodeBeforeElement(__int128 *result, uint64_t a2)
{
  *(a2 + 16) = result;
  v2 = *result;
  *a2 = *result;
  *(result + 1) = a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    *(v3 + 16) = a2;
  }

  if (*(v2 + 24) == result)
  {
    *(v2 + 24) = a2;
  }

  return result;
}

uint64_t *InsertNodeAfterElement(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    v4 = *(v2 + 32);
    v3 = (v2 + 32);
    if (v4 == result)
    {
      goto LABEL_5;
    }
  }

  v5 = result[2];
  a2[2] = v5;
  if (v5)
  {
    v3 = (v5 + 8);
LABEL_5:
    *v3 = a2;
  }

  result[2] = a2;
  a2[1] = result;
  return result;
}

uint64_t TrimEmptyElement(uint64_t a1, uint64_t a2)
{
  if (nodeIsText(a2))
  {
    goto LABEL_2;
  }

  if (*(a2 + 24))
  {
    return *(a2 + 16);
  }

  v5 = *(a2 + 56);
  if (!v5)
  {
    return *(a2 + 16);
  }

  v6 = v5[8];
  if ((v6 & 8) != 0)
  {
    if (*(a2 + 40))
    {
      return *(a2 + 16);
    }
  }

  v7 = *v5;
  if (v7 == 79)
  {
    if ((v6 & 0x201) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(a1 + 376) == 0;
      *(a1 + 376);
    }

    if (v9)
    {
      return *(a2 + 16);
    }

    goto LABEL_24;
  }

  if (v7 == 1)
  {
    if ((v6 & 0x201) != 0 || *(a2 + 40) != 0)
    {
      return *(a2 + 16);
    }

    goto LABEL_24;
  }

  v11 = (v6 & 0x201) != 0 || v7 == 6;
  if (v11 || v7 == 75)
  {
    return *(a2 + 16);
  }

  if (v7 == 92)
  {
    if (!AttrGetById(a2, 132))
    {
      v12 = *(a2 + 56);
      if (!v12)
      {
        goto LABEL_24;
      }

      v7 = *v12;
      goto LABEL_39;
    }

    return *(a2 + 16);
  }

LABEL_39:
  v13 = v7 - 50;
  if (v13 <= 0x3D && ((1 << v13) & 0x2200000000000001) != 0)
  {
    return *(a2 + 16);
  }

LABEL_24:
  if (AttrGetById(a2, 62))
  {
    return *(a2 + 16);
  }

  if (AttrGetById(a2, 79))
  {
    return *(a2 + 16);
  }

  if (AttrGetById(a2, 38))
  {
    return *(a2 + 16);
  }

  v10 = **(a2 + 56);
  if (v10 <= 0x18 && ((1 << v10) & 0x1010001) != 0)
  {
    return *(a2 + 16);
  }

LABEL_2:
  if (*(a2 + 80) != 4)
  {
    ReportNotice(a1, a2, 0, 23);
  }

  return DiscardElement(a1, a2);
}

uint64_t DropEmptyElements(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *(v2 + 16);
      if (*(v2 + 24))
      {
        DropEmptyElements(a1);
      }

      if (nodeIsElement(v2) || nodeIsText(v2) && *(v2 + 72) >= *(v2 + 76))
      {
        v4 = TrimEmptyElement(a1, v2);
      }

      v2 = v4;
    }

    while (v4);
  }

  return 0;
}

BOOL IsBlank(uint64_t a1, uint64_t a2)
{
  result = nodeIsText(a2);
  if (result)
  {
    v5 = *(a2 + 72);
    v6 = *(a2 + 76);
    if (v6 == v5)
    {
      return 1;
    }

    else
    {
      return v6 == v5 + 1 && *(*(a1 + 104) + v5) == 32;
    }
  }

  return result;
}

uint64_t ParseBlock(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 56);
  v9 = v8[8];
  if (v9)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 104);
  if (*v8 != 37 || (v13 = *a2) == 0)
  {
LABEL_7:
    if ((v9 & 0x800) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v15 = 0;
    if ((v9 & 0x20000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  while (1)
  {
    v14 = v13[7];
    if (v14)
    {
      if (*v14 == 37)
      {
        break;
      }
    }

    v13 = *v13;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  ReportError(result, a2, 0, 25);
  v9 = *(*(a2 + 56) + 32);
  if ((v9 & 0x800) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = v12[38];
  v12[38] = v12[37];
  if ((v9 & 0x20000) == 0)
  {
LABEL_12:
    InlineDup(v11, 0);
  }

LABEL_13:
  Token = GetToken(v11, 0, a3, a4, a5, a6, a7, a8);
  if (Token)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = *(Token + 20);
      v20 = *(Token + 7);
      if (v19 == 6)
      {
        if (!v20)
        {
          goto LABEL_30;
        }

        if (v20 == *(a2 + 56) || *(a2 + 48) == v20)
        {
          FreeNode(v11, Token);
          if ((*(*(a2 + 56) + 33) & 8) != 0)
          {
            while (v12[37] > v12[38])
            {
              PopInline(v11, 0);
            }

            v12[38] = v15;
          }

          *(a2 + 92) = 1;
          goto LABEL_169;
        }
      }

      else if (!v20)
      {
        goto LABEL_47;
      }

      v21 = *v20;
      if (v21 == 16)
      {
        v22 = *a2;
        if (*a2)
        {
          while (1)
          {
            v23 = v22[7];
            if (v23)
            {
              if (*v23 == 46)
              {
                goto LABEL_153;
              }
            }

            v22 = *v22;
            if (!v22)
            {
              goto LABEL_26;
            }
          }
        }
      }

      else
      {
LABEL_26:
        if (v21 != 46 && v21 != 48 && v21 != 16)
        {
          if (v19 == 6)
          {
            if (v21 == 79)
            {
              *(Token + 20) = 7;
              *(Token + 24) = 1;
            }

            else if (v21 == 17)
            {
              *(Token + 20) = 5;
            }

            else
            {
              v30 = *a2;
              if (*a2)
              {
                while (1)
                {
                  v31 = v30[7];
                  if (v31)
                  {
                    if (*v31 == v21)
                    {
                      break;
                    }
                  }

                  v30 = *v30;
                  if (!v30)
                  {
                    goto LABEL_43;
                  }
                }

LABEL_153:
                UngetToken(v11);
                break;
              }

LABEL_43:
              if (v12[6])
              {
                if (nodeHasCM(Token, 128) || (v32 = *(Token + 7)) != 0 && *v32 == 104)
                {
LABEL_164:
                  UngetToken(v11);
                  goto LABEL_169;
                }
              }
            }
          }

LABEL_47:
          if (nodeIsText(Token))
          {
            if (!v18 || (*(*(a2 + 56) + 34) & 2) != 0 || InlineDup(v11, Token) <= 0)
            {
              v33 = *(a2 + 32);
              *Token = a2;
              *(Token + 1) = v33;
              if (v33)
              {
                v34 = (v33 + 16);
              }

              else
              {
                v34 = (a2 + 24);
              }

              *v34 = Token;
              *(a2 + 32) = Token;
              v35 = *(a2 + 56);
              if (v35)
              {
                v36 = *v35 - 15;
                v37 = v36 > 0x3B;
                v38 = (1 << v36) & 0x802000000400003;
                if (!v37 && v38 != 0)
                {
                  ConstrainVersion(v11, -293);
                }
              }

              v18 = 0;
              v17 = 1;
              goto LABEL_32;
            }

            goto LABEL_51;
          }

          if (InsertMisc(a2, Token))
          {
            goto LABEL_32;
          }

          v40 = *(Token + 7);
          if (!v40)
          {
LABEL_30:
            ReportError(v11, a2, Token, 8);
            goto LABEL_31;
          }

          v41 = *v40;
          if (v41 == 7)
          {
            v42 = *(a2 + 56);
            if (!v42 || *v42 != 64)
            {
              goto LABEL_30;
            }

            goto LABEL_70;
          }

          if (v41 == 80)
          {
            if (!nodeHasCM(a2, 4096))
            {
              goto LABEL_30;
            }

LABEL_70:
            if (nodeIsElement(Token))
            {
              v43 = *(a2 + 32);
              *Token = a2;
              *(Token + 1) = v43;
              if (v43)
              {
                v44 = (v43 + 16);
              }

              else
              {
                v44 = (a2 + 24);
              }

              *v44 = Token;
              *(a2 + 32) = Token;
              goto LABEL_32;
            }

            goto LABEL_30;
          }

          if (nodeHasCM(Token, 16))
          {
LABEL_76:
            if (nodeIsElement(Token))
            {
              v45 = *(Token + 7);
              if ((*(v45 + 32) & 0x10) == 0)
              {
                v17 = 0;
                v18 = 1;
                goto LABEL_125;
              }

              if (!v18)
              {
                goto LABEL_124;
              }

              if (*(Token + 24))
              {
                v18 = 1;
                goto LABEL_124;
              }

              if ((*(*(a2 + 56) + 34) & 2) != 0)
              {
                v18 = 0;
LABEL_124:
                v17 = 1;
LABEL_125:
                if (*v45 == 17)
                {
                  TrimSpaces(v11, a2);
                }

LABEL_127:
                v57 = *(a2 + 32);
                *Token = a2;
                *(Token + 1) = v57;
                if (v57)
                {
                  v58 = (v57 + 16);
                }

                else
                {
                  v58 = (a2 + 24);
                }

                *v58 = Token;
                *(a2 + 32) = Token;
                if (*(Token + 24))
                {
                  ReportError(v11, a2, Token, 15);
                }

                ParseTag(v11, Token);
                goto LABEL_32;
              }

              if (InlineDup(v11, Token) <= 0)
              {
                v18 = 0;
                v45 = *(Token + 7);
                v17 = 1;
                if (v45)
                {
                  goto LABEL_125;
                }

                goto LABEL_127;
              }

LABEL_51:
              v18 = 0;
              goto LABEL_32;
            }

            if (*(Token + 20) == 6)
            {
              PopInline(v11, Token);
            }

            goto LABEL_30;
          }

          if (!nodeIsElement(Token))
          {
            v50 = *(Token + 7);
            if (v50 && *v50 == 37)
            {
              *(v11 + 4912) = 1;
            }

            goto LABEL_30;
          }

          v46 = *(a2 + 56);
          if (!v46)
          {
LABEL_87:
            if (nodeHasCM(Token, 8))
            {
              if (v12[5])
              {
                if (!nodeHasCM(a2, 0x8000))
                {
                  ReportError(v11, a2, Token, 7);
                }

                UngetToken(v11);
                if (nodeHasCM(a2, 2048))
                {
                  goto LABEL_168;
                }

                goto LABEL_169;
              }
            }

            else
            {
              v51 = *(Token + 7);
              if ((v51[8] & 4) != 0)
              {
LABEL_122:
                MoveToHead(v11, a2, Token);
                goto LABEL_32;
              }

              v52 = *(a2 + 56);
              if (v52)
              {
                if (*v52 == 37)
                {
                  v53 = *a2;
                  if (*a2)
                  {
                    v54 = v53[7];
                    if (v54)
                    {
                      if (*v54 == 106 && *(v53 + 24))
                      {
                        v55 = *v51;
                        if (v55 == 109)
                        {
                          ReportError(v11, a2, Token, 8);
                          FreeNode(v11, Token);
                          v62 = *a2;
                          v63 = linkedOnOrAfter2024EReleases();
                          v64 = v62[8];
                          if (v63)
                          {
                            free(v64);
                            v62[8] = 0;
                          }

                          else
                          {
                            _MemFree(v64);
                          }

                          v62[8] = tmbstrdup("th");
                          v62[7] = LookupTagDef(109);
                          goto LABEL_32;
                        }

                        if (v55 == 106)
                        {
                          goto LABEL_30;
                        }
                      }
                    }
                  }
                }
              }

              if (!nodeHasCM(a2, 0x8000) && !*(a2 + 96))
              {
                ReportError(v11, a2, Token, 7);
              }

              UngetToken(v11);
              if (nodeHasCM(Token, 32))
              {
                if (*a2)
                {
                  v56 = *(*a2 + 56);
                  if (v56)
                  {
                    if (*(v56 + 40) == ParseList)
                    {
                      goto LABEL_169;
                    }
                  }
                }

                Token = InferredTag(v11, 115);
                AddClassNoIndent(v11, Token);
              }

              else
              {
                if (nodeHasCM(Token, 64))
                {
                  if (*a2)
                  {
                    v59 = *(*a2 + 56);
                    if (v59)
                    {
                      if (*v59 == 31)
                      {
                        goto LABEL_169;
                      }
                    }
                  }

                  v60 = v11;
                  v61 = 31;
                }

                else
                {
                  result = nodeHasCM(Token, 128);
                  if (!result)
                  {
                    result = nodeHasCM(Token, 512);
                    if (!result)
                    {
                      if (!nodeHasCM(a2, 2048))
                      {
                        goto LABEL_169;
                      }

                      while (v12[37] > v12[38])
                      {
                        PopInline(v11, 0);
                      }

LABEL_168:
                      v12[38] = v15;
                      goto LABEL_169;
                    }
                  }

                  if (v12[6])
                  {
                    return result;
                  }

                  v60 = v11;
                  v61 = 104;
                }

                Token = InferredTag(v60, v61);
              }
            }

            goto LABEL_76;
          }

          v47 = *v46;
          if (v47 != 109 && v47 != 106)
          {
            if (v47 == 61)
            {
              v48 = *(Token + 7);
              if (v48)
              {
                v49 = *v48 - 38;
                if (v49 <= 0x28 && ((1 << v49) & 0x18000000003) != 0)
                {
                  goto LABEL_30;
                }
              }
            }

            goto LABEL_87;
          }

          if (nodeHasCM(Token, 4))
          {
            goto LABEL_122;
          }

          if (nodeHasCM(Token, 32))
          {
            UngetToken(v11);
            Token = InferredTag(v11, 115);
            AddClassNoIndent(v11, Token);
            goto LABEL_135;
          }

          if (nodeHasCM(Token, 64))
          {
            UngetToken(v11);
            Token = InferredTag(v11, 31);
LABEL_135:
            v12[5] = 1;
          }

          if (!nodeHasCM(Token, 8))
          {
            goto LABEL_164;
          }

          goto LABEL_76;
        }
      }

      if (nodeIsElement(Token))
      {
        goto LABEL_30;
      }

LABEL_31:
      FreeNode(v11, Token);
LABEL_32:
      Token = GetToken(v11, v17, v24, v25, v26, v27, v28, v29);
    }

    while (Token);
  }

  v65 = *(*(a2 + 56) + 32);
  if ((v65 & 0x8000) == 0)
  {
    ReportError(v11, a2, Token, 6);
    v65 = *(*(a2 + 56) + 32);
  }

  if ((v65 & 0x800) != 0)
  {
    while (v12[37] > v12[38])
    {
      PopInline(v11, 0);
    }

    goto LABEL_168;
  }

LABEL_169:

  return TrimSpaces(v11, a2);
}

BOOL TrimSpaces(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  v5 = *(a2 + 56);
  if (!v5 || *v5 != 82)
  {
    v6 = *a2;
    if (*a2)
    {
      while (1)
      {
        v7 = v6[7];
        if (v7)
        {
          if (*(v7 + 40) == ParsePre)
          {
            break;
          }
        }

        v6 = *v6;
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (nodeIsText(*(a2 + 24)))
      {
        TrimInitialSpace(v3, a2, v4);
      }

      v8 = *(a2 + 32);
      result = nodeIsText(v8);
      if (result)
      {
        v9 = *(v3 + 104);
        result = nodeIsText(v8);
        if (result)
        {
          v10 = *(v8 + 76);
          if (v10 > *(v8 + 72))
          {
            v11 = v10 - 1;
            if (*(*(v9 + 104) + v11) == 32)
            {
              *(v8 + 76) = v11;
              if ((*(*(a2 + 56) + 32) & 0x410) == 0x10)
              {
                *(v9 + 16) = 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t InsertMisc(void *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4 <= 0xD)
  {
    if (((1 << v4) & 0x1F0C) != 0)
    {
      goto LABEL_3;
    }

    if (v4 == 13)
    {
      v11 = a1;
      while (v11)
      {
        v12 = v11;
        v11 = *v11;
        if (!v11)
        {
          v9 = v12 + 3;
          v13 = v12[3];
          if (v13 && *(v13 + 80) == 13)
          {
            break;
          }

          *a2 = v12;
          v15 = v12 + 4;
          if (v13)
          {
            v15 = (v13 + 8);
          }

          *v15 = a2;
          *(a2 + 8) = 0;
          *(a2 + 16) = v13;
          goto LABEL_6;
        }
      }
    }
  }

  if (!*(a2 + 56))
  {
    return 0;
  }

  result = nodeIsElement(a2);
  if (!result)
  {
    return result;
  }

  result = nodeCMIsEmpty(a2);
  if (!result)
  {
    return result;
  }

  v14 = *(a2 + 56);
  if (v14)
  {
    if (*v14)
    {
      return 0;
    }
  }

  if ((*(v14 + 17) & 0xE0) == 0)
  {
    return 0;
  }

LABEL_3:
  *a2 = a1;
  v5 = a1 + 3;
  v7 = a1[4];
  v6 = a1 + 4;
  *(a2 + 8) = v7;
  v8 = (v7 + 16);
  if (v7)
  {
    v5 = v8;
  }

  *v5 = a2;
  v9 = v6;
LABEL_6:
  *v9 = a2;
  return 1;
}

void MoveToHead(void *a1, uint64_t a2, uint64_t *a3)
{
  RemoveNode(a3);
  if (nodeIsElement(a3))
  {
    ReportError(a1, a2, a3, 11);
    HEAD = FindHEAD(a1);
    v7 = HEAD[4];
    *a3 = HEAD;
    a3[1] = v7;
    if (v7)
    {
      v8 = (v7 + 16);
    }

    else
    {
      v8 = (HEAD + 3);
    }

    *v8 = a3;
    HEAD[4] = a3;
    if (*(a3[7] + 40))
    {

      ParseTag(a1, a3);
    }
  }

  else
  {
    ReportError(a1, a2, a3, 8);

    FreeNode(a1, a3);
  }
}

void AddClassNoIndent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 776))
  {
    if (*(a1 + 344))
    {
      AddStyleAsClass(a1, a2, "padding-left: 2ex; margin-left: 0ex; margin-top: 0ex; margin-bottom: 0ex");
    }

    else
    {
      AddStyleProperty(a1, a2, "padding-left: 2ex; margin-left: 0ex; margin-top: 0ex; margin-bottom: 0ex");
    }
  }
}

void ParseList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a2 + 56) + 32))
  {
    return;
  }

  v10 = *(a1 + 104);
  *(v10 + 128) = 0;
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
LABEL_38:
    v27 = a1;
    v28 = a2;
    v29 = 0;
    v30 = 6;
    goto LABEL_39;
  }

  v12 = Token;
  while (1)
  {
    if (*(v12 + 7) == *(a2 + 56) && *(v12 + 20) == 6)
    {
      FreeNode(a1, v12);
      *(a2 + 92) = 1;
      return;
    }

    if (!InsertMisc(a2, v12))
    {
      break;
    }

LABEL_29:
    v12 = GetToken(a1, 0, v13, v14, v15, v16, v17, v18);
    if (!v12)
    {
      goto LABEL_38;
    }
  }

  v19 = *(v12 + 20);
  v20 = *(v12 + 7);
  if (v19 != 4)
  {
    if (v20)
    {
      if (v19 != 6)
      {
        goto LABEL_16;
      }

      if (*v20 == 37)
      {
        *(a1 + 4912) = 1;
      }

      else
      {
        v25 = a2;
        if ((*(v20 + 32) & 0x10) != 0)
        {
          ReportError(a1, a2, v12, 8);
          PopInline(a1, v12);
          goto LABEL_15;
        }

        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          v26 = v25[7];
          if (v26)
          {
            if (*v26 == 16)
            {
              break;
            }
          }

          if (v20 == v26)
          {
            ReportError(a1, a2, v12, 7);

            UngetToken(a1);
            return;
          }
        }
      }
    }

    ReportError(a1, a2, v12, 8);
LABEL_15:
    FreeNode(a1, v12);
    goto LABEL_29;
  }

  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (*v20 == 61)
  {
LABEL_25:
    v23 = *(a2 + 32);
    *v12 = a2;
    *(v12 + 1) = v23;
    if (v23)
    {
      v24 = (v23 + 16);
    }

    else
    {
      v24 = (a2 + 24);
    }

    *v24 = v12;
    *(a2 + 32) = v12;
    ParseTag(a1, v12);
    goto LABEL_29;
  }

LABEL_17:
  UngetToken(a1);
  v21 = *(v12 + 7);
  if (!v21 || (*(v21 + 32) & 8) == 0 || !*(v10 + 20))
  {
    if (*(v10 + 24))
    {
      if (nodeHasCM(v12, 896))
      {
        return;
      }

      v22 = *(v12 + 7);
      if (v22)
      {
        if (*v22 == 104)
        {
          return;
        }
      }
    }

    v12 = InferredTag(a1, 61);
    AddStyleProperty(a1, v12, "list-style: none");
    ReportError(a1, a2, v12, 12);
    goto LABEL_25;
  }

  v27 = a1;
  v28 = a2;
  v29 = v12;
  v30 = 7;
LABEL_39:

  ReportError(v27, v28, v29, v30);
}

uint64_t ParseTag(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104);
  v3 = *(a2 + 56);
  v4 = *(v3 + 32);
  if (v4)
  {
    *(v2 + 8) = 0;
    if (!*(v3 + 40))
    {
      return result;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    *(v2 + 16) = 0;
  }

  v5 = *(v3 + 40);
  if (v5)
  {
    if (*(a2 + 80) != 7)
    {
      return v5();
    }
  }

  return result;
}

void ParseInline(uint64_t a1, uint64_t a2, int a3)
{
  if (*(*(a2 + 56) + 32))
  {
    return;
  }

  v4 = a2;
  v6 = *(a1 + 104);
  if ((nodeHasCM(a2, 8) || (v13 = *(v4 + 56)) != 0 && *v13 == 32) && !nodeHasCM(v4, 0x20000))
  {
    InlineDup(a1, 0);
  }

  else if (nodeHasCM(v4, 16))
  {
    PushInline(a1, v4);
  }

  v14 = *(v4 + 56);
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = *v14;
  if (v15 == 69)
  {
    v16 = 4;
    goto LABEL_14;
  }

  if (v15 == 36)
  {
    v16 = 8;
LABEL_14:
    *(a1 + 4904) |= v16;
  }

LABEL_15:
  if (a3 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  Token = GetToken(a1, v17, v7, v8, v9, v10, v11, v12);
  if (!Token)
  {
LABEL_223:
    if ((*(*(v4 + 56) + 33) & 0x80) == 0)
    {

      ReportError(a1, v4, 0, 6);
    }

    return;
  }

  v19 = Token;
  while (1)
  {
    v20 = *(v4 + 56);
    if (*(v19 + 7) != v20)
    {
      goto LABEL_27;
    }

    v21 = *(v19 + 20);
    if (v21 != 5)
    {
      if (v21 == 6)
      {
        if ((*(v20 + 32) & 0x10) != 0)
        {
          PopInline(a1, v19);
        }

        FreeNode(a1, v19);
        if (a3 != 2)
        {
          TrimSpaces(a1, v4);
        }

        v107 = *(v4 + 56);
        if (v107)
        {
          if (*v107 == 36)
          {
            v108 = *(v4 + 24);
            if (v108)
            {
              if (v108 == *(v4 + 32))
              {
                v111 = *(v108 + 56);
                if (v111)
                {
                  if (*v111 == 1)
                  {
                    *(v108 + 16) = *(v4 + 16);
                    *v108 = *v4;
                    *(v4 + 8) = 0;
                    *(v4 + 16) = 0;
                    *v4 = v108;
                    *(v4 + 24) = *(v108 + 24);
                    *(v108 + 24) = v4;
                    FixNodeLinks(v108);
                    FixNodeLinks(v4);
                  }
                }
              }
            }
          }
        }

        *(v4 + 92) = 1;
        goto LABEL_258;
      }

LABEL_27:
      if (IsPushed(a1, v19))
      {
        if (*(v19 + 20) == 5)
        {
          v22 = *(v19 + 7);
          if (v22)
          {
            if (*v22 == 83)
            {
              v23 = 40;
LABEL_32:
              ReportWarning(a1, v4, v19, v23);
              goto LABEL_33;
            }
          }
        }
      }

      goto LABEL_33;
    }

    if (!IsPushed(a1, v19))
    {
      goto LABEL_27;
    }

    if (*(v19 + 24))
    {
      goto LABEL_27;
    }

    if (*(v4 + 96))
    {
      goto LABEL_27;
    }

    v38 = *(v19 + 7);
    if (!v38 || (*(v38 + 32) & 0x10) == 0)
    {
      goto LABEL_27;
    }

    v39 = *v38;
    v40 = v39 - 83 > 0x14 || ((1 << (v39 - 83)) & 0x18A001) == 0;
    if (!v40 || v39 <= 0x24 && ((1 << v39) & 0x1000002002) != 0)
    {
      goto LABEL_27;
    }

    v41 = *(v19 + 5);
    if (*(v4 + 24))
    {
      if (!v41)
      {
        ReportWarning(a1, v4, v19, 85);
        *(v19 + 20) = 6;
LABEL_172:
        UngetToken(a1);
        goto LABEL_48;
      }
    }

    else if (!v41)
    {
      goto LABEL_222;
    }

    if (!*(v4 + 40))
    {
LABEL_222:
      v23 = 9;
      goto LABEL_32;
    }

LABEL_33:
    if (nodeIsText(v19))
    {
      if (a3 != 2 && !*(v4 + 24))
      {
        TrimSpaces(a1, v4);
      }

      if (*(v19 + 18) >= *(v19 + 19))
      {
        goto LABEL_47;
      }

      v30 = *(v4 + 32);
      *v19 = v4;
      *(v19 + 1) = v30;
      if (v30)
      {
        v31 = (v30 + 16);
      }

      else
      {
        v31 = (v4 + 24);
      }

      goto LABEL_41;
    }

    if (InsertMisc(v4, v19))
    {
      goto LABEL_48;
    }

    v32 = *(v19 + 7);
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = *v32;
    if (v33 == 48)
    {
      if (!nodeIsElement(v19))
      {
        goto LABEL_241;
      }

      goto LABEL_46;
    }

    if (v33 != 79)
    {
      goto LABEL_85;
    }

    v34 = *(v19 + 20);
    if (v34 == 6)
    {
      goto LABEL_89;
    }

    if (v34 != 5)
    {
      goto LABEL_102;
    }

    if (a3 != 2)
    {
      v35 = *(v4 + 56);
      if (!v35 || *v35 != 32)
      {
        break;
      }
    }

LABEL_56:
    *(v19 + 7) = LookupTagDef(17);
    v36 = linkedOnOrAfter2024EReleases();
    v37 = *(v19 + 8);
    if (v36)
    {
      free(v37);
      *(v19 + 8) = 0;
    }

    else
    {
      _MemFree(v37);
    }

    *(v19 + 8) = tmbstrdup("br");
    TrimSpaces(a1, v4);
    v42 = *(v4 + 32);
    *v19 = v4;
    *(v19 + 1) = v42;
    if (v42)
    {
      v31 = (v42 + 16);
    }

    else
    {
      v31 = (v4 + 24);
    }

LABEL_41:
    *v31 = v19;
    *(v4 + 32) = v19;
LABEL_48:
    v19 = GetToken(a1, v17, v24, v25, v26, v27, v28, v29);
    if (!v19)
    {
      goto LABEL_223;
    }
  }

  v43 = *v4;
  if (*v4)
  {
    do
    {
      v44 = v43[7];
      if (v44)
      {
        if (*v44 == 32)
        {
          goto LABEL_56;
        }
      }

      v43 = *v43;
    }

    while (v43);
  }

  if (v4)
  {
    v45 = *(v4 + 56);
    if (v45)
    {
      if (*v45 == 4)
      {
        ConstrainVersion(a1, -293);
        v46 = *(v4 + 32);
        *v19 = v4;
        *(v19 + 1) = v46;
        if (v46)
        {
          v47 = (v46 + 16);
        }

        else
        {
          v47 = (v4 + 24);
        }

        *v47 = v19;
        *(v4 + 32) = v19;
        (*(*(v19 + 7) + 40))(a1, v19, v17);
        goto LABEL_48;
      }
    }
  }

LABEL_85:
  if (v33 == 17)
  {
    if (*(v19 + 20) == 6)
    {
      *(v19 + 20) = 5;
    }

    goto LABEL_102;
  }

  if (v33 == 80)
  {
    goto LABEL_46;
  }

  if (*(v19 + 20) == 6)
  {
    if (v33 == 79)
    {
LABEL_89:
      v48 = *v4;
      if (!*v4)
      {
LABEL_93:
        CoerceNode(a1, v19, 17, 0, 0);
        TrimSpaces(a1, v4);
        v50 = *(v4 + 32);
        *v19 = v4;
        *(v19 + 1) = v50;
        if (v50)
        {
          v51 = (v50 + 16);
        }

        else
        {
          v51 = (v4 + 24);
        }

        *v51 = v19;
        *(v4 + 32) = v19;
        v52 = InferredTag(a1, 17);
        v53 = *(v4 + 32);
        *v52 = v4;
        *(v52 + 1) = v53;
        if (v53)
        {
          v54 = (v53 + 16);
        }

        else
        {
          v54 = (v4 + 24);
        }

        *v54 = v52;
        *(v4 + 32) = v52;
        goto LABEL_48;
      }

      while (1)
      {
        v49 = v48[7];
        if (v49)
        {
          if (*v49 == 79)
          {
            break;
          }
        }

        v48 = *v48;
        if (!v48)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      if (nodeHasCM(v19, 16))
      {
        v90 = *(v19 + 7);
        if ((!v90 || *v90 != 1) && !nodeHasCM(v19, 2048) && nodeHasCM(v4, 16))
        {
          PopInline(a1, v4);
          if (!v4 || (v106 = *(v4 + 56)) == 0 || *v106 != 1)
          {
            v113 = *(v19 + 7);
            if (v113 && *v113 == 1 && v113 != *(v4 + 56))
            {
              v109 = a1;
              v110 = v4;
LABEL_245:
              ReportError(v109, v110, v19, 7);
LABEL_241:
              UngetToken(a1);
              goto LABEL_242;
            }

            v109 = a1;
            v110 = v4;
LABEL_266:
            ReportError(v109, v110, v19, 10);
            FreeNode(a1, v19);
            goto LABEL_242;
          }

          goto LABEL_46;
        }
      }

      if (*(v6 + 24))
      {
        if (nodeHasCM(v19, 128) || (v91 = *(v19 + 7)) != 0 && *v91 == 104)
        {
          UngetToken(a1);
LABEL_258:

          TrimSpaces(a1, v4);
          return;
        }
      }
    }
  }

LABEL_102:
  if (nodeHasCM(v19, 0x4000) && nodeHasCM(v4, 0x4000))
  {
    v109 = a1;
    v110 = v4;
    if (*(v19 + 7) != *(v4 + 56))
    {
      goto LABEL_245;
    }

    goto LABEL_266;
  }

  v55 = *(v19 + 7);
  if (v55)
  {
    v56 = *v55;
    if (*v55 == 1 && !*(v19 + 24))
    {
      if (v4)
      {
        v87 = *(v4 + 56);
        if (v87)
        {
          if (*v87 == 1)
          {
            goto LABEL_169;
          }
        }
      }

      v88 = *v4;
      if (*v4)
      {
        while (1)
        {
          v89 = v88[7];
          if (v89)
          {
            if (*v89 == 1)
            {
              break;
            }
          }

          v88 = *v88;
          if (!v88)
          {
            goto LABEL_107;
          }
        }

LABEL_169:
        if (*(v19 + 20) != 6 && !*(v19 + 5))
        {
          *(v19 + 20) = 6;
          ReportError(a1, v4, v19, 24);
          goto LABEL_172;
        }

        UngetToken(a1);
        ReportError(a1, v4, v19, 7);
LABEL_242:
        if (a3 == 2)
        {
          return;
        }

        goto LABEL_258;
      }
    }

LABEL_107:
    v57 = *(v4 + 56);
    v58 = v57[8];
    if ((v58 & 0x4000) != 0)
    {
      switch(v56)
      {
        case 20:
          goto LABEL_269;
        case 47:
          if (nodeIsElement(v19))
          {
            ReportError(a1, v4, v19, 11);
            v92 = *(v4 + 24);
            v93 = *v4;
            *v19 = *v4;
            if (!v92)
            {
              *(v19 + 1) = *(v4 + 8);
              *(v19 + 2) = v4;
              *(v4 + 8) = v19;
              v102 = *(v19 + 1);
              if (v102)
              {
                *(v102 + 16) = v19;
              }

              if (*(v93 + 24) == v4)
              {
                *(v93 + 24) = v19;
              }

              goto LABEL_48;
            }

            if (v93 && (v95 = *(v93 + 32), v94 = (v93 + 32), v95 == v4))
            {
LABEL_193:
              *v94 = v19;
            }

            else
            {
              v96 = *(v4 + 16);
              *(v19 + 2) = v96;
              if (v96)
              {
                v94 = (v96 + 8);
                goto LABEL_193;
              }
            }

            *(v4 + 16) = v19;
            *(v19 + 1) = v4;
            if (a3 != 2)
            {
              TrimSpaces(a1, v4);
            }

            v97 = CloneNode(a1, v4);
            v4 = v97;
            v98 = *v19;
            *v97 = *v19;
            if (v98 && (v100 = *(v98 + 32), v99 = (v98 + 32), v100 == v19))
            {
LABEL_200:
              *v99 = v97;
            }

            else
            {
              v101 = *(v19 + 2);
              *(v97 + 2) = v101;
              if (v101)
              {
                v99 = (v101 + 8);
                goto LABEL_200;
              }
            }

            *(v19 + 2) = v97;
            *(v97 + 1) = v19;
            goto LABEL_48;
          }

          goto LABEL_46;
        case 30:
LABEL_269:
          if (nodeIsElement(v19))
          {
            ReportError(a1, v4, v19, 11);
            if (!*(v4 + 24))
            {
              InsertNodeAsParent(v4, v19);
              goto LABEL_48;
            }

            v77 = *v4;
            *v19 = *v4;
            if (v77 && (v79 = *(v77 + 32), v78 = (v77 + 32), v79 == v4))
            {
LABEL_149:
              *v78 = v19;
            }

            else
            {
              v80 = *(v4 + 16);
              *(v19 + 2) = v80;
              if (v80)
              {
                v78 = (v80 + 8);
                goto LABEL_149;
              }
            }

            *(v4 + 16) = v19;
            *(v19 + 1) = v4;
            if (a3 != 2)
            {
              TrimSpaces(a1, v4);
            }

            v81 = CloneNode(a1, v4);
            v4 = v81;
            v82 = *(v19 + 4);
            *v81 = v19;
            *(v81 + 1) = v82;
            if (v82)
            {
              v83 = (v82 + 16);
            }

            else
            {
              v83 = (v19 + 24);
            }

            *v83 = v81;
            *(v19 + 4) = v81;
            goto LABEL_48;
          }

          goto LABEL_46;
      }
    }

    else if (*v57 == 32 && *v55 == 47)
    {
      if (nodeIsElement(v19))
      {
        ReportError(a1, v4, v19, 11);
        v59 = InferredTag(a1, 26);
        v60 = v59;
        v61 = *(v4 + 24);
        v62 = *v4;
        *v59 = *v4;
        if (!v61)
        {
          *(v59 + 1) = *(v4 + 8);
          *(v59 + 2) = v4;
          *(v4 + 8) = v59;
          v103 = *(v59 + 1);
          if (v103)
          {
            *(v103 + 16) = v59;
          }

          if (*(v62 + 24) == v4)
          {
            *(v62 + 24) = v59;
          }

          v104 = *(v59 + 4);
          *v19 = v59;
          *(v19 + 1) = v104;
          if (v104)
          {
            v105 = (v104 + 16);
          }

          else
          {
            v105 = (v59 + 24);
          }

          *v105 = v19;
          *(v59 + 4) = v19;
          goto LABEL_48;
        }

        if (v62 && (v64 = *(v62 + 32), v63 = (v62 + 32), v64 == v4))
        {
LABEL_116:
          *v63 = v59;
        }

        else
        {
          v65 = *(v4 + 16);
          *(v59 + 2) = v65;
          if (v65)
          {
            v63 = (v65 + 8);
            goto LABEL_116;
          }
        }

        *(v4 + 16) = v59;
        *(v59 + 1) = v4;
        v66 = *(v59 + 4);
        *v19 = v59;
        *(v19 + 1) = v66;
        if (v66)
        {
          v67 = (v66 + 16);
        }

        else
        {
          v67 = (v59 + 24);
        }

        *v67 = v19;
        *(v59 + 4) = v19;
        if (a3 != 2)
        {
          TrimSpaces(a1, v4);
        }

        v68 = CloneNode(a1, v4);
        v4 = v68;
        v69 = *v60;
        *v68 = *v60;
        if (v69 && (v71 = *(v69 + 32), v70 = (v69 + 32), v71 == v60))
        {
LABEL_126:
          *v70 = v68;
        }

        else
        {
          v72 = *(v60 + 2);
          *(v68 + 2) = v72;
          if (v72)
          {
            v70 = (v72 + 8);
            goto LABEL_126;
          }
        }

        *(v60 + 2) = v68;
        *(v68 + 1) = v60;
        goto LABEL_48;
      }

LABEL_46:
      ReportError(a1, v4, v19, 8);
LABEL_47:
      FreeNode(a1, v19);
      goto LABEL_48;
    }
  }

  else
  {
    v58 = *(*(v4 + 56) + 32);
  }

  if (*(v19 + 20) == 6)
  {
    v73 = v4;
    while (1)
    {
      v73 = *v73;
      if (!v73)
      {
        break;
      }

      if (v55 == v73[7])
      {
        if ((v58 & 0x8000) == 0 && !*(v4 + 96))
        {
          ReportError(a1, v4, v19, 7);
        }

        if (!IsPushedLast(a1, v4, v19))
        {
          goto LABEL_241;
        }

        goto LABEL_240;
      }
    }
  }

  v74 = v55[8] & 0x10 | v58 & 0x20000;
  IsElement = nodeIsElement(v19);
  if (v74)
  {
    if (IsElement)
    {
      if (*(v19 + 24))
      {
        ReportError(a1, v4, v19, 15);
      }

      v84 = *(v19 + 7);
      if (v84 && *v84 == 17)
      {
        TrimSpaces(a1, v4);
      }

      v85 = *(v4 + 32);
      *v19 = v4;
      *(v19 + 1) = v85;
      if (v85)
      {
        v86 = (v85 + 16);
      }

      else
      {
        v86 = (v4 + 24);
      }

      *v86 = v19;
      *(v4 + 32) = v19;
      ParseTag(a1, v19);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (!IsElement)
  {
    goto LABEL_46;
  }

  if ((*(*(v4 + 56) + 33) & 0x80) == 0)
  {
    ReportError(a1, v4, v19, 7);
  }

  v76 = *(*(v19 + 7) + 32);
  if ((v76 & 0xC) == 4)
  {
    MoveToHead(a1, v4, v19);
    goto LABEL_48;
  }

  v112 = *(v4 + 56);
  if (!v112 || *v112 != 1)
  {
    goto LABEL_241;
  }

  if ((v76 & 0x4000) == 0)
  {
LABEL_240:
    PopInline(a1, v4);
    goto LABEL_241;
  }

  if (*(v4 + 24))
  {
    goto LABEL_241;
  }

  DiscardElement(a1, v4);

  UngetToken(a1);
}

void *InsertNodeAsParent(void *result, void *a2)
{
  a2[3] = result;
  a2[4] = result;
  *a2 = *result;
  *result = a2;
  v2 = *a2;
  if (*(*a2 + 24) == result)
  {
    *(v2 + 24) = a2;
  }

  if (*(v2 + 32) == result)
  {
    *(v2 + 32) = a2;
  }

  a2[1] = result[1];
  result[1] = 0;
  v3 = a2[1];
  if (v3)
  {
    *(v3 + 16) = a2;
  }

  a2[2] = result[2];
  result[2] = 0;
  v4 = a2[2];
  if (v4)
  {
    *(v4 + 8) = a2;
  }

  return result;
}

void ParseEmpty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 104) + 28))
  {
    Token = GetToken(a1, a3, a3, a4, a5, a6, a7, a8);
    if (Token)
    {
      if (*(Token + 20) == 6 && *(Token + 7) == *(a2 + 56))
      {

        FreeNode(a1, Token);
      }

      else
      {
        ReportError(a1, a2, Token, 41);

        UngetToken(a1);
      }
    }
  }
}

void ParseDefList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a2 + 56) + 32))
  {
    return;
  }

  v8 = a2;
  v10 = *(a1 + 104);
  *(v10 + 128) = 0;
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
LABEL_53:
    v43 = a1;
    v44 = v8;
    v45 = 0;
    v46 = 6;
    goto LABEL_54;
  }

  v12 = Token;
  while (1)
  {
    while (1)
    {
      if (*(v12 + 7) == *(v8 + 56) && *(v12 + 20) == 6)
      {
        FreeNode(a1, v12);
        *(v8 + 92) = 1;
        return;
      }

      if (!InsertMisc(v8, v12))
      {
        break;
      }

LABEL_28:
      v12 = GetToken(a1, 0, v13, v14, v15, v16, v17, v18);
      if (!v12)
      {
        goto LABEL_53;
      }
    }

    if (nodeIsText(v12))
    {
      UngetToken(a1);
      v12 = InferredTag(a1, 32);
      ReportError(a1, v8, v12, 12);
    }

    v19 = *(v12 + 7);
    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = *(v12 + 20);
    if (v20 == 6)
    {
      v21 = v8;
      if (*v19 == 37)
      {
        *(a1 + 4912) = 1;
        goto LABEL_27;
      }

      while (1)
      {
        v21 = *v21;
        if (!v21)
        {
          break;
        }

        v22 = v21[7];
        if (v22 && *v22 == 16)
        {
          goto LABEL_27;
        }

        if (v19 == v22)
        {
          ReportError(a1, v8, v12, 7);

          UngetToken(a1);
          return;
        }
      }

      if (!v12)
      {
        break;
      }
    }

    v23 = *v19;
    if (v23 == 26 || v23 == 32)
    {
      goto LABEL_26;
    }

    if (v23 != 20)
    {
      break;
    }

    v27 = *(v8 + 24);
    v28 = *v8;
    *v12 = *v8;
    if (v27)
    {
      if (v28 && (v29 = (v28 + 32), *(v28 + 32) == v8))
      {
LABEL_39:
        *v29 = v12;
        v28 = *v12;
      }

      else
      {
        v30 = *(v8 + 16);
        *(v12 + 2) = v30;
        if (v30)
        {
          v29 = (v30 + 8);
          goto LABEL_39;
        }
      }

      *(v8 + 16) = v12;
      *(v12 + 1) = v8;
      goto LABEL_45;
    }

    *(v12 + 1) = *(v8 + 8);
    *(v12 + 2) = v8;
    *(v8 + 8) = v12;
    v31 = *(v12 + 1);
    if (v31)
    {
      *(v31 + 16) = v12;
    }

    if (*(v28 + 24) == v8)
    {
      *(v28 + 24) = v12;
    }

LABEL_45:
    *(v10 + 20) = 0;
    ParseTag(a1, v12);
    *(v10 + 20) = 1;
    if (*(v28 + 32) == v12)
    {
      v38 = InferredTag(a1, 31);
      v8 = v38;
      v39 = *v12;
      *v38 = *v12;
      if (v39 && (v41 = *(v39 + 32), v40 = (v39 + 32), v41 == v12))
      {
LABEL_50:
        *v40 = v38;
      }

      else
      {
        v42 = *(v12 + 2);
        *(v38 + 2) = v42;
        if (v42)
        {
          v40 = (v42 + 8);
          goto LABEL_50;
        }
      }

      *(v12 + 2) = v38;
      *(v38 + 1) = v12;
    }

    v12 = GetToken(a1, 0, v32, v33, v34, v35, v36, v37);
    if (!v12)
    {
      goto LABEL_53;
    }
  }

  UngetToken(a1);
  v24 = *(*(v12 + 7) + 32);
  if ((v24 & 0x18) != 0)
  {
    if ((v24 & 0x10) == 0 && *(v10 + 20))
    {
      return;
    }

    v12 = InferredTag(a1, 26);
    ReportError(a1, v8, v12, 12);
    v20 = *(v12 + 20);
LABEL_26:
    if (v20 != 6)
    {
      v25 = *(v8 + 32);
      *v12 = v8;
      *(v12 + 1) = v25;
      if (v25)
      {
        v26 = (v25 + 16);
      }

      else
      {
        v26 = (v8 + 24);
      }

      *v26 = v12;
      *(v8 + 32) = v12;
      ParseTag(a1, v12);
      goto LABEL_28;
    }

LABEL_27:
    ReportError(a1, v8, v12, 8);
    FreeNode(a1, v12);
    goto LABEL_28;
  }

  v43 = a1;
  v44 = v8;
  v45 = v12;
  v46 = 11;
LABEL_54:

  ReportError(v43, v44, v45, v46);
}

char *ParseRow(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a2 + 56) + 32))
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 13);
  result = GetToken(result, 0, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v11 = result;
  while (1)
  {
    v12 = *(v11 + 20);
    if (*(v11 + 7) == *(a2 + 56))
    {
      break;
    }

    if (v12 != 6)
    {
      goto LABEL_27;
    }

    HasCM = nodeHasCM(v11, 130);
    v14 = *(v11 + 7);
    if (HasCM)
    {
      if (v14)
      {
        v15 = *v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = *v14;
      if (*v14 != 104)
      {
        goto LABEL_19;
      }
    }

    v16 = *a2;
    if (*a2)
    {
      while (1)
      {
        v17 = v16[7];
        if (v17)
        {
          if (*v17 == v15)
          {
            break;
          }
        }

        v16 = *v16;
        if (!v16)
        {
          goto LABEL_17;
        }
      }

LABEL_60:

      return UngetToken(v9);
    }

LABEL_17:
    if (v14)
    {
      v15 = *v14;
LABEL_19:
      if (v15 == 37)
      {
        goto LABEL_22;
      }
    }

LABEL_20:
    v18 = nodeHasCM(v11, 24);
    v14 = *(v11 + 7);
    if (v18)
    {
      if (v14)
      {
LABEL_22:
        if (*v14 == 37)
        {
          *(v9 + 4912) = 1;
        }
      }

      goto LABEL_34;
    }

    if (v14)
    {
      v19 = *v14;
      if (v19 == 109 || v19 == 106)
      {
        goto LABEL_34;
      }
    }

LABEL_27:
    if (!InsertMisc(a2, v11))
    {
      v26 = *(v11 + 7);
      if (v26)
      {
        if (*v26 == 104)
        {
          goto LABEL_34;
        }
      }

      else if (*(v11 + 20) != 4)
      {
        goto LABEL_34;
      }

      if (nodeHasCM(v11, 256))
      {
        goto LABEL_60;
      }

      if (*(v11 + 20) == 6)
      {
LABEL_34:
        v27 = v9;
        v28 = a2;
        v29 = v11;
        v30 = 8;
LABEL_35:
        ReportError(v27, v28, v29, v30);
        FreeNode(v9, v11);
        goto LABEL_36;
      }

      v31 = *(v11 + 7);
      if (v31 && *v31 == 37)
      {
        UngetToken(v9);
        v11 = InferredTag(v9, 106);
        ReportError(v9, a2, v11, 12);
        if (!v11 || (v32 = *(v11 + 7)) == 0)
        {
LABEL_57:
          v27 = v9;
          v28 = a2;
          v29 = v11;
          v30 = 11;
          goto LABEL_35;
        }
      }

      else
      {
        if (nodeIsText(v11) || nodeHasCM(v11, 24))
        {
          MoveBeforeTable(a2, v11);
          ReportError(v9, a2, v11, 11);
          v33 = v10[5];
          *(v10 + 5) = 0x100000000;
          if (*(v11 + 20) != 4)
          {
            ParseTag(v9, v11);
          }

          v10[5] = v33;
          v10[6] = 0;
          goto LABEL_36;
        }

        v32 = *(v11 + 7);
        if ((v32[8] & 4) != 0)
        {
          ReportError(v9, a2, v11, 11);
          MoveToHead(v9, a2, v11);
          goto LABEL_36;
        }
      }

      v34 = *v32;
      if (v34 == 106 || v34 == 109)
      {
        v35 = *(a2 + 32);
        *v11 = a2;
        *(v11 + 1) = v35;
        if (v35)
        {
          v36 = (v35 + 16);
        }

        else
        {
          v36 = (a2 + 24);
        }

        *v36 = v11;
        *(a2 + 32) = v11;
        v37 = v10[5];
        v10[5] = 0;
        ParseTag(v9, v11);
        v10[5] = v37;
        while (v10[37] > v10[38])
        {
          PopInline(v9, 0);
        }

        goto LABEL_36;
      }

      goto LABEL_57;
    }

LABEL_36:
    result = GetToken(v9, 0, v20, v21, v22, v23, v24, v25);
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  if (v12 == 6)
  {
    FreeNode(v9, v11);
    *(a2 + 92) = 1;
  }

  else
  {
    UngetToken(v9);
  }

  return FixEmptyRow(v9, a2);
}

uint64_t FixEmptyRow(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 24);
  if (!*(a2 + 24))
  {
    v4 = result;
    v5 = InferredTag(result, 106);
    v6 = *(a2 + 32);
    *v5 = a2;
    *(v5 + 1) = v6;
    if (v6)
    {
      v7 = (v6 + 16);
    }

    else
    {
      v7 = v2;
    }

    *v7 = v5;
    *(a2 + 32) = v5;

    return ReportError(v4, a2, v5, 12);
  }

  return result;
}

void *MoveBeforeTable(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *result;
    while (1)
    {
      v4 = v3[7];
      if (v4)
      {
        if (*v4 == 104)
        {
          break;
        }
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    *(a2 + 16) = v3;
    v8 = *v3;
    *a2 = *v3;
    v3[1] = a2;
    v9 = *(a2 + 8);
    if (v9)
    {
      *(v9 + 16) = a2;
    }

    v7 = (v8 + 24);
    if (*(v8 + 24) == v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_6:
    *(a2 + 16) = v2;
    v5 = *v2;
    *a2 = *v2;
    v2[1] = a2;
    v6 = *(a2 + 8);
    if (v6)
    {
      *(v6 + 16) = a2;
    }

    v7 = (v5 + 24);
    if (*(v5 + 24) == v2)
    {
LABEL_13:
      *v7 = a2;
    }
  }

  return result;
}

void ParseRowGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a2 + 56) + 32))
  {
    return;
  }

  v10 = *(a1 + 104);
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
    return;
  }

  v12 = Token;
  while (1)
  {
    v13 = *(v12 + 7);
    if (v13 == *(a2 + 56))
    {
      break;
    }

    if (v13 && *v13 == 104 && *(v12 + 20) == 6)
    {
      goto LABEL_52;
    }

    if (!InsertMisc(a2, v12))
    {
      v20 = *(v12 + 7);
      v21 = *(v12 + 20);
      if (v20)
      {
        if (v21 == 6)
        {
          goto LABEL_14;
        }

        v22 = *v20;
        if (v22 == 109 || v22 == 106)
        {
          UngetToken(a1);
          v12 = InferredTag(a1, 112);
          ReportError(a1, a2, v12, 12);
          goto LABEL_14;
        }

LABEL_22:
        if (nodeIsText(v12) || nodeHasCM(v12, 24))
        {
          MoveBeforeTable(a2, v12);
          ReportError(a1, a2, v12, 11);
          *(v10 + 24) = 1;
          if (*(v12 + 20) != 4)
          {
            ParseTag(a1, v12);
          }

          *(v10 + 24) = 0;
          goto LABEL_43;
        }

        if ((*(*(v12 + 7) + 32) & 4) != 0)
        {
          ReportError(a1, a2, v12, 11);
          MoveToHead(a1, a2, v12);
          goto LABEL_43;
        }

LABEL_14:
        v23 = *(v12 + 7);
        if (*(v12 + 20) == 6)
        {
          if (v23 && *v23 == 37)
          {
LABEL_20:
            *(a1 + 4912) = 1;
            goto LABEL_42;
          }

          HasCM = nodeHasCM(v12, 24);
          v23 = *(v12 + 7);
          if (HasCM)
          {
            if (v23 && *v23 == 37)
            {
              goto LABEL_20;
            }

LABEL_42:
            ReportError(a1, a2, v12, 8);
            FreeNode(a1, v12);
            goto LABEL_43;
          }

          v25 = a2;
          if (v23)
          {
            v26 = *v23 - 106;
            v25 = a2;
            if (v26 <= 6)
            {
              v25 = a2;
              if (((1 << v26) & 0x49) != 0)
              {
                goto LABEL_42;
              }
            }
          }

          while (1)
          {
            v25 = *v25;
            if (!v25)
            {
              break;
            }

            if (v23 == v25[7])
            {
              goto LABEL_52;
            }
          }
        }

        v27 = *(v12 + 20);
        if (*(v23 + 33))
        {
          if (v27 != 6)
          {
            goto LABEL_52;
          }
        }

        else if (v27 != 6)
        {
          if (*v23 != 112)
          {
            v12 = InferredTag(a1, 112);
            ReportError(a1, a2, v12, 12);
            UngetToken(a1);
          }

          v28 = *(a2 + 32);
          *v12 = a2;
          *(v12 + 1) = v28;
          if (v28)
          {
            v29 = (v28 + 16);
          }

          else
          {
            v29 = (a2 + 24);
          }

          *v29 = v12;
          *(a2 + 32) = v12;
          ParseTag(a1, v12);
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      if (v21 == 4)
      {
        goto LABEL_22;
      }

      goto LABEL_42;
    }

LABEL_43:
    v12 = GetToken(a1, 0, v14, v15, v16, v17, v18, v19);
    if (!v12)
    {
      return;
    }
  }

  if (*(v12 + 20) != 6)
  {
LABEL_52:

    UngetToken(a1);
    return;
  }

  *(a2 + 92) = 1;

  FreeNode(a1, v12);
}

void ParseColGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a2 + 56) + 32))
  {
    return;
  }

  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
    return;
  }

  v11 = Token;
  while (1)
  {
    v12 = *(v11 + 7);
    v13 = *(v11 + 20);
    if (v12 == *(a2 + 56))
    {
      if (v13 == 6)
      {
        FreeNode(a1, v11);
        *(a2 + 92) = 1;
        return;
      }
    }

    else if (v13 == 6)
    {
      v14 = a2;
      if (v12)
      {
        v14 = a2;
        if (*v12 == 37)
        {
          *(a1 + 4912) = 1;
LABEL_18:
          ReportError(a1, a2, v11, 8);
          FreeNode(a1, v11);
          goto LABEL_23;
        }
      }

      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if (v12 == v14[7])
        {
          goto LABEL_25;
        }
      }
    }

    if (nodeIsText(v11))
    {
      goto LABEL_25;
    }

    if (!InsertMisc(a2, v11))
    {
      break;
    }

LABEL_23:
    v11 = GetToken(a1, 0, v15, v16, v17, v18, v19, v20);
    if (!v11)
    {
      return;
    }
  }

  v21 = *(v11 + 7);
  if (!v21)
  {
    goto LABEL_18;
  }

  if (*v21 == 23)
  {
    if (*(v11 + 20) != 6)
    {
      v22 = *(a2 + 32);
      *v11 = a2;
      *(v11 + 1) = v22;
      if (v22)
      {
        v23 = (v22 + 16);
      }

      else
      {
        v23 = (a2 + 24);
      }

      *v23 = v11;
      *(a2 + 32) = v11;
      ParseTag(a1, v11);
      goto LABEL_23;
    }

    goto LABEL_18;
  }

LABEL_25:

  UngetToken(a1);
}

void ParseTableTag(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  DeferDup(a1);
  v5 = v4[38];
  v4[38] = v4[37];
  Token = GetToken(a1, 0, v6, v7, v8, v9, v10, v11);
  if (!Token)
  {
LABEL_43:
    v33 = a1;
    v34 = a2;
    v35 = 0;
    v36 = 6;
    goto LABEL_44;
  }

  v13 = Token;
  while (1)
  {
    if (*(v13 + 7) == *(a2 + 56) && *(v13 + 20) == 6)
    {
      FreeNode(a1, v13);
      v4[38] = v5;
      *(a2 + 92) = 1;
      return;
    }

    if (!InsertMisc(a2, v13))
    {
      break;
    }

LABEL_39:
    v13 = GetToken(a1, 0, v14, v15, v16, v17, v18, v19);
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v20 = *(v13 + 7);
  v21 = *(v13 + 20);
  if (v20)
  {
    if (v21 == 6)
    {
      goto LABEL_13;
    }

    v22 = *v20 - 104;
    v23 = v22 > 5;
    v24 = (1 << v22) & 0x25;
    if (!v23 && v24 != 0)
    {
      UngetToken(a1);
      v13 = InferredTag(a1, 112);
      ReportError(a1, a2, v13, 12);
      goto LABEL_13;
    }
  }

  else if (v21 != 4)
  {
    goto LABEL_38;
  }

  if (nodeIsText(v13) || nodeHasCM(v13, 24))
  {
    *(v13 + 2) = a2;
    v27 = *a2;
    *v13 = *a2;
    *(a2 + 8) = v13;
    v28 = *(v13 + 1);
    if (v28)
    {
      *(v28 + 16) = v13;
    }

    if (*(v27 + 24) == a2)
    {
      *(v27 + 24) = v13;
    }

    ReportError(a1, a2, v13, 11);
    v4[6] = 1;
    if (*(v13 + 20) != 4)
    {
      ParseTag(a1, v13);
    }

    v4[6] = 0;
    goto LABEL_39;
  }

  if ((*(*(v13 + 7) + 32) & 4) != 0)
  {
    MoveToHead(a1, a2, v13);
    goto LABEL_39;
  }

LABEL_13:
  if (*(v13 + 20) == 6)
  {
    v26 = *(v13 + 7);
    if (v26 && *v26 == 37)
    {
      *(a1 + 4912) = 1;
LABEL_38:
      ReportError(a1, a2, v13, 8);
      FreeNode(a1, v13);
      goto LABEL_39;
    }

    if (nodeHasCM(v13, 640))
    {
      goto LABEL_38;
    }

    HasCM = nodeHasCM(v13, 24);
    v30 = a2;
    if (HasCM)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v30 = *v30;
      if (!v30)
      {
        break;
      }

      if (*(v13 + 7) == v30[7])
      {
        ReportError(a1, a2, v13, 7);
        UngetToken(a1);
        goto LABEL_45;
      }
    }
  }

  if ((*(*(v13 + 7) + 32) & 0x80) != 0)
  {
    if (nodeIsElement(v13))
    {
      v31 = *(a2 + 32);
      *v13 = a2;
      *(v13 + 1) = v31;
      if (v31)
      {
        v32 = (v31 + 16);
      }

      else
      {
        v32 = (a2 + 24);
      }

      *v32 = v13;
      *(a2 + 32) = v13;
      ParseTag(a1, v13);
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  UngetToken(a1);
  v33 = a1;
  v34 = a2;
  v35 = v13;
  v36 = 11;
LABEL_44:
  ReportError(v33, v34, v35, v36);
LABEL_45:
  v4[38] = v5;
}

uint64_t ParsePre(uint64_t result, uint64_t a2)
{
  if (*(*(a2 + 56) + 32))
  {
    return result;
  }

  v2 = a2;
  v3 = result;
  InlineDup(result, 0);
  Token = GetToken(v3, 2, v4, v5, v6, v7, v8, v9);
  if (!Token)
  {
LABEL_63:

    return ReportError(v3, v2, 0, 6);
  }

  v11 = Token;
  while (1)
  {
    if (*(v11 + 20) == 6)
    {
      v12 = *(v11 + 7);
      v13 = *(v2 + 56);
      if (v12 == v13)
      {
        goto LABEL_23;
      }

      v14 = v12 ? *v12 : 0;
      v15 = *v2;
      if (*v2)
      {
        while (1)
        {
          v16 = v15[7];
          if (v16)
          {
            if (*v16 == v14)
            {
              break;
            }
          }

          v15 = *v15;
          if (!v15)
          {
            goto LABEL_13;
          }
        }

LABEL_23:
        if (!v12 || (*v12 | 0x20) != 0x30)
        {
          if (v12 == v13)
          {
            FreeNode(v3, v11);
          }

          else
          {
            ReportError(v3, v2, v11, 7);
            UngetToken(v3);
          }

          *(v2 + 92) = 1;
          goto LABEL_70;
        }

        goto LABEL_25;
      }
    }

LABEL_13:
    if (nodeIsText(v11))
    {
      goto LABEL_14;
    }

    if (!InsertMisc(v2, v11))
    {
      break;
    }

LABEL_26:
    v11 = GetToken(v3, 2, v17, v18, v19, v20, v21, v22);
    if (!v11)
    {
      goto LABEL_63;
    }
  }

  v25 = *(v11 + 7);
  if (!v25)
  {
    goto LABEL_25;
  }

  if (*v25 == 79)
  {
LABEL_21:
    if (*(v11 + 20) == 5)
    {
      ReportError(v3, v2, v11, 14);
      TrimSpaces(v3, v2);
      CoerceNode(v3, v11, 17, 0, 0);
      FreeAttrs(v3, v11);
LABEL_14:
      v23 = *(v2 + 32);
      *v11 = v2;
      *(v11 + 1) = v23;
      if (v23)
      {
        v24 = (v23 + 16);
      }

      else
      {
        v24 = (v2 + 24);
      }

      *v24 = v11;
      *(v2 + 32) = v11;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (nodeIsText(v11) || (v30 = *(v11 + 7)) != 0 && *v30 != 80 && nodeHasCM(v11, 1048592))
  {
    v26 = *(v11 + 7);
    if (v26 && *v26 == 79)
    {
      goto LABEL_21;
    }

    if (nodeIsElement(v11))
    {
      v27 = *(v11 + 7);
      if (v27 && *v27 == 17)
      {
        TrimSpaces(v3, v2);
      }

      v28 = *(v2 + 32);
      *v11 = v2;
      *(v11 + 1) = v28;
      if (v28)
      {
        v29 = (v28 + 16);
      }

      else
      {
        v29 = (v2 + 24);
      }

      *v29 = v11;
      *(v2 + 32) = v11;
      ParseTag(v3, v11);
      goto LABEL_26;
    }

LABEL_25:
    ReportError(v3, v2, v11, 8);
    FreeNode(v3, v11);
    goto LABEL_26;
  }

  if (*(v11 + 20) == 6)
  {
    if (*(*(v3 + 104) + 24))
    {
      if (nodeHasCM(v11, 128) || (v31 = *(v11 + 7)) != 0 && *v31 == 104)
      {
        UngetToken(v3);
LABEL_70:

        return TrimSpaces(v3, v2);
      }
    }

    goto LABEL_25;
  }

  if (!nodeHasCM(v11, 640))
  {
    v32 = *(v11 + 7);
    if (!v32 || *v32 != 104)
    {
      v33 = *v2;
      *v11 = *v2;
      if (v33 && (v35 = v33[4], v34 = (v33 + 4), v35 == v2))
      {
LABEL_55:
        *v34 = v11;
      }

      else
      {
        v36 = *(v2 + 16);
        *(v11 + 2) = v36;
        if (v36)
        {
          v34 = (v36 + 8);
          goto LABEL_55;
        }
      }

      *(v2 + 16) = v11;
      *(v11 + 1) = v2;
      ReportError(v3, v2, v11, 7);
      ParseTag(v3, v11);
      v37 = InferredTag(v3, 82);
      ReportError(v3, v2, v37, 15);
      v38 = *v11;
      *v37 = *v11;
      if (v38 && (v40 = *(v38 + 32), v39 = (v38 + 32), v40 == v11))
      {
LABEL_60:
        *v39 = v37;
      }

      else
      {
        v41 = *(v11 + 2);
        *(v37 + 2) = v41;
        if (v41)
        {
          v39 = (v41 + 8);
          goto LABEL_60;
        }
      }

      *(v11 + 2) = v37;
      *(v37 + 1) = v11;
      v2 = v37;
      goto LABEL_26;
    }
  }

  if (!*(*(v3 + 104) + 24))
  {
    ReportError(v3, v2, v11, 7);
  }

  return UngetToken(v3);
}

char *ParseOptGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1 + 104) + 128) = 0;
  result = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v11 = result;
  while (*(v11 + 56) != *(a2 + 56) || *(v11 + 80) != 6)
  {
    if (!InsertMisc(a2, v11))
    {
      if (*(v11 + 80) == 5)
      {
        v18 = *(v11 + 56);
        if (v18)
        {
          v19 = *v18;
          if (v19 == 78)
          {
            goto LABEL_11;
          }

          if (v19 == 77)
          {
            ReportError(a1, a2, v11, 19);
LABEL_11:
            v20 = *(a2 + 32);
            *v11 = a2;
            *(v11 + 8) = v20;
            if (v20)
            {
              v21 = (v20 + 16);
            }

            else
            {
              v21 = (a2 + 24);
            }

            *v21 = v11;
            *(a2 + 32) = v11;
            ParseTag(a1, v11);
            goto LABEL_16;
          }
        }
      }

      ReportError(a1, a2, v11, 8);
      FreeNode(a1, v11);
    }

LABEL_16:
    result = GetToken(a1, 0, v12, v13, v14, v15, v16, v17);
    v11 = result;
    if (!result)
    {
      return result;
    }
  }

  FreeNode(a1, v11);
  *(a2 + 92) = 1;

  return TrimSpaces(a1, a2);
}

uint64_t ParseSelect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1 + 104) + 128) = 0;
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (Token)
  {
    v11 = Token;
    while (*(v11 + 7) != *(a2 + 56) || *(v11 + 20) != 6)
    {
      if (!InsertMisc(a2, v11))
      {
        if (*(v11 + 20) == 5 && (v18 = *(v11 + 7)) != 0 && ((v19 = *v18 - 77, v20 = v19 > 0xF, v21 = (1 << v19) & 0x8003, !v20) ? (v22 = v21 == 0) : (v22 = 1), !v22))
        {
          v23 = *(a2 + 32);
          *v11 = a2;
          *(v11 + 1) = v23;
          if (v23)
          {
            v24 = (v23 + 16);
          }

          else
          {
            v24 = (a2 + 24);
          }

          *v24 = v11;
          *(a2 + 32) = v11;
          ParseTag(a1, v11);
        }

        else
        {
          ReportError(a1, a2, v11, 8);
          FreeNode(a1, v11);
        }
      }

      v11 = GetToken(a1, 0, v12, v13, v14, v15, v16, v17);
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    FreeNode(a1, v11);
    *(a2 + 92) = 1;

    return TrimSpaces(a1, a2);
  }

  else
  {
LABEL_18:

    return ReportError(a1, a2, 0, 6);
  }
}

char *ParseText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1 + 104) + 128) = 0;
  if (a2 && (v10 = *(a2 + 56)) != 0 && *v10 == 107)
  {
    v11 = 2;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  result = GetToken(a1, v11, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
LABEL_27:
    if ((*(*(a2 + 56) + 33) & 0x80) == 0)
    {

      return ReportError(a1, a2, 0, 6);
    }

    return result;
  }

  v14 = result;
  while (1)
  {
    if (*(v14 + 56) == *(a2 + 56) && *(v14 + 80) == 6)
    {
      FreeNode(a1, v14);
      *(a2 + 92) = 1;
      goto LABEL_36;
    }

    if (!InsertMisc(a2, v14))
    {
      break;
    }

LABEL_26:
    result = GetToken(a1, v11, v15, v16, v17, v18, v19, v20);
    v14 = result;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (nodeIsText(v14))
  {
    if (*(a2 + 24))
    {
      v21 = 1;
    }

    else
    {
      v21 = v12;
    }

    if ((v21 & 1) == 0)
    {
      TrimSpaces(a1, a2);
    }

    if (*(v14 + 72) < *(v14 + 76))
    {
      v22 = *(a2 + 32);
      *v14 = a2;
      *(v14 + 8) = v22;
      if (v22)
      {
        v23 = (v22 + 16);
      }

      else
      {
        v23 = (a2 + 24);
      }

      *v23 = v14;
      *(a2 + 32) = v14;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v24 = *(v14 + 56);
  if (v24 && (*(v24 + 32) & 0x410) == 0x10)
  {
    ReportError(a1, a2, v14, 8);
LABEL_25:
    FreeNode(a1, v14);
    goto LABEL_26;
  }

  if ((*(*(a2 + 56) + 33) & 0x80) == 0)
  {
    ReportError(a1, a2, v14, 7);
  }

  UngetToken(a1);
LABEL_36:

  return TrimSpaces(a1, a2);
}

uint64_t ParseTitle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Token = GetToken(a1, 1, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
LABEL_20:

    return ReportError(a1, a2, 0, 6);
  }

  v11 = Token;
  while (1)
  {
    if (*(v11 + 7) == *(a2 + 56))
    {
      v12 = *(v11 + 20);
      if (v12 == 5)
      {
        ReportError(a1, a2, v11, 24);
        *(v11 + 20) = 6;
        UngetToken(a1);
        goto LABEL_19;
      }

      if (v12 == 6)
      {
        FreeNode(a1, v11);
        *(a2 + 92) = 1;
        goto LABEL_25;
      }
    }

    if (nodeIsText(v11))
    {
      if (!*(a2 + 24))
      {
        TrimInitialSpace(a1, a2, v11);
      }

      if (*(v11 + 18) < *(v11 + 19))
      {
        v19 = *(a2 + 32);
        *v11 = a2;
        *(v11 + 1) = v19;
        if (v19)
        {
          v20 = (v19 + 16);
        }

        else
        {
          v20 = (a2 + 24);
        }

        *v20 = v11;
        *(a2 + 32) = v11;
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (!InsertMisc(a2, v11))
    {
      break;
    }

LABEL_19:
    v11 = GetToken(a1, 1, v13, v14, v15, v16, v17, v18);
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (!*(v11 + 7))
  {
    ReportError(a1, a2, v11, 8);
LABEL_17:
    FreeNode(a1, v11);
    goto LABEL_19;
  }

  ReportError(a1, a2, v11, 7);
  UngetToken(a1);
LABEL_25:

  return TrimSpaces(a1, a2);
}

char *TrimInitialSpace(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *(a1 + 104);
  result = nodeIsText(a3);
  if (result)
  {
    v7 = *(a3 + 72);
    if (*(v5[13] + v7) == 32 && v7 < *(a3 + 76))
    {
      if ((*(*(a2 + 7) + 32) & 0x410) == 0x10)
      {
        v8 = *(a2 + 1);
        result = nodeIsText(v8);
        if (result)
        {
          v9 = *(v8 + 76);
          v10 = v5[13];
          if (!v9 || *(v10 + (v9 - 1)) != 32)
          {
            *(v8 + 76) = v9 + 1;
            *(v10 + v9) = 32;
          }

          ++*(a2 + 18);
        }

        else
        {
          result = NewNode(v5);
          v11 = *(a2 + 18);
          *(a2 + 18) = v11 + 1;
          *(result + 18) = v11;
          *(result + 19) = *(a2 + 18);
          *(v5[13] + v11) = 32;
          *(result + 2) = a2;
          v12 = *a2;
          *result = *a2;
          *(a2 + 1) = result;
          v13 = *(result + 1);
          if (v13)
          {
            *(v13 + 16) = result;
          }

          if (*(v12 + 24) == a2)
          {
            *(v12 + 24) = result;
          }
        }
      }

      ++*(a3 + 72);
    }
  }

  return result;
}

void ParseScript(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1 + 104) + 88) = a2;
  Token = GetToken(a1, 4, a3, a4, a5, a6, a7, a8);
  *(*(a1 + 104) + 88) = 0;
  if (Token)
  {
    v17 = *(a2 + 32);
    *Token = a2;
    *(Token + 1) = v17;
    if (v17)
    {
      v18 = (v17 + 16);
    }

    else
    {
      v18 = (a2 + 24);
    }

    *v18 = Token;
    *(a2 + 32) = Token;
    v19 = GetToken(a1, 0, v11, v12, v13, v14, v15, v16);
    if (v19)
    {
      if (*(v19 + 20) == 6 && (v20 = *(v19 + 7)) != 0 && *v20 == **(a2 + 56))
      {

        FreeNode(a1, v19);
      }

      else
      {
        ReportError(a1, a2, v19, 6);

        UngetToken(a1);
      }

      return;
    }

    v21 = a1;
    v22 = a2;
  }

  else
  {
    v21 = a1;
    v22 = a2;
  }

  ReportError(v21, v22, 0, 6);
}

uint64_t IsJavaScript(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    while (1)
    {
      v2 = v1[1];
      if (v2)
      {
        v3 = *v2;
        if (v3 == 142 || v3 == 66)
        {
          v4 = v1[6];
          if (v4)
          {
            if (tmbsubstr(v4, "javascript"))
            {
              break;
            }
          }
        }
      }

      v1 = *v1;
      if (!v1)
      {
        return 0;
      }
    }
  }

  return 1;
}

void ParseHead(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[13];
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
    return;
  }

  v12 = Token;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 7);
    if (v15 == *(a2 + 56))
    {
      v16 = *(v12 + 20);
      if (v16 == 6)
      {
        FreeNode(a1, v12);
        *(a2 + 92) = 1;
        return;
      }
    }

    else
    {
      if (!v15 || *v15 != 48)
      {
        goto LABEL_10;
      }

      v16 = *(v12 + 20);
    }

    if (v16 == 5)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (nodeIsText(v12))
    {
      goto LABEL_45;
    }

    if (*(v12 + 20) == 3)
    {
      v23 = *(v12 + 8);
      if (v23)
      {
        if (!tmbstrcmp(v23, "xml-stylesheet"))
        {
          ReportError(a1, a2, v12, 11);
          HTML = FindHTML(a1);
          *(v12 + 2) = HTML;
          v29 = *HTML;
          *v12 = *HTML;
          HTML[1] = v12;
          v30 = *(v12 + 1);
          if (v30)
          {
            *(v30 + 16) = v12;
          }

          if (*(v29 + 24) == HTML)
          {
            *(v29 + 24) = v12;
          }

          goto LABEL_30;
        }
      }
    }

    if (!InsertMisc(a2, v12))
    {
      break;
    }

LABEL_30:
    v12 = GetToken(a1, 0, v17, v18, v19, v20, v21, v22);
    if (!v12)
    {
      return;
    }
  }

  if (*(v12 + 20) == 1)
  {
    InsertDocType(a1, a2, v12);
    goto LABEL_30;
  }

  v24 = *(v12 + 7);
  if (!v24)
  {
    goto LABEL_9;
  }

  if ((*(v24 + 32) & 4) != 0)
  {
    if (nodeIsElement(v12))
    {
      v25 = *(v12 + 7);
      if (!v25)
      {
        goto LABEL_36;
      }

      v26 = *v25;
      if (v26 == 9)
      {
        if (v13 < 1)
        {
          ++v13;
          goto LABEL_36;
        }

        v27 = 46;
        ++v13;
      }

      else
      {
        if (v26 != 74)
        {
          if (v26 == 111)
          {
            if (v14 > 0)
            {
              v27 = 46;
              ++v14;
              goto LABEL_35;
            }

            ++v14;
          }

LABEL_36:
          v31 = *(a2 + 32);
          *v12 = a2;
          *(v12 + 1) = v31;
          if (v31)
          {
            v32 = (v31 + 16);
          }

          else
          {
            v32 = (a2 + 24);
          }

          *v32 = v12;
          *(a2 + 32) = v12;
          ParseTag(a1, v12);
          goto LABEL_30;
        }

        v27 = 11;
      }

LABEL_35:
      ReportError(a1, a2, v12, v27);
      goto LABEL_36;
    }

LABEL_9:
    ReportError(a1, a2, v12, 8);
    FreeNode(a1, v12);
    goto LABEL_30;
  }

  if (!*(v10 + 28))
  {
    goto LABEL_46;
  }

LABEL_45:
  ReportError(a1, a2, v12, 11);
LABEL_46:

  UngetToken(a1);
}

void InsertDocType(uint64_t a1, void *a2, uint64_t a3)
{
  if (FindDocType(a1))
  {
    ReportError(a1, a2, a3, 8);

    FreeNode(a1, a3);
  }

  else
  {
    ReportError(a1, a2, a3, 34);
    if (!a2)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v6 = a2[7];
      if (v6)
      {
        if (*v6 == 48)
        {
          break;
        }
      }

      do
      {
LABEL_8:
        a2 = *a2;
      }

      while (!a2);
    }

    *(a3 + 16) = a2;
    v7 = *a2;
    *a3 = *a2;
    a2[1] = a3;
    v8 = *(a3 + 8);
    if (v8)
    {
      *(v8 + 16) = a3;
    }

    if (*(v7 + 24) == a2)
    {
      *(v7 + 24) = a3;
    }
  }
}

void ParseBody(void *a1, uint64_t a2)
{
  v4 = a1[13];
  BumpObject(a1, *a2);
  Token = GetToken(a1, 0, v5, v6, v7, v8, v9, v10);
  if (!Token)
  {
    return;
  }

  v18 = Token;
  v19 = 0;
  v20 = 1;
  while (1)
  {
    v21 = *(v18 + 7);
    v22 = *(a2 + 56);
    if (v21 == v22 && *(v18 + 20) == 5)
    {
      goto LABEL_9;
    }

    if (v21 && *v21 == 48)
    {
      if (nodeIsElement(v18) || *(v4 + 100))
      {
LABEL_9:
        ReportError(a1, a2, v18, 8);
      }

      else
      {
        *(v4 + 100) = 1;
      }

LABEL_10:
      FreeNode(a1, v18);
      goto LABEL_96;
    }

    if (*(v4 + 96) && (*(v18 + 20) - 5) <= 2)
    {
      ReportError(a1, a2, v18, 27);
      v21 = *(v18 + 7);
      v22 = *(a2 + 56);
    }

    if (v21 == v22 && *(v18 + 20) == 6)
    {
      *(a2 + 92) = 1;
      TrimSpaces(a1, a2);
      FreeNode(a1, v18);
      *(v4 + 96) = 1;
      if (*a2)
      {
        v29 = *(*a2 + 56);
        if (v29)
        {
          if (*v29 == 71)
          {
            return;
          }
        }
      }

LABEL_43:
      v19 = 0;
      goto LABEL_96;
    }

    if (v21)
    {
      break;
    }

LABEL_33:
    v36 = nodeIsText(v18) && (v35 = *(v18 + 18), *(v18 + 19) <= (v35 + 1)) && *(*(v4 + 104) + v35) == 32;
    if (InsertMisc(a2, v18))
    {
      goto LABEL_96;
    }

    if (nodeIsText(v18))
    {
      v37 = !v36;
      if (v19)
      {
        v37 = 1;
      }

      if (v37)
      {
        ConstrainVersion(a1, -294);
        if (v20 && InlineDup(a1, v18) > 0)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v38 = *(a2 + 32);
          *v18 = a2;
          *(v18 + 1) = v38;
          if (v38)
          {
            v39 = (v38 + 16);
          }

          else
          {
            v39 = (a2 + 24);
          }

          *v39 = v18;
          *(a2 + 32) = v18;
          v19 = 1;
        }

        goto LABEL_96;
      }

      FreeNode(a1, v18);
      goto LABEL_43;
    }

    if (*(v18 + 20) == 1)
    {
      InsertDocType(a1, a2, v18);
      goto LABEL_96;
    }

    v40 = *(v18 + 7);
    if (!v40)
    {
      goto LABEL_9;
    }

    v41 = *v40;
    if (*v40 == 80)
    {
      goto LABEL_9;
    }

    *(v4 + 20) = 0;
    if (v41 != 53)
    {
      if (nodeHasCM(v18, 8) || nodeHasCM(v18, 16))
      {
        goto LABEL_77;
      }

      v40 = *(v18 + 7);
    }

    v42 = v40[8];
    if ((v42 & 4) == 0)
    {
      ReportError(a1, a2, v18, 11);
      v40 = *(v18 + 7);
      v42 = v40[8];
    }

    if ((v42 & 2) != 0)
    {
      if (*v40 == 16 && *(a2 + 96) && !*(a2 + 40))
      {
        *(a2 + 40) = *(v18 + 5);
        *(v18 + 5) = 0;
      }

      goto LABEL_10;
    }

    if ((v42 & 4) != 0)
    {
      MoveToHead(a1, a2, v18);
      goto LABEL_96;
    }

    if ((v42 & 0x20) != 0)
    {
      UngetToken(a1);
      v18 = InferredTag(a1, 115);
      AddClassNoIndent(a1, v18);
    }

    else
    {
      if ((v42 & 0x40) != 0)
      {
        UngetToken(a1);
        v43 = a1;
        v44 = 31;
      }

      else if ((v42 & 0x380) != 0)
      {
        UngetToken(a1);
        v43 = a1;
        v44 = 104;
      }

      else
      {
        if (*v40 != 53)
        {
          if (!nodeHasCM(v18, 1536))
          {
            goto LABEL_112;
          }

          goto LABEL_10;
        }

        UngetToken(a1);
        v43 = a1;
        v44 = 37;
      }

      v18 = InferredTag(v43, v44);
    }

    *(v4 + 20) = 1;
LABEL_77:
    if (*(v18 + 20) != 6)
    {
      goto LABEL_85;
    }

    v45 = *(v18 + 7);
    if (v45)
    {
      v46 = *v45;
      if (v46 == 79)
      {
        *(v18 + 20) = 7;
        *(v18 + 24) = 1;
        goto LABEL_85;
      }

      if (v46 == 17)
      {
        *(v18 + 20) = 5;
        goto LABEL_85;
      }
    }

    if (nodeHasCM(v18, 16))
    {
      PopInline(a1, v18);
    }

LABEL_85:
    if (!nodeIsElement(v18))
    {
      goto LABEL_9;
    }

    if (!nodeHasCM(v18, 16) || nodeHasCM(v18, 0x20000))
    {
      v19 = 0;
LABEL_89:
      v20 = 1;
LABEL_90:
      if (*(v18 + 24))
      {
        ReportError(a1, a2, v18, 15);
      }

      v47 = *(a2 + 32);
      *v18 = a2;
      *(v18 + 1) = v47;
      if (v47)
      {
        v48 = (v47 + 16);
      }

      else
      {
        v48 = (a2 + 24);
      }

      *v48 = v18;
      *(a2 + 32) = v18;
      ParseTag(a1, v18);
      goto LABEL_96;
    }

    v49 = *(v18 + 7);
    if (v49 && *v49 == 52)
    {
      v50 = -293;
    }

    else
    {
      v50 = -294;
    }

    ConstrainVersion(a1, v50);
    if (!v20)
    {
LABEL_106:
      v19 = 1;
      goto LABEL_90;
    }

    if (*(v18 + 24))
    {
      v19 = 1;
      goto LABEL_89;
    }

    v20 = 0;
    if (InlineDup(a1, v18) <= 0)
    {
      goto LABEL_106;
    }

LABEL_96:
    v18 = GetToken(a1, v19, v23, v24, v25, v26, v27, v28);
    if (!v18)
    {
      return;
    }
  }

  v30 = *v21;
  if ((v30 - 38) >= 2)
  {
    if (v30 != 71)
    {
      goto LABEL_33;
    }

    v32 = *(v18 + 20);
    if (v32 != 6)
    {
      if (v32 == 5)
      {
        v33 = *(a2 + 32);
        *v18 = a2;
        *(v18 + 1) = v33;
        if (v33)
        {
          v34 = (v33 + 16);
        }

        else
        {
          v34 = (a2 + 24);
        }

        *v34 = v18;
        *(a2 + 32) = v18;
        ParseBlock(a1, v18, v12, v13, v14, v15, v16, v17);
        goto LABEL_96;
      }

      goto LABEL_33;
    }
  }

  if (!*a2)
  {
    goto LABEL_33;
  }

  v31 = *(*a2 + 56);
  if (!v31 || *v31 != 71)
  {
    goto LABEL_33;
  }

  TrimSpaces(a1, a2);
LABEL_112:

  UngetToken(a1);
}

void ParseNoFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 744))
  {
    *(a1 + 4900) |= 0x20u;
  }

  v10 = *(a1 + 104);
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
LABEL_48:

    ReportError(a1, a2, 0, 6);
    return;
  }

  v12 = Token;
  while (1)
  {
    v13 = *(v12 + 7);
    if (v13 == *(a2 + 56) && *(v12 + 20) == 6)
    {
      break;
    }

    if (v13)
    {
      v14 = *v13;
      if (v14 == 48)
      {
        if (nodeIsElement(v12))
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      if ((v14 - 38) <= 1)
      {
        TrimSpaces(a1, a2);
        if (*(v12 + 20) == 6)
        {
          ReportError(a1, a2, v12, 8);

          FreeNode(a1, v12);
        }

        else
        {
          ReportError(a1, a2, v12, 7);

          UngetToken(a1);
        }

        return;
      }
    }

    if (!InsertMisc(a2, v12))
    {
      v21 = *(v12 + 7);
      if (v21 && *v21 == 16 && *(v12 + 20) == 5)
      {
        v22 = *(v10 + 96);
        v23 = *(a2 + 32);
        *v12 = a2;
        *(v12 + 1) = v23;
        if (v23)
        {
          v24 = (v23 + 16);
        }

        else
        {
          v24 = (a2 + 24);
        }

        *v24 = v12;
        *(a2 + 32) = v12;
        ParseTag(a1, v12);
        if (v22)
        {
          if (FindBody(a1) != v12)
          {
            CoerceNode(a1, v12, 30, 0, 0);
            Body = FindBody(a1);
            if (Body)
            {
              v26 = Body;
              RemoveNode(v12);
              v27 = v26[4];
              *v12 = v26;
              *(v12 + 1) = v27;
              if (v27)
              {
                v28 = (v27 + 16);
              }

              else
              {
                v28 = (v26 + 3);
              }

              *v28 = v12;
              v26[4] = v12;
            }
          }
        }

        goto LABEL_36;
      }

      if (nodeIsText(v12) || *(v12 + 7) && *(v12 + 20) != 6)
      {
        v29 = FindBody(a1);
        if (v29)
        {
          v30 = v29;
          if (nodeIsText(v12))
          {
            UngetToken(a1);
            v12 = InferredTag(a1, 79);
            ReportError(a1, a2, v12, 27);
          }

          v31 = v30[4];
          *v12 = v30;
          *(v12 + 1) = v31;
          if (v31)
          {
            v32 = (v31 + 16);
          }

          else
          {
            v32 = (v30 + 3);
          }

          *v32 = v12;
          v30[4] = v12;
LABEL_35:
          ParseTag(a1, v12);
          goto LABEL_36;
        }

        if (!*(v10 + 96))
        {
          UngetToken(a1);
          v12 = InferredTag(a1, 16);
          if (*(a1 + 288))
          {
            ReportError(a1, a2, v12, 15);
          }

          v33 = *(a2 + 32);
          *v12 = a2;
          *(v12 + 1) = v33;
          if (v33)
          {
            v34 = (v33 + 16);
          }

          else
          {
            v34 = (a2 + 24);
          }

          *v34 = v12;
          *(a2 + 32) = v12;
          goto LABEL_35;
        }
      }

LABEL_25:
      ReportError(a1, a2, v12, 8);
LABEL_26:
      FreeNode(a1, v12);
    }

LABEL_36:
    v12 = GetToken(a1, 0, v15, v16, v17, v18, v19, v20);
    if (!v12)
    {
      goto LABEL_48;
    }
  }

  FreeNode(a1, v12);
  *(a2 + 92) = 1;

  TrimSpaces(a1, a2);
}

uint64_t ParseFrameSet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 744))
  {
    *(a1 + 4900) |= 0x10u;
  }

  v10 = *(a1 + 104);
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
LABEL_31:

    return ReportError(a1, a2, 0, 6);
  }

  v12 = Token;
  while (*(v12 + 7) != *(a2 + 56) || *(v12 + 20) != 6)
  {
    if (!InsertMisc(a2, v12))
    {
      if (!*(v12 + 7))
      {
        goto LABEL_24;
      }

      IsElement = nodeIsElement(v12);
      v20 = *(v12 + 7);
      if (!IsElement)
      {
        if (v20)
        {
LABEL_14:
          if (*v20 == 16)
          {
            UngetToken(a1);
            v12 = InferredTag(a1, 71);
            ReportError(a1, a2, v12, 15);
          }
        }

LABEL_16:
        v21 = *(v12 + 20);
        if (v21 == 7)
        {
          if ((*(*(v12 + 7) + 33) & 0x20) != 0)
          {
            v24 = *(a2 + 32);
            *v12 = a2;
            *(v12 + 1) = v24;
            if (v24)
            {
              v25 = (v24 + 16);
            }

            else
            {
              v25 = (a2 + 24);
            }

            *v25 = v12;
            *(a2 + 32) = v12;
            goto LABEL_25;
          }
        }

        else if (v21 == 5 && (*(*(v12 + 7) + 33) & 0x20) != 0)
        {
          v22 = *(a2 + 32);
          *v12 = a2;
          *(v12 + 1) = v22;
          if (v22)
          {
            v23 = (v22 + 16);
          }

          else
          {
            v23 = (a2 + 24);
          }

          *v23 = v12;
          *(a2 + 32) = v12;
          *(v10 + 20) = 0;
          ParseTag(a1, v12);
          goto LABEL_25;
        }

LABEL_24:
        ReportError(a1, a2, v12, 8);
        FreeNode(a1, v12);
        goto LABEL_25;
      }

      if (!v20)
      {
        goto LABEL_16;
      }

      if ((*(v20 + 32) & 4) == 0)
      {
        goto LABEL_14;
      }

      MoveToHead(a1, a2, v12);
    }

LABEL_25:
    v12 = GetToken(a1, 0, v13, v14, v15, v16, v17, v18);
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  FreeNode(a1, v12);
  *(a2 + 92) = 1;

  return TrimSpaces(a1, a2);
}

void ParseHTML(void *a1, void *a2)
{
  SetOptionBool(a1, 0x15u, 0);
  Token = GetToken(a1, 0, v4, v5, v6, v7, v8, v9);
  if (Token)
  {
    v17 = Token;
    while (1)
    {
      v18 = *(v17 + 7);
      if (v18)
      {
        if (*v18 == 46)
        {
          break;
        }
      }

      if (v18 == a2[7] && (*(v17 + 20) - 5) <= 1)
      {
        ReportError(a1, a2, v17, 8);
        FreeNode(a1, v17);
      }

      else if (!InsertMisc(a2, v17))
      {
        UngetToken(a1);
        goto LABEL_12;
      }

      v17 = GetToken(a1, 0, v19, v20, v21, v22, v23, v24);
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v17 = InferredTag(a1, 46);
  }

  v25 = a2[4];
  *v17 = a2;
  *(v17 + 1) = v25;
  if (v25)
  {
    v26 = (v25 + 16);
  }

  else
  {
    v26 = (a2 + 3);
  }

  *v26 = v17;
  a2[4] = v17;
  ParseHead(a1, v17, v11, v12, v13, v14, v15, v16);
  v33 = GetToken(a1, 0, v27, v28, v29, v30, v31, v32);
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = 0;
    while (*(v34 + 7) != a2[7])
    {
      if (!InsertMisc(a2, v34))
      {
        v43 = *(v34 + 7);
        if (!v43)
        {
          goto LABEL_37;
        }

        v44 = *v43;
        switch(v44)
        {
          case 71:
            if (*(v34 + 20) == 5)
            {
              if (!v36)
              {
                ReportError(a1, a2, v34, 8);
                FreeNode(a1, v34);
                v34 = InferredTag(a1, 16);
                goto LABEL_92;
              }

              if (v35)
              {
                FreeNode(a1, v34);
                v34 = v35;
              }

              else
              {
                v57 = *(v36 + 4);
                *v34 = v36;
                *(v34 + 1) = v57;
                if (v57)
                {
                  v58 = (v57 + 16);
                }

                else
                {
                  v58 = (v36 + 24);
                }

                *v58 = v34;
                *(v36 + 4) = v34;
                v35 = v34;
              }

              v55 = a1;
              v56 = v34;
              goto LABEL_69;
            }

            break;
          case 39:
            if (*(v34 + 20) == 5)
            {
              v47 = v34;
              if (v36)
              {
                ReportFatal(a1, a2, v34, 18, v39, v40, v41, v42, v67);
                v47 = v36;
              }

              v48 = a2[4];
              *v34 = a2;
              *(v34 + 1) = v48;
              if (v48)
              {
                v49 = (v48 + 16);
              }

              else
              {
                v49 = (a2 + 3);
              }

              *v49 = v34;
              a2[4] = v34;
              ParseTag(a1, v34);
              for (i = *(v47 + 3); i; i = *(i + 16))
              {
                v51 = *(i + 56);
                if (v51 && *v51 == 71)
                {
                  v35 = i;
                }
              }

              v36 = v47;
              goto LABEL_70;
            }

            break;
          case 16:
            if (*(v34 + 20) == 5)
            {
              if (a1[93] || !v36)
              {
                goto LABEL_91;
              }

              UngetToken(a1);
              if (v35)
              {
                if (*(v35 + 20) == 7)
                {
                  *(v35 + 20) = 5;
                }
              }

              else
              {
                v59 = InferredTag(a1, 71);
                v35 = v59;
                v60 = *(v36 + 4);
                *v59 = v36;
                *(v59 + 1) = v60;
                if (v60)
                {
                  v61 = (v60 + 16);
                }

                else
                {
                  v61 = (v36 + 24);
                }

                *v61 = v59;
                *(v36 + 4) = v59;
                ReportError(a1, a2, v59, 15);
              }

              goto LABEL_68;
            }

            break;
          default:
LABEL_37:
            if (!nodeIsElement(v34) || (v46 = *(v34 + 7)) == 0)
            {
              UngetToken(a1);
              if (!v36)
              {
                goto LABEL_90;
              }

LABEL_44:
              if (v35)
              {
                ReportError(a1, a2, v34, 26);
                if (*(v35 + 20) == 7)
                {
                  *(v35 + 20) = 5;
                }
              }

              else
              {
                v52 = InferredTag(a1, 71);
                v35 = v52;
                v53 = *(v36 + 4);
                *v52 = v36;
                *(v52 + 1) = v53;
                if (v53)
                {
                  v54 = (v53 + 16);
                }

                else
                {
                  v54 = (v36 + 24);
                }

                *v54 = v52;
                *(v36 + 4) = v52;
              }

              ConstrainVersion(a1, 1168);
LABEL_68:
              v55 = a1;
              v56 = v35;
LABEL_69:
              ParseTag(v55, v56);
              goto LABEL_70;
            }

            if ((*(v46 + 32) & 4) != 0)
            {
              MoveToHead(a1, a2, v34);
              goto LABEL_70;
            }

            if (!v36)
            {
              UngetToken(a1);
LABEL_90:
              v34 = InferredTag(a1, 16);
LABEL_91:
              ConstrainVersion(a1, -1169);
LABEL_92:
              v65 = a2[4];
              *v34 = a2;
              *(v34 + 1) = v65;
              if (v65)
              {
                v66 = (v65 + 16);
              }

              else
              {
                v66 = (a2 + 3);
              }

              *v66 = v34;
              a2[4] = v34;

              ParseTag(a1, v34);
              return;
            }

            if (*v46 != 38)
            {
              UngetToken(a1);
              goto LABEL_44;
            }

            break;
        }

LABEL_35:
        ReportError(a1, a2, v34, 8);
LABEL_36:
        FreeNode(a1, v34);
      }

LABEL_70:
      v34 = GetToken(a1, 0, v37, v38, v39, v40, v41, v42);
      if (!v34)
      {
        if (v36)
        {
          return;
        }

        goto LABEL_83;
      }
    }

    if (*(v34 + 20) != 5 && v36 == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

LABEL_83:
  v62 = InferredTag(a1, 16);
  v63 = a2[4];
  *v62 = a2;
  *(v62 + 1) = v63;
  if (v63)
  {
    v64 = (v63 + 16);
  }

  else
  {
    v64 = (a2 + 3);
  }

  *v64 = v62;
  a2[4] = v62;

  ParseBody(a1, v62);
}

void ParseDocument(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Token = GetToken(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!Token)
  {
    goto LABEL_38;
  }

  v10 = Token;
  v11 = 0;
  while (1)
  {
    if (*(v10 + 20) == 13)
    {
      if (FindXmlDecl(a1) && *(a1 + 24))
      {
        goto LABEL_11;
      }

      if (*(v10 + 21) != 1 || *(v10 + 22) != 1)
      {
        ReportError(a1, a1, v10, 45);
      }
    }

    if (!InsertMisc(a1, v10))
    {
      break;
    }

LABEL_12:
    v10 = GetToken(a1, 0, v12, v13, v14, v15, v16, v17);
    if (!v10)
    {
      goto LABEL_38;
    }
  }

  v18 = *(v10 + 20);
  if (v18 == 6)
  {
LABEL_11:
    ReportError(a1, a1, v10, 8);
    FreeNode(a1, v10);
    goto LABEL_12;
  }

  if (v18 != 5)
  {
    if (v18 != 1)
    {
      goto LABEL_31;
    }

    if (!v11)
    {
      v19 = *(a1 + 32);
      *v10 = a1;
      *(v10 + 1) = v19;
      if (v19)
      {
        v20 = (v19 + 16);
      }

      else
      {
        v20 = (a1 + 24);
      }

      *v20 = v10;
      *(a1 + 32) = v10;
      v11 = v10;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v21 = *(v10 + 7);
  if (!v21)
  {
    goto LABEL_31;
  }

  if (*v21 == 48)
  {
    v22 = AttrGetById(v10, 154);
    if (v22)
    {
      v23 = v22[6];
      if (v23)
      {
        if (!tmbstrcasecmp(v23, "http://www.w3.org/1999/xhtml"))
        {
          v24 = *(a1 + 304);
          *(*(a1 + 104) + 28) = 1;
          SetOptionBool(a1, 0x17u, v24 == 0);
          SetOptionBool(a1, 0x16u, v24 == 0);
          if (!v24)
          {
            SetOptionBool(a1, 0x1Au, 0);
            SetOptionBool(a1, 0x1Bu, 0);
          }
        }
      }
    }
  }

  if (*(v10 + 20) != 5 || (v25 = *(v10 + 7)) == 0 || *v25 != 48)
  {
LABEL_31:
    UngetToken(a1);
    v10 = InferredTag(a1, 48);
  }

  if (!FindDocType(a1))
  {
    ReportError(a1, 0, 0, 44);
  }

  v26 = *(a1 + 32);
  *v10 = a1;
  *(v10 + 1) = v26;
  if (v26)
  {
    v27 = (v26 + 16);
  }

  else
  {
    v27 = (a1 + 24);
  }

  *v27 = v10;
  *(a1 + 32) = v10;
  ParseHTML(a1, v10);
LABEL_38:
  if (*(a1 + 744))
  {
    AccessibilityChecks(a1);
  }

  if (!FindHTML(a1))
  {
    v28 = InferredTag(a1, 48);
    v29 = *(a1 + 32);
    *v28 = a1;
    *(v28 + 1) = v29;
    if (v29)
    {
      v30 = (v29 + 16);
    }

    else
    {
      v30 = (a1 + 24);
    }

    *v30 = v28;
    *(a1 + 32) = v28;
    ParseHTML(a1, v28);
  }

  if (!FindTITLE(a1))
  {
    HEAD = FindHEAD(a1);
    ReportError(a1, HEAD, 0, 17);
    v32 = InferredTag(a1, 111);
    v33 = HEAD[4];
    *v32 = HEAD;
    *(v32 + 1) = v33;
    if (v33)
    {
      v34 = (v33 + 16);
    }

    else
    {
      v34 = (HEAD + 3);
    }

    *v34 = v32;
    HEAD[4] = v32;
  }

  if (*(a1 + 816))
  {
    SanitizeNodesAgainstXSS(a1, a1);
  }

  AttributeChecks(a1, a1);
  ReplaceObsoleteElements(a1, a1);
  DropEmptyElements(a1, a1);
  CleanSpaces(a1, a1);
  if (*(a1 + 520))
  {
    Body = FindBody(a1);
    if (Body)
    {
      v36 = Body[3];
      while (v36)
      {
        while ((!nodeIsText(v36) || IsBlank(*(a1 + 104), v36)) && (!nodeIsElement(v36) || !nodeCMIsOnlyInline(v36)))
        {
          v36 = v36[2];
          if (!v36)
          {
            goto LABEL_72;
          }
        }

        v37 = InferredTag(a1, 79);
        v38 = v37;
        *(v37 + 2) = v36;
        v39 = *v36;
        *v37 = *v36;
        v36[1] = v37;
        v40 = *(v37 + 1);
        if (v40)
        {
          *(v40 + 16) = v37;
        }

        if (*(v39 + 24) == v36)
        {
          *(v39 + 24) = v37;
        }

        do
        {
          if (nodeIsElement(v36) && !nodeCMIsOnlyInline(v36))
          {
            break;
          }

          v41 = v36[2];
          RemoveNode(v36);
          v42 = *(v38 + 32);
          *v36 = v38;
          v36[1] = v42;
          v43 = (v42 ? v42 + 16 : v38 + 24);
          *v43 = v36;
          *(v38 + 32) = v36;
          v36 = v41;
        }

        while (v41);
        TrimSpaces(a1, v38);
      }
    }
  }

LABEL_72:
  if (*(a1 + 528))
  {

    EncloseBlockText(a1, a1);
  }
}

void SanitizeNodesAgainstXSS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = *(a1 + 280);
    do
    {
      v5 = v2;
      v2 = *(v2 + 16);
      if (v4)
      {
        v6 = *(v5 + 64);
        if (!v6 || tmbstrcasecmp(v6, "frameset") && tmbstrcasecmp(*(v5 + 64), "script") && tmbstrcasecmp(*(v5 + 64), "iframe") && tmbstrcasecmp(*(v5 + 64), "object") && tmbstrcasecmp(*(v5 + 64), "frame") && tmbstrcasecmp(*(v5 + 64), "embed") && tmbstrcasecmp(*(v5 + 64), "style") && tmbstrcasecmp(*(v5 + 64), "link") && tmbstrcasecmp(*(v5 + 64), "meta") && tmbstrcasecmp(*(v5 + 64), "applet"))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v7 = *(v5 + 56);
        if (!v7 || ((v8 = *v7, (v8 - 6) <= 0x3D) ? (v9 = ((1 << (v8 - 6)) & 0x2100100310000001) == 0) : (v9 = 1), v9 && ((v10 = v8 - 75, v11 = v10 > 0x1A, v12 = (1 << v10) & 0x4020001, !v11) ? (v13 = v12 == 0) : (v13 = 1), v13)))
        {
LABEL_27:
          if (*(v5 + 24))
          {
            SanitizeNodesAgainstXSS(a1);
          }

          continue;
        }
      }

      RemoveNode(v5);
      FreeNode(a1, v5);
    }

    while (v2);
  }
}

uint64_t AttributeChecks(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2[2];
      result = nodeIsElement(v2);
      if (result)
      {
        v5 = *(v2[7] + 48);
        if (v5)
        {
          result = v5(v3, v2);
        }

        else
        {
          result = CheckAttributes(v3, v2);
        }
      }

      if (v2[3])
      {
        result = AttributeChecks(v3);
      }

      v2 = v4;
    }

    while (v4);
  }

  return result;
}

_BYTE *ReplaceObsoleteElements(_BYTE *result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    while (1)
    {
      v4 = v2[2];
      v5 = v2[7];
      if (v5)
      {
        v6 = *v5;
        if (v6 != 66 && v6 != 29)
        {
          goto LABEL_11;
        }

        result = CoerceNode(v3, v2, 115, 1, 1);
        v8 = v2[7];
        if (v8)
        {
          break;
        }
      }

LABEL_16:
      if (v2[3])
      {
        result = ReplaceObsoleteElements(v3);
      }

      v2 = v4;
      if (!v4)
      {
        return result;
      }
    }

    v6 = *v8;
LABEL_11:
    v9 = v6 - 63;
    v10 = v9 > 0x37;
    v11 = (1 << v9) & 0x80000000040001;
    if (!v10 && v11 != 0)
    {
      result = CoerceNode(v3, v2, 82, 1, 1);
    }

    goto LABEL_16;
  }

  return result;
}

void CleanSpaces(uint64_t a1, unsigned int *a2)
{
  if (a2)
  {
    v2 = a2;
    while (1)
    {
      v4 = v2;
      v2 = *(v2 + 2);
      if (nodeIsText(v4) && nodeIsText(v4))
      {
        v5 = *v4;
        if (*(*v4 + 80) != 1)
        {
          break;
        }
      }

LABEL_6:
      if (nodeIsText(v4) && nodeIsText(v4))
      {
        v6 = *v4;
        if (*(*v4 + 80) != 1)
        {
          v12 = *v4;
          do
          {
            v13 = v12[7];
            if (v13 && *(v13 + 40) == ParsePre)
            {
              goto LABEL_9;
            }

            v12 = *v12;
          }

          while (v12);
          v14 = *(v6 + 56);
          if (v14 && *(v14 + 40) == ParseScript)
          {
            goto LABEL_9;
          }

          v15 = *(v4 + 2);
          if (!v15)
          {
            if (nodeHasCM(v6, 16))
            {
              v18 = *(*v4 + 16);
              if (!v18 || nodeHasCM(v18, 16))
              {
                goto LABEL_9;
              }
            }

LABEL_52:
            v20 = v4[18];
            for (i = v4[19]; i > v20 && IsWhite(*(*(*(a1 + 104) + 104) + i - 1)); v4[19] = i)
            {
              v20 = v4[18];
              i = v4[19] - 1;
            }

            goto LABEL_9;
          }

          v16 = *(v15 + 56);
          if (v16 && *v16 == 17)
          {
            goto LABEL_52;
          }

          if (!nodeHasCM(*(v4 + 2), 16))
          {
            if ((*(v15 + 80) | 2) == 7)
            {
              goto LABEL_52;
            }

            if (nodeIsText(v15))
            {
              v17 = *(v15 + 72);
              if (v17 < *(v15 + 76))
              {
                if (IsWhite(*(*(*(a1 + 104) + 104) + v17)))
                {
                  goto LABEL_52;
                }
              }
            }
          }
        }
      }

LABEL_9:
      if (nodeIsText(v4) && v4[18] >= v4[19])
      {
        RemoveNode(v4);
        FreeNode(a1, v4);
        if (!v2)
        {
          return;
        }
      }

      else
      {
        if (*(v4 + 3))
        {
          CleanSpaces(a1);
        }

        if (!v2)
        {
          return;
        }
      }
    }

    v7 = *v4;
    do
    {
      v8 = v7[7];
      if (v8 && *(v8 + 40) == ParsePre)
      {
        goto LABEL_6;
      }

      v7 = *v7;
    }

    while (v7);
    v9 = *(v5 + 56);
    if (v9 && *(v9 + 40) == ParseScript)
    {
      goto LABEL_6;
    }

    v10 = *(v4 + 1);
    if (v10)
    {
      v11 = *(v10 + 56);
      if (v11 && *v11 == 17)
      {
LABEL_57:
        v21 = v4[18];
        v22 = v4[19];
        while (v21 < v22 && IsWhite(*(*(*(a1 + 104) + 104) + v21)))
        {
          v22 = v4[19];
          v21 = v4[18] + 1;
          v4[18] = v21;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (!nodeHasCM(v5, 16))
      {
        goto LABEL_57;
      }

      v10 = *(v4 + 1);
      if (!v10)
      {
        goto LABEL_46;
      }
    }

    if (!nodeHasCM(v10, 16) && nodeIsElement(*(v4 + 1)))
    {
      goto LABEL_57;
    }

    if (*(v4 + 1))
    {
      goto LABEL_6;
    }

LABEL_46:
    if (*(*v4 + 8) || nodeHasCM(**v4, 16))
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }
}

uint64_t EncloseBlockText(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      while (1)
      {
        v2 = v4[2];
        if (v4[3])
        {
          result = EncloseBlockText(v3);
        }

        v5 = v4[7];
        if (!v5)
        {
          break;
        }

        v6 = *v5 - 15;
        v7 = v6 > 0x3B;
        v8 = (1 << v6) & 0x800000000400001;
        if (v7 || v8 == 0)
        {
          break;
        }

        v10 = v4[3];
        if (!v10)
        {
          break;
        }

        if (!nodeIsText(v4[3]) || IsBlank(*(v3 + 104), v10))
        {
          result = nodeIsElement(v10);
          if (!result)
          {
            break;
          }

          result = nodeCMIsOnlyInline(v10);
          if (!result)
          {
            break;
          }
        }

        v11 = InferredTag(v3, 79);
        v12 = v11;
        *(v11 + 2) = v10;
        v13 = *v10;
        *v11 = *v10;
        v10[1] = v11;
        v14 = *(v11 + 1);
        if (v14)
        {
          *(v14 + 16) = v11;
        }

        if (*(v13 + 24) == v10)
        {
          *(v13 + 24) = v11;
        }

        do
        {
          if (nodeIsElement(v10) && !nodeCMIsOnlyInline(v10))
          {
            break;
          }

          v15 = v10[2];
          RemoveNode(v10);
          v16 = *(v12 + 32);
          *v10 = v12;
          v10[1] = v16;
          v17 = (v16 ? v16 + 16 : v12 + 24);
          *v17 = v10;
          *(v12 + 32) = v10;
          v10 = v15;
        }

        while (v15);
        result = TrimSpaces(v3, v12);
      }
    }

    while (v2);
  }

  return result;
}

uint64_t XMLPreserveWhiteSpace(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    while (1)
    {
      v4 = v3[1];
      if (v4)
      {
        if (*v4 == 153)
        {
          break;
        }
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v11 = v3[6];
    return v11 && !tmbstrcasecmp(v11, "preserve");
  }

LABEL_5:
  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 56);
    if (!v6 || ((v7 = *v6, v5 = 1, v7 -= 82, v8 = v7 > 0x13, v9 = (1 << v7) & 0x80401, !v8) ? (v10 = v9 == 0) : (v10 = 1), v10))
    {
      if (FindParser(a1, a2) == ParsePre)
      {
        return 1;
      }

      return tmbstrcasecmp(*(a2 + 64), "xsl:text") == 0;
    }
  }

  return v5;
}

uint64_t ParseXMLDocument(uint64_t a1)
{
  SetOptionBool(a1, 0x15u, 1u);
  result = GetToken(a1, 0, v2, v3, v4, v5, v6, v7);
  if (result)
  {
    v9 = result;
    v10 = 0;
    do
    {
      v11 = a1;
      if (*(v9 + 80) == 6)
      {
        v12 = 0;
        v13 = v9;
        v14 = 13;
      }

      else
      {
        if (InsertMisc(a1, v9))
        {
          goto LABEL_7;
        }

        v21 = *(v9 + 80);
        if (v21 == 5)
        {
          v24 = *(a1 + 32);
          *v9 = a1;
          *(v9 + 8) = v24;
          if (v24)
          {
            v25 = (v24 + 16);
          }

          else
          {
            v25 = (a1 + 24);
          }

          *v25 = v9;
          *(a1 + 32) = v9;
          ParseXMLElement(a1, v9, 0);
          goto LABEL_7;
        }

        if (v21 == 7)
        {
          v22 = *(a1 + 32);
          *v9 = a1;
          *(v9 + 8) = v22;
          if (v22)
          {
            v23 = (v22 + 16);
          }

          else
          {
            v23 = (a1 + 24);
          }

          *v23 = v9;
          *(a1 + 32) = v9;
          goto LABEL_7;
        }

        if (v21 == 1 && !v10)
        {
          v26 = *(a1 + 32);
          *v9 = a1;
          *(v9 + 8) = v26;
          if (v26)
          {
            v27 = (v26 + 16);
          }

          else
          {
            v27 = (a1 + 24);
          }

          *v27 = v9;
          *(a1 + 32) = v9;
          v10 = v9;
          goto LABEL_7;
        }

        v11 = a1;
        v12 = a1;
        v13 = v9;
        v14 = 8;
      }

      ReportError(v11, v12, v13, v14);
      FreeNode(a1, v9);
LABEL_7:
      result = GetToken(a1, 0, v15, v16, v17, v18, v19, v20);
      v9 = result;
    }

    while (result);
  }

  if (*(a1 + 312))
  {
    result = FixXmlDecl(a1);
  }

  if (*(a1 + 816))
  {
    SanitizeNodesAgainstXSS(a1, a1);

    return AttributeChecks(a1, a1);
  }

  return result;
}

uint64_t ParseXMLElement(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = *(a1 + 104);
  if (XMLPreserveWhiteSpace(a1, a2))
  {
    v3 = 2;
  }

  else
  {
    v3 = v3;
  }

  Token = GetToken(a1, v3, v7, v8, v9, v10, v11, v12);
  if (Token)
  {
    v20 = Token;
    do
    {
      v21 = *(v20 + 20);
      if (v21 == 6)
      {
        v22 = *(v20 + 8);
        if (!v22)
        {
          goto LABEL_13;
        }

        v23 = *(a2 + 64);
        if (!v23)
        {
          goto LABEL_13;
        }

        if (!tmbstrcmp(v22, v23))
        {
          FreeNode(a1, v20);
          *(a2 + 92) = 1;
          break;
        }

        v21 = *(v20 + 20);
      }

      if (v21 == 5)
      {
        ParseXMLElement(a1, v20, v3);
LABEL_15:
        v24 = *(a2 + 32);
        *v20 = a2;
        *(v20 + 1) = v24;
        if (v24)
        {
          v25 = (v24 + 16);
        }

        else
        {
          v25 = (a2 + 24);
        }

        *v25 = v20;
        *(a2 + 32) = v20;
        goto LABEL_19;
      }

      if (v21 != 6)
      {
        goto LABEL_15;
      }

LABEL_13:
      ReportFatal(a1, a2, v20, 47, v16, v17, v18, v19, v33);
      FreeNode(a1, v20);
LABEL_19:
      v20 = GetToken(a1, v3, v14, v15, v16, v17, v18, v19);
    }

    while (v20);
  }

  v26 = *(a2 + 24);
  IsText = nodeIsText(v26);
  if (v3 != 2 && IsText)
  {
    v28 = *(v26 + 72);
    if (*(*(v6 + 104) + v28) == 32)
    {
      v29 = v28 + 1;
      *(v26 + 72) = v29;
      if (v29 >= *(v26 + 76))
      {
        DiscardElement(a1, v26);
      }
    }
  }

  v30 = *(a2 + 32);
  result = nodeIsText(v30);
  if (v3 != 2 && result)
  {
    v32 = *(v30 + 76);
    if (!v32)
    {
      goto LABEL_32;
    }

    if (*(*(v6 + 104) + v32 - 1) == 32)
    {
      *(v30 + 76) = --v32;
    }

    if (*(v30 + 72) >= v32)
    {
LABEL_32:

      return DiscardElement(a1, v30);
    }
  }

  return result;
}

BOOL nodeCMIsOnlyInline(_BOOL8 a1)
{
  result = nodeHasCM(a1, 16);
  if (result)
  {
    return !nodeHasCM(a1, 8);
  }

  return result;
}

void InitPrintBuf(uint64_t a1)
{
  ClearMemory((a1 + 4776), 0x38uLL);
  *(a1 + 4812) = -1;
  *(a1 + 4820) = -1;
  *(a1 + 4804) = -1;
}

void FreePrintBuf(uint64_t a1)
{
  v2 = linkedOnOrAfter2024EReleases();
  v3 = *(a1 + 4776);
  if (v2)
  {
    free(v3);
    *(a1 + 4776) = 0;
  }

  else
  {
    _MemFree(v3);
  }

  ClearMemory((a1 + 4776), 0x38uLL);
  *(a1 + 4812) = -1;
  *(a1 + 4820) = -1;
  *(a1 + 4804) = -1;
}

uint64_t PFlushLine(uint64_t a1, int a2)
{
  v4 = *(a1 + 4788);
  if (v4)
  {
    if (*(a1 + 128) <= ((*(a1 + 4804) & ~(*(a1 + 4804) >> 31)) + v4))
    {
      WrapLine(a1);
    }

    if (WantIndent(a1))
    {
      v5 = *(a1 + 4804);
      if (v5 >= 1)
      {
        do
        {
          WriteChar(32, *(a1 + 4840));
          --v5;
        }

        while (v5);
      }
    }

    LODWORD(v6) = *(a1 + 4788);
    if (v6)
    {
      v7 = 0;
      do
      {
        WriteChar(*(*(a1 + 4776) + 4 * v7++), *(a1 + 4840));
        v6 = *(a1 + 4788);
      }

      while (v7 < v6);
    }

    v8 = *(a1 + 4812);
    if ((v8 & 0x80000000) == 0 && v8 < v6)
    {
      WriteChar(92, *(a1 + 4840));
    }

    ResetLine(a1 + 4776);
    *(a1 + 4788) = 0;
  }

  result = WriteChar(10, *(a1 + 4840));
  *(a1 + 4804) = a2;
  return result;
}

BOOL WantIndent(_DWORD *a1)
{
  if (a1[1201] < 1)
  {
    return 0;
  }

  v1 = a1[1198];
  v2 = a1[1202];
  if (v2)
  {
    if (v2 < 1)
    {
      goto LABEL_8;
    }

    LOBYTE(v2) = v2 >= v1;
  }

  if ((v2 & 1) == 0 && !a1[124])
  {
    return 0;
  }

LABEL_8:
  v4 = a1[1203];
  v5 = v4 >= v1;
  if (v4 < 1)
  {
    v5 = 1;
  }

  return v4 && v5;
}

uint64_t ResetLine(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 28) = *(result + 40);
    *(result + 36) = *(result + 48);
    *(result + 40) = -1;
    *(result + 48) = -1;
  }

  v1 = *(result + 16);
  v2 = *(result + 36);
  if (v1)
  {
    v3 = __OFSUB__(v2, v1);
    v4 = v2 - v1;
    if (!((v4 < 0) ^ v3 | (v4 == 0)))
    {
      *(result + 36) = v4;
    }

    v5 = *(result + 32);
    v3 = __OFSUB__(v5, v1);
    v6 = v5 - v1;
    if (!((v6 < 0) ^ v3 | (v6 == 0)))
    {
      *(result + 32) = v6;
    }
  }

  else
  {
    if (v2 >= 1)
    {
      *(result + 36) = 0;
    }

    if (*(result + 32) >= 1)
    {
      *(result + 32) = 0;
    }
  }

  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

void PrintBody(unsigned int *a1)
{
  Body = FindBody(a1);
  if (Body)
  {
    for (i = Body[3]; i; i = i[2])
    {
      PPrintTree(a1, 0, 0, i);
    }
  }
}

void PPrintTree(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return;
  }

  v8 = a1[30];
  v9 = a1[74];
  v10 = *(a4 + 20);
  if (v10 <= 7)
  {
    if (v10 <= 1)
    {
      if (!v10)
      {
        for (i = a4[3]; i; i = *(i + 16))
        {
          PPrintTree(a1, a2, a3, i);
        }

        return;
      }

      if (v10 == 1)
      {

        PPrintDocType(a1, a3, a4);
        return;
      }
    }

    else
    {
      switch(v10)
      {
        case 2:

          PPrintComment(a1, a3, a4);
          return;
        case 3:

          PPrintPI(a1, a3, a4);
          return;
        case 4:

          PPrintText(a1, a2, a3, a4);
          return;
      }
    }
  }

  else
  {
    if (v10 <= 10)
    {
      if (v10 == 8)
      {

        PPrintCDATA(a1, a3, a4);
      }

      else if (v10 == 9)
      {

        PPrintSection(a1, a3, a4);
      }

      else
      {

        PPrintAsp(a1, a3, a4);
      }

      return;
    }

    switch(v10)
    {
      case 11:

        PPrintJste(a1, a3, a4);
        return;
      case 12:

        PPrintPhp(a1, a3, a4);
        return;
      case 13:

        PPrintXmlDecl(a1, a3, a4);
        return;
    }
  }

  if (nodeCMIsEmpty(a4) || (v12 = *(a4 + 20), v12 == 7) && !v9)
  {
    if (!nodeHasCM(a4, 16))
    {
      PCondFlushLine(a1, a3);
    }

    v13 = a4[7];
    if (!v13)
    {
      goto LABEL_92;
    }

    v14 = *v13;
    if (*v13 != 17)
    {
      goto LABEL_87;
    }

    v15 = a4[1];
    if (v15)
    {
      v16 = *(v15 + 56);
      if (v16)
      {
        if ((a2 & 1) != 0 || *v16 == 17)
        {
          goto LABEL_86;
        }

LABEL_84:
        if (a1[98])
        {
          PFlushLine(a1, a3);
          v13 = a4[7];
          if (!v13)
          {
LABEL_92:
            PPrintTag(a1, a2, a3, a4);
            if (!a4[2])
            {
              return;
            }

            v23 = a4[7];
            if (!v23)
            {
              return;
            }

            v24 = *v23;
            if (v24 == 80 || v24 == 7)
            {

              PCondFlushLine(a1, a3);
              return;
            }

            v25 = v24 == 17 && (a2 & 1) == 0;
            if (!v25 && v24 != 47)
            {
              return;
            }

            goto LABEL_168;
          }
        }

        goto LABEL_86;
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

LABEL_86:
    v14 = *v13;
LABEL_87:
    if (v14 == 47 && a1[188] && *a4 && *(*a4 + 24) != a4)
    {
      PFlushLine(a1, a3);
    }

    goto LABEL_92;
  }

  if (v12 == 7)
  {
    *(a4 + 20) = 5;
  }

  v17 = a4[7];
  if (!v17)
  {
    goto LABEL_76;
  }

  if (v17[5] == ParsePre)
  {
LABEL_67:
    v19 = a1[188];
    PCondFlushLine(a1, a3);
    PCondFlushLine(a1, a3);
    if (v19 && *a4 && *(*a4 + 24) != a4)
    {
      PFlushLine(a1, a3);
    }

    PPrintTag(a1, a2, a3, a4);
    PFlushLine(a1, 0);
    for (j = a4[3]; j; j = *(j + 16))
    {
      PPrintTree(a1, a2 | 9, 0, j);
    }

    PCondFlushLine(a1, 0);
    PPrintEndTag(a1, a4);
    if (a1[66] || !a4[2])
    {
      return;
    }

LABEL_168:

    PFlushLine(a1, a3);
    return;
  }

  v18 = *v17;
  if (v18 != 92 && v18 != 101)
  {
    if (v18 == 107)
    {
      goto LABEL_67;
    }

LABEL_76:
    if (nodeCMIsInline(a4))
    {
      if (a1[86] && (v21 = a4[7]) != 0 && *v21 == 69)
      {
        for (k = a4[3]; k; k = *(k + 16))
        {
          PPrintTree(a1, a2 | 8, a3, k);
        }
      }

      else
      {
        PPrintTag(a1, a2, a3, a4);
        if (ShouldIndent(a1, a4))
        {
          PCondFlushLine(a1, v8 + a3);
          for (m = a4[3]; m; m = *(m + 16))
          {
            PPrintTree(a1, a2, v8 + a3, m);
          }

          PCondFlushLine(a1, a3);
        }

        else
        {
          for (n = a4[3]; n; n = *(n + 16))
          {
            PPrintTree(a1, a2, a3, n);
          }
        }

        PPrintEndTag(a1, a4);
      }

      return;
    }

    v27 = a1[66];
    v28 = a1[68];
    v29 = a1[188];
    if (a1[188])
    {
      if (*a4)
      {
        if (*(*a4 + 24) != a4)
        {
          v30 = a4[7];
          if (!v30 || *v30 != 48)
          {
            PFlushLine(a1, a3);
          }
        }
      }
    }

    if (!ShouldIndent(a1, a4))
    {
      v8 = 0;
    }

    PCondFlushLine(a1, a3);
    if (v27 == 2 && a4[1])
    {
      PFlushLine(a1, a3);
    }

    if (!v28 || !nodeHasCM(a4, 0x200000) || a4[5])
    {
      PPrintTag(a1, a2, a3, a4);
      if (ShouldIndent(a1, a4))
      {
        v31 = a4[7];
        if (!v31 || *v31 != 61 || !nodeIsText(a4[3]))
        {
          PCondFlushLine(a1, v8 + a3);
        }
      }

      else if (nodeHasCM(a4, 2) || (v38 = a4[7]) != 0 && *v38 == 71 || nodeHasCM(a4, 4) && ((v39 = a4[7]) == 0 || *v39 != 111))
      {
        PFlushLine(a1, v8 + a3);
      }
    }

    v33 = a4[3];
    if (v33)
    {
      v34 = 0;
      do
      {
        v35 = v34;
        v34 = v33;
        if (v35 && !v27 && nodeIsText(v35) && *(v34 + 56) && !nodeHasCM(v34, 16))
        {
          PFlushLine(a1, v8 + a3);
        }

        PPrintTree(a1, a2, v8 + a3, v34);
        v33 = *(v34 + 16);
      }

      while (v33);
    }

    if (ShouldIndent(a1, a4))
    {
      PCondFlushLine(a1, a3);
      if (v28 && nodeHasCM(a4, 0x8000))
      {
        goto LABEL_165;
      }

      goto LABEL_160;
    }

    if (v28)
    {
      if (nodeHasCM(a4, 0x8000))
      {
        goto LABEL_165;
      }
    }

    else if (nodeHasCM(a4, 2) || (v40 = a4[7]) != 0 && *v40 == 71 || nodeHasCM(a4, 4) && ((v41 = a4[7]) == 0 || *v41 != 111))
    {
      PCondFlushLine(a1, a3);
      goto LABEL_160;
    }

    if (v29)
    {
      v36 = a4[3];
      if (v36)
      {
        while (!nodeIsText(v36))
        {
          v36 = *(v36 + 16);
          if (!v36)
          {
            goto LABEL_157;
          }
        }
      }

      else
      {
LABEL_157:
        PFlushLine(a1, a3);
      }
    }

LABEL_160:
    PPrintEndTag(a1, a4);
    if (!v27 && !v28)
    {
      v37 = a4[7];
      if (!v37)
      {
        if (!v29)
        {
          goto LABEL_168;
        }

LABEL_166:
        if (!a4[2] || !nodeHasCM(a4, 232))
        {
          return;
        }

        goto LABEL_168;
      }

      if (!v29 && *v37 != 48)
      {
        goto LABEL_168;
      }
    }

LABEL_165:
    if (!v29)
    {
      return;
    }

    goto LABEL_166;
  }

  PPrintScriptStyle(a1, a2 | 0x19, a3, a4);
}

void PPrintText(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 72);
  v9 = *(a4 + 76);
  v26 = 0;
  v10 = TextEndsWithNewline(*(a1 + 104), a4, a2);
  v11 = TextStartsWithWhitespace(*(a1 + 104), a4, v8, a2);
  v12 = v9 - (v10 & ~(v10 >> 31));
  if (v11 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 + v8;
  if (v14 >= v12)
  {
    v14 = v12;
  }

  if (v11 >= 1)
  {
    v8 = v14;
  }

  while (v8 < v12)
  {
    CheckWrapIndent(a1, a3);
    v20 = (*(*(a1 + 104) + 104) + v8);
    v21 = *v20;
    v22 = *v20;
    v26 = v22;
    if (v21 < 0)
    {
      v8 += GetUTF8(v20, &v26);
      v22 = v26;
    }

    if (v22 == 10)
    {
      PFlushLine(a1, a3);
      v23 = TextStartsWithWhitespace(*(a1 + 104), a4, v8 + 1, a2);
      if (v23 >= 1)
      {
        if (v23 >= a3)
        {
          v24 = a3;
        }

        else
        {
          v24 = v23;
        }

        v25 = v24 + v8;
        if (v25 >= v12)
        {
          v8 = v12;
        }

        else
        {
          v8 = v25;
        }
      }
    }

    else
    {
      PPrintChar(a1, v22, a2, v15, v16, v17, v18, v19);
    }

    ++v8;
  }
}

void PPrintComment(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 4788);
  if (*(a1 + 128) <= (v6 + a2))
  {
    if (!*(a1 + 4800))
    {
      *(a1 + 4816) = a2;
      *(a1 + 4800) = 1;
    }
  }

  else
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = a2;
    }

    *(a1 + 4792) = v6;
  }

  AddString(a1 + 4776, "<!--");
  PPrintText(a1, 2, 0, a3);
  AddString(a1 + 4776, "--");
  AddChar(a1 + 4776, 62);
  if (*(a3 + 100) && *(a3 + 16))
  {

    PFlushLine(a1, a2);
  }
}

uint64_t PPrintDocType(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 120);
  AttrByName = GetAttrByName(a3, "PUBLIC");
  v9 = GetAttrByName(a3, "SYSTEM");
  v10 = *(a1 + 4788);
  if (*(a1 + 128) <= (v10 + a2))
  {
    if (!*(a1 + 4800))
    {
      *(a1 + 4816) = a2;
      *(a1 + 4800) = 1;
    }
  }

  else
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = a2;
    }

    *(a1 + 4792) = v10;
  }

  PCondFlushLine(a1, a2);
  AddString(a1 + 4776, "<!DOCTYPE ");
  v11 = *(a1 + 4788);
  if (*(a1 + 128) <= (v11 + a2))
  {
    if (!*(a1 + 4800))
    {
      *(a1 + 4816) = a2;
      *(a1 + 4800) = 1;
    }
  }

  else
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = a2;
    }

    *(a1 + 4792) = v11;
  }

  v12 = *(a3 + 64);
  if (v12)
  {
    AddString(a1 + 4776, v12);
  }

  if (!AttrByName || !AttrByName[6] || (AddString(a1 + 4776, " PUBLIC "), AddChar(a1 + 4776, *(AttrByName + 8)), AddString(a1 + 4776, AttrByName[6]), AddChar(a1 + 4776, *(AttrByName + 8)), !AttrByName[6]) || !v9)
  {
    if (!v9)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v13 = v9[6];
  if (!v13)
  {
LABEL_29:
    if (v9[6])
    {
      AddString(a1 + 4776, " SYSTEM ");
    }

    goto LABEL_31;
  }

  v14 = *(a1 + 4788);
  v15 = v14 - tmbstrlen(v13);
  v16 = v15 - 3;
  if (v15 == 3 || &tmbstrlen(v9[6])[v15 - 1] >= v6)
  {
    goto LABEL_25;
  }

  v17 = 2 * (v7 & 0x7FFFFFFF);
  if (!v7)
  {
    v17 = 4;
  }

  if (v16 > v17)
  {
LABEL_25:
    LODWORD(v16) = 0;
  }

  PCondFlushLine(a1, v16);
  if (*(a1 + 4788))
  {
    AddChar(a1 + 4776, 32);
  }

LABEL_31:
  if (v9[6])
  {
    AddChar(a1 + 4776, *(v9 + 8));
    AddString(a1 + 4776, v9[6]);
    AddChar(a1 + 4776, *(v9 + 8));
  }

LABEL_33:
  if (*(a3 + 24))
  {
    PCondFlushLine(a1, a2);
    AddChar(a1 + 4776, 91);
    PPrintText(a1, 16, 0, *(a3 + 24));
    AddChar(a1 + 4776, 93);
  }

  v18 = *(a1 + 4788);
  if (*(a1 + 128) <= v18)
  {
    if (!*(a1 + 4800))
    {
      *(a1 + 4816) = 0;
      *(a1 + 4800) = 1;
    }
  }

  else
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = 0;
    }

    *(a1 + 4792) = v18;
  }

  AddChar(a1 + 4776, 62);

  return PCondFlushLine(a1, a2);
}

uint64_t PPrintPI(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 4788);
  if (*(a1 + 128) <= (v6 + a2))
  {
    if (!*(a1 + 4800))
    {
      *(a1 + 4816) = a2;
      *(a1 + 4800) = 1;
    }
  }

  else
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = a2;
    }

    *(a1 + 4792) = v6;
  }

  v11 = 0;
  AddString(a1 + 4776, "<?");
  v7 = *(a3 + 64);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      do
      {
        v11 = v8;
        if ((v8 & 0x80) != 0)
        {
          v7 += GetUTF8(v7, &v11);
          v8 = v11;
        }

        AddChar(a1 + 4776, v8);
        v9 = *++v7;
        v8 = v9;
      }

      while (v9);
    }
  }

  PPrintText(a1, 16, a2, a3);
  if (*(a1 + 288) || *(a1 + 296) || *(a3 + 92))
  {
    AddChar(a1 + 4776, 63);
  }

  AddChar(a1 + 4776, 62);
  return PCondFlushLine(a1, a2);
}

uint64_t PPrintXmlDecl(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 4788);
  v7 = *(a1 + 128);
  if (v7 <= (v6 + a2))
  {
    if (!*(a1 + 4800))
    {
      *(a1 + 4816) = a2;
      *(a1 + 4800) = 1;
    }
  }

  else
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = a2;
    }

    *(a1 + 4792) = v6;
  }

  SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
  v8 = *(a1 + 328);
  SetOptionBool(a1, 0x1Bu, 0);
  AddString(a1 + 4776, "<?xml");
  v9 = AttrGetById(a3, 147);
  if (v9)
  {
    PPrintAttribute(a1, a2, a3, v9);
  }

  v10 = AttrGetById(a3, 47);
  if (v10)
  {
    PPrintAttribute(a1, a2, a3, v10);
  }

  AttrByName = GetAttrByName(a3, "standalone");
  if (AttrByName)
  {
    PPrintAttribute(a1, a2, a3, AttrByName);
  }

  SetOptionBool(a1, 0x1Bu, v8);
  v12 = *(a3 + 76);
  if (!v12 || *(*(*(a1 + 104) + 104) + (v12 - 1)) != 63)
  {
    AddChar(a1 + 4776, 63);
  }

  AddChar(a1 + 4776, 62);
  SetOptionInt(a1, 2u, v7);

  return PFlushLine(a1, a2);
}

BOOL PPrintCDATA(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 616))
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  PCondFlushLine(a1, v5);
  v6 = *(a1 + 128);
  SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
  AddString(a1 + 4776, "<![CDATA[");
  PPrintText(a1, 2, v5, a3);
  AddString(a1 + 4776, "]]>");
  PCondFlushLine(a1, v5);

  return SetOptionInt(a1, 2u, v6);
}

BOOL PPrintSection(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  if (*(a1 + 456))
  {
    v7 = 16;
  }

  else
  {
    v7 = 2;
    SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
  }

  AddString(a1 + 4776, "<![");
  PPrintText(a1, v7, a2, a3);
  AddString(a1 + 4776, "]>");

  return SetOptionInt(a1, 2u, v6);
}

BOOL PPrintAsp(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v6 = a1[116];
  v7 = a1[32];
  if (a1[116])
  {
    v8 = a1[118] == 0;
    a1[118];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
  }

  AddString((a1 + 1194), "<%");
  if (v6)
  {
    v9 = 16;
  }

  else
  {
    v9 = 2;
  }

  PPrintText(a1, v9, a2, a3);
  AddString((a1 + 1194), "%>");

  return SetOptionInt(a1, 2u, v7);
}

BOOL PPrintJste(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v6 = a1[32];
  if (!a1[116])
  {
    SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
  }

  AddString((a1 + 1194), "<#");
  if (a1[118])
  {
    v7 = 16;
  }

  else
  {
    v7 = 2;
  }

  PPrintText(a1, v7, a2, a3);
  AddString((a1 + 1194), "#>");

  return SetOptionInt(a1, 2u, v6);
}

BOOL PPrintPhp(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  if (*(a1 + 480))
  {
    v7 = 16;
  }

  else
  {
    v7 = 2;
    SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
  }

  AddString(a1 + 4776, "<?");
  PPrintText(a1, v7, a2, a3);
  AddString(a1 + 4776, "?>");

  return SetOptionInt(a1, 2u, v6);
}

uint64_t PCondFlushLine(uint64_t result, int a2)
{
  v2 = *(result + 4788);
  if (v2)
  {
    v4 = result;
    if (*(result + 128) <= ((*(result + 4804) & ~(*(result + 4804) >> 31)) + v2))
    {
      WrapLine(result);
    }

    if (WantIndent(v4))
    {
      v5 = *(v4 + 4804);
      if (v5 >= 1)
      {
        do
        {
          WriteChar(32, *(v4 + 4840));
          --v5;
        }

        while (v5);
      }
    }

    LODWORD(v6) = *(v4 + 4788);
    if (v6)
    {
      v7 = 0;
      do
      {
        WriteChar(*(*(v4 + 4776) + 4 * v7++), *(v4 + 4840));
        v6 = *(v4 + 4788);
      }

      while (v7 < v6);
    }

    v8 = *(v4 + 4812);
    if ((v8 & 0x80000000) == 0 && v8 < v6)
    {
      WriteChar(92, *(v4 + 4840));
    }

    ResetLine(v4 + 4776);
    result = WriteChar(10, *(v4 + 4840));
    *(v4 + 4804) = a2;
    *(v4 + 4788) = 0;
  }

  return result;
}

void PPrintTag(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a1 + 320);
  v9 = *(a1 + 296);
  v10 = *(a1 + 288);
  v11 = *(a4 + 64);
  AddChar(a1 + 4776, 60);
  if (*(a4 + 80) == 6)
  {
    AddChar(a1 + 4776, 47);
  }

  v20 = 0;
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      do
      {
        v20 = v12;
        if ((v12 & 0x80) != 0)
        {
          v11 += GetUTF8(v11, &v20);
          LODWORD(v12) = v20;
        }

        else if (v8)
        {
          LODWORD(v12) = ToUpper(v12);
          v20 = v12;
        }

        AddChar(a1 + 4776, v12);
        v13 = *++v11;
        v12 = v13;
      }

      while (v13);
    }
  }

  if (*(a1 + 288) && *(a1 + 512) && !GetAttrByName(a4, "xml:space") && XMLPreserveWhiteSpace(a1, a4))
  {
    AddAttribute(a1, a4, "xml:space", "preserve");
  }

  for (i = *(a4 + 40); i; i = *i)
  {
    if (i[5])
    {
      PPrintAttribute(a1, a3, a4, i);
    }

    else if (i[2])
    {
      AddChar(a1 + 4776, 32);
      PPrintAsp(a1, a3, i[2]);
    }

    else if (i[3])
    {
      AddChar(a1 + 4776, 32);
      PPrintPhp(a1, a3, i[3]);
    }
  }

  if (v10 | v9 && (*(a4 + 80) == 7 || nodeCMIsEmpty(a4)))
  {
    AddChar(a1 + 4776, 32);
    AddChar(a1 + 4776, 47);
  }

  AddChar(a1 + 4776, 62);
  v16 = *(a4 + 80) != 7 || v9 != 0;
  if ((a2 & 1) == 0 && v16)
  {
    v17 = *(a1 + 128);
    CheckWrapIndent(a1, a3);
    if (*(a1 + 4788) + a3 >= v17)
    {
      if ((a2 & 8) != 0 || (v19 = *(a4 + 56)) != 0 && *v19 == 17 || AfterSpace(*(a1 + 104), a4))
      {
        PCondFlushLine(a1, a3);
      }
    }

    else if ((a2 & 8) == 0 && (!nodeCMIsInline(a4) || (v18 = *(a4 + 56)) != 0 && *v18 == 17))
    {
      if (AfterSpace(*(a1 + 104), a4))
      {
        *(a1 + 4792) = *(a1 + 4788);
      }
    }
  }
}

void PPrintEndTag(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 320);
  v4 = *(a2 + 64);
  v7 = 0;
  AddString(a1 + 4776, "</");
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      do
      {
        v7 = v5;
        if ((v5 & 0x80) != 0)
        {
          v4 += GetUTF8(v4, &v7);
          LODWORD(v5) = v7;
        }

        else if (v3)
        {
          LODWORD(v5) = ToUpper(v5);
          v7 = v5;
        }

        AddChar(a1 + 4776, v5);
        v6 = *++v4;
        v5 = v6;
      }

      while (v6);
    }
  }

  AddChar(a1 + 4776, 62);
}

void PPrintScriptStyle(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 296);
  v9 = a4;
  while (1)
  {
    v10 = v9[7];
    if (v10)
    {
      if (*v10 == 46)
      {
        break;
      }
    }

    v9 = *v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  PFlushLine(a1, a3);
LABEL_7:
  PPrintTag(a1, a2, a3, a4);
  PFlushLine(a1, 0);
  v27 = v8;
  if (v8 && a4[3])
  {
    v11 = AttrGetById(a4, 142);
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = v11;
    v13 = v11[6];
    if (!v13)
    {
      goto LABEL_19;
    }

    if (!tmbstrcasecmp(v13, "text/javascript"))
    {
      v17 = "//";
      v16 = &unk_299967BF2;
      goto LABEL_21;
    }

    v14 = v12[6];
    if (v14)
    {
      if (!tmbstrcasecmp(v14, "text/css"))
      {
        goto LABEL_21;
      }

      v15 = v12[6];
      v16 = &unk_299967BF2;
      if (v15)
      {
        if (tmbstrcasecmp(v15, "text/vbscript"))
        {
          v17 = &unk_299967BF2;
        }

        else
        {
          v17 = "'";
        }

LABEL_21:
        v20 = a4[3];
        if (v20[20] == 4 && tmbsubstrn(*(*(a1 + 104) + 104) + v20[18], (v20[19] - v20[18] + 1), "<![CDATA["))
        {
          v19 = v17;
          v18 = 1;
        }

        else
        {
          v21 = *(a1 + 128);
          SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
          v19 = v17;
          AddString(a1 + 4776, v17);
          AddString(a1 + 4776, "<![CDATA[");
          AddString(a1 + 4776, v16);
          PCondFlushLine(a1, a3);
          SetOptionInt(a1, 2u, v21);
          v18 = 0;
        }

        goto LABEL_25;
      }
    }

    else
    {
LABEL_19:
      v16 = &unk_299967BF2;
    }

    v17 = &unk_299967BF2;
    goto LABEL_21;
  }

  v18 = 0;
  v16 = &unk_299967BF2;
  v19 = &unk_299967BF2;
LABEL_25:
  v22 = a4[3];
  if (!v22)
  {
    goto LABEL_31;
  }

  v23 = -1;
  do
  {
    PPrintTree(a1, a2 | 0x19u, a3, v22);
    if (v22 == a4[4])
    {
      v23 = TextEndsWithNewline(*(a1 + 104), v22, 16);
    }

    v22 = *(v22 + 16);
  }

  while (v22);
  if (v23 < 0)
  {
LABEL_31:
    PCondFlushLine(a1, a3);
  }

  v24 = a4[3];
  if (v24)
  {
    v25 = v18;
  }

  else
  {
    v25 = 1;
  }

  if (v27 && (v25 & 1) == 0)
  {
    v26 = *(a1 + 128);
    SetOptionInt(a1, 2u, 0xFFFFFFFFLL);
    AddString(a1 + 4776, v19);
    AddString(a1 + 4776, "]]>");
    AddString(a1 + 4776, v16);
    SetOptionInt(a1, 2u, v26);
    PCondFlushLine(a1, a3);
    v24 = a4[3];
  }

  if (v24 && *(a1 + 4804) != a3)
  {
    *(a1 + 4804) = a3;
  }

  PPrintEndTag(a1, a4);
  if (!*(a1 + 264) && a4[2] && !nodeHasCM(a4, 16) && !nodeIsText(a4))
  {

    PFlushLine(a1, a3);
  }
}

BOOL ShouldIndent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (v4 && *v4 == 107)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (*(a2 + 24) && nodeHasCM(a2, 0x40000))
    {
      v5 = *(a2 + 24);
      if (v5)
      {
        while (1)
        {
          result = nodeHasCM(v5, 8);
          if (result)
          {
            break;
          }

          v5 = *(v5 + 16);
          if (!v5)
          {
            return result;
          }
        }

        return 1;
      }

      return 0;
    }

    if (nodeHasCM(a2, 0x4000))
    {
      return 0;
    }

    v7 = *(a2 + 56);
    if (v7)
    {
      v8 = *v7 - 48;
      v9 = v8 > 0x3F;
      v10 = (1 << v8) & 0x8000000080000001;
      if (!v9 && v10 != 0)
      {
        return 0;
      }
    }
  }

  if (nodeHasCM(a2, 3072))
  {
    return 1;
  }

  v12 = *(a2 + 56);
  if (v12)
  {
    if (*v12 == 64)
    {
      return 1;
    }
  }

  if (nodeHasCM(a2, 16))
  {
    return 0;
  }

  return *(a2 + 24) != 0;
}

void PPrintXMLTree(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return;
  }

  v5 = a3;
  v8 = a1[74];
  v9 = *(a4 + 80);
  if (v9 <= 7)
  {
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_48;
        }

        PPrintDocType(a1, a3, a4);
      }

      else
      {
        for (i = *(a4 + 24); i; i = *(i + 16))
        {
          PPrintXMLTree(a1, a2, v5, i);
        }
      }
    }

    else
    {
      switch(v9)
      {
        case 2:
          PCondFlushLine(a1, a3);

          PPrintComment(a1, v5, a4);
          break;
        case 3:

          PPrintPI(a1, a3, a4);
          break;
        case 4:

          PPrintText(a1, a2, a3, a4);
          break;
        default:
          goto LABEL_48;
      }
    }
  }

  else
  {
    if (v9 <= 10)
    {
      if (v9 == 8)
      {

        PPrintCDATA(a1, a3, a4);
      }

      else if (v9 == 9)
      {

        PPrintSection(a1, a3, a4);
      }

      else
      {

        PPrintAsp(a1, a3, a4);
      }

      return;
    }

    switch(v9)
    {
      case 11:

        PPrintJste(a1, a3, a4);
        break;
      case 12:

        PPrintPhp(a1, a3, a4);
        break;
      case 13:

        PPrintXmlDecl(a1, a3, a4);
        return;
      default:
LABEL_48:
        if (nodeHasCM(a4, 1) || *(a4 + 80) == 7 && !v8)
        {
          PCondFlushLine(a1, v5);

          PPrintTag(a1, a2, v5, a4);
          return;
        }

        v11 = a1[30];
        v12 = *(a4 + 24);
        if (v12)
        {
          while (1)
          {
            IsText = nodeIsText(v12);
            v14 = !IsText;
            if (IsText)
            {
              break;
            }

            v12 = *(v12 + 16);
            if (!v12)
            {
              goto LABEL_60;
            }
          }

          v11 = 0;
        }

        else
        {
          v14 = 1;
        }

LABEL_60:
        PCondFlushLine(a1, v5);
        if (XMLPreserveWhiteSpace(a1, a4))
        {
          LODWORD(v5) = 0;
          v14 = 1;
          v15 = 0;
        }

        else
        {
          v15 = v11 + v5;
        }

        PPrintTag(a1, a2, v5, a4);
        v16 = *(a4 + 24);
        if (v14)
        {
          if (!v16)
          {
LABEL_71:

            PPrintEndTag(a1, a4);
            return;
          }

          PFlushLine(a1, v15);
          v16 = *(a4 + 24);
        }

        for (; v16; v16 = *(v16 + 16))
        {
          PPrintXMLTree(a1, a2, v15, v16);
        }

        if (v14 && *(a4 + 24))
        {
          PCondFlushLine(a1, v5);
        }

        goto LABEL_71;
    }
  }
}

_DWORD *WrapLine(_DWORD *result)
{
  if (result[1198])
  {
    v1 = result;
    if (!WantIndent(result))
    {
      goto LABEL_6;
    }

    v2 = v1[1201];
    if (v2 < 1)
    {
      goto LABEL_6;
    }

    do
    {
      WriteChar(32, *(v1 + 605));
      --v2;
    }

    while (v2);
    LODWORD(v3) = v1[1198];
    if (v3)
    {
LABEL_6:
      v4 = 0;
      do
      {
        WriteChar(*(*(v1 + 597) + 4 * v4++), *(v1 + 605));
        v3 = v1[1198];
      }

      while (v4 < v3);
    }

    v5 = v1[1203];
    if (!v5 || (v5 >= 1 ? (v6 = v5 < v3) : (v6 = 0), v6))
    {
      WriteChar(92, *(v1 + 605));
    }

    WriteChar(10, *(v1 + 605));

    return ResetLineAfterWrap((v1 + 1194));
  }

  return result;
}

uint64_t ResetLineAfterWrap(uint64_t result)
{
  v2 = *(result + 12);
  v1 = *(result + 16);
  if (v2 <= v1)
  {
    v9 = 0;
  }

  else
  {
    v3 = *result;
    v4 = (*result + 4 * v1);
    v5 = *result + 4 * v2;
    v6 = *(result + 32);
    if (v6)
    {
      if (v6 < 1 || v6 >= v1)
      {
        do
        {
          if (*v4 != 32)
          {
            break;
          }

          ++v4;
          LODWORD(v1) = v1 + 1;
          *(result + 16) = v1;
        }

        while (v4 < v5);
      }
    }

    if (v4 < v5)
    {
      do
      {
        v8 = *v4++;
        *v3++ = v8;
      }

      while (v4 < v5);
      LODWORD(v2) = *(result + 12);
      LODWORD(v1) = *(result + 16);
    }

    v9 = v2 - v1;
  }

  *(result + 12) = v9;
  return ResetLine(result);
}

uint64_t TextEndsWithNewline(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x12) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!nodeIsText(a2))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 72);
  v5 = *(a2 + 76);
  if (v5 <= v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5 - 1;
  v8 = *(a1 + 104);
  if (v5 - 1 <= v6)
  {
    v9 = *(a2 + 76);
  }

  else
  {
    v9 = *(a2 + 76);
    v10 = (v8 + v7);
    while (1)
    {
      v11 = *v10--;
      v12 = (1 << v11) & 0x100002200;
      if (v11 > 0x20 || v12 == 0)
      {
        break;
      }

      v14 = v9 - 2;
      --v9;
      if (v6 >= v14)
      {
        v9 = v6 + 1;
        v7 = *(a2 + 72);
        goto LABEL_16;
      }
    }

    v7 = v9 - 1;
  }

LABEL_16:
  v16 = v5 - v9;
  if (*(v8 + v7) == 10)
  {
    return v16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t TextStartsWithWhitespace(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  if ((a4 & 0x12) == 0 || !nodeIsText(a2))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 72);
  v7 = *(a2 + 76);
  v9 = v7 <= v8 || v8 > a3;
  if (v9 || v7 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = a3;
  while (1)
  {
    v12 = *(*(a1 + 104) + v11);
    v9 = v12 > 0x20;
    v13 = (1 << v12) & 0x100002200;
    if (v9 || v13 == 0)
    {
      break;
    }

    if (v7 == ++v11)
    {
      LODWORD(v11) = *(a2 + 76);
      break;
    }
  }

  result = v11 - a3;
  if (v11 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

_DWORD *CheckWrapIndent(_DWORD *result, int a2)
{
  if (*(result + 16) <= ((result[1201] & ~(result[1201] >> 31)) + result[1197]))
  {
    v3 = result;
    result = WrapLine(result);
    if ((v3[1201] & 0x80000000) != 0)
    {
      v3[1201] = a2;
    }
  }

  return result;
}

void PPrintChar(uint64_t a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v36 = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 160);
  v12 = *(a1 + 416);
  if (a2 == 32 && (a3 & 0x17) == 0)
  {
    if ((a3 & 8) != 0)
    {
      if (*(a1 + 408) || *(a1 + 280))
      {
        v16 = "&#160;";
      }

      else
      {
        v16 = "&nbsp;";
      }

      v17 = *MEMORY[0x29EDCA608];
      goto LABEL_35;
    }

    *(a1 + 4792) = *(a1 + 4788);
  }

  if ((a3 & 0x12) != 0)
  {
LABEL_6:
    v13 = *MEMORY[0x29EDCA608];
    v14 = a1 + 4776;
LABEL_7:

    AddChar(v14, a2);
    return;
  }

  if (a2 != 38)
  {
    if (a2 == 62)
    {
      v18 = *MEMORY[0x29EDCA608];
      v16 = "&gt;";
      goto LABEL_35;
    }

    if (a2 == 60)
    {
      v15 = *MEMORY[0x29EDCA608];
      v16 = "&lt;";
      goto LABEL_35;
    }

    if (a2 == 34 && v12)
    {
      v20 = *MEMORY[0x29EDCA608];
      v16 = "&quot;";
      goto LABEL_35;
    }

    if (a2 == 39 && v12)
    {
      v21 = *MEMORY[0x29EDCA608];
      v16 = "&#39;";
      goto LABEL_35;
    }

    if (a2 == 160 && v11)
    {
      if (!*(a1 + 424))
      {
        v28 = *MEMORY[0x29EDCA608];
        v14 = a1 + 4776;
        a2 = 160;
        goto LABEL_7;
      }

      if (*(a1 + 408) || *(a1 + 280))
      {
        v22 = *MEMORY[0x29EDCA608];
        v16 = "&#160;";
      }

      else
      {
        v34 = *MEMORY[0x29EDCA608];
        v16 = "&nbsp;";
      }

      goto LABEL_35;
    }

LABEL_38:
    if (v11 <= 0xD)
    {
      if (((1 << v11) & 0xE10) != 0)
      {
        if ((a3 & 1) == 0 && *(a1 + 760))
        {
          v24 = 0x2000;
          v25 = &qword_299965E38;
          while (v24 <= a2)
          {
            if (v24 == a2)
            {
              v29 = *(a1 + 4788);
              if ((*(v25 - 1) & 0xFFFFFFFE) != 4)
              {
                ++v29;
              }

              *(a1 + 4792) = v29;
              break;
            }

            v26 = *v25;
            v25 += 2;
            v24 = v26;
            if (!v26)
            {
              break;
            }
          }
        }

        if ((v11 - 9) < 3 || v11 == 4)
        {
          goto LABEL_6;
        }

        goto LABEL_64;
      }

      if (((1 << v11) & 0x2020) != 0)
      {
        goto LABEL_6;
      }

      if (v11 == 12)
      {
        AddChar(a1 + 4776, a2);
        if ((a3 & 1) == 0 && (v9 & 0xFF00) == 0xA100 && *(a1 + 760))
        {
          v27 = *(a1 + 4788);
          if ((v9 - 41389) < 0xFFFFFFB0 || (v9 & 1) == 0)
          {
            ++v27;
          }

          *(a1 + 4792) = v27;
        }

        goto LABEL_82;
      }
    }

    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_64:
    if (v11 == 3)
    {
      if (a2 < 0x100)
      {
        if (a2 - 127 > 0x20)
        {
          goto LABEL_6;
        }

        goto LABEL_80;
      }

      v30 = HTMLVersion(a1);
      if (*(a1 + 408))
      {
        goto LABEL_80;
      }

      v31 = EntityName(v9, v30);
      if (!v31)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (*(a1 + 280))
      {
        if (a2 < 0x80 || v11 != 1)
        {
          goto LABEL_6;
        }

        goto LABEL_80;
      }

      if (v11 != 1 || a2 <= 0x7E && (a2 > 0x1F || a2 == 9))
      {
        goto LABEL_6;
      }

      v32 = HTMLVersion(a1);
      if (*(a1 + 408) || (v31 = EntityName(v9, v32)) == 0)
      {
LABEL_80:
        tmbsnprintf(v35, 128, "&#%u;", a4, a5, a6, a7, a8, v9);
LABEL_81:
        AddString(a1 + 4776, v35);
LABEL_82:
        v33 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    tmbsnprintf(v35, 128, "&%s;", a4, a5, a6, a7, a8, v31);
    goto LABEL_81;
  }

  if (!*(a1 + 432))
  {
    goto LABEL_38;
  }

  if (!v11)
  {
    goto LABEL_6;
  }

  v19 = *MEMORY[0x29EDCA608];
  v16 = "&amp;";
LABEL_35:
  v23 = a1 + 4776;

  AddString(v23, v16);
}