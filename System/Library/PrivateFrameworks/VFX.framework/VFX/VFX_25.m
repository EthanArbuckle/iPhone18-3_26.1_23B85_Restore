uint64_t sub_1AF28C6CC(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = xmmword_1F24EBE58;
  v4 = sub_1AF2768E0();
  sub_1AF276AA4(v4, &v6);
  sub_1AF276A24(v4, a3);
  return v4;
}

BOOL sub_1AF28C730(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_player(a1, a2, a3, a4);
  v8 = objc_msgSend_currentItem(v4, v5, v6, v7);
  v12 = objc_msgSend_asset(v8, v9, v10, v11);
  v15 = objc_msgSend_tracksWithMediaCharacteristic_(v12, v13, *MEMORY[0x1E6987508], v14);
  return objc_msgSend_count(v15, v16, v17, v18) == 0;
}

uint64_t sub_1AF28CAE8(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 96);
  *a3 = *(result + 104);
  *a4 = *(result + 112);
  return result;
}

uint64_t sub_1AF28D038(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 80);
  *a3 = *(result + 88);
  *a4 = *(result + 96);
  return result;
}

_VFXUIKitSourceRegistry *sub_1AF28D51C()
{
  result = objc_alloc_init(_VFXUIKitSourceRegistry);
  qword_1EB658828 = result;
  return result;
}

_VFXUIApplicationObserver *sub_1AF28D874()
{
  result = objc_alloc_init(_VFXUIApplicationObserver);
  qword_1EB658830 = result;
  return result;
}

void sub_1AF28DD50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_uiView(*(a1 + 32), a2, a3, a4);
  objc_msgSend_bounds(v5, v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [_VFXSnapshotWindow alloc];
  v72 = objc_msgSend_initWithFrame_(v17, v18, v19, v20, v10, v12, v14, v16);
  objc_msgSend_setHidden_(v72, v21, 1, v22);
  LODWORD(v23) = 1.0;
  objc_msgSend_setCharge_(v72, v24, v25, v26, v23);
  objc_msgSend_setWindowLevel_(v72, v27, v28, v29, 10000.0);
  v33 = objc_msgSend_uiView(*(a1 + 32), v30, v31, v32);
  objc_msgSend_addSubview_(v72, v34, v33, v35);
  v39 = objc_msgSend_subviews(v72, v36, v37, v38);
  Object = objc_msgSend_firstObject(v39, v40, v41, v42);
  objc_msgSend_setNeedsDisplay(Object, v44, v45, v46);
  objc_msgSend_setNeedsDisplay(v72, v47, v48, v49);
  v53 = objc_msgSend_uiView(*(a1 + 32), v50, v51, v52);
  *(*(a1 + 32) + 32) = objc_msgSend_isOpaque(v53, v54, v55, v56);
  *(*(a1 + 32) + 24) = objc_msgSend_layer(v72, v57, v58, v59);
  v63 = objc_msgSend_superlayer(*(*(a1 + 32) + 24), v60, v61, v62);
  objc_msgSend_setValue_forKey_(v63, v64, MEMORY[0x1E695E118], @"VFXIsBackingViewAsMaterialPropertyTag");
  objc_msgSend_setUiWindow_(*(a1 + 32), v65, v72, v66);
  objc_msgSend_setPosition_(v72, v67, v68, v69, -10000.0, 0.0);
  objc_msgSend_setHidden_(v72, v70, 0, v71);
}

void sub_1AF28E034(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_1AF28E1B0(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t sub_1AF28EC44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = INFINITY;
  v5 = objc_msgSend_metalTextureWithEngineContext_textureSampler_nextFrameTime_status_(a2, a2, a1, a3, &v7, a4);
  sub_1AF12ECD8(a1, v7);
  return v5;
}

void sub_1AF28ECA0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = INFINITY;
  objc_msgSend_renderWithEngineContext_textureSampler_nextFrameTime_(a2, a2, a1, a3, &v4);
  sub_1AF12ECD8(a1, v4);
}

uint64_t sub_1AF28ED44(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = objc_msgSend_textureSource(a3, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v9 = xmmword_1F24EBEE8;
    v7 = sub_1AF2768E0();
    sub_1AF276AA4(v7, &v9);
    sub_1AF276A24(v7, v6);
  }

  else
  {
    sub_1AF12ED38(a1);
    return 0;
  }

  return v7;
}

VFXSourceRendererRegistry *sub_1AF28EED0()
{
  result = objc_alloc_init(VFXSourceRendererRegistry);
  qword_1EB64FB20 = result;
  return result;
}

uint64_t sub_1AF290524(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if (objc_msgSend_isEqualToString_(result, a2, *MEMORY[0x1E69797F0], a4))
    {
      return 0;
    }

    else if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x1E69797E8], v6))
    {
      return 1;
    }

    else if (objc_msgSend_isEqualToString_(v4, v7, *MEMORY[0x1E69797D8], v8))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1AF290614(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = MEMORY[0x1E69797D8];
      return *v1;
    }

    if (a1 == 3)
    {
      v1 = MEMORY[0x1E69797E0];
      return *v1;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = MEMORY[0x1E69797F0];
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = MEMORY[0x1E69797E8];
      return *v1;
    }
  }

  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3D78();
  }

  return 0;
}

void *sub_1AF290784(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_count(a1, a2, a3, a4);
  if (result)
  {
    v8 = objc_msgSend_sortedArrayUsingComparator_(a1, v6, &unk_1F24EBEF8, v7);
    v12 = objc_msgSend_count(v8, v9, v10, v11);
    v13 = sub_1AF1151C0(v12);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v29, v33, 16);
    if (v15)
    {
      v19 = v15;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v8);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          objc_msgSend_time(v22, v16, v17, v18);
          v24 = v23;
          v28 = objc_msgSend_eventBlock(v22, v25, v26, v27);
          sub_1AF115228(v13, v28, v24);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v29, v33, 16);
      }

      while (v19);
    }

    return v13;
  }

  return result;
}

void *sub_1AF290934(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_1AF1155D8(a1);
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v3, v2, v4);
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v7 = sub_1AF11567C(a1, i);
      v8 = sub_1AF115620(a1, i);
      *&v9 = v7;
      v12 = objc_msgSend_animationEventWithKeyTime_block_(VFXAnimationEvent, v10, v8, v11, v9);
      objc_msgSend_addObject_(v5, v13, v12, v14);
    }
  }

  return v5;
}

uint64_t sub_1AF290E58(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_fromValue(a1, v2, v3, v4))
    {
      v8 = objc_msgSend_fromValue(a1, v5, v6, v7);
    }

    else if (objc_msgSend_toValue(a1, v5, v6, v7))
    {
      v8 = objc_msgSend_toValue(a1, v28, v29, v30);
    }

    else
    {
      v8 = objc_msgSend_byValue(a1, v28, v29, v30);
    }

    v22 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      v34 = a1;
      v27 = "Warning: unable to infer the type of a basic animation: %@";
      goto LABEL_18;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v12 = objc_msgSend_values(a1, v9, v10, v11);
  if (!objc_msgSend_count(v12, v13, v14, v15) || (v19 = objc_msgSend_values(a1, v16, v17, v18), v22 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0, v21), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      v34 = a1;
      v27 = "Warning: unable to infer the type of a keyframed animation: %@";
LABEL_18:
      _os_log_impl(&dword_1AF0CE000, v26, OS_LOG_TYPE_DEFAULT, v27, &v33, 0xCu);
    }

    return 0;
  }

LABEL_13:
  v31 = objc_msgSend_objCType(v22, v23, v24, v25);

  return sub_1AF376144(v31);
}

uint64_t sub_1AF291040(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_animationTimingFunction(VFXTransaction, a2, a3, a4);
  if (!result)
  {
    v7 = MEMORY[0x1E69793D0];
    v8 = *MEMORY[0x1E6979EA0];

    return objc_msgSend_functionWithName_(v7, v5, v8, v6);
  }

  return result;
}

id sub_1AF291090(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 2)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3DB4();
    }

    return 0;
  }

  v5 = a3;
  v6 = a2;
  if (!a2)
  {
    if (objc_msgSend_toValue(a1, a2, a3, a4))
    {
      v11 = objc_msgSend_toValue(a1, v8, v9, v10);
LABEL_11:
      v21 = objc_msgSend_objCType(v11, v12, v13, v14);
      v6 = sub_1AF376144(v21);
      goto LABEL_12;
    }

    if (objc_msgSend_fromValue(a1, v8, v9, v10))
    {
      v11 = objc_msgSend_fromValue(a1, v15, v16, v17);
      goto LABEL_11;
    }

    if (objc_msgSend_byValue(a1, v15, v16, v17))
    {
      v11 = objc_msgSend_byValue(a1, v18, v19, v20);
      goto LABEL_11;
    }

    v6 = 0;
  }

LABEL_12:
  v22 = sub_1AF1CD954(v6);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = sub_1AF1CDA60(v22);
  v25 = sub_1AF113D84();
  sub_1AF291244(v25, a1, v26, v27);
  if (objc_msgSend_toValue(a1, v28, v29, v30))
  {
    v34 = objc_msgSend_toValue(a1, v31, v32, v33);
    if (sub_1AF2912D0(v34, v6, v5, v24))
    {
      sub_1AF113F9C(v25, v23);
    }
  }

  if (objc_msgSend_fromValue(a1, v31, v32, v33))
  {
    v38 = objc_msgSend_fromValue(a1, v35, v36, v37);
    if (sub_1AF2912D0(v38, v6, v5, v24))
    {
      sub_1AF11407C(v25, v23);
    }
  }

  if (objc_msgSend_byValue(a1, v35, v36, v37))
  {
    v42 = objc_msgSend_byValue(a1, v39, v40, v41);
    if (sub_1AF2912D0(v42, v6, v5, v24))
    {
      sub_1AF11415C(v25, v23);
    }
  }

  CFRelease(v23);

  return v25;
}

void sub_1AF291244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1AF298C80(a1, a2, a3, a4);
  v9 = objc_msgSend_keyPath(a2, v6, v7, v8);
  v10 = sub_1AF28A40C(v9);
  sub_1AF112944(a1, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  isAdditive = objc_msgSend_isAdditive(a2, v11, v12, v13);
  sub_1AF112D10(a1, isAdditive);
  isCumulative = objc_msgSend_isCumulative(a2, v15, v16, v17);

  sub_1AF112DC8(a1, isCumulative);
}

uint64_t sub_1AF2912D0(void *a1, const char *a2, int a3, void *a4)
{
  if (a2 == 5)
  {
    if (a3 == 2)
    {
      v5 = objc_msgSend_copyCFXImageFromImage_(VFXMaterialProperty, a2, a1, a4);
      result = 0;
      if (a4)
      {
        if (v5)
        {
          *a4 = v5;
          v7 = v5;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_1AF376368(a1, a4, a2, a4);
  }

  return result;
}

id sub_1AF291368(void *a1, uint64_t a2, char a3)
{
  v188 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_cfxAnimation(a1, v6, v7, v8);
    if (v9)
    {
      v10 = v9;
      sub_1AF291974(v9, a1);
      return v10;
    }
  }

  if (!a2)
  {
    v11 = objc_msgSend_values(a1, v6, v7, v8);
    if (objc_msgSend_count(v11, v12, v13, v14))
    {
      v18 = objc_msgSend_values(a1, v15, v16, v17);
      v21 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, 0, v20);
      v25 = objc_msgSend_objCType(v21, v22, v23, v24);
      a2 = sub_1AF376144(v25);
    }

    else
    {
      a2 = 0;
    }
  }

  if (sub_1AF288070(a2) >= 0x41)
  {
    v29 = sub_1AF0D5194();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3E2C();
    }

    return 0;
  }

  if (objc_msgSend_path(a1, v26, v27, v28))
  {
    NSLog(&cfstr_Cakeyframeanim.isa);
    return 0;
  }

  v34 = objc_msgSend_values(a1, v30, v31, v32);
  v38 = objc_msgSend_count(v34, v35, v36, v37);
  if (!v38)
  {
    v99 = sub_1AF0D5194();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3DF0();
    }

    return 0;
  }

  v174 = v38;
  v175 = sub_1AF11D7D8();
  sub_1AF291244(v175, a1, v39, v40);
  v44 = objc_msgSend_keyTimes(a1, v41, v42, v43);
  v48 = objc_msgSend_values(a1, v45, v46, v47);
  v52 = objc_msgSend_timingFunctions(a1, v49, v50, v51);
  v172 = objc_msgSend_calculationMode(a1, v53, v54, v55);
  v59 = objc_msgSend_tensionValues(a1, v56, v57, v58);
  v63 = objc_msgSend_continuityValues(a1, v60, v61, v62);
  v67 = objc_msgSend_biasValues(a1, v64, v65, v66);
  v179 = v52;
  v180 = objc_msgSend_count(v44, v68, v69, v70);
  v74 = objc_msgSend_count(v52, v71, v72, v73);
  v178 = v59;
  v78 = objc_msgSend_count(v59, v75, v76, v77);
  v177 = v63;
  v82 = objc_msgSend_count(v63, v79, v80, v81);
  v176 = v67;
  v86 = objc_msgSend_count(v67, v83, v84, v85);
  objc_msgSend_duration(a1, v87, v88, v89);
  v91 = v90;
  v171 = *MEMORY[0x1E6979590];
  if (objc_msgSend_isEqualToString_(v172, v92, *MEMORY[0x1E6979590], v93))
  {
    v170 = v74;
    v98 = a2 == 1 || a2 == 6;
    goto LABEL_33;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v172, v94, *MEMORY[0x1E6979598], v96);
  v98 = a2 == 1 || a2 == 6;
  if (isEqualToString)
  {
    v170 = v74;
LABEL_33:
    v102 = objc_msgSend_count(v179, v94, v95, v96);
    v106 = !v98;
    if (!v102)
    {
      v106 = 1;
    }

    v173 = v106;
    if (objc_msgSend_count(v179, v103, v104, v105))
    {
      v107 = v98;
    }

    else
    {
      v107 = 0;
    }

    v108 = v174;
    v111 = sub_1AF11C4D0(v174, a2, a3, v173, v107);
    v186 = 0u;
    v187 = 0u;
    __src = 0u;
    v185 = 0u;
    if (v173)
    {
      v112 = 0;
      v113 = 0.0;
      while (v44)
      {
        if (v180 > v112)
        {
          v114 = objc_msgSend_objectAtIndex_(v44, v109, v112, v110);
          objc_msgSend_doubleValue(v114, v115, v116, v117);
LABEL_44:
          v113 = v91 * v118;
        }

        v119 = 0.0;
        v120 = 0.0;
        if (v78 > v112)
        {
          v121 = objc_msgSend_objectAtIndex_(v178, v109, v112, v110);
          objc_msgSend_floatValue(v121, v122, v123, v124);
          v120 = v125;
        }

        if (v82 > v112)
        {
          v126 = objc_msgSend_objectAtIndex_(v177, v109, v112, v110);
          objc_msgSend_floatValue(v126, v127, v128, v129);
          v119 = v130;
        }

        v131 = 0.0;
        if (v86 > v112)
        {
          v132 = objc_msgSend_objectAtIndex_(v176, v109, v112, v110);
          objc_msgSend_floatValue(v132, v133, v134, v135);
          v131 = v136;
        }

        v138 = objc_msgSend_objectAtIndex_(v48, v109, v112, v110);
        sub_1AF376368(v138, &__src, a2, v139);
        v137 = v113;
        v113 = v137;
        sub_1AF11C604(v111, v112++, &__src, 0, 0, v113, v120, v119, v131);
        if (v174 == v112)
        {
          goto LABEL_69;
        }
      }

      v118 = (v112 / v174);
      goto LABEL_44;
    }

    v74 = v170;
    goto LABEL_55;
  }

  v108 = v174;
  v111 = sub_1AF11C4D0(v174, a2, a3, 0, 0);
  v186 = 0u;
  v187 = 0u;
  __src = 0u;
  v185 = 0u;
LABEL_55:
  v141 = 0;
  v182 = 0;
  v183 = 0;
  v181 = 0;
  v142 = 0.0;
  do
  {
    if (!v44)
    {
      v147 = (v141 / v108);
      goto LABEL_60;
    }

    if (v180 > v141)
    {
      v143 = objc_msgSend_objectAtIndex_(v44, v109, v141, v110);
      objc_msgSend_doubleValue(v143, v144, v145, v146);
LABEL_60:
      v142 = v91 * v147;
    }

    v148 = objc_msgSend_objectAtIndex_(v48, v109, v141, v110);
    sub_1AF376368(v148, &__src, a2, v149);
    if (a2 == 6 || a2 == 1)
    {
      if (v74 > v141 && (v152 = objc_msgSend_objectAtIndex_(v179, v150, v141, v151)) != 0)
      {
        v154 = v152;
        v155 = &v182;
        objc_msgSend_getControlPointAtIndex_values_(v152, v153, 1, &v182);
        objc_msgSend_getControlPointAtIndex_values_(v154, v156, 2, &v181);
        v157 = &v183;
      }

      else
      {
        v182 = 0;
        v157 = &v183;
        v155 = &v182;
      }
    }

    else
    {
      v155 = 0;
      v157 = 0;
    }

    v158 = v142;
    v142 = v158;
    sub_1AF11C604(v111, v141, &__src, v157, v155, v158, 0.0, 0.0, 0.0);
    v183 = v181;
    ++v141;
  }

  while (v108 != v141);
LABEL_69:
  v159 = objc_msgSend_calculationMode(a1, v109, v140, v110);
  if (objc_msgSend_isEqualToString_(v159, v160, *MEMORY[0x1E69795A0], v161))
  {
    v164 = 0;
    v165 = 1;
    goto LABEL_76;
  }

  if (objc_msgSend_isEqualToString_(v159, v162, *MEMORY[0x1E69795B8], v163))
  {
    v165 = 0;
    goto LABEL_73;
  }

  if (objc_msgSend_isEqualToString_(v159, v166, v171, v167))
  {
    v164 = 0;
    v165 = 2;
    goto LABEL_76;
  }

  if (objc_msgSend_isEqualToString_(v159, v168, *MEMORY[0x1E6979598], v169))
  {
    v165 = 2;
LABEL_73:
    v164 = 1;
LABEL_76:
    sub_1AF11CE9C(v111, v164);
    sub_1AF11CF38(v111, v165);
  }

  sub_1AF11D828(v175, v111);
  CFRelease(v111);
  return v175;
}

uint64_t sub_1AF291974(uint64_t a1, void *a2)
{
  v3 = sub_1AF113364(a1);
  objc_msgSend_delegate(a2, v4, v5, v6);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *v3 = sub_1AF295CA4;
  }

  v3[1] = sub_1AF295E98;
  return result;
}

__n128 *sub_1AF2919D4(void *a1, void *a2)
{
  v2 = sub_1AF291A30(a1, a2);
  if (v2)
  {
    v3 = sub_1AF1157BC();
    if (v3 == CFGetTypeID(v2))
    {
      v4 = sub_1AF114534(v2);
      if (v4)
      {
        v5 = v4;
        v6 = v4;
        return v5;
      }
    }
  }

  return v2;
}

id sub_1AF291A30(void *a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = sub_1AF0D5194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3EA0();
      }

      return 0;
    }

    v8 = objc_msgSend_keyPath(a1, v5, v6, v7);
    v13 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(a2, v9, v8, a1);
    if (v13 && (v14 = objc_msgSend___CFObject(a2, v10, v11, v12), (v15 = sub_1AF1DB564(v14, v13, 1)) != 0))
    {
      v16 = v15;
      if (sub_1AF1DE3A8(v15))
      {
        v17 = sub_1AF1DE538(v16);
        v18 = sub_1AF1DE4A8(v16);
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }

      CFRelease(v16);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = sub_1AF291090(a1, v17, v18, v21);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = sub_1AF0D5194();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF3F24();
        }

        v20 = 0;
        goto LABEL_26;
      }

      v22 = sub_1AF291368(a1, v17, v18);
    }

    v20 = v22;
    if (v13 && v22)
    {
      sub_1AF112944(v22, v13);
    }

LABEL_26:

    return v20;
  }

  return sub_1AF299000(a1, a2);
}

void *sub_1AF291C18(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == sub_1AF11D778())
    {
      if (sub_1AF11D8C8(a1))
      {
        v3 = objc_alloc_init(VFXKeyframeAnimation);
        objc_msgSend_setCfxAnimation_(v3, v4, a1, v5);
        v6 = v3;
LABEL_8:
        v7 = v6;
LABEL_36:
        v47 = sub_1AF112A24(a1);
        objc_msgSend_setDuration_(v7, v48, v49, v50, v47);
        return v7;
      }
    }

    else
    {
      if (v2 == sub_1AF1157BC())
      {
        v6 = sub_1AF299204(a1);
        goto LABEL_8;
      }

      if (v2 == sub_1AF11332C())
      {
        v7 = objc_msgSend_animation(MEMORY[0x1E6979318], v8, v9, v10);
        v11 = sub_1AF1140F0(a1);
        if (v11)
        {
          v12 = v11;
          v13 = sub_1AF1CDA60(v11);
          v14 = sub_1AF1CDAAC(v12);
          v18 = sub_1AF376790(v13, v14, v17, v15, v16);
          if (v18)
          {
            objc_msgSend_setFromValue_(v7, v19, v18, v20);
          }

          else
          {
            v24 = sub_1AF0D5194();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AF0CE000, v24, OS_LOG_TYPE_DEFAULT, "Warning: VFXSimpleAnimationToCABasicAnimation - can't convert startValue", buf, 2u);
            }
          }

          CFRelease(v12);
        }

        v25 = sub_1AF114010(a1);
        if (v25)
        {
          v26 = v25;
          v27 = sub_1AF1CDA60(v25);
          v28 = sub_1AF1CDAAC(v26);
          v32 = sub_1AF376790(v27, v28, v31, v29, v30);
          if (v32)
          {
            objc_msgSend_setToValue_(v7, v33, v32, v34);
          }

          else
          {
            v35 = sub_1AF0D5194();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *v53 = 0;
              _os_log_impl(&dword_1AF0CE000, v35, OS_LOG_TYPE_DEFAULT, "Warning: VFXSimpleAnimationToCABasicAnimation - can't convert endValue", v53, 2u);
            }
          }

          CFRelease(v26);
        }

        v36 = sub_1AF1141D0(a1);
        if (v36)
        {
          v37 = v36;
          v38 = sub_1AF1CDA60(v36);
          v39 = sub_1AF1CDAAC(v37);
          v43 = sub_1AF376790(v38, v39, v42, v40, v41);
          if (v43)
          {
            objc_msgSend_setByValue_(v7, v44, v43, v45);
          }

          else
          {
            v46 = sub_1AF0D5194();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *v52 = 0;
              _os_log_impl(&dword_1AF0CE000, v46, OS_LOG_TYPE_DEFAULT, "Warning: VFXSimpleAnimationToCABasicAnimation - can't convert byValue", v52, 2u);
            }
          }

          CFRelease(v37);
        }

        sub_1AF298E6C(v7, a1);
        goto LABEL_36;
      }

      if (v2 == sub_1AF1142BC())
      {
        v21 = sub_1AF11447C(a1);
        v7 = sub_1AF299204(v21);
        if (v21)
        {
          CFRelease(v21);
        }

        goto LABEL_36;
      }

      v22 = CFCopyTypeIDDescription(v2);
      v23 = sub_1AF0D5194();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3FA8();
      }

      CFRelease(v22);
    }

    v7 = 0;
    goto LABEL_36;
  }

  return 0;
}

__CFString *sub_1AF291EF0(void *a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!objc_msgSend_length(a2, a2, a3, a4))
  {
    return 0;
  }

  v9 = objc_msgSend___CFObject(a1, v6, v7, v8);
  v10 = sub_1AF28A40C(a2);
  v11 = sub_1AF1DB564(v9, v10, 0);
  v12 = v11;
  if (v11 && sub_1AF1DE3A8(v11))
  {
    v13 = v10;
LABEL_14:
    CFRelease(v12);
    return v13;
  }

  v14 = sub_1AF376D98(a1, a2);
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend___CFObject(a1, v15, v16, v17);
    if (sub_1AF16D234(v19) && (sub_1AF16E2D4(v19, a2, v18), sub_1AF16E3F4(v19, a2)))
    {
      v23 = MEMORY[0x1E695DF70];
      v24 = objc_msgSend_count(v10, v20, v21, v22);
      v13 = objc_msgSend_arrayWithCapacity_(v23, v25, v24 + 1, v26);
      objc_msgSend_addObject_(v13, v27, @"customProperty", v28);
      objc_msgSend_addObjectsFromArray_(v13, v29, v10, v30);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v18);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v10);
  if (v12)
  {
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_1AF292034(void *a1, char *a2, const void *a3, void *a4, double a5)
{
  if (!a3 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0D34(v10, a2, a3, a4, v11, v12, v13, v14);
    if (a1)
    {
LABEL_4:
      result = objc_msgSend_animationPlayerRef(a1, a2, a3, a4);
      if (result)
      {
        v19 = result;
        v20 = objc_msgSend___CFObject(a2, v16, v17, v18);
        if (v20)
        {
          v21 = v20;
          if ((sub_1AF16D234(v20) & 1) == 0)
          {
            v25 = sub_1AF0D5194();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF4018(v25, v22, v23, v24, v26, v27, v28, v29);
            }
          }

          v30 = objc_msgSend_cfxTimingFunction(a4, v22, v23, v24);
          sub_1AF16D744(v21, v19, a3, v30, a5);
        }

        return 1;
      }

      return result;
    }
  }

  else if (a1)
  {
    goto LABEL_4;
  }

  v31 = sub_1AF0D5194();
  result = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDF4090();
    return 0;
  }

  return result;
}

void sub_1AF29213C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    if ((sub_1AF16D234(v5) & 1) == 0)
    {
      v7 = sub_1AF0D5194();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4100(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    sub_1AF16D870(v6, a2, 0);
  }
}

void sub_1AF2921A8(void *a1, const char *a2, void *a3, uint64_t a4, double a5)
{
  v8 = objc_msgSend___CFObject(a1, a2, a3, a4);
  if (v8)
  {
    v9 = v8;
    if ((sub_1AF16D234(v8) & 1) == 0)
    {
      v13 = sub_1AF0D5194();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4178(v13, v10, v11, v12, v14, v15, v16, v17);
      }
    }

    v18 = objc_msgSend_cfxTimingFunction(a3, v10, v11, v12);
    sub_1AF16DAC8(v9, a2, v18, a5);
  }
}

const __CFDictionary *sub_1AF292230(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend___CFObject(a1, a2, a3, a4);
  if (result)
  {
    v5 = result;
    if ((sub_1AF16D234(result) & 1) == 0)
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF41F0(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    return sub_1AF16CA10(v5);
  }

  return result;
}

void sub_1AF292288(void *a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = objc_msgSend___CFObject(a1, a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    if ((sub_1AF16D234(v7) & 1) == 0)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4268(v12, v9, v10, v11, v13, v14, v15, v16);
      }
    }

    v17 = objc_msgSend_cfxTimingFunction(a2, v9, v10, v11);
    sub_1AF16D9A8(v8, v17, a5);
  }
}

void sub_1AF292308(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_copy(a3, a2, a3, a4);
  objc_msgSend_setValue_forKey_(a1, v5, v6, @"SCNAnimationEventsKey");
}

void *sub_1AF292378(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v137 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(a1, a2, a3, a4);
  v9 = objc_msgSend_fillMode(a1, v6, v7, v8);
  objc_msgSend_setFillMode_(v5, v10, v9, v11);
  objc_msgSend_speed(a1, v12, v13, v14);
  objc_msgSend_setSpeed_(v5, v15, v16, v17);
  v21 = objc_msgSend_autoreverses(a1, v18, v19, v20);
  objc_msgSend_setAutoreverses_(v5, v22, v21, v23);
  objc_msgSend_repeatCount(a1, v24, v25, v26);
  objc_msgSend_setRepeatCount_(v5, v27, v28, v29);
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(a1, v30, v31, v32);
  objc_msgSend_setRemovedOnCompletion_(v5, v34, isRemovedOnCompletion, v35);
  objc_msgSend_duration(a1, v36, v37, v38);
  objc_msgSend_setDuration_(v5, v39, v40, v41);
  objc_msgSend_beginTime(a1, v42, v43, v44);
  objc_msgSend_setBeginTime_(v5, v45, v46, v47);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = objc_msgSend_keyPath(a1, v48, v49, v50);
      objc_msgSend_setKeyPath_(v5, v52, v51, v53);
      isAdditive = objc_msgSend_isAdditive(a1, v54, v55, v56);
      objc_msgSend_setAdditive_(v5, v58, isAdditive, v59);
      isCumulative = objc_msgSend_isCumulative(a1, v60, v61, v62);
      objc_msgSend_setCumulative_(v5, v64, isCumulative, v65);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = objc_msgSend_calculationMode(a1, v66, v67, v68);
      objc_msgSend_setCalculationMode_(v5, v70, v69, v71);
      v75 = objc_msgSend_values(a1, v72, v73, v74);
      objc_msgSend_setValues_(v5, v76, v75, v77);
      v81 = objc_msgSend_keyTimes(a1, v78, v79, v80);
      objc_msgSend_setKeyTimes_(v5, v82, v81, v83);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_mass(a1, v84, v85, v86);
      objc_msgSend_setMass_(v5, v87, v88, v89);
      objc_msgSend_initialVelocity(a1, v90, v91, v92);
      objc_msgSend_setInitialVelocity_(v5, v93, v94, v95);
      objc_msgSend_stiffness(a1, v96, v97, v98);
      objc_msgSend_setStiffness_(v5, v99, v100, v101);
      objc_msgSend_damping(a1, v102, v103, v104);
      objc_msgSend_setDamping_(v5, v105, v106, v107);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v111 = objc_msgSend_animations(v5, v108, v109, v110);
    v112 = objc_alloc(MEMORY[0x1E695DF70]);
    v116 = objc_msgSend_count(v111, v113, v114, v115);
    v119 = objc_msgSend_initWithCapacity_(v112, v117, v116, v118);
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v120, &v132, v136, 16);
    if (v121)
    {
      v125 = v121;
      v126 = *v133;
      do
      {
        v127 = 0;
        do
        {
          if (*v133 != v126)
          {
            objc_enumerationMutation(v111);
          }

          v128 = objc_msgSend_vfx_deepCopy(*(*(&v132 + 1) + 8 * v127), v122, v123, v124);
          objc_msgSend_addObject_(v119, v129, v128, v130);

          ++v127;
        }

        while (v125 != v127);
        v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v122, &v132, v136, 16);
      }

      while (v125);
    }

    objc_msgSend_setAnimations_(v5, v122, v119, v124);
  }

  return v5;
}

uint64_t sub_1AF2926B4(void *a1, double a2, uint64_t a3, int a4, uint64_t a5)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v12 = objc_msgSend_cfxAnimation(a1, v9, v10, v11);
  if (!v12)
  {
    return 0;
  }

  return sub_1AF11D910(v12, a4, a5, a2);
}

void sub_1AF293900(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  sub_1AF1129D0(*(v2 + 8), v3);
  sub_1AF112B00(*(*(a1 + 32) + 8), *(*(a1 + 32) + 32));
  sub_1AF112B9C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 56));
  sub_1AF112FE0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 48));
  sub_1AF11307C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 40));
  sub_1AF112ECC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 57));
  v4 = sub_1AF1135C8(*(*(a1 + 32) + 8));
  v5 = *(a1 + 32);
  if (*(v5 + 62))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  sub_1AF113614(*(v5 + 8), v4 & 0xFC | *(v5 + 61) | v6);
  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  if (v11)
  {
    v12 = *(v10 + 8);
    v13 = objc_msgSend_cfxTimingFunction(v11, v7, v8, v9);
    sub_1AF112C48(v12, v13);
    v10 = *(a1 + 32);
  }

  sub_1AF1131B4(*(v10 + 8), *(v10 + 58));
  sub_1AF112D10(*(*(a1 + 32) + 8), *(*(a1 + 32) + 59));
  v14 = *(a1 + 32);
  v15 = *(v14 + 8);
  v16 = *(v14 + 60);

  sub_1AF112DC8(v15, v16);
}

void sub_1AF294B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF294B48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = objc_msgSend_animationKeys(a2, a2, a3, a4, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v31, v35, 16);
  if (result)
  {
    v11 = result;
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_animationPlayerForKey_(a2, v9, *(*(&v31 + 1) + 8 * v13), v10);
        v15 = *(*(*(a1 + 40) + 8) + 24);
        v19 = objc_msgSend_animation(v14, v16, v17, v18);
        objc_msgSend_duration(v19, v20, v21, v22);
        if (v15 >= v26)
        {
          v26 = v15;
        }

        *(*(*(a1 + 40) + 8) + 24) = v26;
        v27 = *(a1 + 32);
        v28 = objc_msgSend_animation(v14, v23, v24, v25);
        objc_msgSend_addObject_(v27, v29, v28, v30);
        ++v13;
      }

      while (v11 != v13);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v31, v35, 16);
      v11 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF295218(uint64_t a1)
{
  v2 = sub_1AF28A40C(*(a1 + 32));
  sub_1AF112944(*(*(a1 + 40) + 8), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

float sub_1AF295344(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1AF1129D0(*(*(a1 + 32) + 8), v1);
  return result;
}

void sub_1AF2957CC(uint64_t a1)
{
  v2 = sub_1AF1135C8(*(*(a1 + 32) + 8)) & 0xFE;
  v3 = *(*(a1 + 32) + 8);
  v4 = v2 | *(a1 + 40);

  sub_1AF113614(v3, v4);
}

void sub_1AF2958D0(uint64_t a1)
{
  v2 = sub_1AF1135C8(*(*(a1 + 32) + 8)) & 0xFFFFFFFD;
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 32) + 8);

  sub_1AF113614(v4, v3 | v2);
}

CFTypeRef sub_1AF2959E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxTimingFunction(*(a1 + 32), a2, a3, a4);
  v6 = *(*(a1 + 40) + 8);

  return sub_1AF112C48(v6, v5);
}

void *sub_1AF295C74(uint64_t a1)
{
  result = sub_1AF113364(*(*(a1 + 32) + 8));
  *result = sub_1AF295CA4;
  return result;
}

uint64_t sub_1AF295CA4(uint64_t a1)
{
  v2 = sub_1AF1199E8(a1);
  v3 = sub_1AF16CDEC(v2);
  v7 = objc_msgSend_userAnimation(v3, v4, v5, v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
  }

  v11 = objc_msgSend_delegate(v7, v8, v9, v10);
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1AF29937C;
    v19[3] = &unk_1E7A7E198;
    v19[4] = v11;
    v19[5] = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  result = objc_msgSend_animationDidStart(v3, v12, v13, v14);
  if (result)
  {
    v16 = result;
    v17 = sub_1AF119A30(a1);
    v18 = sub_1AF16CDEC(v17);
    return (*(v16 + 16))(v16, v3, v18);
  }

  return result;
}

uint64_t sub_1AF295E68(uint64_t a1)
{
  result = sub_1AF113364(*(*(a1 + 32) + 8));
  *(result + 8) = sub_1AF295E98;
  return result;
}

uint64_t sub_1AF295E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v7 = sub_1AF1199E8(a1);
  v8 = sub_1AF16CDEC(v7);
  v12 = objc_msgSend_userAnimation(v8, v9, v10, v11);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_msgSend_delegate(v12, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  if (!sub_1AF112E80(v7))
  {
    goto LABEL_26;
  }

  v17 = sub_1AF119A30(v6);
  v18 = sub_1AF16CDEC(v17);
  if (sub_1AF113270(v7))
  {
    v20 = sub_1AF1142BC();
    if (v20 == CFGetTypeID(v7))
    {
      v74 = a4;
      v75 = a2;
      v21 = sub_1AF114F84(v7);
      objc_msgSend_begin(VFXTransaction, v22, v23, v24);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v25, v26, v27, 0.0);
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v78, v82, 16);
      if (v29)
      {
        v33 = v29;
        v34 = *v79;
        do
        {
          v35 = 0;
          do
          {
            if (*v79 != v34)
            {
              objc_enumerationMutation(v21);
            }

            v36 = *(*(&v78 + 1) + 8 * v35);
            v37 = objc_msgSend_presentationObject(v18, v30, v31, v32);
            v40 = objc_msgSend_valueForKeyPath_(v37, v38, v36, v39);
            objc_msgSend_setValue_forKeyPath_(v18, v41, v40, v36);
            ++v35;
          }

          while (v33 != v35);
          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v30, &v78, v82, 16);
        }

        while (v33);
      }

      objc_msgSend_commit(VFXTransaction, v30, v31, v32);

      a2 = v75;
      a4 = v74;
    }

    else
    {
      v42 = sub_1AF112998(v7);
      if (v42)
      {
        v45 = v42;
        if (v18)
        {
          v46 = v18;
        }

        else
        {
          if (v6)
          {
            while (1)
            {
              v47 = sub_1AF119DEC(v6);
              v6 = v47;
              if (!v47)
              {
                break;
              }

              v48 = sub_1AF119A30(v47);
              v49 = sub_1AF16CDEC(v48);
              if (v49)
              {
                v46 = v49;
                goto LABEL_23;
              }
            }
          }

          v46 = 0;
        }

LABEL_23:
        objc_msgSend_begin(VFXTransaction, v19, v43, v44);
        objc_msgSend_setAnimationDuration_(VFXTransaction, v50, v51, v52, 0.0);
        v53 = sub_1AF28A428(v45);
        v57 = objc_msgSend_presentationObject(v46, v54, v55, v56);
        v60 = objc_msgSend_valueForKeyPath_(v57, v58, v53, v59);
        objc_msgSend_setValue_forKeyPath_(v46, v61, v60, v53);

        objc_msgSend_commit(VFXTransaction, v62, v63, v64);
      }
    }
  }

  if (a2)
  {
    v65 = objc_msgSend___removeAnimation_forKey_(v18, v19, v8, a4);
  }

  else
  {
LABEL_26:
    v65 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF299388;
    block[3] = &unk_1E7A7E470;
    block[4] = v16;
    block[5] = v12;
    v77 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v69 = objc_msgSend_animationDidStop(v8, v66, v67, v68);
  if (v69)
  {
    v70 = v69;
    v71 = sub_1AF119A30(v6);
    v72 = sub_1AF16CDEC(v71);
    (*(v70 + 16))(v70, v8, v72, a2);
  }

  return v65;
}

CFTypeRef sub_1AF2962B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = sub_1AF290784(*(a1 + 40), a2, a3, a4);

  return sub_1AF113490(v4, v5);
}

void sub_1AF296430(uint64_t a1)
{
  v2 = sub_1AF1142BC();
  if (v2 == CFGetTypeID(*(*(a1 + 32) + 8)))
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF44E0();
    }
  }

  sub_1AF112D10(*(*(a1 + 32) + 8), *(a1 + 40));
}

void sub_1AF296550(uint64_t a1)
{
  v2 = sub_1AF1142BC();
  if (v2 == CFGetTypeID(*(*(a1 + 32) + 8)))
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF451C();
    }
  }

  sub_1AF112DC8(*(*(a1 + 32) + 8), *(a1 + 40));
}

void sub_1AF29679C(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == sub_1AF1157BC())
  {
    v3 = sub_1AF115980(a1);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = v3 & 0x7FFFFFFF;
      do
      {
        v6 = sub_1AF1159CC(a1, v4);
        sub_1AF29679C(v6);
        ++v4;
      }

      while (v5 != v4);
    }
  }

  else
  {
    v7 = CFGetTypeID(a1);
    if (v7 == sub_1AF11D778())
    {
      v8 = sub_1AF11D8C8(a1);
      v9 = 0;
      sub_1AF11D514(v8, &v9);
    }
  }
}

void sub_1AF296FFC(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 72));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 80), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 8), v10);
    v11 = (*(a1 + 40) + 72);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF297470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF29760C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 80);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF297A2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF297B70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF297C3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF297CE8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF297E20(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF297F5C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF298004;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

uint64_t sub_1AF2982D8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF298338(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF298C14(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  objc_msgSend_time(a2, a2, a3, a4);
  v7 = v6;
  objc_msgSend_time(a3, v8, v9, v10);
  if (v7 < v14)
  {
    return -1;
  }

  objc_msgSend_time(a2, v11, v12, v13);
  v17 = v16;
  objc_msgSend_time(a3, v18, v19, v20);
  return v17 != v21;
}

uint64_t sub_1AF298C80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_duration(a2, a2, a3, a4);
  v7 = v6;
  v11 = objc_msgSend_autoreverses(a2, v8, v9, v10);
  v12 = v7;
  sub_1AF1129D0(a1, v12);
  objc_msgSend_repeatCount(a2, v13, v14, v15);
  v17 = v16;
  objc_msgSend_repeatDuration(a2, v18, v19, v20);
  if (v17 == 0.0)
  {
    v25 = v24;
    if (v25 != 0.0 && v7 != 0.0)
    {
      v26 = v25;
      objc_msgSend_duration(a2, v21, v22, v23);
      v28 = v26 / v27;
      if (v11)
      {
        v17 = v28 * 0.5;
      }

      else
      {
        v17 = v28;
      }
    }
  }

  sub_1AF112B00(a1, v17);
  sub_1AF112B9C(a1, v11);
  objc_msgSend_beginTime(a2, v29, v30, v31);
  sub_1AF112FE0(a1, v32);
  objc_msgSend_timeOffset(a2, v33, v34, v35);
  sub_1AF11307C(a1, v36);
  objc_msgSend_speed(a2, v37, v38, v39);
  sub_1AF113118(a1, v40);
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(a2, v41, v42, v43);
  sub_1AF112ECC(a1, isRemovedOnCompletion);
  v48 = objc_msgSend_fillMode(a2, v45, v46, v47);
  v52 = sub_1AF290524(v48, v49, v50, v51);
  sub_1AF113614(a1, v52);
  v56 = objc_msgSend_animationEvents(a2, v53, v54, v55);
  v60 = sub_1AF290784(v56, v57, v58, v59);
  sub_1AF113490(a1, v60);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_mass(a2, v61, v62, v63);
    v65 = v64;
    objc_msgSend_stiffness(a2, v66, v67, v68);
    v70 = v69;
    objc_msgSend_damping(a2, v71, v72, v73);
    v75 = v74;
    objc_msgSend_initialVelocity(a2, v76, v77, v78);
    v80 = v79;
    v81 = sub_1AF120B08(v65, v70, v75, v80);
    sub_1AF112C48(a1, v81);
    CFRelease(v81);
  }

  else
  {
    v82 = objc_msgSend_timingFunction(a2, v61, v62, v63);
    if (v82)
    {
      v84 = sub_1AF36FC84(v82, v83);
      sub_1AF112C48(a1, v84);
    }
  }

  return sub_1AF291974(a1, a2);
}

uint64_t sub_1AF298E6C(void *a1, uint64_t a2)
{
  v4 = sub_1AF112998(a2);
  if (v4)
  {
    v5 = sub_1AF28A428(v4);
    objc_msgSend_setKeyPath_(a1, v6, v5, v7);
  }

  v8 = sub_1AF112E34(a2);
  objc_msgSend_setAdditive_(a1, v9, v8, v10);
  v11 = sub_1AF112D7C(a2);
  objc_msgSend_setCumulative_(a1, v12, v11, v13);

  return sub_1AF298EFC(a1, a2);
}

uint64_t sub_1AF298EFC(void *a1, uint64_t a2)
{
  v4 = sub_1AF112A24(a2);
  objc_msgSend_setDuration_(a1, v5, v6, v7, v4);
  *&v8 = sub_1AF112B54(a2);
  objc_msgSend_setRepeatCount_(a1, v9, v10, v11, v8);
  v12 = sub_1AF112BFC(a2);
  objc_msgSend_setAutoreverses_(a1, v13, v12, v14);
  v15 = sub_1AF113034(a2);
  objc_msgSend_setBeginTime_(a1, v16, v17, v18, v15);
  v19 = sub_1AF1130D0(a2);
  objc_msgSend_setTimeOffset_(a1, v20, v21, v22, v19);
  *&v23 = sub_1AF11316C(a2);
  objc_msgSend_setSpeed_(a1, v24, v25, v26, v23);
  v27 = sub_1AF112E80(a2);
  objc_msgSend_setRemovedOnCompletion_(a1, v28, v27, v29);
  v30 = sub_1AF1135C8(a2);
  v31 = sub_1AF290614(v30);
  objc_msgSend_setFillMode_(a1, v32, v31, v33);
  v34 = sub_1AF113448(a2);
  v35 = sub_1AF290934(v34);
  objc_msgSend_setAnimationEvents_(a1, v36, v35, v37);
  result = sub_1AF112CC8(a2);
  if (result)
  {
    v40 = sub_1AF36FD0C(result);

    return objc_msgSend_setTimingFunction_(a1, v39, v40, v41);
  }

  return result;
}

id sub_1AF299000(void *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = sub_1AF11581C();
  sub_1AF298C80(v4, a1, v5, v6);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_animations(a1, v7, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v38, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = sub_1AF299000(v16, a2);
          sub_1AF11588C(v4, v17);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = objc_msgSend_keyPath(v16, v18, v19, v20);
            v25 = objc_msgSend_copy(v21, v22, v23, v24);
            if (v25)
            {
              v26 = v25;
              v27 = sub_1AF291A30(v16, a2);
              if (v27)
              {
                sub_1AF11588C(v4, v27);
              }
            }

            else
            {
              v28 = sub_1AF0D5194();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v35 = v16;
                v36 = 2112;
                v37 = v4;
                _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, "Error: sub-animation %@ of %@ has no keyPath - ignoring", buf, 0x16u);
              }
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, &v30, v38, 16);
    }

    while (v13);
  }

  return v4;
}

id sub_1AF299204(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6979308]);
  sub_1AF298EFC(v2, a1);
  v3 = sub_1AF115A28(a1);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v7, Count, v8);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v13 = sub_1AF1159CC(a1, i);
        v14 = sub_1AF291C18();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = sub_1AF112998(v13);
          if (v17)
          {
            v20 = objc_msgSend_componentsJoinedByString_(v17, v18, @".", v19);
            objc_msgSend_setKeyPath_(v14, v21, v20, v22);
          }

          else
          {
            v23 = sub_1AF0D5194();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v25 = 0;
              _os_log_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_DEFAULT, "Warning: VFXAnimationGroupToCAAnimationGroup - no target path", v25, 2u);
            }
          }
        }

        objc_msgSend_addObject_(v11, v15, v14, v16);
      }
    }
  }

  else
  {
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v4, 0, v5);
  }

  objc_msgSend_setAnimations_(v2, v9, v11, v10);
  return v2;
}

uint64_t sub_1AF29A394(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 56);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29A3F4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 56);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF29A54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF29A580(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v7 = objc_msgSend_asset(a2, a2, a3, a4);
  v11 = objc_msgSend_name(v7, v8, v9, v10);
  result = objc_msgSend_isEqualToString_(v11, v12, *(a1 + 32), v13);
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return result;
}

void sub_1AF29A6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF29A6BC(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v7 = objc_msgSend_name(a2, a2, a3, a4);
  result = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32), v9);
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return result;
}

void *sub_1AF29ACF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  objc_msgSend_asset(a2, a2, a3, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_asset(v4, v5, v6, v7);
    v12 = objc_msgSend_entityObject(v8, v9, v10, v11);
    if (objc_msgSend_doNotExport(v12, v13, v14, v15))
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1AF29AFCC(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29B02C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29B7C0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29B820(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29C65C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_behaviorGraph(a2, a2, a3, a4);
  v8 = objc_msgSend_coreEntityHandle(v4, v5, v6, v7);
  v12 = objc_msgSend_entityObject(v8, v9, v10, v11);

  return objc_msgSend_setIsEnabled_(v12, v13, 1, v14);
}

uint64_t sub_1AF29C6C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_behaviorGraph(a2, a2, a3, a4);
  v8 = objc_msgSend_coreEntityHandle(v4, v5, v6, v7);
  v12 = objc_msgSend_entityObject(v8, v9, v10, v11);

  return objc_msgSend_setIsEnabled_(v12, v13, 0, v14);
}

uint64_t sub_1AF29C92C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29C98C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29D0AC(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1AF29D4B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_didFinishPlayback(*(a1 + 32), a2, a3, a4);
  if (result)
  {
    v9 = *(objc_msgSend_didFinishPlayback(*(a1 + 32), v6, v7, v8) + 16);

    return v9();
  }

  return result;
}

uint64_t sub_1AF29D508(uint64_t a1)
{
  dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 48));
  objc_msgSend_setCompleted_(*(a1 + 32), v2, 1, v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF29D5B8;
  v7[3] = &unk_1E7A7E2E8;
  v9 = *(a1 + 56);
  v4 = *(a1 + 32);
  v8 = vextq_s8(v4, v4, 8uLL);
  return objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, v4.i64[0], v7);
}

uint64_t sub_1AF29D5B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    sub_1AF1BB91C(v5, *(a1 + 32), 1);
    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 40);
  if (v7[50] == 1)
  {

    return MEMORY[0x1EEE66B58](v7, sel_recycle, a3, a4);
  }

  else
  {

    return objc_msgSend_reset(v7, a2, a3, a4);
  }
}

uint64_t sub_1AF29D634(int8x16_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_loops(*(a1[2].i64[0] + 24), a2, a3, a4) && (v6 = a1[3].i64[1]) != 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF29D708;
    v10[3] = &unk_1E7A7E2E8;
    v12 = v6;
    v7 = a1[2];
    v11 = vextq_s8(v7, v7, 8uLL);
    return objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, v7.i64[0], v10);
  }

  else
  {
    v9 = *(a1[3].i64[0] + 16);

    return v9();
  }
}

void sub_1AF29D708(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_1AF1BB91C(v2, *(a1 + 32), 1);
    v3 = *(a1 + 48);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF29D7AC;
  block[3] = &unk_1E7A7A770;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1AF29D7B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_willStartPlayback(*(a1 + 32), a2, a3, a4);
  if (result)
  {
    v9 = *(objc_msgSend_willStartPlayback(*(a1 + 32), v6, v7, v8) + 16);

    return v9();
  }

  return result;
}

id sub_1AF29DC7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  qword_1EB658848 = v4;

  return v4;
}

uint64_t sub_1AF29E8E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_immediateMode(VFXTransaction, a2, a3, a4);
  objc_msgSend_setImmediateMode_(VFXTransaction, v6, 1, v7);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = objc_msgSend_allKeys(*(*(a1 + 32) + 40), v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = objc_msgSend_valueForKey_(*(*(a1 + 32) + 40), v14, v19, v15);
        objc_msgSend_setBindingValue_forKey_(*(*(a1 + 32) + 8), v21, v20, v19);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v23, v27, 16);
    }

    while (v16);
  }

  return objc_msgSend_setImmediateMode_(VFXTransaction, v14, v5, v15);
}

CFStringRef sub_1AF29EB6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

uint64_t sub_1AF29EEA0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF29EF00(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF29F214(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 48));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 56), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 48);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF29F688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF29F824(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 56);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4D18(v10);
    }
  }
}

void sub_1AF29FC44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF29FD88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF29FE54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF29FF00(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2A0038(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2A0174(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2A021C;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

CFStringRef sub_1AF2A0BB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

__n128 *sub_1AF2A1124(uint64_t a1)
{
  sub_1AF15B29C(*(*(a1 + 96) + 8), *(a1 + 104));
  v2 = *(*(a1 + 96) + 8);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return sub_1AF15B358(v2, v5, v6, v3, v4);
}

uint64_t VFXBoundingBoxIsNull(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqzq_f32(a1);
  v2.i32[3] = v2.i32[2];
  v3 = vceqzq_f32(a2);
  v3.i32[3] = v3.i32[2];
  return (vminvq_u32(v2) & vminvq_u32(v3)) >> 31;
}

CFStringRef sub_1AF2A16BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

uint64_t sub_1AF2A1B90(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2A1BF0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF2A1EF8(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 40), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 32);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2A236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2A2508(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 40);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4D18(v10);
    }
  }
}

void sub_1AF2A2928(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2A2A6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2A2B38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2A2BE4(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2A2D1C(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2A2E58(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2A2F00;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

uint64_t sub_1AF2A319C(uint64_t a1)
{
  sub_1AF15DD20(*(*(a1 + 32) + 8), *(*(a1 + 32) + 96));
  sub_1AF15DACC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 104));
  sub_1AF15DB68(*(*(a1 + 32) + 8), *(*(a1 + 32) + 112));
  sub_1AF15DC04(*(*(a1 + 32) + 8), *(*(a1 + 32) + 120));
  v2 = sub_1AF15E428(*(*(a1 + 32) + 8));
  sub_1AF15DF84(v2, *(*(a1 + 32) + 64));
  v3 = sub_1AF15E428(*(*(a1 + 32) + 8));
  v4 = *(*(a1 + 32) + 80);
  sub_1AF15E10C(v3, v4);
  v5 = sub_1AF15E428(*(*(a1 + 32) + 8));
  v6 = *(*(a1 + 32) + 72);
  sub_1AF15E220(v5, v6);
  sub_1AF15D7B4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 92));
  sub_1AF15DA30(*(*(a1 + 32) + 8), *(*(a1 + 32) + 128));
  sub_1AF15C248(*(*(a1 + 32) + 8), *(*(a1 + 32) + 304));
  sub_1AF15D984(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 4) & 7);
  sub_1AF15D898(*(*(a1 + 32) + 8), *(*(a1 + 32) + 88));
  v7 = sub_1AF15E428(*(*(a1 + 32) + 8));
  sub_1AF15E048(v7, (*(*(a1 + 32) + 28) & 4) != 0);
  v11 = *(a1 + 32);

  return objc_msgSend__updateEntityPresentationFromModel(v11, v8, v9, v10);
}

void sub_1AF2A4D74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C40C(v4, v5);
}

void sub_1AF2A4EE4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C314(v4, v5);
}

void sub_1AF2A5054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C504(v4, v5);
}

void sub_1AF2A51C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C5FC(v4, v5);
}

void sub_1AF2A5334(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C6F4(v4, v5);
}

void sub_1AF2A54A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C7EC(v4, v5);
}

void sub_1AF2A5614(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C8E4(v4, v5);
}

void sub_1AF2A5784(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15C9DC(v4, v5);
}

void sub_1AF2A58F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15CBCC(v4, v5);
}

void sub_1AF2A5A64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15CAD4(v4, v5);
}

void sub_1AF2A5BD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15CCC4(v4, v5);
}

void sub_1AF2A5D44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF15CDBC(v4, v5);
}

id sub_1AF2A5EBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D46A8, a4);
  qword_1ED73B2F8 = result;
  return result;
}

uint64_t sub_1AF2A9D48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  v7 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v5, sel_cameraInertiaWillStartForController_, v7, v6);
}

uint64_t sub_1AF2A9D84(uint64_t a1)
{
  v1 = *(a1 + 32);
  CACurrentMediaTime();

  return MEMORY[0x1EEE66B58](v1, sel__updateInertiaAtTime_, v2, v3);
}

uint64_t sub_1AF2A9DBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3, a4);
  v7 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v5, sel_cameraInertiaDidEndForController_, v7, v6);
}

uint64_t sub_1AF2AA5B8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2AA618(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF2AA918(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 40), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 32);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2AAD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2AAF28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 40);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2AB348(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2AB48C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2AB558(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2AB604(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2AB73C(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2AB878(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2AB920;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

id sub_1AF2ABB78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D46D8, a4);
  qword_1ED73B308 = result;
  return result;
}

void sub_1AF2ABEAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160ABC(v5, v6);
}

void sub_1AF2AC008(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160C1C(v5, v6);
}

void sub_1AF2AC160(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160B6C(v5, v6);
}

void sub_1AF2AC2C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v5, v6);
}

void sub_1AF2AC420(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160D68(v5, v6);
}

void sub_1AF2AC580(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160E04(v5, v6);
}

void sub_1AF2AC6E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160EA0(v5, v6);
}

void sub_1AF2AC96C(uint64_t a1)
{
  sub_1AF160ABC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF160C1C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF160B6C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF160CCC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 88));
  sub_1AF160D68(*(*(a1 + 32) + 8), *(*(a1 + 32) + 92));
  sub_1AF160E04(*(*(a1 + 32) + 8), *(*(a1 + 32) + 96));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 100);

  sub_1AF160EA0(v3, v4);
}

void sub_1AF2ACE08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161034(v5, v6);
}

void sub_1AF2AD1E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161034(v5, v6);
}

void sub_1AF2AD348(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v5, v6);
}

void sub_1AF2AD4A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160D68(v5, v6);
}

void sub_1AF2AD604(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161234(v5, v6);
}

void sub_1AF2AD754(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1612D0(v5, v6);
}

void sub_1AF2AD938(uint64_t a1)
{
  sub_1AF161034(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF161234(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF160D68(*(*(a1 + 32) + 8), *(*(a1 + 32) + 68));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);

  sub_1AF1612D0(v3, v4);
}

void sub_1AF2ADC7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161034(v5, v6);
}

void sub_1AF2ADDDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v5, v6);
}

void sub_1AF2ADF3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160D68(v5, v6);
}

void sub_1AF2AE09C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160E04(v5, v6);
}

void sub_1AF2AE1F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16170C(v5, v6);
}

void sub_1AF2AE358(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160EA0(v5, v6);
}

void sub_1AF2AE4B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161538(v5, v6);
}

void sub_1AF2AE618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1615D4(v5, v6);
}

void sub_1AF2AE778(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161670(v5, v6);
}

void sub_1AF2AEA24(uint64_t a1)
{
  sub_1AF161034(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), *(*(a1 + 32) + 68));
  sub_1AF16170C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 92));
  sub_1AF160EA0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 76));
  sub_1AF161538(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF1615D4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 84));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 88);

  sub_1AF161670(v3, v4);
}

void sub_1AF2AEEE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16193C(v5, v6);
}

void sub_1AF2AF040(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161A28(v5, v6);
}

void sub_1AF2AF1A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161ACC(v5, v6);
}

void sub_1AF2AF300(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161B70(v5, v6);
}

void sub_1AF2AF460(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161C14(v5, v6);
}

void sub_1AF2AF5C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161CB8(v5, v6);
}

void sub_1AF2AF720(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161D5C(v5, v6);
}

void sub_1AF2AFA0C(uint64_t a1)
{
  sub_1AF16193C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF161A28(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF161ACC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 76));
  sub_1AF161B70(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF161C14(*(*(a1 + 32) + 8), *(*(a1 + 32) + 84));
  sub_1AF161CB8(*(*(a1 + 32) + 8), *(*(a1 + 32) + 88));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 92);

  sub_1AF161D5C(v3, v4);
}

void sub_1AF2AFE50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161034(v5, v6);
}

void sub_1AF2AFFB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v5, v6);
}

void sub_1AF2B0110(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160D68(v5, v6);
}

void sub_1AF2B026C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161234(v5, v6);
}

void sub_1AF2B03D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3, a4);
  v6 = *(a1 + 32);

  sub_1AF162450(v5, v6);
}

void sub_1AF2B0538(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1624F4(v5, v6);
}

void sub_1AF2B0698(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF162590(v5, v6);
}

void sub_1AF2B07F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16262C(v5, v6);
}

void sub_1AF2B0C28(uint64_t a1)
{
  sub_1AF161034(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), *(*(a1 + 32) + 68));
  sub_1AF161234(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF162450(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF1624F4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 96));
  sub_1AF162590(*(*(a1 + 32) + 8), *(*(a1 + 32) + 100));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 104);

  sub_1AF16262C(v3, v4);
}

void sub_1AF2B10BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161034(v5, v6);
}

void sub_1AF2B121C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v5, v6);
}

void sub_1AF2B137C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160D68(v5, v6);
}

void sub_1AF2B14DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160E04(v5, v6);
}

void sub_1AF2B16E8(uint64_t a1)
{
  sub_1AF161034(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), *(*(a1 + 32) + 68));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 72);

  sub_1AF160E04(v3, v4);
}

void sub_1AF2B1A44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF162E8C(v5, v6);
}

void sub_1AF2B1BA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161034(v5, v6);
}

void sub_1AF2B1D60(uint64_t a1)
{
  sub_1AF162E8C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 64);

  sub_1AF161034(v3, v4);
}

void sub_1AF2B2108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF162894(v5, v6);
}

void sub_1AF2B2268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v5, v6);
}

void sub_1AF2B23C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160D68(v5, v6);
}

void sub_1AF2B2528(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160E04(v5, v6);
}

void sub_1AF2B2694(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3, a4);
  v6 = *(a1 + 32);

  sub_1AF162450(v5, v6);
}

void sub_1AF2B27F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1624F4(v5, v6);
}

void sub_1AF2B2960(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3, a4);
  v6 = *(a1 + 32);

  sub_1AF162930(v5, v6);
}

void sub_1AF2B2AC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1629D4(v5, v6);
}

void sub_1AF2B2C2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3, a4);
  v6 = *(a1 + 32);

  sub_1AF162A70(v5, v6);
}

void sub_1AF2B2D8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF162B14(v5, v6);
}

void sub_1AF2B2F0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_materialProperty(*(a1 + 40), v6, v7, v8);

  sub_1AF162B68(v5, v9);
}

void sub_1AF2B34E4(uint64_t a1)
{
  sub_1AF162894(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), *(*(a1 + 32) + 68));
  sub_1AF160E04(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF162450(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF1624F4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 96));
  sub_1AF162930(*(*(a1 + 32) + 8), *(*(a1 + 32) + 112));
  sub_1AF1629D4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 128));
  sub_1AF162A70(*(*(a1 + 32) + 8), *(*(a1 + 32) + 144));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 160);

  sub_1AF162B14(v3, v4);
}

void sub_1AF2B3A68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163018(v5, v6);
}

void sub_1AF2B3BC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1630C8(v5, v6);
}

void sub_1AF2B3D80(uint64_t a1)
{
  sub_1AF163018(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 64);

  sub_1AF1630C8(v3, v4);
}

void sub_1AF2B4044(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163430(v5, v6);
}

void sub_1AF2B41A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163484(v5, v6);
}

void sub_1AF2B430C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163544(v5, v6);
}

void sub_1AF2B446C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1615D4(v5, v6);
}

void sub_1AF2B45CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161670(v5, v6);
}

void sub_1AF2B4734(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1635E0(v5, v6);
}

void sub_1AF2B4894(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1624F4(v5, v6);
}

void sub_1AF2B49F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF162590(v5, v6);
}

void sub_1AF2B4B5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16367C(v5, v6);
}

void sub_1AF2B4CC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3, a4);
  v6 = *(a1 + 32);

  sub_1AF162930(v5, v6);
}

void sub_1AF2B4E34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3, a4);
  v6 = *(a1 + 32);

  sub_1AF163718(v5, v6);
}

void sub_1AF2B4FA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3, a4);
  v6 = *(a1 + 32);

  sub_1AF162A70(v5, v6);
}

void sub_1AF2B5108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1637BC(v5, v6);
}

void sub_1AF2B5268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163810(v5, v6);
}

void sub_1AF2B53C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1638AC(v5, v6);
}

void sub_1AF2B5524(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163900(v5, v6);
}

void sub_1AF2B5E34(uint64_t a1)
{
  sub_1AF163430(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF163484(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF163544(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF1615D4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 88));
  sub_1AF161670(*(*(a1 + 32) + 8), *(*(a1 + 32) + 92));
  sub_1AF1635E0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 96));
  sub_1AF1624F4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 104));
  sub_1AF162590(*(*(a1 + 32) + 8), *(*(a1 + 32) + 108));
  sub_1AF16367C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 112));
  sub_1AF162930(*(*(a1 + 32) + 8), *(*(a1 + 32) + 128));
  sub_1AF163718(*(*(a1 + 32) + 8), *(*(a1 + 32) + 144));
  sub_1AF162A70(*(*(a1 + 32) + 8), *(*(a1 + 32) + 160));
  sub_1AF1637BC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 176));
  sub_1AF163810(*(*(a1 + 32) + 8), *(*(a1 + 32) + 184));
  sub_1AF1638AC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 188));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 192);

  sub_1AF163900(v3, v4);
}

void sub_1AF2B652C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF161034(v5, v6);
}

void sub_1AF2B6694(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163AE8(v5, v6);
}

void sub_1AF2B67F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF160EA0(v5, v6);
}

void sub_1AF2B6950(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF163B84(v5, v6);
}

void sub_1AF2B6CE8(uint64_t a1)
{
  sub_1AF161034(*(*(a1 + 32) + 8), *(*(a1 + 32) + 60));
  sub_1AF163AE8(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF160EA0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 76);

  sub_1AF163B84(v3, v4);
}

uint64_t sub_1AF2B76E8(uint64_t a1)
{
  sub_1AF14F348(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF14F358(*(*(a1 + 32) + 8), *(*(a1 + 32) + 65));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 68);

  return sub_1AF14F368(v3, v4);
}

uint64_t sub_1AF2B7FD4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2B8034(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF2B8334(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 44));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 48), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 44);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2B87A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2B8944(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 48);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2B8D64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2B8EA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2B8F74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2B9020(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2B9158(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2B9294(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2B933C;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

uint64_t sub_1AF2BC418(void *a1, char *a2, id *a3, uint64_t a4)
{
  v7 = objc_msgSend_delegate(a1, a2, a3, a4);
  v8 = sub_1AF16CDEC(a2);
  v9 = sub_1AF16CDEC(a3);
  if (!v8 || !v9)
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](v7, sel_avoidOccluderConstraint_shouldAvoidOccluder_forNode_, a1, v8);
}

void sub_1AF2BC4A4(uint64_t *a1)
{
  v2 = sub_1AF14EE10(a1[4], a1[5], a1[6]);
  sub_1AF157274(*(a1[4] + 8), v2);

  CFRelease(v2);
}

void *sub_1AF2BD170(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    v8 = sub_1AF1B9B04(a4);
    v116 = v8[1];
    v120 = *v8;
    v106 = v8[3];
    v110 = v8[2];
  }

  else
  {
    v11.n128_f64[0] = sub_1AF1B7F84(a4);
    v116 = v12;
    v120 = v11;
    v106 = v14;
    v110 = v13;
  }

  objc_msgSend_nodeWithNodeRef_(VFXNode, v9, a4, v10);
  v15.n128_f64[0] = (*(*(a1 + 32) + 16))(v120, v116, v110, v106);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v116;
  v23 = v120;
  v26 = v106;
  v25 = v110;
  v107 = v16;
  v111 = v18;
  v117 = v20;
  v121 = v22;
  result = VFXMatrix4EqualToMatrix4(v23, v24, v25, v26, v16, v18, v20, v22);
  if ((result & 1) == 0)
  {
    v123 = v107;
    v124 = v111;
    v125 = v117;
    v126 = v121;
    if (*(a1 + 40) == 1)
    {
      v28 = sub_1AF1B9A6C(a4);
      if (v28)
      {
        v136 = *sub_1AF1B9B04(v28);
        v137 = __invert_f4(v136);
        v29 = 0;
        v127[0] = v107;
        v127[1] = v111;
        v127[2] = v117;
        v127[3] = v121;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        do
        {
          *(&v128 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v137.columns[0], COERCE_FLOAT(*&v127[v29])), v137.columns[1], *v127[v29].i8, 1), v137.columns[2], v127[v29], 2), v137.columns[3], v127[v29], 3);
          ++v29;
        }

        while (v29 != 4);
        v107 = v128;
        v111 = v129;
        v123 = v128;
        v124 = v129;
        v117 = v130;
        v121 = v131;
        v125 = v130;
        v126 = v131;
      }
    }

    v30 = sub_1AF1DE3A8(a5);
    v31 = v30;
    if (a2 != 1.0)
    {
      v32 = *v30;
      v33 = *(v30 + 1);
      v34 = *(v30 + 2);
      v35 = *(v30 + 3);
      v128 = 0uLL;
      v127[0] = 0uLL;
      v135.i32[2] = 0;
      v135.i64[0] = 0;
      v134.i32[2] = 0;
      v134.i64[0] = 0;
      v133.i32[2] = 0;
      v133.i64[0] = 0;
      v132.i32[2] = 0;
      v132.i64[0] = 0;
      v102 = v33;
      v103 = v32;
      v101 = v34;
      v104 = v35;
      v36 = sub_1AF120324(&v128, &v135, &v133, v32, v33, v34, v35);
      v37 = sub_1AF120324(v127, &v134, &v132, v107, v111, v117, v121);
      if (v36)
      {
        v38 = v103;
        v39 = v104;
        v40 = v101;
        v41 = v102;
        if (v37)
        {
          v42 = vmulq_f32(v128, v127[0]);
          v118 = v127[0];
          v122 = v128;
          v43 = 1.0;
          if (vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL))) >= 0.0)
          {
            v66 = 1.0 - a2;
            v67 = vsubq_f32(v128, v127[0]);
            v68 = vmulq_f32(v67, v67);
            v69 = vaddq_f32(v128, v127[0]);
            v70 = vmulq_f32(v69, v69);
            v71 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v68.i8, *&vextq_s8(v68, v68, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)))));
            v72 = v71 + v71;
            v51 = (v71 + v71) == 0.0;
            v73 = 1.0;
            if (!v51)
            {
              v73 = sinf(v72) / v72;
            }

            v74 = v73;
            v75 = vrecpe_f32(LODWORD(v73));
            v76 = vmul_f32(v75, vrecps_f32(LODWORD(v74), v75));
            LODWORD(v77) = vmul_f32(v76, vrecps_f32(LODWORD(v74), v76)).u32[0];
            if ((v66 * v72) != 0.0)
            {
              v114 = v77;
              *v76.i32 = sinf(v66 * v72);
              v77 = v114;
              v43 = *v76.i32 / (v66 * v72);
            }

            *v76.i32 = v66 * (v77 * v43);
            v78 = vdupq_lane_s32(v76, 0);
            v61 = a2;
            v79 = v72 * a2;
            v80 = 1.0;
            if (v79 != 0.0)
            {
              v109 = v78;
              v115 = v77;
              v81 = sinf(v79);
              v78 = v109;
              v77 = v115;
              v61 = a2;
              v80 = v81 / v79;
            }

            v65 = vmlaq_f32(vmulq_n_f32(v118, (v77 * v80) * v61), v122, v78);
          }

          else
          {
            v44 = 1.0 - a2;
            v45 = vaddq_f32(v128, v127[0]);
            v46 = vmulq_f32(v45, v45);
            v47 = vsubq_f32(v128, v127[0]);
            v48 = vmulq_f32(v47, v47);
            v49 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)))));
            v50 = v49 + v49;
            v51 = (v49 + v49) == 0.0;
            v52 = 1.0;
            if (!v51)
            {
              v52 = sinf(v50) / v50;
            }

            v53 = v52;
            v54 = vrecpe_f32(LODWORD(v52));
            v55 = vmul_f32(v54, vrecps_f32(LODWORD(v53), v54));
            LODWORD(v56) = vmul_f32(v55, vrecps_f32(LODWORD(v53), v55)).u32[0];
            if ((v44 * v50) != 0.0)
            {
              v112 = v56;
              v57 = sinf(v44 * v50);
              v56 = v112;
              v43 = v57 / (v44 * v50);
            }

            v58.i32[1] = v118.i32[1];
            v59 = vnegq_f32(v118);
            *v58.i32 = v44 * (v56 * v43);
            v60 = vdupq_lane_s32(v58, 0);
            v61 = a2;
            v62 = v50 * a2;
            v63 = 1.0;
            if (v62 != 0.0)
            {
              v113 = v56;
              v119 = v59;
              v108 = v60;
              v64 = sinf(v62);
              v60 = v108;
              v56 = v113;
              v59 = v119;
              v61 = a2;
              v63 = v64 / v62;
            }

            v65 = vmlaq_f32(vmulq_n_f32(v59, (v56 * v63) * v61), v122, v60);
          }

          v82 = vmulq_f32(v65, v65);
          *v82.i8 = vadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
          v83 = vdupq_lane_s32(vadd_f32(*v82.i8, vdup_lane_s32(*v82.i8, 1)), 0);
          v84 = vrsqrteq_f32(v83);
          v85 = vmulq_f32(v84, vrsqrtsq_f32(v83, vmulq_f32(v84, v84)));
          v86 = vbslq_s8(vceqzq_f32(v83), v65, vmulq_f32(vmulq_f32(v85, vrsqrtsq_f32(v83, vmulq_f32(v85, v85))), v65));
          v87 = vmlaq_n_f32(v133, vsubq_f32(v132, v133), v61);
          v39 = vmlaq_n_f32(v135, vsubq_f32(v134, v135), v61);
          v39.i32[3] = 1.0;
          v88 = vabsq_f32(v87);
          v88.i32[3] = 0;
          v89.i64[0] = 0x8000000080000000;
          v89.i64[1] = 0x8000000080000000;
          v90 = vorrq_s8(vandq_s8(v87, v89), vabsq_f32(vmaxnmq_f32(v88, xmmword_1AFE20A30)));
          v91 = vmulq_f32(v86, v86);
          v92 = vmulq_laneq_f32(v86, v86, 3);
          v93 = vmuls_lane_f32(v86.f32[0], *v86.f32, 1);
          v94 = vmuls_lane_f32(v86.f32[1], v86, 2);
          v86.f32[0] = vmuls_lane_f32(v86.f32[0], v86, 2);
          v95 = vaddq_f32(v90, v90);
          v96.i32[3] = 0;
          v96.f32[0] = (0.5 - v91.f32[1]) - v91.f32[2];
          v96.f32[1] = v93 + v92.f32[2];
          v96.f32[2] = v86.f32[0] - v92.f32[1];
          v97.i32[3] = 0;
          v91.f32[0] = 0.5 - v91.f32[0];
          v98.i32[3] = 0;
          v98.f32[0] = v93 - v92.f32[2];
          v98.f32[1] = v91.f32[0] - v91.f32[2];
          v98.f32[2] = v94 + v92.f32[0];
          v38 = vmulq_n_f32(v96, v95.f32[0]);
          v41 = vmulq_lane_f32(v98, *v95.f32, 1);
          v97.f32[0] = v86.f32[0] + v92.f32[1];
          v97.f32[1] = v94 - v92.f32[0];
          v97.f32[2] = v91.f32[0] - v91.f32[1];
          v40 = vmulq_laneq_f32(v97, v95, 2);
        }
      }

      else
      {
        v38 = v103;
        v39 = v104;
        v40 = v101;
        v41 = v102;
      }

      v123 = v38;
      v124 = v41;
      v125 = v40;
      v126 = v39;
    }

    v99 = sub_1AF1DE360(a5);
    v100 = sub_1AF288070(10);
    return sub_1AF1C35C0(v99, v31, &v123, v100, *(a5 + 34), *(a5 + 35));
  }

  return result;
}

uint64_t sub_1AF2BD79C(uint64_t a1, __n128 a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    v10 = *(sub_1AF1B9B04(a4) + 48);
  }

  else
  {
    v10.n128_f64[0] = sub_1AF1B9F08(a4);
  }

  v21 = v10;
  objc_msgSend_nodeWithNodeRef_(VFXNode, v8, a4, v9, *&a2);
  *v11.i64 = (*(*(a1 + 32) + 16))(v21);
  v20 = v11;
  result = VFXVector3EqualToVector3(v11, v21);
  if ((result & 1) == 0)
  {
    v22 = v20;
    if (*(a1 + 40) == 1)
    {
      v13 = sub_1AF1B9A6C(a4);
      if (v13)
      {
        v23 = *sub_1AF1B9B04(v13);
        v24 = __invert_f4(v23);
        v22 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v24.columns[3], v24.columns[2], v20, 2), v24.columns[1], *v20.f32, 1), v24.columns[0], v20.f32[0]);
        v20 = v22;
      }
    }

    if (v19 != 1.0)
    {
      *v14.i64 = sub_1AF1B9F08(a4);
      v22 = vmlaq_n_f32(v14, vsubq_f32(v20, v14), v19);
    }

    v15 = sub_1AF1DE360(a5);
    v16 = sub_1AF1DE3A8(a5);
    v17 = sub_1AF288070(8);
    return sub_1AF1C35C0(v15, v16, &v22, v17, *(a5 + 34), *(a5 + 35));
  }

  return result;
}

void sub_1AF2BD9A8(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *&a2;
  if (*(a1 + 40) == 1)
  {
    v17.n128_f64[0] = sub_1AF1B9BEC(a10);
  }

  else
  {
    v17.n128_f64[0] = sub_1AF1BA0F4(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  v117 = v17;
  objc_msgSend_nodeWithNodeRef_(VFXNode, v15, a10, v16);
  *v18.i64 = (*(*(a1 + 32) + 16))(v117);
  if ((vminvq_u32(vceqq_f32(v18, v117)) & 0x80000000) != 0)
  {
    return;
  }

  v118 = v18;
  v120 = v18;
  if (*(a1 + 40) == 1)
  {
    v19 = sub_1AF1B9A6C(a10);
    if (v19)
    {
      v121 = *sub_1AF1B9B04(v19);
      v122 = __invert_f4(v121);
      v122.columns[3] = vmulq_f32(v122.columns[0], v122.columns[0]);
      v20 = vmulq_f32(v122.columns[1], v122.columns[1]);
      v21 = vmulq_f32(v122.columns[2], v122.columns[2]);
      v22 = vzip2q_s32(v122.columns[3], v21);
      v23 = vzip1q_s32(vzip1q_s32(v122.columns[3], v21), v20);
      v122.columns[3] = vtrn2q_s32(v122.columns[3], v20);
      v122.columns[3].i32[2] = v21.i32[1];
      v24 = vaddq_f32(vzip1q_s32(v22, vdupq_laneq_s32(v20, 2)), vaddq_f32(v23, v122.columns[3]));
      v122.columns[3].i64[0] = 0x80000000800000;
      v122.columns[3].i64[1] = 0x80000000800000;
      v25 = vcgeq_f32(v122.columns[3], v24);
      v24.i32[3] = 0;
      v26 = vrsqrteq_f32(v24);
      v27 = vmulq_f32(v26, vrsqrtsq_f32(v24, vmulq_f32(v26, v26)));
      v28 = v25;
      v28.i32[3] = 0;
      v29 = vbslq_s8(vcltzq_s32(v28), v24, vmulq_f32(v27, vrsqrtsq_f32(v24, vmulq_f32(v27, v27))));
      v30 = vmulq_n_f32(v122.columns[0], v29.f32[0]);
      v31 = vmulq_lane_f32(v122.columns[1], *v29.f32, 1);
      v32 = vmulq_laneq_f32(v122.columns[2], v29, 2);
      v33 = vuzp1q_s32(v32, v32);
      v34 = vuzp1q_s32(v31, v31);
      v35 = v30;
      if (v25.i32[0])
      {
        v36 = vmlaq_f32(vmulq_f32(vextq_s8(v33, v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(v34, v31, 0xCuLL));
        v35 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      }

      v37 = vuzp1q_s32(v30, v30);
      v38 = v31;
      if (v25.i32[1])
      {
        v39 = vmlaq_f32(vmulq_f32(vextq_s8(v37, v30, 0xCuLL), vnegq_f32(v32)), v30, vextq_s8(v33, v32, 0xCuLL));
        v38 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
      }

      if (v25.i32[2])
      {
        v40 = vmlaq_f32(vmulq_f32(vextq_s8(v34, v31, 0xCuLL), vnegq_f32(v30)), v31, vextq_s8(v37, v30, 0xCuLL));
        v32 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
      }

      v41 = (*v35.i32 + *&v38.i32[1]) + v32.f32[2];
      if (v41 > 0.0)
      {
        v42 = sqrtf(v41 + 1.0);
        *v43.f32 = vsub_f32(*&vzip2q_s32(v38, vuzp1q_s32(v38, v32)), *&vtrn2q_s32(v32, vzip2q_s32(v32, v35)));
        v43.f32[2] = *&v35.i32[1] - *v38.i32;
        v43.f32[3] = v42 * v42;
        v44 = 0.5 / v42;
LABEL_15:
        _Q0 = vmulq_n_f32(v43, v44);
LABEL_24:
        _S1 = v118.i32[3];
        v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL), vnegq_f32(_Q0)), v118, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
        v55 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q0, v118, 3), v118, _Q0, 3), vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
        __asm { FMLA            S3, S1, V0.S[3] }

        v55.i32[3] = _S3;
        v118 = v55;
        v120 = v55;
        goto LABEL_25;
      }

      if (*v35.i32 < *&v38.i32[1] || *v35.i32 < v32.f32[2])
      {
        if (*&v38.i32[1] <= v32.f32[2])
        {
          v106 = vzip2q_s32(v35, v38).u64[0];
          v107 = __PAIR64__(v35.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v32.f32[2] + 1.0) - *v35.i32) - *&v38.i32[1])));
          v108 = vdup_lane_s32(*v38.i8, 0);
          v109 = vsub_f32(*v35.i8, v108);
          v108.i32[0] = v107.i32[0];
          v108.i32[0] = vmul_f32(v107, v108).u32[0];
          v108.i32[1] = v109.i32[1];
          *v43.f32 = vadd_f32(v106, *v32.f32);
          *&v43.u32[2] = v108;
          v44 = 0.5 / v107.f32[0];
          goto LABEL_15;
        }

        v48 = sqrtf(((*&v38.i32[1] + 1.0) - *v35.i32) - v32.f32[2]);
        v52.f32[0] = *&v35.i32[1] + *v38.i32;
        v47 = vzip2q_s32(v35, v38).u64[0];
        v52.f32[1] = v48 * v48;
        *&v52.u32[2] = vext_s8(vadd_f32(*v32.f32, v47), vsub_f32(*v32.f32, v47), 4uLL);
      }

      else
      {
        v48 = sqrtf(((*v35.i32 + 1.0) - *&v38.i32[1]) - v32.f32[2]);
        v52.f32[0] = v48 * v48;
        v49 = *&v35.i32[1] + *v38.i32;
        v50 = vzip2q_s32(v35, v38).u64[0];
        LODWORD(v51) = vadd_f32(v50, *v32.f32).u32[0];
        HIDWORD(v51) = vsub_f32(v50, *&v32).i32[1];
        v52.f32[1] = v49;
        v52.i64[1] = v51;
      }

      _Q0 = vmulq_n_f32(v52, 0.5 / v48);
      goto LABEL_24;
    }
  }

LABEL_25:
  v60 = sub_1AF1DE3A8(a11);
  v61 = v60;
  if (v11 != 1.0)
  {
    v62 = *v60;
    v63 = vmulq_f32(*v60, v118);
    v116 = *v60;
    v64 = 1.0;
    v65 = 1.0 - v11;
    if (vaddv_f32(vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL))) >= 0.0)
    {
      v85 = vsubq_f32(v62, v118);
      v86 = vmulq_f32(v85, v85);
      v87 = vaddq_f32(v62, v118);
      v88 = vmulq_f32(v87, v87);
      v89 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v86.i8, *&vextq_s8(v86, v86, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v88.i8, *&vextq_s8(v88, v88, 8uLL)))));
      v90 = v89 + v89;
      _ZF = (v89 + v89) == 0.0;
      v91 = 1.0;
      if (!_ZF)
      {
        v91 = sinf(v90) / v90;
      }

      v92 = v91;
      v93 = vrecpe_f32(LODWORD(v91));
      v94 = vmul_f32(v93, vrecps_f32(LODWORD(v92), v93));
      LODWORD(v95) = vmul_f32(v94, vrecps_f32(LODWORD(v92), v94)).u32[0];
      if ((v65 * v90) != 0.0)
      {
        v114 = v95;
        *v94.i32 = sinf(v65 * v90);
        v95 = v114;
        v64 = *v94.i32 / (v65 * v90);
      }

      *v94.i32 = v65 * (v95 * v64);
      v96 = vdupq_lane_s32(v94, 0);
      v97 = v90 * v11;
      v98 = 1.0;
      if (v97 != 0.0)
      {
        v111 = v96;
        v115 = v95;
        v99 = sinf(v97);
        v96 = v111;
        v95 = v115;
        v98 = v99 / v97;
      }

      v84 = vmlaq_f32(vmulq_n_f32(v118, (v95 * v98) * v11), v116, v96);
    }

    else
    {
      v66 = vaddq_f32(v62, v118);
      v67 = vmulq_f32(v66, v66);
      v68 = vsubq_f32(v62, v118);
      v69 = vmulq_f32(v68, v68);
      v70 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v67.i8, *&vextq_s8(v67, v67, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL)))));
      v71 = v70 + v70;
      _ZF = (v70 + v70) == 0.0;
      v72 = 1.0;
      if (!_ZF)
      {
        v72 = sinf(v71) / v71;
      }

      v73 = v72;
      v74 = vrecpe_f32(LODWORD(v72));
      v75 = vmul_f32(v74, vrecps_f32(LODWORD(v73), v74));
      LODWORD(v76) = vmul_f32(v75, vrecps_f32(LODWORD(v73), v75)).u32[0];
      if ((v65 * v71) != 0.0)
      {
        v112 = v76;
        v77 = sinf(v65 * v71);
        v76 = v112;
        v64 = v77 / (v65 * v71);
      }

      v78.i32[1] = v118.i32[1];
      v79 = vnegq_f32(v118);
      *v78.i32 = v65 * (v76 * v64);
      v80 = vdupq_lane_s32(v78, 0);
      v81 = v71 * v11;
      v82 = 1.0;
      if (v81 != 0.0)
      {
        v110 = v80;
        v113 = v76;
        v119 = v79;
        v83 = sinf(v81);
        v80 = v110;
        v76 = v113;
        v79 = v119;
        v82 = v83 / v81;
      }

      v84 = vmlaq_f32(vmulq_n_f32(v79, (v76 * v82) * v11), v116, v80);
    }

    v100 = vmulq_f32(v84, v84);
    *v100.i8 = vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v101 = vdupq_lane_s32(vadd_f32(*v100.i8, vdup_lane_s32(*v100.i8, 1)), 0);
    v102 = vrsqrteq_f32(v101);
    v103 = vmulq_f32(v102, vrsqrtsq_f32(v101, vmulq_f32(v102, v102)));
    v120 = vbslq_s8(vceqzq_f32(v101), v84, vmulq_f32(vmulq_f32(v103, vrsqrtsq_f32(v101, vmulq_f32(v103, v103))), v84));
  }

  v104 = sub_1AF1DE360(a11);
  v105 = sub_1AF288070(9);
  sub_1AF1C35C0(v104, v61, &v120, v105, *(a11 + 34), *(a11 + 35));
}

void sub_1AF2BE40C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3, a4);

  sub_1AF1530BC(v4, v5);
}

void sub_1AF2BE6A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 48) / 180.0 * 3.14159265;
  v6 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3, a4);

  sub_1AF15317C(v4, v6, v5);
}

void sub_1AF2BEBDC(void *a1, uint64_t a2, void *a3)
{
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_identifier(a1, v6, v7, v8);
    if (v9)
    {

      objc_msgSend_setValue_forKey_(a3, v10, a2, v9);
    }

    else if ((byte_1EB658858 & 1) == 0)
    {
      byte_1EB658858 = 1;
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF528C(v11);
      }
    }
  }
}

uint64_t sub_1AF2BEC88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_behaviorGraph(a2, a2, a3, a4);
  v9 = objc_msgSend_coreEntityHandle(v5, v6, v7, v8);
  v13 = objc_msgSend_entityObject(v9, v10, v11, v12);
  v16 = *(a1 + 32);

  return objc_msgSend_updateVFXObjectReferences_(v13, v14, v16, v15);
}

void *sub_1AF2BECCC(uint64_t a1, void *key, int a3, uint64_t a4)
{
  v4 = key;
  if (a4)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 32), key);
      if (Value)
      {
        v7 = Value;
        (*(a4 + 16))(a4, Value);
        return v7;
      }
    }
  }

  return v4;
}

const void *sub_1AF2BED30(void *key, uint64_t a2)
{
  if (!a2)
  {
    Mutable = 0;
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  Mutable = *(a2 + 8);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a2 + 8) = Mutable;
    if (!Mutable)
    {
      goto LABEL_7;
    }
  }

  result = CFDictionaryGetValue(Mutable, key);
  if (result)
  {
    return result;
  }

  v6 = 0;
LABEL_8:
  sub_1AFDF52D0(key, v6, a2, Mutable, &v7);
  return v7;
}

CFMutableDictionaryRef sub_1AF2BEDEC(const __CFAllocator *a1)
{

  return CFDictionaryCreateMutable(a1, 0, 0, 0);
}

uint64_t sub_1AF2BF6A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_allKeys(*(*(a1 + 32) + 40), a2, a3, a4, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v24, 16);
  if (result)
  {
    v10 = result;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = objc_msgSend_valueForKey_(*(*(a1 + 32) + 40), v8, v13, v9);
        v18 = objc_msgSend_rawValue(v14, v15, v16, v17);
        sub_1AF16AB94(*(*(a1 + 32) + 16), v13, v18, v19);
        ++v12;
      }

      while (v10 != v12);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v20, v24, 16);
      v10 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF2BFB1C(uint64_t a1)
{
  result = sub_1AF1C3FAC(*(a1 + 32));
  if (!result)
  {
    sub_1AF1CEA20(*(a1 + 40));
    sub_1AF16A358(*(a1 + 32), *(a1 + 40));
    v3 = *(a1 + 40);

    return sub_1AF1CEA9C(v3);
  }

  return result;
}

uint64_t sub_1AF2BFE34(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2BFE94(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2C0158(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  result = objc_msgSend_isPublic(a3, a2, a3, a4);
  if (*(a1 + 40) == result)
  {
    v9 = *(a1 + 32);

    return objc_msgSend_addObject_(v9, v7, a2, v8);
  }

  return result;
}

void *sub_1AF2C023C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_type(a1, a2, a3, a4);
  v9 = objc_msgSend_rawValue(a1, v6, v7, v8);
  v13 = v9;
  if (v5)
  {
    if (v5 == 4 || v5 == 9)
    {
      v14 = MEMORY[0x1E696AD98];
      v16 = *objc_msgSend_bytes(v9, v10, v11, v12);

      return objc_msgSend_numberWithInt_(v14, v15, v16, v17);
    }

    else
    {
      v23 = sub_1AF16A700(v5);
      if (v23)
      {

        return VFXValueFromDataAndType(v13, v23, v24, v25);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v19 = MEMORY[0x1E696AEC0];
    v21 = objc_msgSend_bytes(v9, v10, v11, v12);

    return objc_msgSend_stringWithUTF8String_(v19, v20, v21, v22);
  }
}

void sub_1AF2C05DC(uint64_t a1)
{
  sub_1AF16AAF8(*(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

void sub_1AF2C0B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2C0B94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(a2, a2, a3, a4);
  result = sub_1AF1BC210(v5);
  *(*(*(a1 + 32) + 8) + 24) += HIDWORD(result);
  return result;
}

uint64_t sub_1AF2C0C2C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24))
      {
        v3 = result;
        v4 = sub_1AF146110(result);
        result = sub_1AF1BAAD8(v4, *(a2 + 40));
        if (result)
        {
          if (sub_1AF145EB0(v3))
          {
            v5 = *(v3 + 48);
          }

          else
          {
            v6 = *(a2 + 16);
            v5 = v22;
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = sub_1AF2C0D70;
            v22[3] = &unk_1E7A7E738;
            v23 = *(a2 + 24);
            v24 = v3;
            v25 = v6;
          }

          sub_1AF1B81E4(v4, 0, &v20);
          v7 = *(a2 + 8);
          v8 = sub_1AF146200(v3);
          v11 = 0;
          if ((v8 & 1) == 0)
          {
            if (sub_1AF145EB0(v3))
            {
              objc_msgSend_setMaterialType_(v7, v9, 2, v10);
LABEL_13:
              objc_msgSend_setBoundingBoxMin_(*(a2 + 8), v12, v13, v14, *vsubq_f32(v20, v21).i64);
              objc_msgSend_setBoundingBoxMax_(*(a2 + 8), v15, v16, v17, *vaddq_f32(v20, v21).i64);
              objc_msgSend_setEncodeHandler_(*(a2 + 8), v18, v5, v19);
              return (*(*a2 + 16))();
            }

            v11 = 1;
          }

          objc_msgSend_setMaterialType_(v7, v9, v11, v10);
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF2C0D70(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AF1CEA20(*(a1 + 40));
  objc_msgSend_setCurrentExternalDrawCallContext_(*(a1 + 32), v5, a3, v6);
  v10 = objc_msgSend_renderTargetInfo(a3, v7, v8, v9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v14 = 0;
  LOBYTE(v71) = objc_msgSend_sampleCount(v10, v11, v12, v13);
  do
  {
    *(&v68 + v14) = objc_msgSend_colorPixelFormatAtIndex_(v10, v15, v14, v16);
    ++v14;
  }

  while (v14 != 8);
  v69 = objc_msgSend_depthPixelFormat(v10, v15, v17, v16);
  v70 = objc_msgSend_stencilPixelFormat(v10, v18, v19, v20);
  v24 = objc_msgSend_stencilInfo(a3, v21, v22, v23);
  v25 = sub_1AF1461DC(*(a1 + 48));
  v26 = *(a1 + 56);
  memset(v73, 0, sizeof(v73));
  *&v27 = sub_1AF1C458C(v25, v73).n128_u64[0];
  v31 = objc_msgSend_frontFaceTest(v24, v28, v29, v30, v27);
  v73[5] = v31 != 0;
  if (v31 && (v35 = objc_msgSend_frontFaceTest(v24, v32, v33, v34), v39 = objc_msgSend_frontReferenceValue(v24, v36, v37, v38), v42 = sub_1AF1C46C8(v35, v39, v40, v41), *&v73[7] = v42, v73[13] = BYTE6(v42), *&v73[11] = WORD2(v42), (v73[5] & 1) != 0))
  {
    v46 = objc_msgSend_backFaceTest(v24, v43, v44, v45);
    v73[6] = v46 != 0;
    if (v46)
    {
      v50 = objc_msgSend_backFaceTest(v24, v47, v48, v49);
      v54 = objc_msgSend_backReferenceValue(v24, v51, v52, v53);
      v57 = sub_1AF1C46C8(v50, v54, v55, v56);
      *&v73[14] = v57;
      v73[20] = BYTE6(v57);
      *&v73[18] = WORD2(v57);
    }
  }

  else
  {
    v73[6] = 0;
  }

  *v72 = *v73;
  *&v72[13] = *&v73[13];
  v58 = sub_1AF1C4354(v72);
  sub_1AF1D626C(v26, v58);
  CFRelease(v58);
  objc_msgSend_updateViewConstantsWithWorld_(*(a1 + 32), v59, *(a1 + 40), v60);
  objc_msgSend_updateRenderPassDescriptor_(*(a1 + 32), v61, &v68, v62);
  objc_msgSend__clearRenderCaches(*(a1 + 32), v63, v64, v65);
  objc_msgSend_drawRenderElement_withOverrides_(*(a1 + 32), v66, *(a1 + 48), *(a1 + 56));
  return sub_1AF1CEA9C(*(a1 + 40));
}

uint64_t sub_1AF2C0F58(const void *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF565C(v2);
    }
  }

  result = sub_1AF1706B8(a1);
  switch(result)
  {
    case 2:
      return objc_msgSend_bezierCurveGeometryWithGeometryRef_(VFXBezierCurveGeometry, v4, a1, v5);
    case 1:
      return objc_msgSend_meshWithMeshRef_(VFXMesh, v4, a1, v5);
    case 0:
      v6 = CFGetTypeID(a1);
      v7 = CFCopyTypeIDDescription(v6);
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD8778(v7, v8);
      }

      CFRelease(v7);
      return 0;
  }

  return result;
}

void sub_1AF2C1024(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = @"mesh";
LABEL_6:

    objc_msgSend_encodeObject_forKey_(a1, v4, a2, v5);
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = @"curve";
    goto LABEL_6;
  }

  v6 = sub_1AF0D5194();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF56E0(a2, v6);
  }
}

VFXMesh *sub_1AF2C10E0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_containsValueForKey_(a1, a2, @"kGeometrySourceSemanticVertex", a4) & 1) != 0 || objc_msgSend_containsValueForKey_(a1, v5, @"kGeometrySourceSemanticPosition", v6))
  {
    v9 = objc_alloc_init(VFXMesh);
    objc_msgSend_decodeMeshWithCoder_(v9, v10, a1, v11);

    return v9;
  }

  else
  {
    if (objc_msgSend_containsValueForKey_(a1, v7, @"mesh", v8) || objc_msgSend_containsValueForKey_(a1, v13, @"mesh", v14))
    {
      v18 = objc_opt_class();
      v19 = @"mesh";
    }

    else
    {
      if (!objc_msgSend_containsValueForKey_(a1, v15, @"curve", v16))
      {
        return 0;
      }

      v18 = objc_opt_class();
      v19 = @"curve";
    }

    return objc_msgSend_vfx_decodeObjectOfClass_forKey_(a1, v17, v18, v19);
  }
}

uint64_t sub_1AF2C11F4()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  return objc_msgSend_setWithObjects_(v0, v3, v1, v4, v2, 0);
}

uint64_t sub_1AF2C16DC(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E696B098];
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v29 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v28 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);

  return objc_msgSend_valueWithVFXFloat3_(v5, v24, v25, v26, COERCE_DOUBLE(__PAIR64__(v28, v29)));
}

uint64_t sub_1AF2C1768(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E696B098];
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v35 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v34 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);

  return objc_msgSend_valueWithVFXFloat4_(v5, v30, v31, v32, COERCE_DOUBLE(__PAIR64__(v34, v35)));
}

uint64_t sub_1AF2C1810(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E696B098];
  v6 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4);
  objc_msgSend_floatValue(v6, v7, v8, v9);
  v121 = v10;
  v13 = objc_msgSend_objectAtIndexedSubscript_(a3, v11, 1, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  v118 = v17;
  v20 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 2, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(a3, v24, 3, v25);
  objc_msgSend_floatValue(v26, v27, v28, v29);
  v122 = COERCE_DOUBLE(__PAIR64__(v118, v121));
  v32 = objc_msgSend_objectAtIndexedSubscript_(a3, v30, 4, v31);
  objc_msgSend_floatValue(v32, v33, v34, v35);
  v119 = v36;
  v39 = objc_msgSend_objectAtIndexedSubscript_(a3, v37, 5, v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);
  v115 = v43;
  v46 = objc_msgSend_objectAtIndexedSubscript_(a3, v44, 6, v45);
  objc_msgSend_floatValue(v46, v47, v48, v49);
  v52 = objc_msgSend_objectAtIndexedSubscript_(a3, v50, 7, v51);
  objc_msgSend_floatValue(v52, v53, v54, v55);
  v120 = COERCE_DOUBLE(__PAIR64__(v115, v119));
  v58 = objc_msgSend_objectAtIndexedSubscript_(a3, v56, 8, v57);
  objc_msgSend_floatValue(v58, v59, v60, v61);
  v116 = v62;
  v65 = objc_msgSend_objectAtIndexedSubscript_(a3, v63, 9, v64);
  objc_msgSend_floatValue(v65, v66, v67, v68);
  v113 = v69;
  v72 = objc_msgSend_objectAtIndexedSubscript_(a3, v70, 10, v71);
  objc_msgSend_floatValue(v72, v73, v74, v75);
  v78 = objc_msgSend_objectAtIndexedSubscript_(a3, v76, 11, v77);
  objc_msgSend_floatValue(v78, v79, v80, v81);
  v117 = COERCE_DOUBLE(__PAIR64__(v113, v116));
  v84 = objc_msgSend_objectAtIndexedSubscript_(a3, v82, 12, v83);
  objc_msgSend_floatValue(v84, v85, v86, v87);
  v114 = v88;
  v91 = objc_msgSend_objectAtIndexedSubscript_(a3, v89, 13, v90);
  objc_msgSend_floatValue(v91, v92, v93, v94);
  v112 = v95;
  v98 = objc_msgSend_objectAtIndexedSubscript_(a3, v96, 14, v97);
  objc_msgSend_floatValue(v98, v99, v100, v101);
  v104 = objc_msgSend_objectAtIndexedSubscript_(a3, v102, 15, v103);
  objc_msgSend_floatValue(v104, v105, v106, v107);

  return objc_msgSend_valueWithVFXMatrix4_(v5, v108, v109, v110, v122, v120, v117, COERCE_DOUBLE(__PAIR64__(v112, v114)));
}

uint64_t sub_1AF2C19E8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v18[3] = *MEMORY[0x1E69E9840];
  objc_msgSend_VFXFloat3Value(a1, a2, a3, a4);
  v17 = v4;
  v18[0] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
  HIDWORD(v8) = DWORD1(v17);
  LODWORD(v8) = DWORD1(v17);
  v18[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v9, v10, v11, v8);
  v18[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v12, v13, v14, COERCE_DOUBLE(__PAIR64__(DWORD1(v17), DWORD2(v17))));
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v18, 3);
}

uint64_t sub_1AF2C1A8C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  objc_msgSend_VFXFloat4Value(a1, a2, a3, a4);
  v20 = v4;
  v21[0] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
  HIDWORD(v8) = DWORD1(v20);
  LODWORD(v8) = DWORD1(v20);
  v21[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v9, v10, v11, v8);
  v21[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v12, v13, v14, COERCE_DOUBLE(__PAIR64__(DWORD1(v20), DWORD2(v20))));
  v21[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v15, v16, v17, COERCE_DOUBLE(__PAIR64__(DWORD1(v20), HIDWORD(v20))));
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v21, 4);
}

uint64_t sub_1AF2C1B44(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v66[16] = *MEMORY[0x1E69E9840];
  objc_msgSend_VFXMatrix4Value(a1, a2, a3, a4);
  v62 = v4;
  v63 = v5;
  v64 = v6;
  v65 = v7;
  v66[0] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v8, v9, v10);
  HIDWORD(v11) = DWORD1(v62);
  LODWORD(v11) = DWORD1(v62);
  v66[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v12, v13, v14, v11);
  v66[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v15, v16, v17, COERCE_DOUBLE(__PAIR64__(DWORD1(v62), DWORD2(v62))));
  v66[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v18, v19, v20, COERCE_DOUBLE(__PAIR64__(DWORD1(v62), HIDWORD(v62))));
  v66[4] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v21, v22, v23, *&v63);
  HIDWORD(v24) = DWORD1(v63);
  LODWORD(v24) = DWORD1(v63);
  v66[5] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v25, v26, v27, v24);
  v66[6] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v28, v29, v30, COERCE_DOUBLE(__PAIR64__(DWORD1(v63), DWORD2(v63))));
  v66[7] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v31, v32, v33, COERCE_DOUBLE(__PAIR64__(DWORD1(v63), HIDWORD(v63))));
  v66[8] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v34, v35, v36, *&v64);
  HIDWORD(v37) = DWORD1(v64);
  LODWORD(v37) = DWORD1(v64);
  v66[9] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v38, v39, v40, v37);
  v66[10] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v41, v42, v43, COERCE_DOUBLE(__PAIR64__(DWORD1(v64), DWORD2(v64))));
  v66[11] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v44, v45, v46, COERCE_DOUBLE(__PAIR64__(DWORD1(v64), HIDWORD(v64))));
  v66[12] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v47, v48, v49, *&v65);
  HIDWORD(v50) = DWORD1(v65);
  LODWORD(v50) = DWORD1(v65);
  v66[13] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v51, v52, v53, v50);
  v66[14] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v54, v55, v56, COERCE_DOUBLE(__PAIR64__(DWORD1(v65), DWORD2(v65))));
  v66[15] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v57, v58, v59, COERCE_DOUBLE(__PAIR64__(DWORD1(v65), HIDWORD(v65))));
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v60, v66, 16);
}

uint64_t sub_1AF2C1DA4()
{
  v2[98] = *MEMORY[0x1E69E9840];
  v2[0] = @"VFXWorld";
  v2[1] = objc_opt_class();
  v2[2] = @"VFXColor";
  v2[3] = objc_opt_class();
  v2[4] = @"CAMediaTimingFunction";
  v2[5] = objc_opt_class();
  v2[6] = @"CABasicAnimation";
  v2[7] = objc_opt_class();
  v2[8] = @"CAAnimationGroup";
  v2[9] = objc_opt_class();
  v2[10] = @"CAKeyframeAnimation";
  v2[11] = objc_opt_class();
  v2[12] = @"CALayer";
  v2[13] = objc_opt_class();
  v2[14] = @"NSValue";
  v2[15] = objc_opt_class();
  v2[16] = @"VFXImage";
  v2[17] = objc_opt_class();
  v2[18] = @"VFXView";
  v2[19] = objc_opt_class();
  v2[20] = @"VFXAssetRegistry";
  v2[21] = objc_opt_class();
  v2[22] = @"VFXAssetNode";
  v2[23] = objc_opt_class();
  v2[24] = @"VFXCoreAsset";
  v2[25] = objc_opt_class();
  v2[26] = @"VFXFileAsset";
  v2[27] = objc_opt_class();
  v2[28] = @"VFXModel";
  v2[29] = objc_opt_class();
  v2[30] = @"VFXMaterialProperty";
  v2[31] = objc_opt_class();
  v2[32] = @"VFXLight";
  v2[33] = objc_opt_class();
  v2[34] = @"VFXParametricModel";
  v2[35] = objc_opt_class();
  v2[36] = @"VFXMeshElement";
  v2[37] = objc_opt_class();
  v2[38] = @"VFXRenderer";
  v2[39] = objc_opt_class();
  v2[40] = @"VFXMorpher";
  v2[41] = objc_opt_class();
  v2[42] = @"VFXCamera";
  v2[43] = objc_opt_class();
  v2[44] = @"VFXLOD";
  v2[45] = objc_opt_class();
  v2[46] = @"VFXMaterial";
  v2[47] = objc_opt_class();
  v2[48] = @"VFXProgram";
  v2[49] = objc_opt_class();
  v2[50] = @"VFXConstraint";
  v2[51] = objc_opt_class();
  v2[52] = @"VFXPhysicsJoint";
  v2[53] = objc_opt_class();
  v2[54] = @"VFXMeshSource";
  v2[55] = objc_opt_class();
  v2[56] = @"VFXFloor";
  v2[57] = objc_opt_class();
  v2[58] = @"VFXShape";
  v2[59] = objc_opt_class();
  v2[60] = @"VFXText";
  v2[61] = objc_opt_class();
  v2[62] = @"VFXWorldLoader";
  v2[63] = objc_opt_class();
  v2[64] = @"VFXAnimationEvent";
  v2[65] = objc_opt_class();
  v2[66] = @"VFXModelTessellator";
  v2[67] = objc_opt_class();
  v2[68] = @"VFXForceField";
  v2[69] = objc_opt_class();
  v2[70] = @"VFXPhysicsBallSocketJoint";
  v2[71] = objc_opt_class();
  v2[72] = @"VFXPhysicsSliderJoint";
  v2[73] = objc_opt_class();
  v2[74] = @"VFXPhysicsContact";
  v2[75] = objc_opt_class();
  v2[76] = @"VFXHitTestResult";
  v2[77] = objc_opt_class();
  v2[78] = @"VFXPhysicsShape";
  v2[79] = objc_opt_class();
  v2[80] = @"VFXPhysicsHingeJoint";
  v2[81] = objc_opt_class();
  v2[82] = @"VFXIKConstraint";
  v2[83] = objc_opt_class();
  v2[84] = @"VFXLookAtConstraint";
  v2[85] = objc_opt_class();
  v2[86] = @"VFXPhysicsBody";
  v2[87] = objc_opt_class();
  v2[88] = @"VFXPhysicsWorld";
  v2[89] = objc_opt_class();
  v2[90] = @"VFXNode";
  v2[91] = objc_opt_class();
  v2[92] = @"VFXBoundingBox";
  v2[93] = objc_opt_class();
  v2[94] = @"VFXBoundingSphere";
  v2[95] = objc_opt_class();
  v2[96] = @"VFXTransaction";
  v2[97] = objc_opt_class();
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v0, v2, 98);
}

uint64_t sub_1AF2C22E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v206[202] = *MEMORY[0x1E69E9840];
  v206[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, 0, a4);
  v206[1] = @"VFXEditingLocalSpace";
  v206[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v4, 1, v5);
  v206[3] = @"VFXEditingParentSpace";
  v206[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, 2, v7);
  v206[5] = @"VFXEditingWorldSpace";
  v206[6] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, 3, v9);
  v206[7] = @"VFXEditingScreenSpace";
  v206[8] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v10, 0, v11);
  v206[9] = @"VFXManipulatorPositionCenter";
  v206[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 1, v13);
  v206[11] = @"VFXManipulatorPositionMin";
  v206[12] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v14, 2, v15);
  v206[13] = @"VFXManipulatorPositionMax";
  v206[14] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, 0, v17);
  v206[15] = @"VFXCameraProjectionDirectionVertical";
  v206[16] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v18, 1, v19);
  v206[17] = @"VFXCameraProjectionDirectionHorizontal";
  v206[18] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v20, 0, v21);
  v206[19] = @"VFXInteractionModeFly";
  v206[20] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v22, 1, v23);
  v206[21] = @"VFXInteractionModeOrbitTurntable";
  v206[22] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, 2, v25);
  v206[23] = @"VFXInteractionModeOrbitAngleMapping";
  v206[24] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v26, 3, v27);
  v206[25] = @"VFXInteractionModeOrbitCenteredArcball";
  v206[26] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v28, 4, v29);
  v206[27] = @"VFXInteractionModeOrbitArcball";
  v206[28] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v30, 5, v31);
  v206[29] = @"VFXInteractionModePan";
  v206[30] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v32, 6, v33);
  v206[31] = @"VFXInteractionModeTruck";
  v206[32] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v34, 0, v35);
  v206[33] = @"VFXCameraFillModeFit";
  v206[34] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v36, 1, v37);
  v206[35] = @"VFXCameraFillModeFill";
  v206[36] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v38, 2, v39);
  v206[37] = @"VFXCameraFillModeFitVertically";
  v206[38] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v40, 3, v41);
  v206[39] = @"VFXCameraFillModeFitHorizontally";
  v206[40] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v42, 4, v43);
  v206[41] = @"VFXCameraFillModeStretch";
  v206[42] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v44, 0, v45);
  v206[43] = @"VFXMeshPrimitiveTypeTriangles";
  v206[44] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v46, 1, v47);
  v206[45] = @"VFXMeshPrimitiveTypeTriangleStrip";
  v206[46] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, 2, v49);
  v206[47] = @"VFXMeshPrimitiveTypeLine";
  v206[48] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v50, 3, v51);
  v206[49] = @"VFXMeshPrimitiveTypePoint";
  v206[50] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v52, 4, v53);
  v206[51] = @"VFXMeshPrimitiveTypePolygon";
  v206[52] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v54, 0, v55);
  v206[53] = @"VFXTessellationSmoothingModeNone";
  v206[54] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v56, 1, v57);
  v206[55] = @"VFXTessellationSmoothingModePNTriangles";
  v206[56] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v58, 2, v59);
  v206[57] = @"VFXTessellationSmoothingModePhong";
  v206[58] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v60, 0, v61);
  v206[59] = @"VFXSubdivisionBoundaryInterpolationRuleNone";
  v206[60] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v62, 1, v63);
  v206[61] = @"VFXSubdivisionBoundaryInterpolationRuleEdgeOnly";
  v206[62] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v64, 2, v65);
  v206[63] = @"VFXSubdivisionBoundaryInterpolationRuleEdgeAndCorner";
  v206[64] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v66, 0, v67);
  v206[65] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearNone";
  v206[66] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v68, 1, v69);
  v206[67] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearCornersOnly";
  v206[68] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, 2, v71);
  v206[69] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus1";
  v206[70] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v72, 3, v73);
  v206[71] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus2";
  v206[72] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v74, 4, v75);
  v206[73] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearBoundaries";
  v206[74] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v76, 5, v77);
  v206[75] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearAll";
  v206[76] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v78, 0, v79);
  v206[77] = @"VFXSubdivisionNormalSmoothingModeCrossTriangle";
  v206[78] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v80, 1, v81);
  v206[79] = @"VFXSubdivisionNormalSmoothingModeCrossQuad";
  v206[80] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v82, 2, v83);
  v206[81] = @"VFXSubdivisionNormalSmoothingModeLimit";
  v206[82] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v84, 0, v85);
  v206[83] = @"VFXHitTestSearchModeClosest";
  v206[84] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v86, 1, v87);
  v206[85] = @"VFXHitTestSearchModeAll";
  v206[86] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v88, 2, v89);
  v206[87] = @"VFXHitTestSearchModeAny";
  v206[88] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v90, 0, v91);
  v206[89] = @"VFXLODThresholdModeWorldSpaceDistance";
  v206[90] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v92, 1, v93);
  v206[91] = @"VFXLODThresholdModeScreenSpaceRadius";
  v206[92] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v94, 0, v95);
  v206[93] = @"VFXMorpherCalculationModeNormalized";
  v206[94] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v96, 1, v97);
  v206[95] = @"VFXMorpherCalculationModeAdditive";
  v206[96] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v98, 0, v99);
  v206[97] = @"VFXChamferModeBoth";
  v206[98] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v100, 1, v101);
  v206[99] = @"VFXChamferModeFront";
  v206[100] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v102, 2, v103);
  v206[101] = @"VFXChamferModeBack";
  v206[102] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v104, 0, v105);
  v206[103] = @"VFXReferenceLoadingPolicyImmediate";
  v206[104] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v106, 1, v107);
  v206[105] = @"VFXReferenceLoadingPolicyOnDemand";
  v206[106] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v108, 0, v109);
  v206[107] = @"VFXAntialiasingModeNone";
  v206[108] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v110, 1, v111);
  v206[109] = @"VFXAntialiasingModeMultisampling2X";
  v206[110] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v112, 2, v113);
  v206[111] = @"VFXAntialiasingModeMultisampling4X";
  v206[112] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v114, 4, v115);
  v206[113] = @"VFXWorldLoaderStatusParsing";
  v206[114] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v116, 8, v117);
  v206[115] = @"VFXWorldLoaderStatusValidating";
  v206[116] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v118, 12, v119);
  v206[117] = @"VFXWorldLoaderStatusProcessing";
  v206[118] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v120, 16, v121);
  v206[119] = @"VFXWorldLoaderStatusComplete";
  v206[120] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v122, 0xFFFFFFFFLL, v123);
  v206[121] = @"VFXWorldLoaderStatusError";
  v206[122] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v124, 0, v125);
  v206[123] = @"VFXCullModeBack";
  v206[124] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v126, 1, v127);
  v206[125] = @"VFXCullModeFront";
  v206[126] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v128, 0, v129);
  v206[127] = @"VFXBufferFrequencyPerFrame";
  v206[128] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v130, 1, v131);
  v206[129] = @"VFXBufferFrequencyPerNode";
  v206[130] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v132, 2, v133);
  v206[131] = @"VFXBufferFrequencyPerShadable";
  v206[132] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v134, 0, v135);
  v206[133] = @"VFXFillModeFill";
  v206[134] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v136, 1, v137);
  v206[135] = @"VFXFillModeLines";
  v206[136] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v138, 0, v139);
  v206[137] = @"VFXCullModeBack";
  v206[138] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v140, 1, v141);
  v206[139] = @"VFXCullModeFront";
  v206[140] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v142, 0, v143);
  v206[141] = @"VFXShadingModelPhysicallyBased";
  v206[142] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v144, 1, v145);
  v206[143] = @"VFXShadingModelPhong";
  v206[144] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v146, 2, v147);
  v206[145] = @"VFXShadingModelConstant";
  v206[146] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v148, 3, v149);
  v206[147] = @"VFXShadingModelShadowOnly";
  v206[148] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v150, 0, v151);
  v206[149] = @"VFXTransparencyModeDefault";
  v206[150] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v152, 1, v153);
  v206[151] = @"VFXTransparencyModeSingleLayer";
  v206[152] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v154, 2, v155);
  v206[153] = @"VFXTransparencyModeDualLayer";
  v206[154] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v156, 1, v157);
  v206[155] = @"VFXBlendModeAlpha";
  v206[156] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v158, 2, v159);
  v206[157] = @"VFXBlendModeAdd";
  v206[158] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v160, 3, v161);
  v206[159] = @"VFXBlendModeSubtract";
  v206[160] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v162, 4, v163);
  v206[161] = @"VFXBlendModeMultiply";
  v206[162] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v164, 5, v165);
  v206[163] = @"VFXBlendModeScreen";
  v206[164] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v166, 0, v167);
  v206[165] = @"VFXBlendModeOpaque";
  v206[166] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v168, 6, v169);
  v206[167] = @"VFXBlendModeMax";
  v206[168] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v170, 0, v171);
  v206[169] = @"VFXFilterModeNone";
  v206[170] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v172, 1, v173);
  v206[171] = @"VFXFilterModeNearest";
  v206[172] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v174, 2, v175);
  v206[173] = @"VFXFilterModeLinear";
  v206[174] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v176, 1, v177);
  v206[175] = @"VFXWrapModeClamp";
  v206[176] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v178, 2, v179);
  v206[177] = @"VFXWrapModeRepeat";
  v206[178] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v180, 3, v181);
  v206[179] = @"VFXWrapModeClampToZero";
  v206[180] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v182, 4, v183);
  v206[181] = @"VFXWrapModeMirror";
  v206[182] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v184, 0, v185);
  v206[183] = @"VFXPhysicsBodyTypeStatic";
  v206[184] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v186, 1, v187);
  v206[185] = @"VFXPhysicsBodyTypeDynamic";
  v206[186] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v188, 2, v189);
  v206[187] = @"VFXPhysicsBodyTypeKinematic";
  v206[188] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v190, 0, v191);
  v206[189] = @"VFXForceFieldScopeInsideExtent";
  v206[190] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v192, 1, v193);
  v206[191] = @"VFXForceFieldScopeOutsideExtent";
  v206[192] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v194, 0, v195);
  v206[193] = @"VFXForceFieldShapeNone";
  v206[194] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v196, 1, v197);
  v206[195] = @"VFXForceFieldShapeBox";
  v206[196] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v198, 2, v199);
  v206[197] = @"VFXForceFieldShapeSphere";
  v206[198] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v200, 3, v201);
  v206[199] = @"VFXForceFieldShapeCone";
  v206[200] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v202, 4, v203);
  v206[201] = @"VFXForceFieldShapeTube";
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v204, v206, 202);
}

uint64_t VFXExportJavaScriptModule(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"_VFXIsLoaded", a4);
  if (!v5 || (result = objc_msgSend_toBool(v5, v6, v7, v8), (result & 1) == 0))
  {
    v10 = sub_1AF2C1DA4();
    v14 = objc_msgSend_count(v10, v11, v12, v13);
    v18 = v14;
    if (v14 >= 1)
    {
      v19 = 0;
      do
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(v10, v15, v19, v17);
        v23 = objc_msgSend_objectAtIndexedSubscript_(v10, v21, v19 + 1, v22);
        v14 = sub_1AF2C2F20(a1, v20, v23);
        v19 += 2;
      }

      while (v19 < v18);
    }

    v24 = sub_1AF2C22E8(v14, v15, v16, v17);
    v31 = objc_msgSend_count(v24, v25, v26, v27);
    if (v31 >= 1)
    {
      v32 = 0;
      do
      {
        v33 = objc_msgSend_globalObject(a1, v28, v29, v30);
        v36 = objc_msgSend_objectAtIndexedSubscript_(v24, v34, v32, v35);
        v39 = objc_msgSend_objectAtIndexedSubscript_(v24, v37, v32 + 1, v38);
        objc_msgSend_setValue_forProperty_(v33, v40, v36, v39);
        v32 += 2;
      }

      while (v32 < v31);
    }

    v41 = objc_msgSend_globalObject(a1, v28, v29, v30);
    v45 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v42, 1, v43);

    return objc_msgSend_setValue_forProperty_(v41, v44, v45, @"_VFXIsLoaded");
  }

  return result;
}

uint64_t sub_1AF2C2F20(void *a1, void *a2, objc_class *a3)
{
  result = objc_opt_class();
  if (result != a3)
  {
    Superclass = class_getSuperclass(a3);
    if (Superclass)
    {
      v11 = Superclass;
      v12 = NSStringFromClass(Superclass);
      sub_1AF2C2F20(a1, v12, v11);
    }

    v13 = objc_msgSend_globalObject(a1, v8, v9, v10);
    v16 = objc_msgSend_valueForProperty_(v13, v14, a2, v15);
    result = objc_msgSend_isUndefined(v16, v17, v18, v19);
    if (result)
    {
      if (objc_msgSend_hasPrefix_(a2, v20, @"CA", v21))
      {
        v24 = MEMORY[0x1E696AEC0];
        v46 = objc_msgSend_substringFromIndex_(a2, v22, 2, v23);
        v27 = objc_msgSend_stringWithFormat_(v24, v25, @"VFXJS%@JSExport", v26, v46);
      }

      else
      {
        hasPrefix = objc_msgSend_hasPrefix_(a2, v22, @"NS", v23);
        v34 = MEMORY[0x1E696AEC0];
        if (hasPrefix)
        {
          v47 = objc_msgSend_substringFromIndex_(a2, v32, 2, v33);
          v27 = objc_msgSend_stringWithFormat_(v34, v35, @"VFX%@JSExport", v36, v47);
        }

        else
        {
          v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32, @"%@JSExport", v33, a2);
        }
      }

      v37 = objc_msgSend_UTF8String(v27, v28, v29, v30);
      result = objc_getProtocol(v37);
      if (result || (result = objc_opt_respondsToSelector(), (result & 1) != 0) && (result = objc_msgSend_VFXJSExportProtocol(a3, v43, v44, v45)) != 0)
      {
        class_addProtocol(a3, result);
        v41 = objc_msgSend_globalObject(a1, v38, v39, v40);

        return objc_msgSend_setValue_forProperty_(v41, v42, a3, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2CBA78(uint64_t a1)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](a1, sel_documentEnclosingURL, v2, v3);
}

CFStringRef sub_1AF2CC368(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

void *sub_1AF2CC858(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != 5)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, v5, a4);
  if (v5)
  {
    v10 = 0;
    v11 = 8 * v5;
    do
    {
      v12 = objc_msgSend_valueWithCGPoint_(MEMORY[0x1E696B098], v6, v7, v8, vcvtq_f64_f32(*(*(a1 + 40) + v10)));
      objc_msgSend_addObject_(v9, v13, v12, v14);
      v10 += 8;
    }

    while (v11 != v10);
  }

  return v9;
}

uint64_t sub_1AF2CC98C(uint64_t a1)
{
  v18[0] = sub_1AF371798(*(*(a1 + 32) + 72), 0);
  v18[1] = v2;
  sub_1AF19B308(*(*(a1 + 32) + 8), v18);
  sub_1AF19B268(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF19C4B4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 88));
  sub_1AF19CB58(*(*(a1 + 32) + 8), *(*(a1 + 32) + 92));
  sub_1AF19B3DC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF19C32C(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 1) & 1);
  sub_1AF19C6EC(*(*(a1 + 32) + 8), vcvt_f32_f64(*(*(a1 + 32) + 104)));
  sub_1AF19C78C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 84));
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  sub_1AF19CCE0(*(v3 + 8), v4);
  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  sub_1AF19CC44(*(v5 + 8), v6);
  sub_1AF19C650(*(*(a1 + 32) + 8), *(*(a1 + 32) + 176));
  sub_1AF19D7B8(*(*(a1 + 32) + 8), *(*(a1 + 32) + 272));
  sub_1AF19CA50(*(*(a1 + 32) + 8), *(*(a1 + 32) + 276));
  sub_1AF19CAB0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 280));
  sub_1AF19C990(*(*(a1 + 32) + 8), *(*(a1 + 32) + 284));
  sub_1AF19D2D4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 360));
  sub_1AF19D4B4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 361), v7, v8);
  sub_1AF19C404(*(*(a1 + 32) + 8), *(*(a1 + 32) + 120));
  sub_1AF19C5B4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 96));
  sub_1AF19C88C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 128));
  sub_1AF19E858(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 5) & 1);
  v9 = *(a1 + 32);
  v10 = *(v9 + 136);
  sub_1AF19EA80(*(v9 + 8), v10);
  sub_1AF19E9DC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 129));
  v11 = *(a1 + 32);
  v12 = *(v11 + 144);
  sub_1AF19EADC(*(v11 + 8), v12);
  sub_1AF19ED58(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 6) & 1);
  sub_1AF19EE10(*(*(a1 + 32) + 8), *(*(a1 + 32) + 28) >> 7);
  sub_1AF19D900(*(*(a1 + 32) + 8), *(*(a1 + 32) + 184));
  sub_1AF19D9C4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 192));
  sub_1AF19DB30(*(*(a1 + 32) + 8), *(*(a1 + 32) + 200));
  sub_1AF19DD74(*(*(a1 + 32) + 8), *(*(a1 + 32) + 208));
  sub_1AF19DE48(*(*(a1 + 32) + 8), *(*(a1 + 32) + 224));
  sub_1AF19DCB0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 240));
  sub_1AF19DBF0(*(*(a1 + 32) + 8), *(*(a1 + 32) + 256));
  sub_1AF2CCC28(*(*(a1 + 32) + 8), *(*(a1 + 32) + 320), *(*(a1 + 32) + 352), v13);
  sub_1AF19D410(*(*(a1 + 32) + 8), *(*(a1 + 32) + 336));
  return objc_msgSend__updateEntityPresentationFromModel(*(a1 + 32), v14, v15, v16);
}

void sub_1AF2CCC28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23[7] = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (!a2)
    {
      memset(v23, 0, 48);
      goto LABEL_19;
    }

    if (a2 != 1)
    {
      return;
    }

    memset(v23 + 1, 0, 47);
    v22 = 1;
LABEL_17:
    LOBYTE(v23[0]) = v22;
LABEL_19:
    sub_1AF19B650(a1, v23);
    return;
  }

  switch(a2)
  {
    case 2:
      memset(v23 + 1, 0, 47);
      v22 = 2;
      goto LABEL_17;
    case 3:
      memset(v23 + 1, 0, 47);
      v22 = 3;
      goto LABEL_17;
    case 4:
      v6 = objc_msgSend_count(a3, 4, a3, a4);
      if (v6 >= 0xFF)
      {
        v8 = 255;
      }

      else
      {
        v8 = v6;
      }

      v11 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
      v13 = v23 - v12;
      if (v14)
      {
        v15 = 0;
        do
        {
          v16 = objc_msgSend_objectAtIndexedSubscript_(a3, v9, v15, v10, *&v11);
          objc_msgSend_CGPointValue(v16, v17, v18, v19);
          v21.f64[1] = v20;
          v11 = vcvt_f32_f64(v21);
          *&v13[8 * v15++] = v11;
        }

        while (v8 != v15);
      }

      LOBYTE(v23[0]) = 4;
      memset(v23 + 1, 0, 24);
      v23[3] = 0;
      LOBYTE(v23[4]) = v8;
      *(&v23[4] + 1) = 0;
      HIDWORD(v23[4]) = 0;
      v23[5] = v13;
      sub_1AF19B650(a1, v23);
      break;
  }
}

uint64_t sub_1AF2CD088(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2CD0E8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF2CD468(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 40), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 32);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2CD8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2CDA78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 40);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2CDE98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2CDFDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2CE0A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2CE154(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2CE28C(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2CE3C8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2CE470;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

id sub_1AF2CE724(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D46F0, a4);
  qword_1ED73B318 = result;
  return result;
}

void sub_1AF2CF66C(uint64_t a1)
{
  v3[0] = sub_1AF371798(*(a1 + 32), 0);
  v3[1] = v2;
  sub_1AF19B308(*(*(a1 + 40) + 8), v3);
}

void sub_1AF2D06D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_1AF19B268(*(*(a1 + 32) + 8), v2);
  sub_1AF19C4B4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 88));
  if (v2 == 5)
  {
    sub_1AF2CCC28(*(*(a1 + 32) + 8), *(*(a1 + 32) + 320), *(*(a1 + 32) + 352), v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    v6 = *(v4 + 336);

    sub_1AF19D410(v5, v6);
  }
}

void sub_1AF2D1BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF2CCC28(*(*(a1 + 32) + 8), *(*(a1 + 32) + 320), *(*(a1 + 32) + 352), a4);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 336);

  sub_1AF19D410(v6, v7);
}

void sub_1AF2D2200(uint64_t a1)
{
  sub_1AF19B268(*(*(a1 + 32) + 8), 6);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);

  sub_1AF19BE08(v5, v4, v2, v3);
}

uint64_t sub_1AF2D43F4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2D4454(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

CFStringRef sub_1AF2D45D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

uint64_t sub_1AF2D4900(unsigned int a1)
{
  if (a1 < 5)
  {
    return qword_1AFE478C0[a1];
  }

  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF59D4();
  }

  return 2;
}

uint64_t sub_1AF2D49E8(uint64_t a1)
{
  sub_1AF1A1310(*(a1 + 40), *(*(a1 + 32) + 264));
  sub_1AF1A15D0(*(a1 + 40), *(*(a1 + 32) + 284));
  sub_1AF1A16E8(*(a1 + 40), *(*(a1 + 32) + 285));
  sub_1AF1A1124(*(a1 + 40), *(*(a1 + 32) + 304));
  sub_1AF1A11A4(*(a1 + 40), *(*(a1 + 32) + 282));
  sub_1AF1A1014(*(a1 + 40), *(*(a1 + 32) + 288));
  sub_1AF1A10A4(*(a1 + 40), *(*(a1 + 32) + 296));
  sub_1AF1A14E8(*(a1 + 40), *(*(a1 + 32) + 244));
  v2 = sub_1AF1A1270(*(a1 + 40));
  if (v2)
  {
    v6 = v2;
    sub_1AF165B2C(v2, 19, *(*(a1 + 32) + 228));
    sub_1AF165B2C(v6, 20, *(*(a1 + 32) + 232));
    sub_1AF165B2C(v6, 21, *(*(a1 + 32) + 236));
    sub_1AF165DF4(v6, *(*(a1 + 32) + 248));
    v7 = sub_1AF2D4B20(*(*(a1 + 32) + 256));
    sub_1AF165A7C(v6, v7);
    sub_1AF166B7C(v6, *(*(a1 + 32) + 281));
    sub_1AF166ABC(v6, *(*(a1 + 32) + 283));
    sub_1AF166D14(v6, *(*(a1 + 32) + 240));
  }

  v8 = *(a1 + 32);

  return objc_msgSend__updateEntityPresentationFromModel(v8, v3, v4, v5);
}

uint64_t sub_1AF2D4B20(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5A10();
    }

    LOBYTE(v1) = 3;
  }

  else
  {
    return (0x4000103u >> (8 * a1));
  }

  return v1;
}

void sub_1AF2D56A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_commonProfile(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF165DF4(v5, v6);
}

void sub_1AF2D57FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = sub_1AF1A1270(v5);
  v7 = *(a1 + 40);

  sub_1AF165B2C(v6, 19, v7);
}

void sub_1AF2D5964(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = sub_1AF1A1270(v5);
  v7 = *(a1 + 40);

  sub_1AF165B2C(v6, 20, v7);
}

void sub_1AF2D5ACC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = sub_1AF1A1270(v5);
  v7 = *(a1 + 40);

  sub_1AF165B2C(v6, 21, v7);
}

void sub_1AF2D5C34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = sub_1AF1A1270(v5);
  v7 = *(a1 + 40);

  sub_1AF166D14(v6, v7);
}

void sub_1AF2D5D88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A10A4(v5, v6);
}

void sub_1AF2D5F48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A14E8(v5, v6);
}

void sub_1AF2D6014(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = sub_1AF1A1270(v5);
  v7 = sub_1AF2D4B20(*(a1 + 40));

  sub_1AF165A7C(v6, v7);
}

void sub_1AF2D6174(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = sub_1AF1A1270(v5);
  v7 = *(a1 + 40);

  sub_1AF166B7C(v6, v7);
}

void sub_1AF2D62C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = sub_1AF1A1270(v5);
  v7 = *(a1 + 40);

  sub_1AF166ABC(v6, v7);
}

void sub_1AF2D6418(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A15D0(v5, v6);
}

void sub_1AF2D6564(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A1124(v5, v6);
}

void sub_1AF2D66A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A16E8(v5, v6);
}

void sub_1AF2D68B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A11A4(v5, v6);
}

void sub_1AF2D6A10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A1310(v5, v6);
}

void sub_1AF2D6B54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1A1014(v5, v6);
}

void sub_1AF2D7264(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 184));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 192), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 184);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2D76D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2D7874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 192);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF2D7C94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2D7DD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2D7EA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2D7F50(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2D8088(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2D81C4(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2D826C;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

void sub_1AF2D8704(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_copy(a3, a2, a3, a4);
  objc_msgSend__shadableSetValue_forUndefinedKey_(*(a1 + 32), v6, v7, a2);
}

void sub_1AF2D8B50(uint64_t a1)
{
  sub_1AF16E2D4(*(a1 + 40), *(a1 + 32), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_1AF2D8BA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_1AF16E2D4(*(a1 + 56), *(a1 + 32), v2);
    v3 = *(a1 + 48);

    CFRelease(v3);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {

      sub_1AF16E2D4(v4, v5, v6);
    }

    else
    {

      sub_1AF16E368(v4, v5);
    }
  }
}

uint64_t sub_1AF2D8CE0(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1AF2D8F78(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3);
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addObject_(v8, v6, a2, v7);
  }

  return result;
}

BOOL sub_1AF2D8FCC(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = objc_msgSend_objCType(a1, v3, v4, v5);
  return strcmp(v6, "{CGRect={CGPoint=dd}{CGSize=dd}}") == 0;
}

uint64_t sub_1AF2D9138(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3);
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addObject_(v8, v6, a3, v7);
  }

  return result;
}

void *sub_1AF2D9574(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3, a4);

  return sub_1AF1C38D4(v4, v5);
}

uint64_t sub_1AF2DA224()
{
  v0 = objc_alloc_init(_VFXNullMaterial);
  qword_1EB658868 = v0;

  return objc_msgSend_setName_(v0, v1, @"_VFXNullMaterial", v2);
}

void sub_1AF2DAC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2DACA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedRegistry(VFXSourceRendererRegistry, a2, a3, a4);
  v7 = *(*(*(a1 + 32) + 8) + 40);

  return MEMORY[0x1EEE66B58](v5, sel_removeSourceRenderersForSource_, v7, v6);
}

void sub_1AF2DB994(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(*(a1 + 32), a2, *(a1 + 40) != 0, a4);
  if (IfNeeded)
  {
    v6 = *(a1 + 40);

    sub_1AF166730(IfNeeded, v6);
  }
}

void sub_1AF2DBB00(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(*(a1 + 32), a2, *(a1 + 40) != 15, a4);
  if (IfNeeded)
  {
    v6 = *(a1 + 40);

    sub_1AF167BB0(IfNeeded, v6);
  }
}

void sub_1AF2DBC20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialProperty(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v6 = *(a1 + 40);

    sub_1AF1665E0(v5, v6);
  }
}

void sub_1AF2DC098(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_materialProperty(*(a1 + 32), a2, a3, a4))
  {
    v8 = objc_msgSend_materialProperty(*(a1 + 32), v5, v6, v7);
    v9 = *(a1 + 40);

    sub_1AF167CEC(v8, v9);
  }
}

uint64_t sub_1AF2DC9C8(uint64_t a1)
{
  v2 = sub_1AF276504(0);
  v3 = objc_alloc_init(VFXUIKitSource);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    objc_msgSend_setUiView_(v3, v5, v7, v6);
  }

  else
  {
    objc_msgSend_setUiWindow_(v3, v5, v7, v6);
  }

  objc_msgSend_connectToProxy_(v3, v8, v2, v9);

  return v2;
}

void sub_1AF2DD33C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialProperty(*(a1 + 96), a2, a3, a4);
  if (v5)
  {

    sub_1AF167444(v5, (a1 + 32));
  }
}

void sub_1AF2DD580(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialProperty(*(a1 + 128), a2, a3, a4);
  if (v5)
  {

    sub_1AF1672B8(v5, a1 + 32);
  }
}

void sub_1AF2DD784(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialProperty(*(a1 + 128), a2, a3, a4);
  if (v5)
  {

    sub_1AF1672B8(v5, a1 + 32);
  }
}

void sub_1AF2DD9A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_materialProperty(*(a1 + 128), a2, a3, a4);
  if (v5)
  {

    sub_1AF1672B8(v5, a1 + 32);
  }
}

uint64_t sub_1AF2DE274(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(*(v1 + 8) + 24) = 1;
  return sub_1AF1961FC(v2);
}

void sub_1AF2DE61C(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 48), v7, *(a1 + 48), v8);
    v9 = *(a1 + 32);
    v13 = objc_msgSend_world(*(a1 + 40), v10, v11, v12);
    objc_msgSend_removeWorldReference_(v9, v14, v13, v15);
    v16 = (*(a1 + 40) + 40);

    os_unfair_lock_unlock(v16);
  }
}

void sub_1AF2DEAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2DEC4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 48);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF2DF06C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2DF1B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2DF27C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2DF328(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2DF460(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2DF59C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2DF644;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

uint64_t sub_1AF2DF980(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_materialPropertyCreateIfNeeded_(*(a1 + 32), a2, 0, a4);
  if (result)
  {
    v6 = result;
    sub_1AF1665E0(result, *(*(a1 + 32) + 80));
    sub_1AF166730(v6, *(*(a1 + 32) + 73));
    sub_1AF167BB0(v6, *(*(a1 + 32) + 76) & 0xF);
    sub_1AF167CEC(v6, (*(*(a1 + 32) + 8) >> 2) & 1);
    v9 = *(a1 + 32);
    v10 = v9[13];
    if (v10)
    {
      sub_1AF1672B8(v6, v10);
      v9 = *(a1 + 32);
    }

    return objc_msgSend__updateSampler(v9, v10, v7, v8);
  }

  return result;
}

uint64_t sub_1AF2DFF8C(uint64_t a1)
{
  v2 = sub_1AF276504(0);
  v3 = objc_alloc_init(VFXCoreAnimationSource);
  objc_msgSend_setLayer_(v3, v4, *(a1 + 32), v5);
  objc_msgSend_connectToProxy_(v3, v6, v2, v7);

  return v2;
}

uint64_t sub_1AF2E00AC(uint64_t a1)
{
  v2 = sub_1AF276504(1);
  v3 = objc_alloc_init(VFXAVPlayerSource);
  objc_msgSend_setPlayer_(v3, v4, *(a1 + 32), v5);
  objc_msgSend_connectToProxy_(v3, v6, v2, v7);

  return v2;
}

uint64_t sub_1AF2E01CC(uint64_t a1)
{
  v2 = sub_1AF276504(2);
  v3 = objc_alloc_init(VFXCaptureDeviceSource);
  objc_msgSend_setCaptureDevice_(v3, v4, *(a1 + 32), v5);
  objc_msgSend_connectToProxy_(v3, v6, v2, v7);

  return v2;
}

uint64_t sub_1AF2E02EC(uint64_t a1)
{
  v2 = sub_1AF276504(3);
  objc_msgSend_connectToProxy_(*(a1 + 32), v3, v2, v4);
  return v2;
}

uint64_t sub_1AF2E03E8(uint64_t a1)
{
  v2 = sub_1AF276504(0);
  v3 = objc_alloc_init(VFXMaterialPropertyTextureProviderSource);
  objc_msgSend_setTextureProvider_(v3, v4, *(a1 + 32), v5);
  objc_msgSend_connectToProxy_(v3, v6, v2, v7);

  return v2;
}

uint64_t sub_1AF2E1D48(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2E1DA8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

CFStringRef sub_1AF2E1F24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

void sub_1AF2E25E0(void *a1, const char *a2, void *a3, _BYTE *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = objc_msgSend_count(a1, a2, a3, a4);
  if (v11)
  {
    v12 = objc_msgSend_count(a3, v8, v9, v10);
    v15 = v12;
    if (v12)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v13, v16, v14);
        v22 = objc_msgSend_indicesChannelCount(v18, v19, v20, v21);
        if (v16)
        {
          v23 = v22;
          if (v22 != v17)
          {
            v24 = sub_1AF0D5194();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AF0CE000, v24, OS_LOG_TYPE_DEFAULT, "Warning: Found elements with different channel counts in the same mesh", buf, 2u);
            }

            if (v23 < v17)
            {
              v17 = v23;
            }
          }
        }

        else
        {
          v17 = v22;
        }

        ++v16;
      }

      while (v15 != v16);
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v17 = 0;
      if (!a2)
      {
        return;
      }
    }

    v25 = 0;
    v26 = 1;
    while (1)
    {
      if (v26 - 1 >= v11)
      {
        v37 = sub_1AF0D5194();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v39 = v26 - 1;
          v34 = v37;
          v35 = "Error: Missing channel for source at index %u";
          v36 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(a1, v13, v25, v14);
        v31 = objc_msgSend_intValue(v27, v28, v29, v30);
        v32 = v31;
        if ((v31 & 0x80000000) == 0 && v31 <= v17)
        {
          goto LABEL_27;
        }

        v33 = sub_1AF0D5194();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v39 = v32;
          v40 = 1024;
          v41 = v26 - 1;
          v34 = v33;
          v35 = "Error: Invalid channel (%d) for source at index %u";
          v36 = 14;
LABEL_30:
          _os_log_error_impl(&dword_1AF0CE000, v34, OS_LOG_TYPE_ERROR, v35, buf, v36);
        }
      }

      LOBYTE(v32) = 0;
LABEL_27:
      a4[v25] = v32;
      v25 = v26++;
      if (v25 >= a2)
      {
        return;
      }
    }
  }

  bzero(a4, a2);
}

uint64_t sub_1AF2E41CC(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2E422C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF2E44A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_count(a2, a2, a3, a4);
  v7 = v6;
  if (v6)
  {
    v8 = malloc_type_malloc(16 * v6, 0x1000040451B5BE8uLL);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2E4D44;
    v11[3] = &unk_1E7A7E918;
    v11[4] = v8;
    objc_msgSend_enumerateObjectsUsingBlock_(a2, v9, v11, v10);
  }

  else
  {
    v8 = 0;
  }

  sub_1AF1A7470(a1, v8, v7);
}

uint64_t sub_1AF2E4D44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rangeValue(a2, a2, a3, a4);
  v8 = (*(a1 + 32) + 16 * a3);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v9 = result;
  }

  *v8 = v9;
  v8[1] = v7;
  return result;
}

uint64_t sub_1AF2E4D88(uint64_t a1, const char *a2)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"kGeometrySourceSemanticPosition";
  v3[1] = @"kGeometrySourceSemanticNormal";
  v3[2] = @"kGeometrySourceSemanticColor";
  v3[3] = @"kGeometrySourceSemanticTexcoord";
  v3[4] = @"kGeometrySourceSemanticTangent";
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v3, 5);
}

__CFString *sub_1AF2E4E18(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7A7E9A8[a1];
  }
}

uint64_t sub_1AF2E4E38(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"kGeometrySourceSemanticPosition", a4))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1, v5, @"kGeometrySourceSemanticNormal", v6))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1, v8, @"kGeometrySourceSemanticColor", v9))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1, v10, @"kGeometrySourceSemanticTexcoord", v11))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1, v12, @"kGeometrySourceSemanticTangent", v13))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1, v14, @"kGeometrySourceSemanticVertexCrease", v15))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1, v16, @"kGeometrySourceSemanticEdgeCrease", v17))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1, v18, @"kGeometrySourceSemanticBoneIndices", v19))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1, v20, @"kGeometrySourceSemanticBoneWeights", v21))
  {
    return 6;
  }

  return 0;
}

uint64_t sub_1AF2E54B8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"kGeometrySourceSemanticPosition", a4) & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v5, @"kGeometrySourceSemanticNormal", v6) & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v7, @"kGeometrySourceSemanticColor", v8) & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v9, @"kGeometrySourceSemanticTexcoord", v10) & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v11, @"kGeometrySourceSemanticTangent", v12) & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v13, @"kGeometrySourceSemanticVertexCrease", v14) & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v15, @"kGeometrySourceSemanticEdgeCrease", v16) & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v17, @"kGeometrySourceSemanticBoneIndices", v18))
  {
    return 1;
  }

  return objc_msgSend_isEqualToString_(a1, v19, @"kGeometrySourceSemanticBoneWeights", v20);
}

uint64_t sub_1AF2E64B0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2E6510(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

CFStringRef sub_1AF2E73DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

void sub_1AF2E788C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF1B2E54(v4, v5);
}

void *sub_1AF2E7DE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3, a4);

  return sub_1AF1C38D4(v4, v5);
}

__n128 sub_1AF2E8060(float32x4_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v1.i32[3] = 1.0;
  v2.i32[3] = 1.0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v5[0] = vmulq_f32(vaddq_f32(v1, v2), v3);
  v5[1] = vmulq_f32(vsubq_f32(v2, v1), v3);
  sub_1AF1B2180(*(a1[4].i64[0] + 8), v5);
  return result;
}

void sub_1AF2E8580(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_copy(a3, a2, a3, a4);
  objc_msgSend__shadableSetValue_forUndefinedKey_(*(a1 + 32), v6, v7, a2);
}

uint64_t sub_1AF2E8CA0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2E8D00(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2E9100(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = objc_msgSend_materialRef(*(a1 + 40), a2, a3, a4);
  v7 = *(a1 + 48);

  return sub_1AF1B3548(v5, v6, v7);
}

uint64_t sub_1AF2E932C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = objc_msgSend_materialRef(*(a1 + 40), a2, a3, a4);
  v7 = *(a1 + 48);

  return sub_1AF1B35C8(v5, v6, v7);
}

uint64_t sub_1AF2E97A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  if (result)
  {

    return sub_1AF1B3498(result);
  }

  return result;
}

uint64_t sub_1AF2E9DEC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_thresholdMode(a2, a2, a3, a4);
  v10 = objc_msgSend_thresholdValue(a2, v7, v8, v9);
  objc_msgSend_doubleValue(v10, v11, v12, v13);
  v15 = v14;
  v19 = objc_msgSend_thresholdValue(a3, v16, v17, v18);
  objc_msgSend_doubleValue(v19, v20, v21, v22);
  v24 = v15 > v23;
  if (!v6)
  {
    v24 = v15 < v23;
  }

  if (v24)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1AF2E9E68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_arrayWithCapacity_(v5, v7, v6, v8);
  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF2E9F14;
  v13[3] = &unk_1E7A796D8;
  v13[4] = v9;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v11, v13, v12);
  sub_1AF1B2F3C(*(*(a1 + 40) + 8), v9);
}

uint64_t sub_1AF2E9F14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v6 = objc_msgSend___CFObject(a2, a2, a3, a4);

  return objc_msgSend_addObject_(v4, v5, v6, v7);
}

void sub_1AF2EA068(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v6 = *(a1 + 40);

    sub_1AF170B70(v5, v6);
  }
}

void sub_1AF2EA174(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v6 = *(a1 + 40);

    sub_1AF1709B8(v5, v6);
  }
}

void sub_1AF2EA25C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v6 = *(a1 + 40);

    sub_1AF170AFC(v5, v6);
  }
}

void sub_1AF2EA390(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_meshElement(*(*(a1 + 32) + 112), v6, v7, v8);

    sub_1AF170CA0(v9, v10);
  }
}

void sub_1AF2EA4E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_meshSource(*(*(a1 + 32) + 104), v6, v7, v8);

    sub_1AF170C00(v9, v10);
  }
}

void sub_1AF2EAB14(uint64_t a1)
{
  sub_1AF16E2D4(*(a1 + 40), *(a1 + 32), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_1AF2EAB68(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_1AF16E2D4(*(a1 + 56), *(a1 + 32), v2);
    v3 = *(a1 + 48);

    CFRelease(v3);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {

      sub_1AF16E2D4(v4, v5, v6);
    }

    else
    {

      sub_1AF16E368(v4, v5);
    }
  }
}

uint64_t sub_1AF2EACA4(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1AF2EAF3C(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3);
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addObject_(v8, v6, a2, v7);
  }

  return result;
}

uint64_t sub_1AF2EB040(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3);
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addObject_(v8, v6, a3, v7);
  }

  return result;
}

void sub_1AF2EB5D0(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 56));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 64), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 24), v10);
    v11 = (*(a1 + 40) + 56);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2EBA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2EBBE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 64);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2EC000(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2EC144(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2EC210(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2EC2BC(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2EC3F4(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2EC530(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2EC5D8;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

id sub_1AF2ECED0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && sub_1AF196D70(a1))
  {
    v3 = sub_1AF196D08(a1);
    v4 = sub_1AF2ECED0(v3, 1);
    CFRelease(v3);
    return v4;
  }

  if (sub_1AF197E50(a1) == 2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF68E4(v6, v7, v8);
    }

    return 0;
  }

  v9 = sub_1AF197BC0(a1, 1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  Data = CGBitmapContextGetData(v9);
  v24 = sub_1AF1965C4(a1);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(v10);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(v10);
  if (BitsPerComponent != 8)
  {
    CFRelease(v10);
    return 0;
  }

  v14 = BitsPerPixel >> 3;
  v15 = objc_alloc(MEMORY[0x1E6974BD8]);
  v16 = MEMORY[0x1E695DEF0];
  BytesPerRow = CGBitmapContextGetBytesPerRow(v10);
  v19 = objc_msgSend_dataWithBytes_length_(v16, v18, Data, vmuls_lane_f32(BytesPerRow, *&v24, 1));
  v20 = CGBitmapContextGetBytesPerRow(v10);
  v23 = sub_1AF197E50(a1) == 3;
  isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v15, v21, v19, 1, 0, v20, v14, 1, COERCE_DOUBLE(vcvt_s32_f32(*&v24)), v23);
  CFRelease(v10);

  return isCube;
}

uint64_t sub_1AF2ED094(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_imageFromTexture(a1, a2, a3, a4);
  v6 = sub_1AF196CC4(v5);
  if (objc_msgSend_isCube(a1, v7, v8, v9))
  {
    sub_1AF197FCC(v6);
    if (!sub_1AF196D70(v6))
    {
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1AF0CE000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create cubemap from Model I/O texture", v12, 2u);
      }
    }
  }

  return v6;
}

uint64_t sub_1AF2ED16C(void *a1, char *a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v55 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_transform(a1, a2, a3, a4))
  {
    v13 = objc_msgSend_transform(a1, v10, v11, v12);
    objc_msgSend_matrix(v13, v14, v15, v16);
    v17 = 0;
    v52[0] = v18;
    v52[1] = v19;
    v52[2] = v20;
    v52[3] = v21;
    do
    {
      v53[v17] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, COERCE_FLOAT(v52[v17])), a6, *&v52[v17], 1), a7, v52[v17], 2), a8, v52[v17], 3);
      ++v17;
    }

    while (v17 != 4);
    a5 = v53[0];
    a6 = v53[1];
    a7 = v53[2];
    a8 = v53[3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = objc_alloc(MEMORY[0x1E6974BE8]);
    v29 = objc_msgSend_initWithMatrix_(v25, v26, v27, v28, a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0]);
    objc_msgSend_setTransform_(a1, v30, v29, v31);

    return objc_msgSend_addObject_(a2, v32, a1, v33);
  }

  else
  {
    result = objc_msgSend_children(a1, v22, v23, v24);
    if (result)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v38 = objc_msgSend_children(a1, v35, v36, v37);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v48, v54, 16);
      if (result)
      {
        v40 = result;
        v41 = *v49;
        do
        {
          v42 = 0;
          do
          {
            if (*v49 != v41)
            {
              objc_enumerationMutation(v38);
            }

            sub_1AF2ED16C(*(*(&v48 + 1) + 8 * v42++), a2, a5, a6, a7, a8);
          }

          while (v40 != v42);
          result = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v43, &v48, v54, 16);
          v40 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

char *sub_1AF2ED370(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = *(MEMORY[0x1E69E9B18] + 16);
  v15 = *MEMORY[0x1E69E9B18];
  v12 = *(MEMORY[0x1E69E9B18] + 48);
  v13 = *(MEMORY[0x1E69E9B18] + 32);
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v16, v20, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(a1);
        }

        sub_1AF2ED16C(*(*(&v16 + 1) + 8 * v9++), v2, v5, v6, v15, v14, v13, v12);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v16, v20, 16);
    }

    while (v7);
  }

  return v2;
}

uint64_t sub_1AF2ED48C(void *a1, char *a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v55 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_transform(a1, a2, a3, a4))
  {
    v13 = objc_msgSend_transform(a1, v10, v11, v12);
    objc_msgSend_matrix(v13, v14, v15, v16);
    v17 = 0;
    v52[0] = v18;
    v52[1] = v19;
    v52[2] = v20;
    v52[3] = v21;
    do
    {
      v53[v17] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, COERCE_FLOAT(v52[v17])), a6, *&v52[v17], 1), a7, v52[v17], 2), a8, v52[v17], 3);
      ++v17;
    }

    while (v17 != 4);
    a5 = v53[0];
    a6 = v53[1];
    a7 = v53[2];
    a8 = v53[3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = objc_alloc(MEMORY[0x1E6974BE8]);
    v29 = objc_msgSend_initWithMatrix_(v25, v26, v27, v28, a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0]);
    objc_msgSend_setTransform_(a1, v30, v29, v31);

    return objc_msgSend_addObject_(a2, v32, a1, v33);
  }

  else
  {
    result = objc_msgSend_children(a1, v22, v23, v24);
    if (result)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v38 = objc_msgSend_children(a1, v35, v36, v37);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v48, v54, 16);
      if (result)
      {
        v40 = result;
        v41 = *v49;
        do
        {
          v42 = 0;
          do
          {
            if (*v49 != v41)
            {
              objc_enumerationMutation(v38);
            }

            sub_1AF2ED48C(*(*(&v48 + 1) + 8 * v42++), a2, a5, a6, a7, a8);
          }

          while (v40 != v42);
          result = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v43, &v48, v54, 16);
          v40 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

char *sub_1AF2ED690(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = *(MEMORY[0x1E69E9B18] + 16);
  v15 = *MEMORY[0x1E69E9B18];
  v12 = *(MEMORY[0x1E69E9B18] + 48);
  v13 = *(MEMORY[0x1E69E9B18] + 32);
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v16, v20, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(a1);
        }

        sub_1AF2ED48C(*(*(&v16 + 1) + 8 * v9++), v2, v5, v6, v15, v14, v13, v12);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v16, v20, 16);
    }

    while (v7);
  }

  return v2;
}

BOOL sub_1AF2ED7AC(void *a1, char *a2, void *a3, uint64_t a4)
{
  v67[2] = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"kSceneSourcePreserveOriginalTopology", a4);
  if (v7)
  {
    v11 = objc_msgSend_BOOLValue(v7, v8, v9, v10);
  }

  else
  {
    v11 = sub_1AF171634();
  }

  v14 = v11;
  if (objc_msgSend_instancesRespondToSelector_(MEMORY[0x1E6974B48], v12, sel_initThroughSCNKitBridgeWithURL_options_error_, v13))
  {
    v66[0] = *MEMORY[0x1E6974AD0];
    v66[1] = @"kMDLAssetDefaultUSDColorSpace";
    v67[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v15, v14, v16);
    v67[1] = sub_1AF164540();
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v67, v66, 2);
    v19 = objc_alloc(MEMORY[0x1E6974B48]);
    inited = objc_msgSend_initThroughSCNKitBridgeWithURL_options_error_(v19, v20, a2, v18, 0);
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E6974B48]);
    inited = objc_msgSend_initThroughSCNKitBridgeWithURL_preserveTopology_error_(v24, v25, a2, v14, 0);
  }

  v26 = inited;
  v27 = objc_msgSend_valueForKey_(a3, v22, @"VFXWorldLoaderLoadTexturesInCPUMemory", v23);
  if (objc_msgSend_BOOLValue(v27, v28, v29, v30))
  {
    v34 = objc_msgSend_pathExtension(a2, v31, v32, v33);
    v38 = objc_msgSend_lowercaseString(v34, v35, v36, v37);
    if (objc_msgSend_isEqualToString_(v38, v39, @"usdz", v40))
    {
      objc_msgSend_loadTextures(v26, v31, v32, v33);
    }
  }

  v41 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v31, v32, v33);
  v45 = objc_msgSend_threadDictionary(v41, v42, v43, v44);
  v49 = objc_msgSend_resolver(v26, v46, v47, v48);
  objc_msgSend_setValue_forKey_(v45, v50, v49, @"VFX_MDLCurrentAssetResolver");
  if (v26)
  {
    v54 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v51, v52, v53);
    objc_msgSend_loadMDLAsset_options_context_(a1, v55, v26, a3, v54);
    v59 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v56, v57, v58);
    v63 = objc_msgSend_threadDictionary(v59, v60, v61, v62);
    objc_msgSend_setValue_forKey_(v63, v64, 0, @"VFX_MDLCurrentAssetResolver");
  }

  return v26 != 0;
}

id VFXNodesToMDLAsset(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(MEMORY[0x1E6974B48]);
  if (result)
  {
    v4 = result;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v14, v18, 16);
    if (v5)
    {
      v8 = v5;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(a1);
          }

          v11 = objc_msgSend_objectWithVFXNode_(MEMORY[0x1E6974B98], v6, *(*(&v14 + 1) + 8 * v10), v7);
          objc_msgSend_addObject_(v4, v12, v11, v13);
          ++v10;
        }

        while (v8 != v10);
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v6, &v14, v18, 16);
      }

      while (v8);
    }

    return v4;
  }

  return result;
}

id sub_1AF2EDAB8(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_jointPaths(a1, a2, a3, a4);
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v22, v26, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = objc_msgSend_objectForKeyedSubscript_(a2, v9, v14, v10);
        if (!v15)
        {
          NSLog(&cfstr_WhileCreatingV.isa, v14);
          objc_msgSend_removeAllObjects(v6, v18, v19, v20);
          return v6;
        }

        objc_msgSend_addObject_(v6, v16, v15, v17);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, &v22, v26, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

id sub_1AF2EDBF8(void *a1)
{
  v2 = objc_opt_new();
  v6 = objc_msgSend_jointBindTransforms(a1, v3, v4, v5);
  v10 = objc_msgSend_bytes(v6, v7, v8, v9);
  v14 = objc_msgSend_jointBindTransforms(a1, v11, v12, v13);
  v18 = objc_msgSend_length(v14, v15, v16, v17);
  objc_msgSend_meshBindTransform(a1, v19, v20, v21);
  v38 = v23;
  v39 = v22;
  v36 = v25;
  v37 = v24;
  if (v18 >= 0x40)
  {
    v26 = 0;
    v27 = v18 >> 6;
    do
    {
      v46 = __invert_f4(*(v10 + (v26 << 6)));
      v31 = 0;
      v40[0] = v39;
      v40[1] = v38;
      v40[2] = v37;
      v40[3] = v36;
      do
      {
        *(&v41 + v31 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46.columns[0], COERCE_FLOAT(v40[v31])), v46.columns[1], *&v40[v31], 1), v46.columns[2], v40[v31], 2), v46.columns[3], v40[v31], 3);
        ++v31;
      }

      while (v31 != 4);
      v32 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v28, v29, v30, *&v41, *&v42, *&v43, *&v44);
      objc_msgSend_addObject_(v2, v33, v32, v34);
      ++v26;
    }

    while (v26 != v27);
  }

  return v2;
}

void *sub_1AF2EDD18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v4 - *a2;
  if (v4 == *a2)
  {
    return 0;
  }

  v7 = *v5;
  v8 = *(v4 - 8) - *v5;
  if (v8 < 2.22044605e-16)
  {
    return 0;
  }

  v13 = v6 >> 3;
  v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, v6 >> 3, a4);
  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v15, v13, v16);
  v21 = 0;
  if (v13 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v13;
  }

  do
  {
    v23 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v19, (*(*a2 + 8 * v21) - v7) / v8);
    LODWORD(v24) = *(*a3 + 4 * v21);
    v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v25, v26, v27, v24);
    objc_msgSend_addObject_(v14, v29, v23, v30);
    objc_msgSend_addObject_(v20, v31, v28, v32);
    ++v21;
  }

  while (v22 != v21);
  v9 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979390], v17, a1, v19);
  objc_msgSend_setValues_(v9, v33, v20, v34);
  objc_msgSend_setKeyTimes_(v9, v35, v14, v36);
  objc_msgSend_setDuration_(v9, v37, v38, v39, v8);
  objc_msgSend_setBeginTime_(v9, v40, v41, v42, v7);
  objc_msgSend_setAdditive_(v9, v43, 0, v44);
  objc_msgSend_setRemovedOnCompletion_(v9, v45, 0, v46);
  return v9;
}

id sub_1AF2EDE80(void *a1)
{
  v125 = *MEMORY[0x1E69E9840];
  v123 = objc_opt_new();
  v2 = objc_opt_new();
  v6 = objc_msgSend_shapeSetTargetCounts(a1, v3, v4, v5);
  v10 = objc_msgSend_count(v6, v7, v8, v9);
  v14 = objc_msgSend_targetShapes(a1, v11, v12, v13);
  v18 = objc_msgSend_count(v14, v15, v16, v17);
  if (v18)
  {
    v22 = v18;
    for (i = 0; i != v22; ++i)
    {
      v24 = objc_msgSend_targetShapes(a1, v19, v20, v21);
      v27 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, i, v26);
      v30 = objc_msgSend_modelWithMDLMesh_(VFXModel, v28, v27, v29);
      v34 = objc_msgSend_name(v27, v31, v32, v33);
      objc_msgSend_setName_(v30, v35, v34, v36);
      objc_msgSend_setEdgeCreasesSource_(v30, v37, 0, v38);
      objc_msgSend_setEdgeCreasesElement_(v30, v39, 0, v40);
      v44 = objc_msgSend_mesh(v30, v41, v42, v43);
      objc_msgSend_addObject_(v2, v45, v44, v46);
    }
  }

  if (v10)
  {
    v47 = objc_alloc(MEMORY[0x1E695DF70]);
    v53 = objc_msgSend_initWithCapacity_(v47, v48, 0, v49);
    v54 = 0;
    for (j = 0; j != v10; ++j)
    {
      v56 = objc_msgSend_shapeSetTargetCounts(a1, v50, v51, v52);
      v59 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, j, v58);
      v63 = objc_msgSend_unsignedIntegerValue(v59, v60, v61, v62);
      v64 = v63 - 1;
      if (v63 != 1)
      {
        v65 = v64 + v54;
        do
        {
          v66 = objc_msgSend_shapeSetTargetWeights(a1, v50, v51, v52);
          v69 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, v54, v68);
          objc_msgSend_addObject_(v53, v70, v69, v71);
          objc_msgSend_floatValue(v69, v72, v73, v74);
          if (v75 >= 1.0)
          {
            v76 = sub_1AF0D5194();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
            {
              objc_msgSend_floatValue(v69, v50, v51, v52);
              *buf = 136315394;
              *&buf[4] = "influenceWeightNumber.floatValue < 1.f";
              *&buf[12] = 2048;
              *&buf[14] = v77;
              _os_log_fault_impl(&dword_1AF0CE000, v76, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Found in-between morph target with influence weight of %f", buf, 0x16u);
            }
          }

          ++v54;
          --v64;
        }

        while (v64);
        v54 = v65;
      }

      ++v54;
    }

    v78 = objc_msgSend_shapeSetTargetCounts(a1, v50, v51, v52);
    objc_msgSend_setTargets_withInBetweenTargetCounts_inBetweenWeights_(v123, v79, v2, v78, v53);
  }

  else
  {
    objc_msgSend_setTargets_(v123, v19, v2, v21);
  }

  v83 = objc_msgSend_weights(a1, v80, v81, v82);
  v90 = objc_msgSend_elementCount(v83, v84, v85, v86);
  memset(buf, 0, sizeof(buf));
  if (v90)
  {
    sub_1AF17C384(buf, v90);
  }

  v91 = objc_msgSend_keyTimes(v83, v87, v88, v89);
  if (objc_msgSend_count(v91, v92, v93, v94))
  {
    v98 = *buf;
    v99 = objc_msgSend_elementCount(v83, v95, v96, v97);
    v103 = objc_msgSend_keyTimes(v83, v100, v101, v102);
    v106 = objc_msgSend_objectAtIndexedSubscript_(v103, v104, 0, v105);
    objc_msgSend_doubleValue(v106, v107, v108, v109);
    objc_msgSend_getFloatArray_maxCount_atTime_(v83, v110, v98, v99);
  }

  v114 = objc_opt_new();
  v116 = *buf;
  for (k = *&buf[8]; v116 != k; ++v116)
  {
    LODWORD(v115) = *v116;
    v118 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v111, v112, v113, v115);
    objc_msgSend_addObject_(v114, v119, v118, v120);
  }

  objc_msgSend_setWeights_(v123, v111, v114, v113);

  v121 = v123;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v121;
}

void sub_1AF2EE1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF2EE224(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (objc_msgSend_morpher(a2, a2, a3, a4))
  {
    v8 = objc_msgSend_weights(a1, v5, v6, v7);
    if (objc_msgSend_isAnimated(v8, v9, v10, v11))
    {
      v15 = objc_msgSend_timeSampleCount(v8, v12, v13, v14);
      v20 = objc_msgSend_elementCount(v8, v16, v17, v18);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      if (v15)
      {
        sub_1AF19013C(&v58, v15);
      }

      objc_msgSend_getTimes_maxCount_(v8, v19, 0, 0);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      if (v20)
      {
        objc_msgSend_getFloatArray_maxCount_(v8, v21, v55, 0);
      }

      __p = 0;
      v53 = 0;
      v54 = 0;
      if (v20)
      {
        v23 = 0;
        for (i = 0; i != v20; ++i)
        {
          v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"morpher.weights[%d]", v22, i);
          v27 = sub_1AF2EDD18(v25, &v58, &__p, v26);
          v29 = v27;
          if (v27)
          {
            objc_msgSend_duration(v27, v21, v28, v22);
            if (v30 != 0.0)
            {
              v31 = objc_msgSend_valueForKey_(a3, v21, @"kSceneSourceAnimationLoadingMode", v22);
              v36 = v31;
              if (v31)
              {
                isEqualToString = objc_msgSend_isEqualToString_(v31, v32, @"playRepeatedly", v34);
                LODWORD(v41) = 2139095040;
                if (!isEqualToString)
                {
                  *&v41 = 0.0;
                }

                objc_msgSend_setRepeatCount_(v29, v38, v39, v40, v41);
                v44 = objc_msgSend_isEqualToString_(v36, v42, @"playRepeatedly", v43) ^ 1;
                objc_msgSend_setRemovedOnCompletion_(v29, v45, v44, v46);
              }

              else
              {
                LODWORD(v35) = 2139095040;
                objc_msgSend_setRepeatCount_(v29, v32, v33, v34, v35);
                objc_msgSend_setRemovedOnCompletion_(v29, v48, 0, v49);
              }

              objc_msgSend_addAnimation_forKey_(a2, v47, v29, 0);
            }
          }

          v23 += 4;
        }
      }

      if (__p)
      {
        v53 = __p;
        operator delete(__p);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }
    }
  }
}

void sub_1AF2EE4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF2EF1F8(void *a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a3;
  v229 = *MEMORY[0x1E69E9840];
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v7 = objc_msgSend_children(a1, a2, a3, a4);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v210, v226, 16);
  if (v11)
  {
    v12 = *v211;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v211 != v12)
        {
          objc_enumerationMutation(v7);
        }

        sub_1AF2EF1F8(*(*(&v210 + 1) + 8 * i), a2, v5, a4, a5);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v210, v226, 16);
    }

    while (v11);
  }

  v18 = objc_msgSend_componentConformingToProtocol_(a1, v9, &unk_1F261ED28, v10);
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
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

  v23 = sub_1AF2F8430(a1, v15, v16, v17);
  v209 = v23;
  if (v23)
  {
    v24 = objc_opt_new();
    __p = 0;
    v207 = 0;
    v208 = 0;
    sub_1AF2F84A0(a1, MEMORY[0x1E69E9B18], v24, &__p);
    if (objc_msgSend_count(v24, v25, v26, v27))
    {
      v190 = sub_1AF2F872C(a5, &v209)[1];
      v28 = MEMORY[0x1E695DF70];
      v32 = objc_msgSend_jointPaths(v23, v29, v30, v31);
      v36 = objc_msgSend_count(v32, v33, v34, v35);
      v191 = objc_msgSend_arrayWithCapacity_(v28, v37, v36, v38);
      v42 = objc_msgSend_skeleton(v19, v39, v40, v41);
      v222 = v42;
      v43 = sub_1AF2F872C(a5, &v222);
      if (objc_msgSend_jointPaths(v19, v44, v45, v46))
      {
        v50 = objc_msgSend_jointPaths(v19, v47, v48, v49);
      }

      else
      {
        v50 = objc_msgSend_jointPaths(v42, v47, v48, v49);
      }

      v52 = v50;
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v218, v228, 16);
      obj = v24;
      v188 = v19;
      v186 = v5;
      v56 = 0;
      if (v55)
      {
        v57 = *v219;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v219 != v57)
            {
              objc_enumerationMutation(v52);
            }

            v59 = *(*(&v218 + 1) + 8 * j);
            v61 = objc_msgSend_objectForKeyedSubscript_(*v43, v53, v59, v54);
            if (v61)
            {
              objc_msgSend_addObject_(v191, v60, v61, v62);
            }

            else
            {
              if (!v56)
              {
                v63 = objc_alloc(MEMORY[0x1E695DF70]);
                v67 = objc_msgSend_count(v52, v64, v65, v66);
                v56 = objc_msgSend_initWithCapacity_(v63, v68, v67, v69);
              }

              objc_msgSend_addObject_(v56, v60, v59, v62);
            }
          }

          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v218, v228, 16);
        }

        while (v55);
        if (v56)
        {
          v5 = v186;
          v24 = obj;
          v19 = v188;
          if (objc_msgSend_count(v56, v53, v70, v54))
          {
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v71, &v214, v227, 16);
            if (v72)
            {
              v73 = *v215;
              do
              {
                for (k = 0; k != v72; ++k)
                {
                  if (*v215 != v73)
                  {
                    objc_enumerationMutation(v56);
                  }

                  NSLog(&cfstr_BadJointPathDe.isa, *(*(&v214 + 1) + 8 * k));
                }

                v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v75, &v214, v227, 16);
              }

              while (v72);
            }
          }
        }

        else
        {
          v5 = v186;
          v24 = obj;
          v19 = v188;
        }
      }

      v79 = sub_1AF2F8814(v19, v76, v77, v78);
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v80, &v202, v225, 16);
      if (v84)
      {
        v85 = *v203;
        do
        {
          for (m = 0; m != v84; ++m)
          {
            if (*v203 != v85)
            {
              objc_enumerationMutation(obj);
            }

            v87 = *(*(&v202 + 1) + 8 * m);
            v88 = objc_msgSend_path(v87, v81, v82, v83);
            v91 = objc_msgSend_objectForKeyedSubscript_(a2, v89, v88, v90);
            v95 = objc_msgSend_model(v91, v92, v93, v94);
            v99 = objc_msgSend_geometry(v95, v96, v97, v98);
            v103 = sub_1AF2F3D64(v87, v100, v101, v102);
            v107 = sub_1AF2F3E10(v87, v104, v105, v106);
            v109 = objc_msgSend_skinnerWithBaseGeometry_bones_boneInverseBindTransforms_boneWeights_boneIndices_(VFXSkinner, v108, v99, v191, v79, v103, v107);
            v112 = objc_msgSend_componentConformingToProtocol_(v87, v110, &unk_1F261ED28, v111);
            if (v87 != a1 && (v116 = v112) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              objc_msgSend_geometryBindTransform(v116, v113, v114, v115);
              v117 = sub_1AF2F8A10(v228);
              objc_msgSend_setBaseGeometryBindTransform_(v109, v118, v119, v120, v117);
            }

            else
            {
              if (v188)
              {
                objc_msgSend_geometryBindTransform(v188, v113, v114, v115);
              }

              else
              {
                memset(v228, 0, sizeof(v228));
              }

              v123 = sub_1AF2F8A10(v228);
              objc_msgSend_setBaseGeometryBindTransform_(v109, v124, v125, v126, v123);
            }

            objc_msgSend_setSkeleton_(v109, v121, v190, v122);
            objc_msgSend_setSkinner_(v91, v127, v109, v128);
          }

          v24 = obj;
          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v202, v225, 16);
        }

        while (v84);
        v5 = v186;
        v19 = v188;
      }
    }

    else
    {
      v190 = 0;
    }

    if (__p)
    {
      v207 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v190 = 0;
  }

  if (v19)
  {
    v129 = objc_msgSend_jointAnimation(v19, v20, v21, v22);
    if (v129)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v190)
        {
          v133 = objc_msgSend_path(a1, v130, v131, v132);
          v190 = objc_msgSend_objectForKeyedSubscript_(a2, v134, v133, v135);
        }

        v136 = objc_msgSend_name(v129, v130, v131, v132);
        v142 = objc_msgSend_objectForKeyedSubscript_(a4, v137, v136, v138);
        v143 = v142 != 0;
        if (v142)
        {
          v144 = objc_msgSend_name(v129, v139, v140, v141);
          objc_msgSend_addAnimation_forKey_(v190, v145, v142, v144);
        }

        v200 = 0u;
        v201 = 0u;
        v198 = 0u;
        v199 = 0u;
        v146 = objc_msgSend_animations(v5, v139, v140, v141);
        v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v147, &v198, v224, 16);
        if (v149)
        {
          v150 = *v199;
          do
          {
            for (n = 0; n != v149; ++n)
            {
              if (*v199 != v150)
              {
                objc_enumerationMutation(v146);
              }

              v152 = *(*(&v198 + 1) + 8 * n);
              if (v152 != v129)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v155 = sub_1AF2F8A44(v129, v148, v153, v154);
                  v159 = sub_1AF2F8A44(v152, v156, v157, v158);
                  if (v155)
                  {
                    if (v159)
                    {
                      if (objc_msgSend_isEqualToString_(v155, v148, v159, v160))
                      {
                        v163 = objc_msgSend_name(v152, v148, v161, v162);
                        v168 = objc_msgSend_objectForKeyedSubscript_(a4, v164, v163, v165);
                        if (v168)
                        {
                          v169 = objc_msgSend_name(v152, v148, v166, v167);
                          objc_msgSend_addAnimation_forKey_(v190, v170, v168, v169);
                          v143 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }

            v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v148, &v198, v224, 16);
          }

          while (v149);
        }

        v171 = v209;
        if (v209)
        {
          if (v143)
          {
            v172 = sub_1AF2F872C(a5, &v209);
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            v176 = objc_msgSend_jointPaths(v171, v173, v174, v175);
            v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v176, v177, &v194, v223, 16);
            if (v180)
            {
              v181 = *v195;
              v182 = MEMORY[0x1E69E9B18];
              do
              {
                for (ii = 0; ii != v180; ++ii)
                {
                  if (*v195 != v181)
                  {
                    objc_enumerationMutation(v176);
                  }

                  v184 = objc_msgSend_objectForKeyedSubscript_(*v172, v178, *(*(&v194 + 1) + 8 * ii), v179);
                  if (v184)
                  {
                    objc_msgSend_setTransform_(v184, v178, v185, v179, *v182, v182[2], v182[4], v182[6]);
                  }
                }

                v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v176, v178, &v194, v223, 16);
              }

              while (v180);
            }
          }
        }
      }
    }
  }
}

void sub_1AF2EF9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF2EFA74(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3 || !objc_msgSend_rootNode(a3, a2, a3, a4))
  {
    return 0;
  }

  v9 = objc_msgSend_rootNode(a3, v6, v7, v8);

  return MEMORY[0x1EEE66B58](a1, sel_assetWithVFXNode_, v9, v10);
}

uint64_t sub_1AF2EFAD8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3 || !objc_msgSend_rootNode(a3, a2, a3, a4))
  {
    return 0;
  }

  v10 = objc_msgSend_rootNode(a3, v7, v8, v9);

  return MEMORY[0x1EEE66B58](a1, sel_assetWithVFXNode_bufferAllocator_, v10, a4);
}

uint64_t sub_1AF2EFB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return MEMORY[0x1EEE66B58](a1, sel_assetWithVFXNode_bufferAllocator_, a3, 0);
  }

  else
  {
    return 0;
  }
}

id sub_1AF2EFB64(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [a1 alloc];
  v9 = objc_msgSend_initWithBufferAllocator_(v6, v7, a4, v8);
  v11 = objc_msgSend_objectWithVFXNode_bufferAllocator_(MEMORY[0x1E6974B98], v10, a3, a4);
  objc_msgSend_addObject_(v9, v12, v11, v13);

  return v9;
}

id sub_1AF2EFBE8(objc_class *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(a1);
  v7 = objc_opt_new();
  objc_msgSend_setTransform_(v6, v8, v7, v9);

  objc_msgSend_transform(a3, v10, v11, v12);
  v70 = v14;
  v71 = v13;
  v68 = v16;
  v69 = v15;
  v20 = objc_msgSend_transform(v6, v17, v18, v19);
  objc_msgSend_setMatrix_(v20, v21, v22, v23, v71, v70, v69, v68);
  v27 = objc_msgSend_name(a3, v24, v25, v26);
  objc_msgSend_setName_(v6, v28, v27, v29);
  objc_setAssociatedObject(v6, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_setAssociatedObject(a3, @"VFXMDLAssociatedObject", v6, 0);
  v33 = objc_msgSend_camera(a3, v30, v31, v32);
  if (v33)
  {
    v37 = objc_msgSend_cameraWithVFXCamera_(MEMORY[0x1E6974B50], v34, v33, v36);
    objc_msgSend_addChild_(v6, v38, v37, v39);
  }

  v40 = objc_msgSend_light(a3, v34, v35, v36);
  if (v40)
  {
    v44 = v40;
    if (objc_msgSend_type(v40, v41, v42, v43) == 4)
    {
      v47 = objc_msgSend_lightProbeWithVFXLight_node_(MEMORY[0x1E6974B60], v45, v44, a3);
    }

    else
    {
      v47 = objc_msgSend_lightWithVFXLight_(MEMORY[0x1E6974B58], v45, v44, v46);
    }

    objc_msgSend_addChild_(v6, v48, v47, v49);
  }

  v50 = objc_msgSend_model(a3, v41, v42, v43);
  if (v50)
  {
    v54 = objc_msgSend_meshWithVFXModel_bufferAllocator_(MEMORY[0x1E6974B78], v51, v50, a4);
    objc_msgSend_addChild_(v6, v55, v54, v56);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v57 = objc_msgSend_childNodes(a3, v51, v52, v53);
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v72, v76, 16);
  if (v59)
  {
    v61 = v59;
    v62 = *v73;
    do
    {
      v63 = 0;
      do
      {
        if (*v73 != v62)
        {
          objc_enumerationMutation(v57);
        }

        v64 = objc_msgSend_objectWithVFXNode_bufferAllocator_(MEMORY[0x1E6974B98], v60, *(*(&v72 + 1) + 8 * v63), a4);
        objc_msgSend_addChild_(v6, v65, v64, v66);
        ++v63;
      }

      while (v61 != v63);
      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v60, &v72, v76, 16);
    }

    while (v61);
  }

  return v6;
}

id sub_1AF2F0298(void *a1, uint64_t a2, void *a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 1;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(a1, v8, v9, v10))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(a1, v11, v15, v12);
      if (objc_msgSend_indicesChannelCount(v16, v17, v18, v19) >= 2)
      {
        *a5 = objc_msgSend_indicesChannelCount(v16, v20, v21, v22);
        v13 = 1;
      }

      v23 = objc_msgSend_data(v16, v20, v21, v22);
      v27 = objc_msgSend_length(v23, v24, v25, v26);
      v14 += v27 / objc_msgSend_bytesPerIndex(v16, v28, v29, v30);
      ++v15;
    }

    while (v15 < objc_msgSend_count(a1, v31, v32, v33));
    if (v13)
    {
      v100 = -1;
      sub_1AF2F0508(a3, v14, &v100);
      if (objc_msgSend_count(a1, v34, v35, v36))
      {
        v39 = objc_msgSend_objectAtIndexedSubscript_(a1, v37, 0, v38);
        objc_msgSend_hasInterleavedIndicesChannels(v39, v40, v41, v42);
        v46 = objc_msgSend_indicesChannelCount(v39, v43, v44, v45);
        v50 = objc_msgSend_bytesPerIndex(v39, v47, v48, v49);
        v54 = objc_msgSend_primitiveCount(v39, v51, v52, v53);
        v58 = objc_msgSend_data(v39, v55, v56, v57);
        objc_msgSend_bytes(v58, v59, v60, v61);
        v65 = objc_msgSend_data(v39, v62, v63, v64);
        v69 = objc_msgSend_length(v65, v66, v67, v68);
        if (objc_msgSend_primitiveType(v39, v70, v71, v72) == 1 || objc_msgSend_primitiveType(v39, v73, v74, v75) != 4)
        {
          v94 = objc_msgSend_data(v39, v73, v74, v75);
          objc_msgSend_bytes(v94, v95, v96, v97);
        }

        else
        {
          v76 = v54 * v50;
          v77 = objc_msgSend_data(v39, v73, v74, v75);
          v81 = objc_msgSend_data(v39, v78, v79, v80);
          v85 = objc_msgSend_length(v81, v82, v83, v84);
          v87 = objc_msgSend_subdataWithRange_(v77, v86, v76, v85 - v76);
          objc_msgSend_bytes(v87, v88, v89, v90);
          v69 = objc_msgSend_length(v87, v91, v92, v93);
        }

        malloc_type_malloc((v69 / v50) / v46 * v50, 0x100004077774924uLL);
        sub_1AF2EFE34();
      }
    }
  }

  return v7;
}

_DWORD *sub_1AF2F0508(void *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v7 = v5 >> 1;
      if (v5 >> 1 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_1AF17C384(a1, v8);
    }

    sub_1AF10A1D0();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 2;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 2;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1AFE21110)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_1AFE21100)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = a2 >= v10;
  v20 = a2 - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v9 + 4 * v20;
    v23 = *a3;
    v24 = (4 * a2 - (v9 - result) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = (v9 + 8);
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_1AFE21110)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_1AFE21100)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void sub_1AF2F07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 786434)
  {
    if (a5)
    {
      v5 = (a2 + a3 + 4);
      do
      {
        *v5 = 1.0 - *v5;
        v5 = (v5 + a4);
        --a5;
      }

      while (a5);
    }
  }

  else
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AF0CE000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Warning: unable to flip non-float2 texture coordinates, skipping\n", v7, 2u);
    }
  }
}

uint64_t sub_1AF2F084C(void *a1, const char *a2, void *a3, void *a4, int a5, int a6, int a7, char *a8)
{
  v42 = a2;
  v10 = objc_msgSend_dataStride(a1, a2, a3, a4);
  result = objc_msgSend_dataOffset(a1, v11, v12, v13);
  v18 = result;
  if (a6 >= 1)
  {
    v19 = 0;
    v20 = 4 * v42 - 4;
    v21 = a8;
    do
    {
      if (v42)
      {
        v22 = *(*a3 + v20);
      }

      else
      {
        v22 = v19;
      }

      v23 = objc_msgSend_data(a1, v15, v16, v17);
      v27 = objc_msgSend_bytes(v23, v24, v25, v26);
      result = memcpy(v21, (v27 + v18 + (v22 * v10)), v10);
      ++v19;
      v21 += v10;
      v20 += 4 * a5;
    }

    while (a6 != v19);
  }

  if (a7 >= 1)
  {
    v28 = a7;
    v29 = &a8[v10 * a6];
    v30 = 4 * v42;
    do
    {
      v31 = *(*a4 + v30);
      v32 = objc_msgSend_data(a1, v15, v16, v17);
      v36 = objc_msgSend_bytes(v32, v33, v34, v35);
      result = memcpy(v29, (v36 + v18 + (v31 * v10)), v10);
      v29 += v10;
      v30 += 4 * a5 + 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

id sub_1AF2F09B4(objc_class *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v642 = a1;
  v708 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  value = a3;
  if ((objc_msgSend_isMemberOfClass_(a3, v6, v5, v7) & 1) == 0)
  {
    objc_msgSend_flush(VFXTransaction, v8, v9, v10);
  }

  if ((atomic_load_explicit(&qword_1EB658880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB658880))
  {
    qword_1EB658878 = objc_opt_new();
    __cxa_guard_release(&qword_1EB658880);
  }

  v11 = qword_1EB658878;
  if (a4)
  {
    v11 = a4;
  }

  v667 = v11;
  v702 = 0;
  v701 = 0;
  v703 = 0;
  v699 = 0;
  v698 = 0;
  v700 = 0;
  v696 = 0;
  v695 = 0;
  v697 = 0;
  v692 = 0;
  v693 = 0;
  v694 = 0;
  v645 = objc_msgSend_mesh(a3, v8, v9, v10);
  v15 = objc_msgSend_meshSources(v645, v12, v13, v14);
  v19 = objc_msgSend_modelSourceChannels(value, v16, v17, v18);
  v26 = objc_msgSend_count(v19, v20, v21, v22);
  if (v26)
  {
    v27 = 0;
    v666 = 0;
    while (1)
    {
      if (v27 >= objc_msgSend_count(v15, v23, v24, v25) || v27 >= v26)
      {
        if (v702 == v701)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      v30 = objc_msgSend_objectAtIndexedSubscript_(v15, v28, v27, v29);
      v34 = objc_msgSend_modelSourceChannels(value, v31, v32, v33);
      v37 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, v27, v36);
      LODWORD(v689) = objc_msgSend_unsignedIntegerValue(v37, v38, v39, v40);
      v44 = objc_msgSend_semantic(v30, v41, v42, v43);
      if (objc_msgSend_isEqualToString_(v44, v45, @"kGeometrySourceSemanticPosition", v46))
      {
        v50 = &v701;
      }

      else
      {
        v51 = objc_msgSend_semantic(v30, v47, v48, v49);
        if (objc_msgSend_isEqualToString_(v51, v52, @"kGeometrySourceSemanticNormal", v53))
        {
          v50 = &v698;
        }

        else
        {
          v57 = objc_msgSend_semantic(v30, v54, v55, v56);
          if (objc_msgSend_isEqualToString_(v57, v58, @"kGeometrySourceSemanticTexcoord", v59))
          {
            v50 = &v695;
          }

          else
          {
            v63 = objc_msgSend_semantic(v30, v60, v61, v62);
            if (!objc_msgSend_isEqualToString_(v63, v64, @"kGeometrySourceSemanticColor", v65))
            {
              goto LABEL_19;
            }

            v50 = &v692;
          }
        }
      }

      sub_1AF121C58(v50, &v689);
LABEL_19:
      if (!(v689 | v666))
      {
        v666 = objc_msgSend_vectorCount(v30, v23, v24, v25);
      }

      ++v27;
    }
  }

  v66 = objc_msgSend_indexOfObjectPassingTest_(v15, v23, &unk_1F24EC098, v25);
  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_25:
    v67 = 0;
    goto LABEL_120;
  }

  LODWORD(v689) = v66;
  sub_1AF121C58(&v701, &v689);
  v666 = 0;
LABEL_27:
  v68 = objc_alloc_init(MEMORY[0x1E6974C08]);
  v668 = objc_opt_new();
  v71 = objc_msgSend_modelSourcesForSemantic_(value, v69, @"kGeometrySourceSemanticPosition", v70);
  v74 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, 0, v73);
  v664 = objc_msgSend_vectorCount(v74, v75, v76, v77);
  v689 = 0;
  v690 = 0;
  v691 = 0;
  *&v686[8] = 0;
  v687 = 0;
  v688 = 0;
  v81 = objc_msgSend_meshElements(v645, v78, v79, v80);
  v84 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, 0, v83);
  *v686 = objc_msgSend_indicesChannelCount(v84, v85, v86, v87);
  v91 = objc_msgSend_meshElements(v645, v88, v89, v90);
  v92 = sub_1AF2F0298(v91, v666, &v689, &v686[4], v686);
  v97 = objc_msgSend_count(v92, v93, v94, v95);
  if (v97)
  {
    v664 = v666 + (((v687 - *&v686[4]) >> 2) / (*v686 + 1));
    v665 = ((v687 - *&v686[4]) >> 2) / (*v686 + 1);
  }

  else
  {
    LODWORD(v665) = 0;
  }

  v684 = 0u;
  v685 = 0u;
  v682 = 0u;
  v683 = 0u;
  v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v96, &v682, v707, 16);
  v669 = v97;
  v643 = v92;
  if (!v101)
  {
    v103 = 0;
    goto LABEL_46;
  }

  obj = v71;
  v102 = 0;
  v103 = 0;
  v104 = *MEMORY[0x1E6974B28];
  v660 = *v683;
  v655 = *v686;
  do
  {
    for (i = 0; i != v101; ++i)
    {
      if (*v683 != v660)
      {
        objc_enumerationMutation(obj);
      }

      v106 = *(*(&v682 + 1) + 8 * i);
      v107 = v104;
      if (v102)
      {
        v107 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v98, @"blendShape%d", v100, v102, v642);
      }

      v108 = objc_msgSend_attributes(v68, v98, v99, v100);
      v111 = objc_msgSend_objectAtIndexedSubscript_(v108, v109, v103, v110);
      objc_msgSend_setName_(v111, v112, v107, v113);
      v117 = objc_msgSend_attributes(v68, v114, v115, v116);
      v120 = objc_msgSend_objectAtIndexedSubscript_(v117, v118, v103, v119);
      objc_msgSend_setFormat_(v120, v121, 786435, v122);
      v126 = objc_msgSend_attributes(v68, v123, v124, v125);
      v129 = objc_msgSend_objectAtIndexedSubscript_(v126, v127, v103, v128);
      objc_msgSend_setBufferIndex_(v129, v130, v103, v131);
      if (v669)
      {
        v135 = objc_msgSend_newBuffer_type_(v667, v132, 12 * v664, 1);
        v136 = *(v701 + v102);
        v140 = objc_msgSend_map(v135, v137, v138, v139);
        v144 = objc_msgSend_bytes(v140, v141, v142, v143);
        sub_1AF2F084C(v106, v136, &v689, &v686[4], v655, v666, v665, v144);
        v148 = objc_msgSend_attributes(v68, v145, v146, v147);
        v151 = objc_msgSend_objectAtIndexedSubscript_(v148, v149, v103, v150);
        objc_msgSend_setOffset_(v151, v152, 0, v153);
        v157 = objc_msgSend_layouts(v68, v154, v155, v156);
        v160 = objc_msgSend_objectAtIndexedSubscript_(v157, v158, v103, v159);
        objc_msgSend_setStride_(v160, v161, 12, v162);
      }

      else
      {
        if (objc_msgSend_vectorCount(v106, v132, v133, v134) != v664)
        {
          continue;
        }

        v165 = objc_msgSend_dataOffset(v106, v98, v99, v100);
        v169 = objc_msgSend_attributes(v68, v166, v167, v168);
        v172 = objc_msgSend_objectAtIndexedSubscript_(v169, v170, v103, v171);
        objc_msgSend_setOffset_(v172, v173, v165, v174);
        v178 = objc_msgSend_dataStride(v106, v175, v176, v177);
        v182 = objc_msgSend_layouts(v68, v179, v180, v181);
        v185 = objc_msgSend_objectAtIndexedSubscript_(v182, v183, v103, v184);
        objc_msgSend_setStride_(v185, v186, v178, v187);
        v191 = objc_msgSend_data(v106, v188, v189, v190);
        v135 = objc_msgSend_newBufferWithData_type_(v667, v192, v191, 1);
      }

      objc_msgSend_addObject_(v668, v163, v135, v164);

      ++v103;
      v102 = (v102 + 1);
    }

    v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v98, &v682, v707, 16);
  }

  while (v101);
LABEL_46:
  v193 = objc_msgSend_modelSourcesForSemantic_(value, v98, @"kGeometrySourceSemanticNormal", v100);
  v680 = 0u;
  v681 = 0u;
  v678 = 0u;
  v679 = 0u;
  v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v193, v194, &v678, v706, 16);
  if (v198)
  {
    obja = v193;
    v199 = 0;
    v661 = *v679;
    v200 = *MEMORY[0x1E6974B18];
    v656 = *v686;
    do
    {
      for (j = 0; j != v198; ++j)
      {
        if (*v679 != v661)
        {
          objc_enumerationMutation(obja);
        }

        v202 = *(*(&v678 + 1) + 8 * j);
        v203 = v200;
        if (v199)
        {
          v203 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v195, @"normal%d", v197, v199);
        }

        v204 = objc_msgSend_attributes(v68, v195, v196, v197);
        v207 = objc_msgSend_objectAtIndexedSubscript_(v204, v205, v103, v206);
        objc_msgSend_setName_(v207, v208, v203, v209);
        v213 = objc_msgSend_attributes(v68, v210, v211, v212);
        v216 = objc_msgSend_objectAtIndexedSubscript_(v213, v214, v103, v215);
        objc_msgSend_setFormat_(v216, v217, 786435, v218);
        v222 = objc_msgSend_attributes(v68, v219, v220, v221);
        v225 = objc_msgSend_objectAtIndexedSubscript_(v222, v223, v103, v224);
        objc_msgSend_setBufferIndex_(v225, v226, v103, v227);
        if (v669)
        {
          v231 = objc_msgSend_newBuffer_type_(v667, v228, 12 * v664, 1);
          v232 = *(v698 + v199);
          v236 = objc_msgSend_map(v231, v233, v234, v235);
          v240 = objc_msgSend_bytes(v236, v237, v238, v239);
          sub_1AF2F084C(v202, v232, &v689, &v686[4], v656, v666, v665, v240);
          v244 = objc_msgSend_attributes(v68, v241, v242, v243);
          v247 = objc_msgSend_objectAtIndexedSubscript_(v244, v245, v103, v246);
          objc_msgSend_setOffset_(v247, v248, 0, v249);
          v253 = objc_msgSend_layouts(v68, v250, v251, v252);
          v256 = objc_msgSend_objectAtIndexedSubscript_(v253, v254, v103, v255);
          objc_msgSend_setStride_(v256, v257, 12, v258);
        }

        else
        {
          if (objc_msgSend_vectorCount(v202, v228, v229, v230) != v664)
          {
            continue;
          }

          v261 = objc_msgSend_dataOffset(v202, v195, v196, v197);
          v265 = objc_msgSend_attributes(v68, v262, v263, v264);
          v268 = objc_msgSend_objectAtIndexedSubscript_(v265, v266, v103, v267);
          objc_msgSend_setOffset_(v268, v269, v261, v270);
          v274 = objc_msgSend_dataStride(v202, v271, v272, v273);
          v278 = objc_msgSend_layouts(v68, v275, v276, v277);
          v281 = objc_msgSend_objectAtIndexedSubscript_(v278, v279, v103, v280);
          objc_msgSend_setStride_(v281, v282, v274, v283);
          v287 = objc_msgSend_data(v202, v284, v285, v286);
          v231 = objc_msgSend_newBufferWithData_type_(v667, v288, v287, 1);
        }

        objc_msgSend_addObject_(v668, v259, v231, v260);

        ++v103;
        v199 = (v199 + 1);
      }

      v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v195, &v678, v706, 16);
    }

    while (v198);
  }

  if (objc_msgSend_firstMaterial(value, v195, v196, v197) && ((v292 = objc_msgSend_firstMaterial(value, v289, v290, v291), v296 = objc_msgSend_multiply(v292, v293, v294, v295), objc_msgSend_contents(v296, v297, v298, v299), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v300 = objc_msgSend_firstMaterial(value, v289, v290, v291), v304 = objc_msgSend_multiply(v300, v301, v302, v303), objc_msgSend_contents(v304, v305, v306, v307), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    Material = objc_msgSend_firstMaterial(value, v289, v290, v291);
    v312 = objc_msgSend_multiply(Material, v309, v310, v311);
    v658 = objc_msgSend_mappingChannel(v312, v313, v314, v315);
  }

  else
  {
    v658 = -1;
  }

  if (objc_msgSend_firstMaterial(value, v289, v290, v291) && ((v319 = objc_msgSend_firstMaterial(value, v316, v317, v318), v323 = objc_msgSend_selfIllumination(v319, v320, v321, v322), objc_msgSend_contents(v323, v324, v325, v326), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v328 = objc_msgSend_firstMaterial(value, v316, v327, v318), v332 = objc_msgSend_selfIllumination(v328, v329, v330, v331), objc_msgSend_contents(v332, v333, v334, v335), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v336 = objc_msgSend_firstMaterial(value, v316, v327, v318);
    v340 = objc_msgSend_selfIllumination(v336, v337, v338, v339);
    v657 = objc_msgSend_mappingChannel(v340, v341, v342, v343);
  }

  else
  {
    v657 = -1;
  }

  v344 = objc_msgSend_modelSourcesForSemantic_(value, v316, @"kGeometrySourceSemanticTexcoord", v318);
  v676 = 0u;
  v677 = 0u;
  v674 = 0u;
  v675 = 0u;
  v662 = objc_msgSend_countByEnumeratingWithState_objects_count_(v344, v345, &v674, v705, 16);
  if (!v662)
  {
    v350 = v103;
    goto LABEL_96;
  }

  v647 = v344;
  v349 = 0;
  objb = *v675;
  v651 = *MEMORY[0x1E6974B38];
  v650 = *MEMORY[0x1E6974AD8];
  v649 = *MEMORY[0x1E6974B10];
  v648 = *v686;
  v350 = v103;
  while (2)
  {
    v351 = 0;
    while (2)
    {
      if (*v675 != objb)
      {
        objc_enumerationMutation(v647);
      }

      v352 = *(*(&v674 + 1) + 8 * v351);
      v353 = v651;
      if (v349)
      {
        v353 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v346, @"textureCoordinate%d", v348, v349);
      }

      v354 = v650;
      if (v658 != v349)
      {
        v354 = v353;
      }

      if (v657 == v349)
      {
        v355 = v649;
      }

      else
      {
        v355 = v354;
      }

      v356 = objc_msgSend_attributes(v68, v346, v347, v348);
      v359 = objc_msgSend_objectAtIndexedSubscript_(v356, v357, v350, v358);
      objc_msgSend_setName_(v359, v360, v355, v361);
      v365 = objc_msgSend_attributes(v68, v362, v363, v364);
      v368 = objc_msgSend_objectAtIndexedSubscript_(v365, v366, v350, v367);
      objc_msgSend_setFormat_(v368, v369, 786434, v370);
      v374 = objc_msgSend_attributes(v68, v371, v372, v373);
      v377 = objc_msgSend_objectAtIndexedSubscript_(v374, v375, v350, v376);
      objc_msgSend_setBufferIndex_(v377, v378, v350, v379);
      if (v669)
      {
        v383 = objc_msgSend_newBuffer_type_(v667, v380, 8 * v664, 1);
        v387 = v383;
        if (v696 == v695)
        {
          v388 = 0;
        }

        else
        {
          v388 = *(v695 + v349);
        }

        v424 = objc_msgSend_map(v383, v384, v385, v386);
        v428 = objc_msgSend_bytes(v424, v425, v426, v427);
        sub_1AF2F084C(v352, v388, &v689, &v686[4], v648, v666, v665, v428);
        v432 = objc_msgSend_attributes(v68, v429, v430, v431);
        v435 = objc_msgSend_objectAtIndexedSubscript_(v432, v433, v350, v434);
        objc_msgSend_setOffset_(v435, v436, 0, v437);
        v441 = objc_msgSend_layouts(v68, v438, v439, v440);
        v444 = objc_msgSend_objectAtIndexedSubscript_(v441, v442, v350, v443);
        objc_msgSend_setStride_(v444, v445, 8, v446);
        v420 = objc_msgSend_map(v387, v447, v448, v449);
LABEL_89:
        if (objc_msgSend_bytes(v420, v421, v422, v423))
        {
          v453 = objc_msgSend_attributes(v68, v450, v451, v452);
          v456 = objc_msgSend_objectAtIndexedSubscript_(v453, v454, v350, v455);
          v460 = objc_msgSend_format(v456, v457, v458, v459);
          v464 = objc_msgSend_map(v387, v461, v462, v463);
          v468 = objc_msgSend_bytes(v464, v465, v466, v467);
          v472 = objc_msgSend_offset(v456, v469, v470, v471);
          v476 = objc_msgSend_layouts(v68, v473, v474, v475);
          v480 = objc_msgSend_bufferIndex(v456, v477, v478, v479);
          v483 = objc_msgSend_objectAtIndexedSubscript_(v476, v481, v480, v482);
          v487 = objc_msgSend_stride(v483, v484, v485, v486);
          sub_1AF2F07B4(v460, v468, v472, v487, v664);
        }

        objc_msgSend_addObject_(v668, v450, v387, v452);

        ++v350;
        v349 = (v349 + 1);
      }

      else if (objc_msgSend_vectorCount(v352, v380, v381, v382) == v664)
      {
        v389 = objc_msgSend_dataOffset(v352, v346, v347, v348);
        v393 = objc_msgSend_attributes(v68, v390, v391, v392);
        v396 = objc_msgSend_objectAtIndexedSubscript_(v393, v394, v350, v395);
        objc_msgSend_setOffset_(v396, v397, v389, v398);
        v402 = objc_msgSend_dataStride(v352, v399, v400, v401);
        v406 = objc_msgSend_layouts(v68, v403, v404, v405);
        v409 = objc_msgSend_objectAtIndexedSubscript_(v406, v407, v350, v408);
        objc_msgSend_setStride_(v409, v410, v402, v411);
        v415 = objc_msgSend_data(v352, v412, v413, v414);
        v387 = objc_msgSend_newBufferWithData_type_(v667, v416, v415, 1);
        v420 = objc_msgSend_map(v387, v417, v418, v419);
        goto LABEL_89;
      }

      if (v662 != ++v351)
      {
        continue;
      }

      break;
    }

    v662 = objc_msgSend_countByEnumeratingWithState_objects_count_(v647, v346, &v674, v705, 16);
    if (v662)
    {
      continue;
    }

    break;
  }

LABEL_96:
  v672 = 0u;
  v673 = 0u;
  v670 = 0u;
  v671 = 0u;
  v659 = objc_msgSend_modelSourcesForSemantic_(value, v346, @"kGeometrySourceSemanticColor", v348);
  v492 = objc_msgSend_countByEnumeratingWithState_objects_count_(v659, v488, &v670, v704, 16);
  if (v492)
  {
    LODWORD(v493) = 0;
    v494 = *v671;
    v495 = *MEMORY[0x1E6974AF8];
    v663 = *v686;
    LODWORD(v496) = v350;
    do
    {
      v497 = 0;
      v493 = v493;
      v496 = v496;
      do
      {
        if (*v671 != v494)
        {
          objc_enumerationMutation(v659);
        }

        v498 = *(*(&v670 + 1) + 8 * v497);
        v499 = v495;
        if (v493)
        {
          v499 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v489, @"color%d", v491, v493);
        }

        v500 = objc_msgSend_attributes(v68, v489, v490, v491);
        v503 = objc_msgSend_objectAtIndexedSubscript_(v500, v501, v496, v502);
        objc_msgSend_setName_(v503, v504, v499, v505);
        v509 = objc_msgSend_componentsPerVector(v498, v506, v507, v508);
        v513 = objc_msgSend_attributes(v68, v510, v511, v512);
        v516 = objc_msgSend_objectAtIndexedSubscript_(v513, v514, v496, v515);
        objc_msgSend_setFormat_(v516, v517, v509 | 0xC0000, v518);
        v522 = objc_msgSend_attributes(v68, v519, v520, v521);
        v525 = objc_msgSend_objectAtIndexedSubscript_(v522, v523, v496, v524);
        objc_msgSend_setBufferIndex_(v525, v526, v496, v527);
        if (v669)
        {
          v531 = objc_msgSend_dataStride(v498, v528, v529, v530);
          v533 = objc_msgSend_newBuffer_type_(v667, v532, v531 * v664, 1);
          v534 = *(v692 + v493);
          v538 = objc_msgSend_map(v533, v535, v536, v537);
          v542 = objc_msgSend_bytes(v538, v539, v540, v541);
          sub_1AF2F084C(v498, v534, &v689, &v686[4], v663, v666, v665, v542);
          v546 = objc_msgSend_attributes(v68, v543, v544, v545);
          v549 = objc_msgSend_objectAtIndexedSubscript_(v546, v547, v496, v548);
          objc_msgSend_setOffset_(v549, v550, 0, v551);
          v555 = objc_msgSend_dataStride(v498, v552, v553, v554);
          v559 = objc_msgSend_layouts(v68, v556, v557, v558);
          v562 = objc_msgSend_objectAtIndexedSubscript_(v559, v560, v496, v561);
          objc_msgSend_setStride_(v562, v563, v555, v564);
        }

        else
        {
          v567 = objc_msgSend_dataOffset(v498, v528, v529, v530);
          v571 = objc_msgSend_attributes(v68, v568, v569, v570);
          v574 = objc_msgSend_objectAtIndexedSubscript_(v571, v572, v496, v573);
          objc_msgSend_setOffset_(v574, v575, v567, v576);
          v580 = objc_msgSend_dataStride(v498, v577, v578, v579);
          v584 = objc_msgSend_layouts(v68, v581, v582, v583);
          v587 = objc_msgSend_objectAtIndexedSubscript_(v584, v585, v496, v586);
          objc_msgSend_setStride_(v587, v588, v580, v589);
          v593 = objc_msgSend_data(v498, v590, v591, v592);
          v533 = objc_msgSend_newBufferWithData_type_(v667, v594, v593, 1);
        }

        objc_msgSend_addObject_(v668, v565, v533, v566);

        ++v496;
        ++v493;
        ++v497;
      }

      while (v492 != v497);
      v492 = objc_msgSend_countByEnumeratingWithState_objects_count_(v659, v489, &v670, v704, 16);
    }

    while (v492);
  }

  v690 = v689;
  v687 = *&v686[4];
  v595 = objc_opt_new();
  v599 = objc_msgSend_meshElementCount(v645, v596, v597, v598);
  v603 = objc_msgSend_materials(value, v600, v601, v602);
  v607 = objc_msgSend_count(v603, v604, v605, v606);
  if (v599)
  {
    v610 = v607;
    for (k = 0; k != v599; ++k)
    {
      v614 = objc_msgSend_meshElementAtIndex_(v645, v608, k, v609);
      v615 = MEMORY[0x1E6974BC8];
      if (v669)
      {
        v616 = objc_msgSend_objectAtIndexedSubscript_(v643, v612, k, v613);
        v618 = objc_msgSend_submeshWithUniquedIndexData_andVFXModelElement_bufferAllocator_(v615, v617, v616, v614, a4);
      }

      else
      {
        v618 = objc_msgSend_submeshWithVFXModelElement_bufferAllocator_positionSourceChannel_(MEMORY[0x1E6974BC8], v612, v614, a4, *v701);
      }

      v621 = v618;
      objc_msgSend_addObject_(v595, v619, v618, v620);
      if (v610)
      {
        v623 = objc_msgSend_materials(value, v608, v622, v609);
        v626 = objc_msgSend_objectAtIndexedSubscript_(v623, v624, k % v610, v625);
        v629 = objc_msgSend_materialWithVFXMaterial_(MEMORY[0x1E6974B68], v627, v626, v628);
        objc_msgSend_setMaterial_(v621, v630, v629, v631);
      }
    }
  }

  v632 = [v642 alloc];
  v634 = objc_msgSend_initWithVertexBuffers_vertexCount_descriptor_submeshes_(v632, v633, v668, v664, v68, v595);

  v638 = objc_msgSend_name(value, v635, v636, v637);
  objc_msgSend_setName_(v634, v639, v638, v640);
  objc_setAssociatedObject(v634, @"VFXMDLAssociatedObject", value, 0x301);
  v67 = v634;
  if (*&v686[4])
  {
    v687 = *&v686[4];
    operator delete(*&v686[4]);
  }

  if (v689)
  {
    v690 = v689;
    operator delete(v689);
  }

LABEL_120:
  if (v692)
  {
    v693 = v692;
    operator delete(v692);
  }

  if (v695)
  {
    v696 = v695;
    operator delete(v695);
  }

  if (v698)
  {
    v699 = v698;
    operator delete(v698);
  }

  if (v701)
  {
    v702 = v701;
    operator delete(v701);
  }

  return v67;
}