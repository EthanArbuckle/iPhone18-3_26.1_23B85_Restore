id sub_1BEDFC008(void *a1)
{
  v3 = &v1[OBJC_IVAR___SBHIconLayer_iconIdentifier];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = &v1[OBJC_IVAR___SBHIconLayer_iconImageInfo];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 1) = xmmword_1BEE886B0;
  v5 = OBJC_IVAR___SBHIconLayer_iconImageLoadPriority;
  *&v1[OBJC_IVAR___SBHIconLayer_iconImageLoadPriority] = 0;
  v6 = OBJC_IVAR___SBHIconLayer_iconImageAppearance;
  *&v1[v6] = [objc_opt_self() defaultAppearance];
  *&v1[OBJC_IVAR___SBHIconLayer__iconContentLayer] = 0;
  *&v1[OBJC_IVAR___SBHIconLayer_updateAnimationCount] = 0;
  *&v1[OBJC_IVAR___SBHIconLayer_iconContentType] = 0;
  v7 = OBJC_IVAR___SBHIconLayer__isIconMasked;
  v1[OBJC_IVAR___SBHIconLayer__isIconMasked] = 1;
  *&v1[OBJC_IVAR___SBHIconLayer_iconContentGeneration] = 0;
  *&v1[OBJC_IVAR___SBHIconLayer_observers] = 0;
  v8 = sub_1BEDD0540(a1, v27);
  type metadata accessor for SBHIconLayer(v8);
  if (swift_dynamicCast())
  {
    v24 = v5;
    v9 = v26;
    v10 = [v26 iconIdentifier];
    v11 = sub_1BEE4708C();
    v13 = v12;

    *v3 = v11;
    v3[1] = v13;

    [v9 iconImageInfo];
    *v4 = v14;
    *(v4 + 1) = v15;
    *(v4 + 2) = v16;
    *(v4 + 3) = v17;
    v18 = [v9 iconImageAppearance];
    v19 = *&v1[v6];
    *&v1[v6] = v18;

    v1[v7] = *(v9 + OBJC_IVAR___SBHIconLayer__isIconMasked);
    v20 = [v9 iconImageLoadPriority];

    *&v1[v24] = v20;
  }

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v21 = sub_1BEE476FC();
  v25.receiver = v1;
  v25.super_class = SBHIconLayer;
  v22 = objc_msgSendSuper2(&v25, sel_initWithLayer_, v21);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v22;
}

id sub_1BEDFC288()
{
  v1 = &v0[OBJC_IVAR___SBHIconLayer_iconIdentifier];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR___SBHIconLayer_iconImageInfo];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 1) = xmmword_1BEE886B0;
  *&v0[OBJC_IVAR___SBHIconLayer_iconImageLoadPriority] = 0;
  v3 = OBJC_IVAR___SBHIconLayer_iconImageAppearance;
  v4 = objc_opt_self();
  *&v0[v3] = [v4 defaultAppearance];
  *&v0[OBJC_IVAR___SBHIconLayer__iconContentLayer] = 0;
  *&v0[OBJC_IVAR___SBHIconLayer_updateAnimationCount] = 0;
  *&v0[OBJC_IVAR___SBHIconLayer_iconContentType] = 0;
  v0[OBJC_IVAR___SBHIconLayer__isIconMasked] = 1;
  *&v0[OBJC_IVAR___SBHIconLayer_iconContentGeneration] = 0;
  *&v0[OBJC_IVAR___SBHIconLayer_observers] = 0;
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  __asm { FMOV            V0.2D, #30.0 }

  *v2 = _Q0;
  *(v2 + 1) = xmmword_1BEE8B110;
  v10 = [v4 defaultAppearance];
  v11 = *&v0[v3];
  *&v0[v3] = v10;

  v13.receiver = v0;
  v13.super_class = SBHIconLayer;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SBHIconLayer.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___SBHIconLayer_iconIdentifier];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = &v2[OBJC_IVAR___SBHIconLayer_iconImageInfo];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 1) = xmmword_1BEE886B0;
  v32 = OBJC_IVAR___SBHIconLayer_iconImageLoadPriority;
  *&v2[OBJC_IVAR___SBHIconLayer_iconImageLoadPriority] = 0;
  v6 = OBJC_IVAR___SBHIconLayer_iconImageAppearance;
  v31 = objc_opt_self();
  *&v2[v6] = [v31 defaultAppearance];
  *&v2[OBJC_IVAR___SBHIconLayer__iconContentLayer] = 0;
  *&v2[OBJC_IVAR___SBHIconLayer_updateAnimationCount] = 0;
  v7 = OBJC_IVAR___SBHIconLayer_iconContentType;
  *&v2[OBJC_IVAR___SBHIconLayer_iconContentType] = 0;
  v8 = OBJC_IVAR___SBHIconLayer__isIconMasked;
  v2[OBJC_IVAR___SBHIconLayer__isIconMasked] = 1;
  v9 = OBJC_IVAR___SBHIconLayer_iconContentGeneration;
  *&v2[OBJC_IVAR___SBHIconLayer_iconContentGeneration] = 0;
  *&v2[OBJC_IVAR___SBHIconLayer_observers] = 0;
  sub_1BEB20D28(0, &unk_1EBDC7AF0);
  v10 = sub_1BEE473AC();
  sub_1BEE4707C();

  *v4 = 0;
  v4[1] = 0xE000000000000000;

  v11 = sub_1BEE4705C();
  [a1 decodeCGSizeForKey_];
  v13 = v12;
  v15 = v14;

  v16 = sub_1BEE4705C();
  [a1 decodeDoubleForKey_];
  v18 = v17;

  v19 = sub_1BEE4705C();
  [a1 decodeDoubleForKey_];
  v21 = v20;

  *v5 = v13;
  *(v5 + 1) = v15;
  *(v5 + 2) = v18;
  *(v5 + 3) = v21;
  sub_1BEB20D28(0, &unk_1EBDBFEE0);
  v22 = sub_1BEE473AC();
  if (!v22)
  {
    v22 = [v31 defaultAppearance];
  }

  v23 = *&v2[v6];
  *&v2[v6] = v22;

  *&v2[v7] = 0;
  v24 = sub_1BEE4705C();
  v25 = [a1 decodeIntegerForKey_];

  *&v2[v9] = v25;
  v26 = sub_1BEE4705C();
  LOBYTE(v25) = [a1 decodeBoolForKey_];

  v2[v8] = v25;
  v27 = sub_1BEE4705C();
  v28 = [a1 decodeIntegerForKey_];

  *&v2[v32] = v28;
  v33.receiver = v2;
  v33.super_class = SBHIconLayer;
  v29 = objc_msgSendSuper2(&v33, sel_initWithCoder_, a1);

  if (v29)
  {
  }

  return v29;
}

void SBHIconLayer.contentsScale.setter()
{
  v3.super_class = SBHIconLayer;
  objc_msgSendSuper2(&v3, sel_setContentsScale_);
  v1 = [v0 iconContentLayer];
  if (v1)
  {
    v2 = v1;
    [v0 contentsScale];
    [v2 setContentsScale_];
  }
}

id sub_1BEDFCA3C(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  [v5 setIconContentGeneration_];
  [v5 setIconImageAppearance_];
  v11 = OBJC_IVAR___SBHIconLayer__iconContentLayer;
  v12 = *&v5[OBJC_IVAR___SBHIconLayer__iconContentLayer];
  if (a1)
  {
    if (v12)
    {
      sub_1BEB20D28(0, &qword_1EBDBFE98);
      v13 = v12;
      v14 = a1;
      v15 = sub_1BEE473CC();

      if (v15)
      {
        return [v6 setIconContentType_];
      }
    }

    else
    {
      v14 = a1;
    }

    v16 = v14;
    [v6 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v16 setBounds_];
    v60.origin.x = v18;
    v60.origin.y = v20;
    v60.size.width = v22;
    v60.size.height = v24;
    MidX = CGRectGetMidX(v60);
    v61.origin.x = v18;
    v61.origin.y = v20;
    v61.size.width = v22;
    v61.size.height = v24;
    [v16 setPosition_];

    v26 = *&v6[v11];
    if (v26)
    {
      v16 = v16;
      v27 = v26;
      [v6 insertSublayer:v16 above:v27];
      if (a5)
      {
        v52 = a4;
        v28 = objc_opt_self();
        [v28 begin];
        v29 = swift_allocObject();
        *(v29 + 16) = v27;
        v58 = sub_1BEDFD378;
        v59 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = sub_1BEE01324;
        v57 = &block_descriptor_3;
        v30 = _Block_copy(&aBlock);
        v31 = v27;

        [v28 setCompletionBlock_];
        _Block_release(v30);
        v53 = v31;
        if ([a3 isOpaque])
        {
          v32 = *MEMORY[0x1E69797E0];
        }

        else
        {
          v33 = sub_1BEE4705C();
          v34 = [objc_opt_self() animationWithKeyPath_];

          v35 = v34;
          v36 = sub_1BEE4723C();
          [v35 setFromValue_];

          v37 = sub_1BEE4723C();
          [v35 setToValue_];

          [v35 setDuration_];
          [v35 setMass_];
          [v35 setStiffness_];
          [v35 setDamping_];
          [v35 setInitialVelocity_];
          v32 = *MEMORY[0x1E69797E0];
          [v35 setFillMode_];
          [v35 setRemovedOnCompletion_];
          aBlock = 0;
          v55 = 0xE000000000000000;
          sub_1BEE475AC();

          aBlock = 0xD000000000000016;
          v55 = 0x80000001BEEA4620;
          v38 = OBJC_IVAR___SBHIconLayer_updateAnimationCount;
          v39 = sub_1BEE476EC();
          MEMORY[0x1BFB4E5A0](v39);

          v40 = sub_1BEE4705C();

          [v53 addAnimation:v35 forKey:v40];

          ++*&v6[v38];
        }

        a4 = v52;
        v41 = sub_1BEE4705C();
        v42 = [objc_opt_self() animationWithKeyPath_];

        v43 = v42;
        v44 = sub_1BEE4723C();
        [v43 setFromValue_];

        v45 = sub_1BEE4723C();
        [v43 setToValue_];

        [v43 setDuration_];
        [v43 setMass_];
        [v43 setStiffness_];
        [v43 setDamping_];
        [v43 setInitialVelocity_];
        [v43 setFillMode_];
        [v43 setRemovedOnCompletion_];
        aBlock = 0;
        v55 = 0xE000000000000000;
        sub_1BEE475AC();

        aBlock = 0xD000000000000015;
        v55 = 0x80000001BEEA4640;
        v46 = OBJC_IVAR___SBHIconLayer_updateAnimationCount;
        v47 = sub_1BEE476EC();
        MEMORY[0x1BFB4E5A0](v47);

        v48 = sub_1BEE4705C();

        [v16 addAnimation:v43 forKey:v48];

        ++*&v6[v46];
        [v28 commit];
      }

      else
      {
        [v27 removeFromSuperlayer];
      }
    }

    else
    {
      [v6 addSublayer_];
    }

    goto LABEL_16;
  }

  if (v12)
  {
    [v12 removeFromSuperlayer];
    v16 = 0;
LABEL_16:
    v49 = *&v6[v11];
    *&v6[v11] = a1;
    v50 = v16;

    sub_1BEB225C8();
  }

  return [v6 setIconContentType_];
}

Swift::Void __swiftcall SBHIconLayer.layoutSublayers()()
{
  v12.super_class = SBHIconLayer;
  objc_msgSendSuper2(&v12, sel_layoutSublayers);
  v1 = [v0 iconContentLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 setBounds_];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    [v2 setPosition_];
  }
}

id sub_1BEDFD378()
{
  v1 = *(v0 + 16);
  [v1 removeAllAnimations];

  return [v1 removeFromSuperlayer];
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BEDFD3D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BEDFD420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BEDFD47C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(SBIconView) initWithConfigurationOptions:v0[1] listLayoutProvider:v0[2]];
  [v2 setIcon_];
  return v2;
}

id sub_1BEDFD4E0(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  [a1 setConfigurationOptions_];
  [a1 setListLayoutProvider_];
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8580);
  MEMORY[0x1BFB4E3D0](&v10, v8);
  return [a1 setEditing:v10 animated:1];
}

uint64_t sub_1BEDFD588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BEDFD6D0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BEDFD5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BEDFD6D0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BEDFD650()
{
  sub_1BEDFD6D0();
  sub_1BEE46D5C();
  __break(1u);
}

unint64_t sub_1BEDFD67C()
{
  result = qword_1EBDC7B08;
  if (!qword_1EBDC7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC7B08);
  }

  return result;
}

unint64_t sub_1BEDFD6D0()
{
  result = qword_1EBDC7B10;
  if (!qword_1EBDC7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC7B10);
  }

  return result;
}

uint64_t SBHSimpleIconEffect.description.getter()
{
  v1 = [v0 name];
  v2 = sub_1BEE4708C();

  return v2;
}

id SBHSimpleIconEffect.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SBHSimpleIconEffect()
{
  result = qword_1EBDC7B38;
  if (!qword_1EBDC7B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDC7B38);
  }

  return result;
}

uint64_t sub_1BEDFDB9C@<X0>(void **a1@<X2>, void *a2@<X8>)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BD0);
  sub_1BEE46EDC();
  if (v10)
  {
    v4 = *a1;
    v5 = sub_1BEE4705C();

    v6 = [v4 indexOfListWithIdentifier_];

    v7 = sub_1BEE467EC();

    if (v6 == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {

    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1BEDFDCD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = [*a4 listAtIndex_];
  v7 = [v6 uniqueIdentifier];
  v8 = sub_1BEE4708C();
  v10 = v9;

  v14 = *(a4 + 48);
  v11 = *(a4 + 64);
  v17 = v14;
  v15 = v11;
  v16 = v11;
  v13[2] = v8;
  v13[3] = v10;
  sub_1BEB44B04(&v17, v13, &qword_1EBDC7B40);
  sub_1BEB44B04(&v16, v13, &qword_1EBDC7BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BD0);
  sub_1BEE46EEC();

  sub_1BEB4992C(&v17, &qword_1EBDC7B40);
  sub_1BEB4992C(&v16, &qword_1EBDC7BE8);
}

void RootFolderView.init(configuration:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BEE46ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B40);
  sub_1BEE46ECC();
  v4 = [a1 folder];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 listLayoutProvider];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 visibleListCount];

      *a2 = v5;
      *(a2 + 8) = v7;
      *(a2 + 16) = v9;
      *(a2 + 24) = v10;
      *(a2 + 32) = v8;
      *(a2 + 40) = 0;
      *(a2 + 48) = v9;
      *(a2 + 56) = v10;
      *(a2 + 64) = v11;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t RootFolderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9 = *(v1 + 64);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = sub_1BEE46FEC();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B48);
  return sub_1BEDFDFEC(v8, a1 + *(v6 + 44));
}

uint64_t sub_1BEDFDFEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v108 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B60);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v77 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B68);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v77 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B70);
  v5 = MEMORY[0x1EEE9AC00](v100);
  v107 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v99 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v77 - v9;
  v10 = sub_1BEE46DBC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BEE46DDC();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B78);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v14 = &v77 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B80);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v77 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B88);
  MEMORY[0x1EEE9AC00](v88);
  v17 = &v77 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B90);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v77 - v18;
  *&v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B98);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v77 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BA0);
  v97 = *(v98 - 8);
  v20 = MEMORY[0x1EEE9AC00](v98);
  v96 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v77 - v22;
  v23 = sub_1BEE4720C();
  v95 = sub_1BEE471FC();
  *&v94 = v23;
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_1BEE46DEC();
  sub_1BEE46DFC();
  sub_1BEE46DFC();
  v25 = sub_1BEE46DFC();
  if (v25 != v24)
  {
    v25 = sub_1BEE46DFC();
  }

  MEMORY[0x1EEE9AC00](v25);
  *(&v77 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BA8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDC7BB0);
  v27 = sub_1BEB53980(&qword_1EBDC7BB8, &qword_1EBDC7BB0);
  *&v115 = v26;
  *(&v115 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_1BEE46C0C();
  sub_1BEE46DAC();
  v28 = v84;
  sub_1BEE46DCC();
  sub_1BEB53980(&qword_1EBDC7BC0, &qword_1EBDC7B78);
  v29 = v78;
  v30 = v83;
  v31 = v86;
  sub_1BEE46EAC();
  (*(v85 + 8))(v28, v31);
  (*(v81 + 8))(v14, v30);
  v32 = sub_1BEE46C5C();
  LOBYTE(v31) = sub_1BEE46E1C();
  (*(v79 + 32))(v17, v29, v80);
  v33 = v88;
  v34 = &v17[*(v88 + 36)];
  *v34 = v32;
  v34[8] = v31;
  v35 = swift_allocObject();
  v36 = *(a1 + 48);
  *(v35 + 48) = *(a1 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(a1 + 64);
  v37 = *(a1 + 16);
  *(v35 + 16) = *a1;
  *(v35 + 32) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1BEDFF974;
  *(v38 + 24) = v35;
  sub_1BEDFF984(a1, &v115);
  v39 = sub_1BEDFF9BC();
  v40 = v87;
  sub_1BEE46E8C();

  sub_1BEB4992C(v17, &qword_1EBDC7B88);
  v41 = swift_allocObject();
  v42 = *(a1 + 48);
  *(v41 + 48) = *(a1 + 32);
  *(v41 + 64) = v42;
  *(v41 + 80) = *(a1 + 64);
  v43 = *(a1 + 16);
  *(v41 + 16) = *a1;
  *(v41 + 32) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1BEDFFAD8;
  *(v44 + 24) = v41;
  sub_1BEDFF984(a1, &v115);
  *&v115 = v33;
  *(&v115 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v91;
  v47 = v90;
  sub_1BEE46E5C();

  (*(v89 + 8))(v40, v47);
  v110 = *(a1 + 48);
  *&v111 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BD0);
  sub_1BEE46EFC();
  *&v110 = v47;
  *(&v110 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v93;
  sub_1BEE46E7C();

  (*(v92 + 8))(v46, v48);
  v110 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BD8);
  sub_1BEE46EFC();
  v93 = v115;
  v49 = *v116;
  sub_1BEDFF984(a1, &v115);
  v50 = sub_1BEE471FC();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  v52 = MEMORY[0x1E69E85E0];
  *(v51 + 24) = MEMORY[0x1E69E85E0];
  v53 = *(a1 + 48);
  *(v51 + 64) = *(a1 + 32);
  *(v51 + 80) = v53;
  *(v51 + 96) = *(a1 + 64);
  v54 = *(a1 + 16);
  *(v51 + 32) = *a1;
  *(v51 + 48) = v54;
  sub_1BEDFF984(a1, &v115);
  v55 = sub_1BEE471FC();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v52;
  v57 = *(a1 + 48);
  *(v56 + 64) = *(a1 + 32);
  *(v56 + 80) = v57;
  *(v56 + 96) = *(a1 + 64);
  v58 = *(a1 + 16);
  *(v56 + 32) = *a1;
  *(v56 + 48) = v58;
  sub_1BEE46F2C();
  v94 = v115;
  v59 = *v116;
  v60 = [*a1 maxListCount];
  v115 = v93;
  *v116 = v49;
  *&v116[8] = v94;
  *&v116[24] = v59;
  *&v117 = v60;
  *(&v117 + 1) = [SBHIconImageVariantCache performSynchronousCacheRequest:];
  v118 = 0;
  LOBYTE(v59) = sub_1BEE46DEC();
  sub_1BEE46DFC();
  sub_1BEE46DFC();
  if (sub_1BEE46DFC() != v59)
  {
    sub_1BEE46DFC();
  }

  sub_1BEE46FFC();
  sub_1BEDC597C();
  v61 = v103;
  sub_1BEE46EBC();
  v112 = *&v116[16];
  v113 = v117;
  v114 = v118;
  v111 = *v116;
  v110 = v115;
  sub_1BEDFFBB4(&v110);
  sub_1BEE46FFC();
  sub_1BEE46C1C();
  v62 = v102;
  (*(v104 + 32))(v102, v61, v106);
  v63 = (v62 + *(v101 + 36));
  v64 = v120;
  *v63 = v119;
  v63[1] = v64;
  v63[2] = v121;
  v65 = v99;
  sub_1BEDFFE10(v62, v99, &qword_1EBDC7B68);
  *(v65 + *(v100 + 36)) = xmmword_1BEE8B280;
  v66 = v105;
  sub_1BEDFFE10(v65, v105, &qword_1EBDC7B70);
  v67 = v97;
  v68 = *(v97 + 16);
  v69 = v96;
  v70 = v109;
  v71 = v98;
  v68(v96, v109, v98);
  v72 = v107;
  sub_1BEB5DAA8(v66, v107);
  v73 = v108;
  v68(v108, v69, v71);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BE0);
  sub_1BEB5DAA8(v72, &v73[*(v74 + 48)]);
  sub_1BEB4992C(v66, &qword_1EBDC7B70);
  v75 = *(v67 + 8);
  v75(v70, v71);
  sub_1BEB4992C(v72, &qword_1EBDC7B70);
  v75(v69, v71);
}

uint64_t sub_1BEDFEF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  v11 = a2;
  v2 = sub_1BEE46D8C();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1BEE46C8C();
  MEMORY[0x1EEE9AC00](v7);
  *(&v9 - 2) = v10;
  v12 = 0;
  sub_1BEDFFD74(&qword_1EBDC7BF8, MEMORY[0x1E697FCB0]);
  sub_1BEE477EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7C00);
  sub_1BEDFFC10();
  sub_1BEE46BFC();
  sub_1BEB53980(&qword_1EBDC7BB8, &qword_1EBDC7BB0);
  sub_1BEE46E9C();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BEDFF210(uint64_t a1)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [*a1 lists];
  sub_1BEDFFCC0();
  v3 = sub_1BEE471AC();

  v9 = v3;
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_1BEDFF984(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7C18);
  sub_1BEB53980(&qword_1EBDC7C28, &qword_1EBDC7C20);
  sub_1BEB53980(&qword_1EBDC7C10, &qword_1EBDC7C18);
  sub_1BEDFFD74(&qword_1EBDC7C30, sub_1BEDFFCC0);
  sub_1BEE46F4C();
}

uint64_t sub_1BEDFF440@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7C38);
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7C18);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = *a1;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(a2 + 8);
  v37 = *(a2 + 16);
  v13 = v11;
  swift_unknownObjectRetain();
  v14 = @"SBIconLocationRoot";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7BF0);
  sub_1BEE46EFC();
  v15 = v30;
  v16 = v31;
  v17 = v32;
  v30 = v13;
  v31 = v14;
  v32 = v12;
  v33 = 1;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AD80;
  LOBYTE(v12) = sub_1BEE46DEC();
  *(inited + 32) = v12;
  v19 = sub_1BEE46E0C();
  *(inited + 33) = v19;
  sub_1BEE46DFC();
  sub_1BEE46DFC();
  if (sub_1BEE46DFC() != v12)
  {
    sub_1BEE46DFC();
  }

  sub_1BEE46DFC();
  if (sub_1BEE46DFC() != v19)
  {
    sub_1BEE46DFC();
  }

  sub_1BEE46FFC();
  sub_1BEDFFDBC();
  sub_1BEE46EBC();
  v20 = v30;
  v21 = v31;

  swift_unknownObjectRelease();

  v22 = [v13 uniqueIdentifier];
  v23 = sub_1BEE4708C();
  v25 = v24;

  (*(v5 + 32))(v10, v7, v28);
  v26 = &v10[*(v8 + 52)];
  *v26 = v23;
  v26[1] = v25;
  sub_1BEDFFE10(v10, v29, &qword_1EBDC7C18);
}

uint64_t sub_1BEDFF7A8(void (*a1)(uint64_t))
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_1BEDFF858@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9 = *(v1 + 64);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = sub_1BEE46FEC();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B48);
  return sub_1BEDFDFEC(v8, a1 + *(v6 + 44));
}

uint64_t sub_1BEDFF8C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BEDFF90C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BEDFF9BC()
{
  result = qword_1EBDC7BC8;
  if (!qword_1EBDC7BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDC7B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDC7B78);
    sub_1BEE46DDC();
    sub_1BEB53980(&qword_1EBDC7BC0, &qword_1EBDC7B78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC7BC8);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

unint64_t sub_1BEDFFC10()
{
  result = qword_1EBDC7C08;
  if (!qword_1EBDC7C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDC7C00);
    sub_1BEB53980(&qword_1EBDC7C10, &qword_1EBDC7C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC7C08);
  }

  return result;
}

unint64_t sub_1BEDFFCC0()
{
  result = qword_1EBDBFF10;
  if (!qword_1EBDBFF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDBFF10);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BEDFFD74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BEDFFDBC()
{
  result = qword_1EBDC7C48;
  if (!qword_1EBDC7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC7C48);
  }

  return result;
}

uint64_t sub_1BEDFFE10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BEDFFEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BEE00230@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [objc_allocWithZone(SBHAddWidgetSheetConfiguration) init];
  [v4 setListLayoutProvider_];
  swift_unknownObjectRelease();
  [v4 setIconViewProvider_];
  swift_unknownObjectRelease();
  v5 = [v2 gridSizeClassDomain];
  [v4 setGridSizeClassDomain_];

  v6 = [v2 gridSizeClassForContentWidth];
  [v4 setGridSizeClassForContentWidth_];

  [v4 setStyle_];
  [v4 setBackgroundMaterial_];
  v7 = [v2 searchPlaceholderText];
  [v4 setSearchPlaceholderText_];

  v8 = [v2 searchTintColor];
  [v4 setSearchTintColor_];

  [v4 setApplicationCellIncludesGalleryListView_];
  [v4 setContentContainsInteractiveUIControls_];
  [v4 setWantsCustomApplicationsSection_];
  [v4 setWantsGlassGroupAppliedToGalleryContents_];
  [v4 setListViewClass_];
  result = type metadata accessor for SBHAddWidgetSheetConfiguration();
  a1[3] = result;
  *a1 = v4;
  return result;
}

id SBHAddWidgetSheetConfiguration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_listLayoutProvider) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_iconViewProvider) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassDomain) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassForContentWidth) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_style) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_backgroundMaterial) = 2;
  v1 = (v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchPlaceholderText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchTintColor) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_applicationCellIncludesGalleryListView) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_contentContainsInteractiveUIControls) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_wantsCustomApplicationsSection) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_wantsGlassGroupAppliedToGalleryContents) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetConfiguration_listViewClass) = 0;
  v3.super_class = SBHAddWidgetSheetConfiguration;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for SBHAddWidgetSheetConfiguration()
{
  result = qword_1EBDC7CB8;
  if (!qword_1EBDC7CB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDC7CB8);
  }

  return result;
}

uint64_t SBHIconGridSize.description.getter(int a1)
{
  v1 = SBHStringForIconGridSize(a1);
  v2 = sub_1BEE4708C();

  return v2;
}

__C::SBIconLocation __swiftcall SBIconLocation.withWidgets(_:)(Swift::Bool a1)
{
  v2 = SBIconLocationSelectLocationWithWidgets(v1, a1);

  return v2;
}

double sub_1BEE00830()
{
  result = *&SBIconCoordinateNotFound;
  xmmword_1EBDC7CC0 = SBIconCoordinateNotFound;
  return result;
}

uint64_t static SBIconCoordinate.notFound.getter()
{
  if (qword_1EBDC6DB0 != -1)
  {
    swift_once();
  }

  return xmmword_1EBDC7CC0;
}

uint64_t SBIconCoordinate.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = SBHStringForIconCoordinate(a1, a2);
  v3 = sub_1BEE4708C();

  return v3;
}

uint64_t sub_1BEE008EC()
{
  v1 = SBHStringForIconCoordinate(*v0, v0[1]);
  v2 = sub_1BEE4708C();

  return v2;
}

uint64_t SBIconImageInfo.description.getter(double a1, double a2, double a3, double a4)
{
  v4 = SBHStringForIconImageInfo(a1, a2, a3, a4);
  v5 = sub_1BEE4708C();

  return v5;
}

uint64_t sub_1BEE00A10()
{
  v1 = SBHStringForIconImageInfo(*v0, v0[1], v0[2], v0[3]);
  v2 = sub_1BEE4708C();

  return v2;
}

uint64_t static SBIconResizeHandleMetrics.== infix(_:_:)(__int128 *a1, _OWORD *a2)
{
  v2 = a2[3];
  v8[2] = a2[2];
  v8[3] = v2;
  v3 = a2[4];
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = *a1;
  v9[1] = a1[1];
  v8[4] = v3;
  v9[0] = v6;
  return SBIconResizeHandleMetricsEqualToIconResizeHandleMetrics(v9, v8);
}

uint64_t sub_1BEE00ABC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v8[4] = a1[4];
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v7[3] = v4;
  v7[4] = a2[4];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return SBIconResizeHandleMetricsEqualToIconResizeHandleMetrics(v8, v7);
}

__C::SBIconCoordinate __swiftcall SBHIconGridSize.coordinate(for:)(Swift::Int a1)
{
  v2 = SBIconCoordinateMakeWithGridCellIndex(a1, v1);
  result.row = v3;
  result.column = v2;
  return result;
}

uint64_t sub_1BEE00CD8(void *a1, unsigned int *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1BEE00D20()
{
  v1 = SBHStringForIconGridSize(*v0);
  v2 = sub_1BEE4708C();

  return v2;
}

uint64_t static SBHIconGridRange.empty.getter()
{
  if (qword_1EBDBFDC8 != -1)
  {
    swift_once();
  }

  return qword_1EBDBFDD0;
}

Swift::Int_optional __swiftcall SBHIconGridRange.cellIndex(below:gridSize:)(Swift::Int below, SBHIconGridSize gridSize)
{
  v4 = sub_1BEE00F08(below, *&gridSize, v2, v3, SBHIconGridRangeCellIndexBelowColumn);
  result.value = v4;
  result.is_nil = v5;
  return result;
}

Swift::Int_optional __swiftcall SBHIconGridRange.cellIndex(above:gridSize:)(Swift::Int above, SBHIconGridSize gridSize)
{
  v4 = sub_1BEE00F08(above, *&gridSize, v2, v3, SBHIconGridRangeCellIndexAboveColumn);
  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1BEE00F08(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t (*a5)(uint64_t, void, void, uint64_t))
{
  v5 = a5(a3, a4, a2, a1);
  if (v5 == sub_1BEE467EC())
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

Swift::Int_optional __swiftcall SBHIconGridRange.relativeCellIndex(forCellIndex:gridSize:)(Swift::Int forCellIndex, SBHIconGridSize gridSize)
{
  v4 = SBHIconGridRangeRelativeCellIndexForCellIndex(v2, v3, forCellIndex, gridSize.columns);
  v5 = 0;
  result.value = v4;
  result.is_nil = v5;
  return result;
}

Swift::Int_optional __swiftcall SBHIconGridRange.cellIndex(forRelativeCellIndex:gridSize:)(Swift::Int forRelativeCellIndex, SBHIconGridSize gridSize)
{
  v4 = SBHIconGridRangeCellIndexForRelativeCellIndex(v2, v3, forRelativeCellIndex, gridSize.columns);
  v5 = 0;
  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1BEE01050()
{
  v1 = *(v0 + 16);
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 10);
  v5 = *(v0 + 24);
  result = sub_1BEE467EC();
  if (v5 == result)
  {
    return 0;
  }

  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v8;
    if (v8 < *(v0 + 40))
    {
      return v5;
    }

    v9 = *(v0 + 32);
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      if (v10 >= v4)
      {
        *(v0 + 24) = sub_1BEE467EC();
      }

      else
      {
        v11 = v3 | (v4 << 16);
        *(v0 + 24) = SBHIconGridRangeMinCellIndexOnRow(v2, v11, v1, v9 + 1);
        v12 = SBHIconGridRangeMaxCellIndexOnRow(v2, v11, v1, v10);
        *(v0 + 32) = v10;
        *(v0 + 40) = v12;
      }

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEE01150@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 10);
  v6 = *(v1 + 16);
  v7 = *(v1 + 18);
  result = SBHIconGridRangeMaxCellIndexOnRow(v3, v4, v6, 0);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 10) = v5;
  *(a1 + 16) = v6;
  *(a1 + 18) = v7;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t _s12CellSequenceVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12CellSequenceVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

unint64_t sub_1BEE01238()
{
  result = qword_1EBDBFDF0;
  if (!qword_1EBDBFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDBFDF0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1BEE012F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BEE01324(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1BEE01464()
{
  v1 = v0;
  v2 = sub_1BEE46BDC();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  v9 = sub_1BEE46B5C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  if ([*&v0[OBJC_IVAR___SBHIconLayerView__iconImageStyleConfiguration] hasGlass] && (v19 = objc_msgSend(v0, sel_icon), v20 = objc_msgSend(v19, sel_allowsGlass), v19, v20) && objc_msgSend(v1, sel_iconContentType) == 2)
  {
    sub_1BEE46B3C();
    [v1 boostsGlassWhitePoint];
    sub_1BEE46A8C();
    v39 = v9;
    v21 = *(v10 + 8);
    v21(v16, v39);
    v36 = [v1 iconImageAppearance];
    [v36 iconGlassUserInterfaceStyle];
    sub_1BEE46AFC();
    v37 = v21;
    v38 = v10 + 8;
    v21(v18, v39);
    v22 = v39;
    v23 = *(v10 + 32);
    v23(v18, v16, v39);
    if (v1[OBJC_IVAR___SBHIconLayerView__isGlassHidden] == 1)
    {
      v35 = v23;
      sub_1BEE46B4C();
      sub_1BEE46A7C();
      v24 = v22;
      v25 = v37;
      v37(v13, v24);
      v25(v18, v39);
      v22 = v39;
      v35(v18, v16, v39);
    }

    (*(v10 + 16))(v16, v18, v22);
    sub_1BEE46BEC();
    [v1 allowsGlassGrouping];
    sub_1BEE46B8C();
    v27 = v40;
    v26 = v41;
    v28 = *(v41 + 8);
    v28(v6, v40);
    v29 = [*&v1[OBJC_IVAR___SBHIconLayerView__iconImageAppearance] tintColor];
    if (v29)
    {
      v30 = v29;
      sub_1BEE46BAC();

      v26 = v41;
      v28(v8, v27);
      (*(v26 + 32))(v8, v6, v27);
    }

    if ([v1 glassIdentifier] >= 1)
    {
      sub_1BEE46B9C();
      v28(v8, v27);
      (*(v26 + 32))(v8, v6, v27);
    }

    v31 = [v1 backdropGroupName];
    if (v31)
    {
      v32 = v31;
      sub_1BEE4708C();

      v26 = v41;
      sub_1BEE46B7C();
      v27 = v40;

      v28(v8, v27);
      (*(v26 + 32))(v8, v6, v27);
    }

    v42[3] = v27;
    v42[4] = MEMORY[0x1E69DC388];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    (*(v26 + 16))(boxed_opaque_existential_1, v8, v27);
    sub_1BEE4736C();

    v28(v8, v27);
    return (v37)(v18, v22);
  }

  else
  {

    return [v1 sbh_removeGlass];
  }
}

id SBHIconLayerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

id SBHIconLayerView.init(frame:)()
{
  v1 = [objc_allocWithZone(SBIcon) init];
  v2 = [objc_opt_self() defaultStyleConfiguration];
  v3 = [objc_opt_self() defaultAppearance];
  v4 = [v0 initWithIcon:v1 iconImageInfo:v2 iconImageStyleConfiguration:v3 iconImageAppearance:0 iconImageOptions:{0.0, 0.0, 1.0, 0.0}];

  return v4;
}

id SBHIconLayerView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

uint64_t sub_1BEE01E50(uint64_t a1)
{
  v3 = v1;

  return a1;
}

id sub_1BEE01FA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1BEE021DC(id a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR___SBHIconLayerView__iconContentLayer;
  v5 = *&v1[OBJC_IVAR___SBHIconLayerView__iconContentLayer];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_9:
    *&v2[v4] = v3;
    v9 = a1;
    goto LABEL_10;
  }

  sub_1BEB20D28(0, &qword_1EBDBFE98);
  v6 = v5;
  v21 = v3;
  v7 = sub_1BEE473CC();

  if ((v7 & 1) == 0)
  {
    v5 = *&v2[v4];
    a1 = v21;
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    v22 = a1;
    [v5 removeFromSuperlayer];
    v8 = *&v2[v4];
    *&v2[v4] = v3;
    v21 = v22;

    if (!v3)
    {
      [v2 setIconContentType_];
      goto LABEL_13;
    }

    v9 = v21;
LABEL_10:
    v21 = v9;
    [v2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v21 setBounds_];
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    MidX = CGRectGetMidX(v24);
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    [v21 setPosition_];
    [v2 iconImageInfo];
    [v21 setContentsScale_];
    v20 = [v2 layer];
    [v20 addSublayer_];

LABEL_13:
    sub_1BEE0378C(&selRef_iconLayerViewContentLayerDidChange_);
  }
}

id sub_1BEE02538(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  [v4 setIconContentGeneration_];
  v9 = OBJC_IVAR___SBHIconLayerView__iconContentLayer;
  v10 = *&v4[OBJC_IVAR___SBHIconLayerView__iconContentLayer];
  if (a1)
  {
    if (v10)
    {
      sub_1BEB20D28(0, &qword_1EBDBFE98);
      v11 = v10;
      v12 = a1;
      v13 = sub_1BEE473CC();

      if (v13)
      {
        return [v5 setIconContentType_];
      }
    }

    else
    {
      v12 = a1;
    }

    v15 = v12;
    [v5 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v15 setBounds_];
    v63.origin.x = v17;
    v63.origin.y = v19;
    v63.size.width = v21;
    v63.size.height = v23;
    MidX = CGRectGetMidX(v63);
    v64.origin.x = v17;
    v64.origin.y = v19;
    v64.size.width = v21;
    v64.size.height = v23;
    [v15 setPosition_];

    v25 = *&v5[v9];
    if (v25)
    {
      v14 = v15;
      v26 = v25;
      v27 = [v5 layer];
      [v27 insertSublayer:v14 above:v26];

      if (a4)
      {
        v55 = a3;
        v28 = objc_opt_self();
        [v28 begin];
        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        v61 = sub_1BEE05038;
        v62 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = sub_1BEE01324;
        v60 = &block_descriptor_5;
        v30 = _Block_copy(&aBlock);
        v56 = v26;

        v54 = v28;
        [v28 setCompletionBlock_];
        _Block_release(v30);
        v31 = [v5 iconImageAppearance];
        LODWORD(v30) = [v31 isOpaque];

        v32 = &selRef__startAppLaunchResetTimer_;
        if (v30)
        {
          v33 = *MEMORY[0x1E69797E0];
          v34 = 0x1FB97D000;
        }

        else
        {
          v35 = sub_1BEE4705C();
          v36 = [objc_opt_self() animationWithKeyPath_];

          v37 = v36;
          v38 = sub_1BEE4723C();
          [v37 setFromValue_];

          v39 = sub_1BEE4723C();
          [v37 setToValue_];

          [v37 setDuration_];
          [v37 setMass_];
          [v37 setStiffness_];
          [v37 setDamping_];
          [v37 setInitialVelocity_];
          v33 = *MEMORY[0x1E69797E0];
          [v37 setFillMode_];
          v34 = &selRef_setPlaceholder_;
          [v37 setRemovedOnCompletion_];
          aBlock = 0;
          v58 = 0xE000000000000000;
          sub_1BEE475AC();

          aBlock = 0xD000000000000016;
          v58 = 0x80000001BEEA4620;
          v40 = OBJC_IVAR___SBHIconLayerView_updateAnimationCount;
          v41 = sub_1BEE476EC();
          MEMORY[0x1BFB4E5A0](v41);

          v42 = sub_1BEE4705C();

          [v56 addAnimation:v37 forKey:v42];

          v32 = &selRef__startAppLaunchResetTimer_;
          ++*&v5[v40];
        }

        v43 = sub_1BEE4705C();
        v44 = [objc_opt_self() animationWithKeyPath_];

        v45 = v44;
        v46 = sub_1BEE4723C();
        [v45 setFromValue_];

        v47 = sub_1BEE4723C();
        [v45 setToValue_];

        [v45 setDuration_];
        [v45 setMass_];
        [v45 setStiffness_];
        [v45 setDamping_];
        [v45 setInitialVelocity_];
        [v45 setFillMode_];
        [v45 v34[114]];
        aBlock = 0;
        v58 = 0xE000000000000000;
        sub_1BEE475AC();

        aBlock = 0xD000000000000015;
        v58 = 0x80000001BEEA4640;
        v48 = OBJC_IVAR___SBHIconLayerView_updateAnimationCount;
        v49 = sub_1BEE476EC();
        MEMORY[0x1BFB4E5A0](v49);

        v50 = sub_1BEE4705C();

        [v14 v32[444]];

        ++*&v5[v48];
        [v54 commit];

        a3 = v55;
        goto LABEL_17;
      }

      [v26 removeFromSuperlayer];
    }

    else
    {
      v14 = v15;
      v26 = [v5 layer];
      [v26 addSublayer_];
    }

LABEL_17:
    v51 = *&v5[v9];
    *&v5[v9] = a1;
    v52 = v14;

    sub_1BEE0378C(&selRef_iconLayerViewContentLayerDidChange_);
    return [v5 setIconContentType_];
  }

  if (v10)
  {
    [v10 removeFromSuperlayer];
    v14 = 0;
    goto LABEL_17;
  }

  return [v5 setIconContentType_];
}

uint64_t sub_1BEE02CB4(void *a1)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 removeAllAnimations];
  [a1 removeFromSuperlayer];
}

uint64_t sub_1BEE02E60(void *a1)
{
  v3 = [v1 iconIdentifier];
  v4 = sub_1BEE4708C();
  v6 = v5;

  v7 = [a1 iconIdentifier];
  v8 = sub_1BEE4708C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_1BEE4770C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  [v1 iconImageInfo];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [a1 iconImageInfo];
  if (SBIconImageInfoEqualToIconImageInfo(v14, v16, v18, v20, v21, v22, v23, v24))
  {
    v25 = [v1 iconImageOptions];
    if (v25 == [a1 iconImageOptions])
    {
      v26 = [v1 iconImageAppearance];
      v27 = [a1 iconImageAppearance];
      sub_1BEB20D28(0, &unk_1EBDBFEE0);
      v28 = sub_1BEE473CC();

      return v28 & 1;
    }
  }

  return 0;
}

id sub_1BEE03254(void *a1, char a2)
{
  result = [v2 canAcceptIconContentInLayerView_];
  if (result)
  {
    v6 = result;
    v7 = [a1 iconContentGeneration];
    v8 = [a1 iconContentLayer];
    [a1 setIconContentLayer:0 generation:0 type:1 animated:0];
    [v8 removeAllAnimations];
    [v2 setIconContentLayer:v8 generation:v7 type:2 animated:a2 & 1];

    return v6;
  }

  return result;
}

Swift::Void __swiftcall SBHIconLayerView.layoutSubviews()()
{
  v12.super_class = SBHIconLayerView;
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = [v0 iconContentLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 setBounds_];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    [v2 setPosition_];
  }
}

void sub_1BEE0378C(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR___SBHIconLayerView_observers);
  if (!v2)
  {
    return;
  }

  v4 = v2;
  v5 = [v4 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7DD8);
  v6 = sub_1BEE471AC();

  if (v6 >> 62)
  {
    v7 = sub_1BEE474CC();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB4EA90](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v9 respondsToSelector_])
        {
          [v9 *a1];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1BEE03A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + *a5) = a3;
}

id sub_1BEE03C74(uint64_t a1)
{
  v3 = OBJC_IVAR___SBHIconLayerView_observers;
  result = *(v1 + OBJC_IVAR___SBHIconLayerView_observers);
  if (result || (v5 = [objc_opt_self() weakObjectsHashTable], v6 = *(v1 + v3), *(v1 + v3) = v5, v6, (result = *(v1 + v3)) != 0))
  {

    return [result addObject_];
  }

  return result;
}

void sub_1BEE03EA8(void *a1)
{
  v3 = [v1 iconContentLayer];
  if (v3)
  {
    v15 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = [v1 iconImageAppearance];
      v7 = [v6 appearanceWithTintColor_];

      if (v7)
      {
        v8 = [v1 iconImageStyleConfiguration];
        v9 = [v8 styleConfigurationWithTintColor_];

        if (v9)
        {
          v10 = *&v1[OBJC_IVAR___SBHIconLayerView__iconImageAppearance];
          *&v1[OBJC_IVAR___SBHIconLayerView__iconImageAppearance] = v7;
          v11 = v7;

          v12 = *&v1[OBJC_IVAR___SBHIconLayerView__iconImageStyleConfiguration];
          *&v1[OBJC_IVAR___SBHIconLayerView__iconImageStyleConfiguration] = v9;
          v13 = v9;

          v14 = [a1 CGColor];
          [v5 setTintColor_];

          sub_1BEE01464();
          v15 = v13;
        }
      }
    }
  }
}

BOOL sub_1BEE04120(void *a1)
{
  v3 = [v1 icon];
  v4 = [v3 uniqueIdentifier];

  v5 = sub_1BEE4708C();
  v7 = v6;

  v8 = [a1 iconIdentifier];
  v9 = sub_1BEE4708C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1BEE4770C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = [v1 iconContentGeneration];
  if (v14 != [a1 imageGeneration])
  {
    return 0;
  }

  [a1 iconImageInfo];
  if (v15 <= 0.0 || (v19 = v16, v16 <= 0.0) || (v20 = v15, v21 = v17, v22 = v18, [v1 iconImageInfo], result = SBIconImageInfoEqualToIconImageInfo(v23, v24, v25, v26, v20, v19, v21, v22)))
  {
    v28 = [a1 imageAppearance];
    v29 = [v1 canUpdateIconTintColorFromImageAppearance_];

    return v29;
  }

  return result;
}

uint64_t sub_1BEE045C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

uint64_t sub_1BEE04928(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SBHIconLayerView_backdropGroupName);
  v4 = *(v2 + OBJC_IVAR___SBHIconLayerView_backdropGroupName);
  v5 = *(v2 + OBJC_IVAR___SBHIconLayerView_backdropGroupName + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_1BEE4770C() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_1BEE01464();
LABEL_11:
}

uint64_t sub_1BEE049B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1BEE04A6C(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[*a5];
  a1[*a5] = a3;
  if (v8 == a3)
  {
  }

  else
  {
    v9 = a1;
    sub_1BEE01464();
  }
}

id sub_1BEE04CD4(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v17 = sub_1BEE46A5C();
  MEMORY[0x1EEE9AC00](v17);
  *&v8[OBJC_IVAR___SBHIconLayerView_iconImageLoadPriority] = 0;
  *&v8[OBJC_IVAR___SBHIconLayerView__iconContentLayer] = 0;
  *&v8[OBJC_IVAR___SBHIconLayerView_updateAnimationCount] = 0;
  *&v8[OBJC_IVAR___SBHIconLayerView_iconContentType] = 0;
  *&v8[OBJC_IVAR___SBHIconLayerView_contentVisibility] = 0;
  *&v8[OBJC_IVAR___SBHIconLayerView_iconContentGeneration] = 0;
  *&v8[OBJC_IVAR___SBHIconLayerView_observers] = 0;
  v8[OBJC_IVAR___SBHIconLayerView_allowsGlassGrouping] = 1;
  *&v8[OBJC_IVAR___SBHIconLayerView_glassIdentifier] = 0;
  v8[OBJC_IVAR___SBHIconLayerView_boostsGlassWhitePoint] = 0;
  v18 = &v8[OBJC_IVAR___SBHIconLayerView_backdropGroupName];
  *v18 = 0;
  v18[1] = 0;
  v8[OBJC_IVAR___SBHIconLayerView__isGlassHidden] = 0;
  *&v8[OBJC_IVAR___SBHIconLayerView_icon] = a1;
  v19 = &v8[OBJC_IVAR___SBHIconLayerView_iconImageInfo];
  *v19 = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  *&v8[OBJC_IVAR___SBHIconLayerView__iconImageStyleConfiguration] = a2;
  *&v8[OBJC_IVAR___SBHIconLayerView__iconImageAppearance] = a3;
  *&v8[OBJC_IVAR___SBHIconLayerView_iconImageOptions] = a4;
  v26.receiver = v8;
  v26.super_class = SBHIconLayerView;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, a5, a6);
  v24 = v23;
  if (a8 > 0.0)
  {
    [v23 _setContinuousCornerRadius_];
  }

  if ([v21 hasGlass] && objc_msgSend(v21, sel_iconGlassUserInterfaceStyle))
  {
    sub_1BEE4737C();
    sub_1BEE46A4C();
    sub_1BEE4738C();
  }

  sub_1BEE01464();
  return v24;
}

void _sSo16SBHIconLayerViewC15SpringBoardHomeE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___SBHIconLayerView_iconImageLoadPriority) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView__iconContentLayer) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView_updateAnimationCount) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView_iconContentType) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView_contentVisibility) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView_iconContentGeneration) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView_observers) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView_allowsGlassGrouping) = 1;
  *(v0 + OBJC_IVAR___SBHIconLayerView_glassIdentifier) = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView_boostsGlassWhitePoint) = 0;
  v1 = (v0 + OBJC_IVAR___SBHIconLayerView_backdropGroupName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___SBHIconLayerView__isGlassHidden) = 0;
  sub_1BEE4764C();
  __break(1u);
}

uint64_t sub_1BEE05040@<X0>(char *a1@<X8>)
{
  v2 = sub_1BEE46ABC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BEE46B5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE46ACC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC358], v2);
  sub_1BEE46ADC();
  (*(v3 + 8))(v5, v2);
  v10 = *(v7 + 8);
  v10(v9, v6);
  if ((SBHPerformanceFlagEnabled(6) & 1) != 0 || SBHPerformanceFlagEnabled(8))
  {
    sub_1BEE46A9C();
LABEL_4:
    v10(a1, v6);
    return (*(v7 + 32))(a1, v9, v6);
  }

  result = SBHPerformanceFlagEnabled(3);
  if (result)
  {
    sub_1BEE46AAC();
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1BEE05254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BEE46B5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE46ACC();
  if ((SBHPerformanceFlagEnabled(7) & 1) != 0 || SBHPerformanceFlagEnabled(8))
  {
    sub_1BEE46A9C();
LABEL_4:
    (*(v3 + 8))(a1, v2);
    return (*(v3 + 32))(a1, v5, v2);
  }

  result = SBHPerformanceFlagEnabled(3);
  if (result)
  {
    sub_1BEE46AAC();
    goto LABEL_4;
  }

  return result;
}

Swift::Void __swiftcall UIView.sbh_applyGlass()()
{
  v0 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BEE46B1C();
  v1[3] = sub_1BEE46BDC();
  v1[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1BEE46BEC();
  sub_1BEE4736C();
}

void sub_1BEE05418(void *a1)
{
  v2 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1;
  sub_1BEE46B1C();
  v4[3] = sub_1BEE46BDC();
  v4[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1BEE46BEC();
  sub_1BEE4736C();
}

Swift::Void __swiftcall UIView.sbh_applyGlass(with:)(UIColor with)
{
  v1 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1BEE46BDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE46B1C();
  sub_1BEE46BEC();
  v7[3] = v2;
  v7[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1BEE46BAC();
  (*(v3 + 8))(v5, v2);
  sub_1BEE4736C();
}

void sub_1BEE05698(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BEE46BDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  sub_1BEE46B1C();
  sub_1BEE46BEC();
  v13[3] = v6;
  v13[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_1BEE46BAC();
  (*(v7 + 8))(v9, v6);
  sub_1BEE4736C();
}

Swift::Void __swiftcall UIView.sbh_applyClearGlass(grouping:)(Swift::Bool grouping)
{
  v2 = v1;
  v19 = grouping;
  v3 = sub_1BEE46B5C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v18 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = sub_1BEE46BDC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE46AEC();
  if (SBHPerformanceFlagEnabled(8))
  {
    sub_1BEE46A9C();
    (*(v4 + 8))(v10, v3);
    v17 = *(v4 + 32);
    v18[1] = v2;
    v17(v10, v7, v3);
  }

  else
  {
    v17 = *(v4 + 32);
  }

  v17(v12, v10, v3);
  sub_1BEE46BEC();
  v20[3] = v13;
  v20[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1BEE46B8C();
  (*(v14 + 8))(v16, v13);
  sub_1BEE4736C();
}

Swift::Void __swiftcall UIView.sbh_applyAppIconGlass()()
{
  v1 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1BEE46B3C();
  v2[3] = sub_1BEE46BDC();
  v2[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_1BEE46BEC();
  sub_1BEE4736C();
  [v0 sbh:1 applyAppIconGlassWithGrouping:?];
}

void sub_1BEE05BC0(void *a1)
{
  v2 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a1;
  sub_1BEE46B3C();
  v4[3] = sub_1BEE46BDC();
  v4[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1BEE46BEC();
  sub_1BEE4736C();
  [v3 sbh:1 applyAppIconGlassWithGrouping:?];
}

Swift::Void __swiftcall UIView.sbh_applyAppIconGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1BEE46BDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE46B3C();
  sub_1BEE46BEC();
  v7[3] = v2;
  v7[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1BEE46B8C();
  (*(v3 + 8))(v5, v2);
  sub_1BEE4736C();
}

void sub_1BEE05E54(void *a1)
{
  v2 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BEE46BDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  sub_1BEE46B3C();
  sub_1BEE46BEC();
  v9[3] = v3;
  v9[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_1BEE46B8C();
  (*(v4 + 8))(v6, v3);
  sub_1BEE4736C();
}

uint64_t sub_1BEE06044(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 sbh:a3 applyAppIconGlassWithTintColor:1 allowingGrouping:?];
}

Swift::Void __swiftcall UIView.sbh_applyAppIconGlass(with:grouping:)(UIColor with, Swift::Bool grouping)
{
  v2 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BEE46BDC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-1] - v8;
  sub_1BEE46B3C();
  sub_1BEE46BEC();
  sub_1BEE46BAC();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v12[3] = v3;
  v12[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_1BEE46B8C();
  v10(v9, v3);
  sub_1BEE4736C();
}

void sub_1BEE062A4(void *a1, uint64_t a2, void *a3, int a4)
{
  v17[1] = a4;
  v6 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1BEE46BDC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = a3;
  v15 = a1;
  sub_1BEE46B3C();
  sub_1BEE46BEC();
  sub_1BEE46BAC();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v18[3] = v7;
  v18[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1BEE46B8C();
  v16(v13, v7);
  sub_1BEE4736C();
}

Swift::Void __swiftcall UIView.sbh_applyWidgetGlass(tintColor:userInterfaceStyle:grouping:boostsWhitePoint:meshed:)(UIColor_optional tintColor, UIUserInterfaceStyle userInterfaceStyle, Swift::Bool grouping, Swift::Bool boostsWhitePoint, Swift::Bool meshed)
{
  v33 = boostsWhitePoint;
  v36 = userInterfaceStyle;
  v5 = *&tintColor.is_nil;
  isa = tintColor.value.super.isa;
  v6 = sub_1BEE46BDC();
  v39 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v32 = &v30 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v35 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v30 - v13;
  v14 = sub_1BEE46B5C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  sub_1BEE46B2C();
  if (v5)
  {
    sub_1BEE46AFC();
    (*(v15 + 8))(v18, v14);
  }

  sub_1BEE46A8C();
  v21 = *(v15 + 8);
  v21(v20, v14);
  v31 = v21;
  v22 = *(v15 + 32);
  v22(v20, v18, v14);
  sub_1BEE46B0C();
  v21(v20, v14);
  v22(v20, v18, v14);
  (*(v15 + 16))(v18, v20, v14);
  v23 = v34;
  sub_1BEE46BEC();
  v24 = v32;
  sub_1BEE46B8C();
  v25 = v39;
  v26 = *(v39 + 8);
  v26(v23, v6);
  v27 = v35;
  sub_1BEE46BBC();
  v26(v24, v6);
  v28 = v37;
  sub_1BEE46B9C();
  v26(v27, v6);
  v40[3] = v6;
  v40[4] = MEMORY[0x1E69DC388];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(v25 + 16))(boxed_opaque_existential_1, v28, v6);
  sub_1BEE4736C();
  v26(v28, v6);
  v31(v20, v14);
}

void sub_1BEE06894(void *a1, uint64_t a2, void *a3, Swift::Bool a4, UIUserInterfaceStyle a5, Swift::Bool a6, Swift::Bool a7)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a3;
  v14 = a1;
  v15 = v14;
  v16 = v14;
  v18.value.super.isa = a3;
  v18.is_nil = a4;
  UIView.sbh_applyWidgetGlass(tintColor:userInterfaceStyle:grouping:boostsWhitePoint:meshed:)(v18, a5, a6, a7, v15);
}

uint64_t sub_1BEE069C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 sbh:a3 applyWidgetGlassWithTintColor:a4 userInterfaceStyle:a5 allowingGrouping:a6 boostsWhitePoint:0 meshed:?];
}

Swift::Void __swiftcall UIView.sbh_applyDockGlass()()
{
  v0 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BEE05040(&v3[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_1BEE46BDC();
  v3[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1BEE46BEC();
  sub_1BEE4736C();
}

void sub_1BEE06B44(void *a1)
{
  v2 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_1BEE05040(v4);
  v7[3] = sub_1BEE46BDC();
  v7[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1BEE46BEC();
  sub_1BEE4736C();
}

Swift::Void __swiftcall UIView.sbh_applyDockGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BEE46BDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE05040(v3);
  sub_1BEE46BEC();
  v9[3] = v4;
  v9[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_1BEE46B8C();
  (*(v5 + 8))(v7, v4);
  sub_1BEE4736C();
}

void sub_1BEE06DC4(void *a1)
{
  v2 = sub_1BEE46B5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BEE46BDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1;
  sub_1BEE05040(v4);
  sub_1BEE46BEC();
  v11[3] = v5;
  v11[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1BEE46B8C();
  (*(v6 + 8))(v8, v5);
  sub_1BEE4736C();
}

Swift::Void __swiftcall UIView.sbh_applyDockGlass(userInterfaceStyle:)(UIUserInterfaceStyle userInterfaceStyle)
{
  v2 = sub_1BEE46B5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-1] - v7;
  if (userInterfaceStyle)
  {
    sub_1BEE05040(v6);
    sub_1BEE46AFC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_1BEE05040(&v10[-1] - v7);
  }

  (*(v3 + 16))(v6, v8, v2);
  v10[3] = sub_1BEE46BDC();
  v10[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_1BEE46BEC();
  sub_1BEE4736C();
  (*(v3 + 8))(v8, v2);
}

void sub_1BEE07124(void *a1, uint64_t a2, UIUserInterfaceStyle a3)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  UIView.sbh_applyDockGlass(userInterfaceStyle:)(a3);
}

Swift::Void __swiftcall UIView.sbh_applyDockGlass(grouping:userInterfaceStyle:highlightsDisplayAngle:)(Swift::Bool grouping, UIUserInterfaceStyle userInterfaceStyle, Swift::Bool highlightsDisplayAngle)
{
  v19[3] = grouping;
  v4 = sub_1BEE46BDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BEE46B5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v19 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v19 - v16;
  if (userInterfaceStyle)
  {
    sub_1BEE05040(v15);
    sub_1BEE46AFC();
    (*(v9 + 8))(v15, v8);
  }

  else
  {
    sub_1BEE05040(v19 - v16);
  }

  SBHPerformanceFlagEnabled(3);
  sub_1BEE46AAC();
  (*(v9 + 16))(v15, v12, v8);
  sub_1BEE46BEC();
  v20[3] = v4;
  v20[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1BEE46B8C();
  (*(v5 + 8))(v7, v4);
  sub_1BEE4736C();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v17, v8);
}

void sub_1BEE0747C(void *a1, uint64_t a2, Swift::Bool a3, UIUserInterfaceStyle a4, Swift::Bool a5)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a1;
  UIView.sbh_applyDockGlass(grouping:userInterfaceStyle:highlightsDisplayAngle:)(a3, a4, a5);
}

Swift::Void __swiftcall UIView.sbh_applySearchPillGlass(userInterfaceStyle:grouping:)(UIUserInterfaceStyle userInterfaceStyle, Swift::Bool grouping)
{
  v3 = sub_1BEE46BDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BEE46B5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15[-1] - v12;
  if (userInterfaceStyle)
  {
    sub_1BEE05254(v11);
    sub_1BEE46AFC();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_1BEE05254(&v15[-1] - v12);
  }

  (*(v8 + 16))(v11, v13, v7);
  sub_1BEE46BEC();
  v15[3] = v3;
  v15[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1BEE46B8C();
  (*(v4 + 8))(v6, v3);
  sub_1BEE4736C();
  (*(v8 + 8))(v13, v7);
}

void sub_1BEE07794(void *a1, uint64_t a2, UIUserInterfaceStyle a3, Swift::Bool a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  UIView.sbh_applySearchPillGlass(userInterfaceStyle:grouping:)(a3, a4);
}

uint64_t sub_1BEE07884()
{
  v0 = sub_1BEE46B5C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BEE05254(v4);
  sub_1BEE46AAC();
  (*(v1 + 8))(v4, v0);
  v7[3] = sub_1BEE46BDC();
  v7[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1BEE46BEC();
  return sub_1BEE4736C();
}

void sub_1BEE079C8(void *a1)
{
  v2 = sub_1BEE46B5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  sub_1BEE05254(v6);
  sub_1BEE46AAC();
  (*(v3 + 8))(v6, v2);
  v9[3] = sub_1BEE46BDC();
  v9[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_1BEE46BEC();
  sub_1BEE4736C();
}

uint64_t sub_1BEE07BD4(void (*a1)(uint64_t))
{
  v35 = a1;
  v1 = sub_1BEE46B5C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v32 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v32 - v12;
  v13 = sub_1BEE46BDC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v32 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v33 = &v32 - v24;
  sub_1BEE46AEC();
  v25 = SBHPerformanceFlagEnabled(8);
  v34 = v2;
  if (v25)
  {
    sub_1BEE46A9C();
    (*(v2 + 8))(v8, v1);
    v26 = v5;
    v27 = *(v2 + 32);
    v27(v8, v26, v1);
  }

  else
  {
    v27 = *(v2 + 32);
  }

  v28 = (v27)(v11, v8, v1);
  v35(v28);
  (*(v34 + 8))(v11, v1);
  sub_1BEE46BEC();
  sub_1BEE46B9C();
  v29 = *(v14 + 8);
  v29(v17, v13);
  sub_1BEE46B6C();
  v29(v20, v13);
  v30 = v33;
  sub_1BEE46BCC();
  v29(v23, v13);
  v36[3] = v13;
  v36[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_1BEE46B8C();
  v29(v30, v13);
  return sub_1BEE4736C();
}

void sub_1BEE07F88(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

Swift::Void __swiftcall UIView.sbh_applyFolderGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_1BEE46B5C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-1] - v6;
  v8 = sub_1BEE46BDC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v20[-1] - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-1] - v16;
  sub_1BEE46AEC();
  if (SBHPerformanceFlagEnabled(8))
  {
    sub_1BEE46A9C();
LABEL_5:
    (*(v2 + 8))(v7, v1);
    (*(v2 + 32))(v7, v5, v1);
    goto LABEL_6;
  }

  if (SBHPerformanceFlagEnabled(4))
  {
    sub_1BEE46AAC();
    goto LABEL_5;
  }

LABEL_6:
  sub_1BEE46BEC();
  sub_1BEE46B6C();
  v18 = *(v9 + 8);
  v18(v12, v8);
  sub_1BEE46B8C();
  v18(v15, v8);
  v20[3] = v8;
  v20[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1BEE46B9C();
  v18(v17, v8);
  sub_1BEE4736C();
}

Swift::Void __swiftcall UIView.sbh_applyFolderGlass(grouping:userInterfaceStyle:)(Swift::Bool grouping, UIUserInterfaceStyle userInterfaceStyle)
{
  v26 = grouping;
  v3 = sub_1BEE46BDC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v24 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v25 = v24 - v11;
  v12 = sub_1BEE46B5C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v24 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  v24[1] = userInterfaceStyle;
  if (userInterfaceStyle == UIUserInterfaceStyleUnspecified)
  {
    sub_1BEE46AEC();
    if (SBHPerformanceFlagEnabled(8))
    {
      sub_1BEE46A9C();
    }

    else
    {
      if (!SBHPerformanceFlagEnabled(4))
      {
        goto LABEL_13;
      }

      sub_1BEE46AAC();
    }

    (*(v13 + 8))(v21, v12);
    (*(v13 + 32))(v21, v16, v12);
    goto LABEL_13;
  }

  sub_1BEE46AEC();
  if (SBHPerformanceFlagEnabled(8))
  {
    sub_1BEE46A9C();
LABEL_8:
    (*(v13 + 8))(v19, v12);
    (*(v13 + 32))(v19, v16, v12);
    goto LABEL_9;
  }

  if (SBHPerformanceFlagEnabled(4))
  {
    sub_1BEE46AAC();
    goto LABEL_8;
  }

LABEL_9:
  sub_1BEE46AFC();
  (*(v13 + 8))(v19, v12);
LABEL_13:
  (*(v13 + 16))(v16, v21, v12);
  sub_1BEE46BEC();
  sub_1BEE46B6C();
  v22 = *(v4 + 8);
  v22(v7, v3);
  v23 = v25;
  sub_1BEE46B8C();
  v22(v10, v3);
  v27[3] = v3;
  v27[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1BEE46B9C();
  v22(v23, v3);
  sub_1BEE4736C();
  (*(v13 + 8))(v21, v12);
}

void sub_1BEE08734(void *a1, uint64_t a2, Swift::Bool a3, UIUserInterfaceStyle a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  UIView.sbh_applyFolderGlass(grouping:userInterfaceStyle:)(a3, a4);
}

Swift::Void __swiftcall UIView.sbh_applyAppLibraryPodGlass(grouping:)(Swift::Bool grouping)
{
  v23 = grouping;
  v1 = sub_1BEE46B5C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v22 = &v22 - v12;
  v13 = sub_1BEE46BDC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  sub_1BEE46AEC();
  if (SBHPerformanceFlagEnabled(8))
  {
    sub_1BEE46A9C();
    (*(v2 + 8))(v8, v1);
    v20 = *(v2 + 32);
    v20(v8, v5, v1);
  }

  else
  {
    v20 = *(v2 + 32);
  }

  v20(v11, v8, v1);
  SBHPerformanceFlagEnabled(1);
  sub_1BEE46AAC();
  (*(v2 + 8))(v11, v1);
  sub_1BEE46BEC();
  sub_1BEE46B6C();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v24[3] = v13;
  v24[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_1BEE46B8C();
  v21(v19, v13);
  sub_1BEE4736C();
}

void sub_1BEE08B54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

Swift::Void __swiftcall UIView.sbh_createGlassGroup(inForeground:)(Swift::Bool inForeground)
{
  v1[3] = sub_1BEE46A3C();
  v1[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1BEE46A2C();
  sub_1BEE4736C();
}

void sub_1BEE08D00(void *a1)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3[3] = sub_1BEE46A3C();
  v3[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(v3);
  v2 = a1;
  sub_1BEE46A2C();
  sub_1BEE4736C();
}

uint64_t sub_1BEE08E0C(void *a1, uint64_t a2, uint64_t a3, SEL *a4, char a5)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 *a4];
}

Swift::Void __swiftcall UIView.sbh_backdropGroupName(_:)(Swift::String_optional a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7DE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-1] - v2;
  v4 = sub_1BEE46BDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4735C();
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7DF0);
    v8 = swift_dynamicCast();
    (*(v5 + 56))(v3, v8 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v11 = v4;
      v12 = MEMORY[0x1E69DC388];
      __swift_allocate_boxed_opaque_existential_1(v10);
      sub_1BEE46B7C();
      sub_1BEE4736C();
      (*(v5 + 8))(v7, v4);
      return;
    }
  }

  else
  {
    sub_1BEB4992C(v10, &qword_1EBDC7DE8);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1BEB4992C(v3, &qword_1EBDC7DE0);
}

uint64_t sub_1BEE09120(void *a1, uint64_t a2, void *a3)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v5 = sub_1BEE4708C();
    a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = a1;
  v8.value._countAndFlagsBits = v5;
  v8.value._object = a3;
  UIView.sbh_backdropGroupName(_:)(v8);
}

uint64_t SBHContentVisibility.description.getter(unint64_t a1)
{
  v1 = SBHStringFromContentVisibility(a1);
  v2 = sub_1BEE4708C();

  return v2;
}

uint64_t sub_1BEE09250()
{
  v1 = SBHStringFromContentVisibility(*v0);
  v2 = sub_1BEE4708C();

  return v2;
}

uint64_t SBIconListModel.id.getter()
{
  v1 = [v0 uniqueIdentifier];
  v2 = sub_1BEE4708C();

  return v2;
}

id sub_1BEE09348(char *a1, uint64_t a2, SEL *a3, uint64_t *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *&a1[OBJC_IVAR____TtC15SpringBoardHome37IconModelApplicationDataSourceAdapter_applicationDataSource];
    if (v9)
    {
      v10 = a1;
      v11 = [v9 *a3];
      __swift_instantiateConcreteTypeFromMangledNameV2(a4);
      sub_1BEE471AC();

      v8 = v11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v12 = sub_1BEE4719C();

  return v12;
}

uint64_t sub_1BEE094B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SpringBoardHome37IconModelApplicationDataSourceAdapter_applicationDataSource);
  if (v1)
  {
    if ([v1 respondsToSelector_])
    {
      v2 = [swift_unknownObjectRetain() webClips];
LABEL_5:
      v4 = v2;
      sub_1BEE09A28();
      v5 = sub_1BEE471AC();
      swift_unknownObjectRelease();

      return v5;
    }

    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v2 = [v3 clipsIncludingWebClips:1 includingAppClips:1];
    if (v2)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BEE095C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v10 = [Strong iconRepository], v7, v10))
  {
    v8 = sub_1BEE4705C();
    v9 = [v10 applicationIconForBundleIdentifier_];

    if (v9)
    {
      if (a3)
      {
        aBlock[4] = a3;
        aBlock[5] = a4;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BEDCD0E4;
        aBlock[3] = &block_descriptor_6;
        a3 = _Block_copy(aBlock);
      }

      [v10 uninstallIcon:v9 completionHandler:a3];
      _Block_release(a3);
    }

    else
    {
      if (a3)
      {
        (a3)(0);
      }
    }
  }

  else if (a3)
  {
    (a3)(0);
  }
}

uint64_t sub_1BEE0983C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v11 = sub_1BEE471AC();
  swift_unknownObjectRetain();
  v12 = a1;
  a8(v11, a7);
  swift_unknownObjectRelease();
}

id sub_1BEE09998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconModelApplicationDataSourceAdapter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BEE09A28()
{
  result = qword_1EBDBFE50;
  if (!qword_1EBDBFE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDBFE50);
  }

  return result;
}

void sub_1BEE09A74(unint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v10 = [Strong iconRepository];

  if (!v10)
  {
    return;
  }

  if (a1 >> 62)
  {
    v6 = sub_1BEE474CC();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      v7 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB4EA90](v7, a1);
        }

        else
        {
          v8 = *(a1 + 8 * v7 + 32);
          swift_unknownObjectRetain();
        }

        ++v7;
        v9 = [v10 *a2];
        swift_unknownObjectRelease();
      }

      while (v6 != v7);
    }
  }
}

void sub_1BEE09BC4(unint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v9 = [Strong iconRepository];

  if (!v9)
  {
    return;
  }

  if (a1 >> 62)
  {
    v6 = sub_1BEE474CC();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_5:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB4EA90](i, a1);
        }

        else
        {
          v8 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v9 *a2];
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1BEE09D18()
{
  v0 = sub_1BEE46A0C();
  __swift_allocate_value_buffer(v0, qword_1EBDCA838);
  __swift_project_value_buffer(v0, qword_1EBDCA838);
  result = SBLogAddWidgetSheet();
  if (result)
  {
    return sub_1BEE46A1C();
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1BEE09DE0(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC79F0);
    v1 = sub_1BEE4765C();
  }

  else
  {
    v1 = a1;

    sub_1BEE4771C();
  }

  return v1;
}

uint64_t sub_1BEE09E5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);

    v1 = sub_1BEE4765C();
  }

  else
  {
    v1 = a1;

    sub_1BEE4771C();
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
  }

  return v1;
}

uint64_t sub_1BEE09F04(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1BEE474CC())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A98);
  v3 = sub_1BEE4758C();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1BEE4748C();
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  result = sub_1BEE472AC();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1BEE474FC();
    if (!v16)
    {
LABEL_34:
      sub_1BEB2AAE8();

      return v3;
    }

    *&v27 = v16;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    swift_dynamicCast();
LABEL_25:
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    swift_dynamicCast();
    result = sub_1BEE4752C();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1BEE0A298(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_6;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC79E0);
  v3 = sub_1BEE4758C();
LABEL_6:
  if (sub_1BEB20D28(0, &qword_1EBDBFFE0) == MEMORY[0x1E69E6158])
  {
    if (v2)
    {

      sub_1BEE4748C();
      sub_1BEB20D28(0, &qword_1EBDBFF30);
      sub_1BEB2A7E0(&qword_1EBDBFF28, &qword_1EBDBFF30);
      sub_1BEE472AC();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_1BEE474FC())
        {
LABEL_55:
          sub_1BEB2AAE8();

          return;
        }

        sub_1BEB20D28(0, &qword_1EBDBFF30);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_1BEE1DB24(v35, &qword_1EBDBFFE0);
    }
  }

  if (v2)
  {

    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFF30);
    sub_1BEB2A7E0(&qword_1EBDBFF28, &qword_1EBDBFF30);
    sub_1BEE472AC();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_1BEE474FC())
    {
      goto LABEL_55;
    }

    sub_1BEB20D28(0, &qword_1EBDBFF30);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_1BEE473BC();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1BEE0A7BC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_6;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A90);
  v3 = sub_1BEE4758C();
LABEL_6:
  if (sub_1BEB20D28(0, &qword_1EBDBFEA0) == MEMORY[0x1E69E6158])
  {
    if (v2)
    {

      sub_1BEE4748C();
      sub_1BEB20D28(0, &qword_1EBDBFFE0);
      sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
      sub_1BEE472AC();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_1BEE474FC())
        {
LABEL_55:
          sub_1BEB2AAE8();

          return;
        }

        sub_1BEB20D28(0, &qword_1EBDBFFE0);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_1BEE1DB24(v35, &qword_1EBDBFEA0);
    }
  }

  if (v2)
  {

    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
    sub_1BEE472AC();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_1BEE474FC())
    {
      goto LABEL_55;
    }

    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_1BEE473BC();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1BEE0ACE0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_6;
  }

  if (!sub_1BEE474CC())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82E0);
  v3 = sub_1BEE4758C();
LABEL_6:
  v43 = v3;
  if (sub_1BEB20D28(0, &unk_1EBDBFFD0) == MEMORY[0x1E69E6158])
  {
    if (v2)
    {

      sub_1BEE4748C();
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
      sub_1BEE472AC();
      v1 = v45;
      v8 = v46;
      v9 = v47;
      v10 = v48;
      v11 = v49;
    }

    else
    {
      v33 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v11 = v35 & *(v1 + 56);

      v10 = 0;
    }

    v36 = (v9 + 64) >> 6;
    if (v1 < 0)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v37 = v11;
      v38 = v10;
      if (!v11)
      {
        v39 = v10;
        do
        {
          v38 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_60;
          }

          if (v38 >= v36)
          {
LABEL_54:
            sub_1BEB2AAE8();
            return;
          }

          v37 = *(v8 + 8 * v38);
          ++v39;
        }

        while (!v37);
      }

      v40 = (v37 - 1) & v37;
      v41 = *(*(v1 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
      while (1)
      {
        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (!v42)
        {

LABEL_57:
          sub_1BEB2AAE8();

          return;
        }

        sub_1BEE1DB24(v42, &unk_1EBDBFFD0);
        v10 = v38;
        v11 = v40;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_49:
        if (!sub_1BEE474FC())
        {
          goto LABEL_54;
        }

        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        swift_dynamicCast();
        v41 = v44;
        v38 = v10;
        v40 = v11;
      }
    }
  }

  if (v2)
  {

    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    sub_1BEE472AC();
    v1 = v45;
    v4 = v46;
    v5 = v47;
    v6 = v48;
    v7 = v49;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_1BEE474FC())
    {
      goto LABEL_54;
    }

    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    swift_dynamicCast();
    v22 = v44;
    v19 = v6;
    v21 = v7;
LABEL_27:
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {

      goto LABEL_57;
    }

    v24 = v23;
    v25 = sub_1BEE473BC();
    v26 = -1 << *(v43 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v28);
      }

      while (v32 == -1);
      v17 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v43 + 48) + 8 * v17) = v24;
    ++*(v43 + 16);
    v6 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v6;
  if (v7)
  {
LABEL_24:
    v21 = (v18 - 1) & v18;
    v44 = *(*(v1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    v22 = v44;
    goto LABEL_27;
  }

  v20 = v6;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_54;
    }

    v18 = *(v4 + 8 * v19);
    ++v20;
    if (v18)
    {
      goto LABEL_24;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_1BEE0B284(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82B0);
    v2 = sub_1BEE4758C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1BEDFBC74(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1BEE1DC64(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BEE0B428(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1BEE474CC();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1BEE308FC(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_1BEE4747C();
    }

    else
    {
      v3 = sub_1BEE4744C();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1BEE1FA8C(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 leafIdentifier];
        v14 = sub_1BEE4708C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1BEE308FC((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1BEE4749C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82C0);
          v6 = sub_1BEE4729C();
          sub_1BEE4751C();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1BEE243BC(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1BEE243BC(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1BEE243BC(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

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

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

id sub_1BEE0B858()
{
  sub_1BEB20D28(0, &qword_1EBDBFFC0);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v3 = *&v0[OBJC_IVAR___SBHIconModel_installedWebClipsObservation];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = OBJC_IVAR___SBHIconModel_iconRunLoopObserver;
  v5 = *&v0[OBJC_IVAR___SBHIconModel_iconRunLoopObserver];
  if (v5)
  {
    CFRunLoopObserverInvalidate(v5);
    v6 = *&v0[v4];
    *&v0[v4] = 0;
  }

  v7 = OBJC_IVAR___SBHIconModel_discardCachedOtherRootFoldersRunLoopObserver;
  v8 = *&v0[OBJC_IVAR___SBHIconModel_discardCachedOtherRootFoldersRunLoopObserver];
  if (v8)
  {
    CFRunLoopObserverInvalidate(v8);
    v9 = *&v0[v7];
    *&v0[v7] = 0;
  }

  v11.receiver = v0;
  v11.super_class = SBHIconModel;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t sub_1BEE0BB8C()
{
  v1 = [v0 iconRepository];
  v2 = [v1 applicationInfoProvider];

  result = 0;
  if (v2)
  {
    type metadata accessor for IconModelApplicationDataSourceAdapter();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC15SpringBoardHome37IconModelApplicationDataSourceAdapter_applicationDataSource);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      result = swift_dynamicCastObjCProtocolConditional();
      if (!result)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BEE0BCCC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (a1 == 0xD000000000000015 && 0x80000001BEEA2690 == a2 || (sub_1BEE4770C() & 1) != 0)
  {
    v4 = &unk_1EBDBFFC8;
    return sub_1BEB20D28(0, v4);
  }

  if (a1 == 0xD000000000000013 && 0x80000001BEEA26B0 == a2 || (sub_1BEE4770C() & 1) != 0)
  {
    v4 = &unk_1EBDBFEC0;
    return sub_1BEB20D28(0, v4);
  }

  [swift_getObjCClassFromMetadata() applicationIconClass];

  return swift_getObjCClassMetadata();
}

void sub_1BEE0BE94(id a1, char a2)
{
  if (a2 & 1) == 0 && ([v2 shouldAvoidCreatingIconForApplication_])
  {
    return;
  }

  v4 = [a1 bundleIdentifier];
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    sub_1BEE4708C();
    v6 = sub_1BEE4705C();

    sub_1BEE4708C();
    v5 = sub_1BEE4705C();
  }

  sub_1BEE4708C();
  v7 = v4;
  v8 = [v2 applicationIconsForBundleIdentifier_];

  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  v9 = sub_1BEE471AC();

  if (v9 >> 62)
  {
    v10 = sub_1BEE474CC();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_19:

    [v2 iconClassForApplicationWithBundleIdentifier_];

    swift_getObjCClassMetadata();
    swift_dynamicCastMetatype();
    if ([a1 respondsToSelector_])
    {
      v16 = [a1 iconIdentifier];
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = v16;
      sub_1BEE4708C();
    }

    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v19 = sub_1BEE4705C();

    v20 = [v18 initWithLeafIdentifier:v19 application:a1];

    if (v20)
    {
      [v2 addIcon_];
    }

    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_7:

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v13 = MEMORY[0x1BFB4EA90](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      ++v11;
      [v13 replaceIconDataSourcesWithApplication_];
    }

    while (v10 != v11);
    if (v12)
    {
      MEMORY[0x1BFB4EA90](0, v9);
LABEL_17:

      return;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v9 + 32);
      goto LABEL_17;
    }
  }

  __break(1u);
}

id sub_1BEE0C19C(void *a1)
{
  v2 = v1;
  v4 = sub_1BEE468CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBDBFE30 != -1)
  {
    swift_once();
  }

  v8 = sub_1BEE46A0C();
  __swift_project_value_buffer(v8, qword_1EBDCA800);
  v9 = a1;
  v10 = sub_1BEE469FC();
  v11 = sub_1BEE4733C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1BEB18000, v10, v11, "Icon model preparing to add additional icon matching icon: %@", v12, 0xCu);
    sub_1BEB4992C(v13, &qword_1EBDC7490);
    MEMORY[0x1BFB50850](v13, -1, -1);
    MEMORY[0x1BFB50850](v12, -1, -1);
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = v9;
    v18 = [v16 application];
    if (v18)
    {
      v19 = [v2 shouldAvoidCreatingIconForApplication_];
      swift_unknownObjectRelease();

      if (v19)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v20 = [v9 applicationBundleID];
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v22 = [v2 rootFolder];
    if (v22)
    {
      v23 = v22;
      v24 = [v2 leafIconForIdentifier_];

      if (v24)
      {
        v25 = [v23 ignoredList];
        v26 = [v25 directlyContainsIcon_];

        v21 = v24;
        if (v26)
        {
          return v24;
        }
      }

      else
      {
        v21 = v23;
      }
    }
  }

  sub_1BEE468BC();
  sub_1BEE468AC();
  (*(v5 + 8))(v7, v4);
  v27 = sub_1BEE4705C();

  v24 = [v9 copyWithLeafIdentifier_];

  [v2 addIcon_];
  sub_1BEE0C540(v24);
  return v24;
}

void sub_1BEE0C540(void *a1)
{
  v2 = v1;
  v4 = [v2 removedIcons];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
  v5 = sub_1BEE4726C();

  sub_1BEDF66A8(&v7, a1);
  v6 = sub_1BEE4724C();

  [v2 setRemovedIcons_];

  sub_1BEE1ABE4();
}

void sub_1BEE0C878(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1BEE4705C();
  v6 = [v3 applicationIconsForBundleIdentifier_];

  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  v7 = sub_1BEE471AC();

  if (v7 >> 62)
  {
    v8 = sub_1BEE474CC();
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
LABEL_17:

      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x1BFB4EA90](v9, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      [v11 removeApplicationDataSources];
      if ((a3 & 1) != 0 && ![v12 iconDataSourceCount])
      {
        [v3 removeIcon_];
      }

      ++v9;
    }

    while (v8 != v9);
    if (v10)
    {
      MEMORY[0x1BFB4EA90](0, v7);
      goto LABEL_17;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v7 + 32);
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1BEE0CA88(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
  swift_beginAccess();
  if (*(*(v2 + v5) + 16) && (sub_1BEB1DAFC(a1, a2), (v6 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1BEE0CEA8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1BEB1DAFC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

void sub_1BEE0CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v43 = [v5 gridSizeClassDomain];
  v6 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
  swift_beginAccess();
  v7 = *&v5[v6];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v42 = v7;

  v13 = 0;
  v40 = v12;
  v41 = v8;
  if (v11)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_49;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
  }

  while (!v11);
  v13 = v14;
LABEL_8:
  while (1)
  {
    v15 = *(*(v42 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v44 = [v15 gridSizeClass];
    v16 = [v43 chsWidgetFamilyForIconGridSizeClass_];
    v45 = v15;
    v17 = [v15 widgets];
    sub_1BEB20D28(0, &qword_1EBDC82D8);
    v18 = sub_1BEE471AC();

    v19 = v18 >> 62 ? sub_1BEE474CC() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 &= v11 - 1;
    if (v19)
    {
      break;
    }

LABEL_41:

LABEL_42:
    v12 = v40;
    v8 = v41;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  v20 = 0;
  if (a5)
  {
    v21 = v16 == a5;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  v47 = v22;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB4EA90](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v23 = *(v18 + 8 * v20 + 32);
    }

    v24 = v23;
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v26 = [v23 extensionBundleIdentifier];
    if (!v26)
    {
      goto LABEL_18;
    }

    v27 = v19;
    v28 = v26;
    v29 = sub_1BEE4708C();
    v31 = v30;

    if (v29 == a1 && v31 == a2)
    {

      v19 = v27;
      if (!a4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v33 = sub_1BEE4770C();

      v19 = v27;
      if ((v33 & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }

      if (!a4)
      {
        goto LABEL_36;
      }
    }

    v34 = [v24 kind];
    v35 = sub_1BEE4708C();
    v37 = v36;

    if (v35 == a3 && v37 == a4)
    {

      v19 = v27;
LABEL_36:

      if (v47)
      {
        goto LABEL_44;
      }

      goto LABEL_19;
    }

    v38 = sub_1BEE4770C();

    v19 = v27;
    if (v38 & v47)
    {
LABEL_44:

      sub_1BEE475FC();
      sub_1BEE4761C();
      sub_1BEE4762C();
      sub_1BEE4760C();
      goto LABEL_42;
    }

LABEL_19:
    ++v20;
    if (v25 == v19)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_1BEE0D498(uint64_t a1, uint64_t a2)
{
  v5 = [v2 leafIcons];
  v6 = sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v7 = sub_1BEE4726C();

  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BEE4748C();
    sub_1BEE472AC();
    v7 = v40;
    v8 = v41;
    v9 = v42;
    v10 = v43;
    v11 = v44;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v13 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v7 + 56);

    v9 = v13;
    v10 = 0;
  }

  v16 = (v9 + 64) >> 6;
  v37 = v16;
  v35 = v7;
  v36 = v8;
  while (v7 < 0)
  {
    if (!sub_1BEE474FC())
    {
      goto LABEL_27;
    }

    swift_dynamicCast();
    v21 = v39;
    v19 = v10;
    v20 = v11;
    if (!v39)
    {
      goto LABEL_27;
    }

LABEL_18:
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v38 = v20;
      v24 = v6;
      v25 = v21;
      v26 = [v23 bookmark];
      v27 = a1;
      v28 = a2;
      v29 = [v26 placeholderBundleIdentifier];
      v30 = sub_1BEE4708C();
      v32 = v31;

      a2 = v28;
      if (v30 == v27 && v32 == v28)
      {

LABEL_27:
        sub_1BEB2AAE8();

        return;
      }

      a1 = v27;
      v34 = sub_1BEE4770C();

      v6 = v24;
      v7 = v35;
      v8 = v36;
      v20 = v38;
      if (v34)
      {
        goto LABEL_27;
      }
    }

    v10 = v19;
    v11 = v20;
    v16 = v37;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_27;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_1BEE0D7F8(void *a1)
{
  swift_getObjectType();
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = [v1 bookmarkIconForWebClipIdentifier_];

    if (!v5)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_allocWithZone(objc_msgSend(ObjCClassFromMetadata bookmarkClass))];
      v5 = [objc_allocWithZone(objc_msgSend(ObjCClassFromMetadata bookmarkIconClass))];
      [v1 addIcon_];
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BEE0D9B8(char a1)
{
  v2 = OBJC_IVAR___SBHIconModel_automaticallyAddsWebClips;
  v1[OBJC_IVAR___SBHIconModel_automaticallyAddsWebClips] = a1;
  v3 = [v1 rootFolder];
  if (v3)
  {
    v12 = v3;
    v4 = [v1 iconRepository];
    v5 = [v4 bookmarkIcons];

    sub_1BEB20D28(0, &qword_1EBDC73D0);
    sub_1BEB2A7E0(&unk_1EBDC7590, &qword_1EBDC73D0);
    v6 = sub_1BEE4726C();

    v7 = v1[v2];
    v8 = sub_1BEE1D2AC(v6, &qword_1EBDC73D0, off_1E8086C08, &unk_1EBDC7590);

    v9 = (v8 >> 62) & 1;
    if (v8 < 0)
    {
      LODWORD(v9) = 1;
    }

    if (v7 == 1)
    {
      if (v9)
      {
        sub_1BEB20D28(0, &qword_1EBDBFEA0);

        sub_1BEE4765C();
      }

      else
      {

        sub_1BEE4771C();
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
      }

      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v10 = sub_1BEE4719C();
    }

    else
    {
      if (v9)
      {
        sub_1BEB20D28(0, &qword_1EBDBFEA0);

        sub_1BEE4765C();
      }

      else
      {

        sub_1BEE4771C();
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
      }

      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v11 = sub_1BEE4719C();

      [v12 removeIcons:v11 options:0];
      v10 = v12;
      v12 = v11;
    }
  }
}

void sub_1BEE0DCA4(void *a1)
{
  isEscapingClosureAtFileLocation = v1;
  [a1 setDelegate_];
  [a1 addObserver_];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = [v8 leafIdentifier];
    v11 = v10;
    v12 = v10;
    if (!v10)
    {
      sub_1BEE4708C();
      v12 = sub_1BEE4705C();

      sub_1BEE4708C();
      v11 = sub_1BEE4705C();
    }

    v13 = sub_1BEE4708C();
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        v42 = v41;
        v43 = v9;
        v44 = v10;

        v45 = v43;
        if (![v42 leafIdentifierAndApplicationBundleIDMatches])
        {

          v63 = [v8 applicationBundleID];
          if (!v63)
          {

            v32 = 0;
            v21 = 0;
            goto LABEL_18;
          }

          v64 = v63;
          v65 = sub_1BEE4708C();
          v67 = v66;

          v68 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
          swift_beginAccess();
          v69 = *(isEscapingClosureAtFileLocation + v68);
          if (*(v69 + 16) && (v70 = sub_1BEB1DAFC(v65, v67), (v71 & 1) != 0))
          {
            v72 = *(*(v69 + 56) + 8 * v70);
            swift_endAccess();
            v91 = v72;
          }

          else
          {
            swift_endAccess();
            v91 = MEMORY[0x1E69E7CC0];
          }

          v87 = v45;
          MEMORY[0x1BFB4E650]();
          if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BEE471BC();
          }

          sub_1BEE471DC();
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = *(isEscapingClosureAtFileLocation + v68);
          *(isEscapingClosureAtFileLocation + v68) = 0x8000000000000000;
          sub_1BEE31D8C(v91, v65, v67, isUniquelyReferenced_nonNull_native);

          *(isEscapingClosureAtFileLocation + v68) = v88;
          swift_endAccess();
          v79 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByUniqueIdentifier;
          swift_beginAccess();
          v80 = *(isEscapingClosureAtFileLocation + v79);
          if (*(v80 + 16) && (v81 = sub_1BEB1DAFC(v13, v15), (v82 & 1) != 0))
          {
            v21 = *(*(v80 + 56) + 8 * v81);
            v83 = v21;
          }

          else
          {
            v21 = 0;
          }

          swift_endAccess();
          swift_beginAccess();
          v84 = v21;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v89 = *(isEscapingClosureAtFileLocation + v79);
          *(isEscapingClosureAtFileLocation + v79) = 0x8000000000000000;
          sub_1BEB431AC(v42, v13, v15, v85);

          *(isEscapingClosureAtFileLocation + v79) = v89;
          swift_endAccess();

LABEL_15:
          v32 = 1;
          if (!v21)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        v46 = [isEscapingClosureAtFileLocation iconRepository];
        v21 = [v46 iconForIdentifier_];

        v47 = v21;
        v48 = [isEscapingClosureAtFileLocation iconRepository];
        [v48 addIcon_];
      }

      else
      {
        v54 = v10;

        objc_opt_self();
        v55 = swift_dynamicCastObjCClass();
        if (v55)
        {
          v56 = v55;
          v57 = v9;

          v58 = OBJC_IVAR___SBHIconModel_fileStackIconsByIdentifier;
          swift_beginAccess();
          v59 = *(isEscapingClosureAtFileLocation + v58);
          if (*(v59 + 16) && (v60 = sub_1BEB1DAFC(v13, v15), (v61 & 1) != 0))
          {
            v21 = *(*(v59 + 56) + 8 * v60);
            v62 = v21;
          }

          else
          {
            v21 = 0;
          }

          swift_endAccess();
          swift_beginAccess();
          v73 = v21;
          v30 = v57;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v92 = *(isEscapingClosureAtFileLocation + v58);
          *(isEscapingClosureAtFileLocation + v58) = 0x8000000000000000;
          sub_1BEE31D78(v56, v13, v15, v74);

          *(isEscapingClosureAtFileLocation + v58) = v92;
          goto LABEL_14;
        }

        v75 = [isEscapingClosureAtFileLocation iconRepository];
        v21 = [v75 iconForIdentifier_];

        v76 = v21;
        v77 = [isEscapingClosureAtFileLocation iconRepository];
        [v77 addIcon_];
      }

      v32 = 0;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_16:
      v33 = sub_1BEB20D28(0, &qword_1EBDBFEA0);
      if ((sub_1BEE473CC() & 1) == 0)
      {
        v49 = [objc_opt_self() defaultCenter];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8298);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BEE8AE40;
        aBlock = sub_1BEE4708C();
        v94 = v51;
        sub_1BEE4754C();
        *(inited + 96) = v33;
        *(inited + 72) = v9;
        v52 = v9;
        sub_1BEB449C8(inited);
        swift_setDeallocating();
        sub_1BEB4992C(inited + 32, &unk_1EBDC82A0);
        v53 = sub_1BEE4700C();

        [v49 postNotificationName:@"SBIconModelDidReplaceIconNotification" object:isEscapingClosureAtFileLocation userInfo:v53];

LABEL_30:
        return;
      }

LABEL_18:
      v34 = [isEscapingClosureAtFileLocation delegate];
      if (v34)
      {
        v35 = v34;
        if ([v34 respondsToSelector_])
        {
          [v35 iconModel:isEscapingClosureAtFileLocation didAddIcon:v9];
        }

        swift_unknownObjectRelease();
      }

      if (!v32 || ([isEscapingClosureAtFileLocation postsDidAddIconNotification] & 1) == 0)
      {

        return;
      }

      v36 = [objc_opt_self() defaultCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8298);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_1BEE8AE40;
      aBlock = sub_1BEE4708C();
      v94 = v38;
      sub_1BEE4754C();
      *(v37 + 96) = sub_1BEB20D28(0, &qword_1EBDBFEA0);
      *(v37 + 72) = v9;
      v39 = v9;
      sub_1BEB449C8(v37);
      swift_setDeallocating();
      sub_1BEB4992C(v37 + 32, &unk_1EBDC82A0);
      v40 = sub_1BEE4700C();

      [v36 postNotificationName:@"SBIconModelDidAddIconNotification" object:isEscapingClosureAtFileLocation userInfo:v40];

      goto LABEL_30;
    }

    v2 = v16;
    v4 = v9;
    v17 = v10;

    v3 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
    swift_beginAccess();
    v18 = *(isEscapingClosureAtFileLocation + v3);
    if (*(v18 + 16))
    {
      v19 = sub_1BEB1DAFC(v13, v15);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        v22 = v21;
LABEL_13:
        swift_endAccess();
        swift_beginAccess();
        v29 = v21;
        v30 = v4;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v90 = *(isEscapingClosureAtFileLocation + v3);
        *(isEscapingClosureAtFileLocation + v3) = 0x8000000000000000;
        sub_1BEE31F08(v2, v13, v15, v31);

        *(isEscapingClosureAtFileLocation + v3) = v90;
LABEL_14:
        swift_endAccess();

        goto LABEL_15;
      }
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    return;
  }

  v24 = v23;
  v86 = a1;
  v25 = [v24 folder];
  if (v25)
  {
    v26 = v25;
    [v25 addFolderObserver_];
    [*(isEscapingClosureAtFileLocation + OBJC_IVAR___SBHIconModel_folders) addObject_];
    v9 = swift_allocObject();
    v9[2] = isEscapingClosureAtFileLocation;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1BEE24474;
    *(v27 + 24) = v9;
    v97 = sub_1BEDFBF74;
    v98 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1BEB31DD8;
    v96 = &block_descriptor_73;
    v15 = _Block_copy(&aBlock);
    v13 = v98;
    v28 = isEscapingClosureAtFileLocation;

    [v26 enumerateAllIconsUsingBlock_];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_1BEE0E878(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = [v3 delegate];
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      [v9 iconModel:v4 willRemoveIcon:a1];
    }

    swift_unknownObjectRelease();
  }

  [a1 setDelegate_];
  [a1 removeObserver_];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    v13 = [v4 iconRepository];
    v14 = [v13 containsIcon_];

    v49 = v14;
    if ((v14 & 1) == 0)
    {
      v15 = [objc_opt_self() defaultCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8298);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BEE8AE40;
      v50[0] = 1852793705;
      v50[1] = 0xE400000000000000;
      sub_1BEE4754C();
      *(inited + 96) = sub_1BEB20D28(0, &qword_1EBDBFEA0);
      *(inited + 72) = v12;
      v17 = v12;
      sub_1BEB449C8(inited);
      swift_setDeallocating();
      sub_1BEB4992C(inited + 32, &unk_1EBDC82A0);
      v18 = sub_1BEE4700C();

      [v15 postNotificationName:@"SBIconModelWillRemoveIconNotification" object:v4 userInfo:v18];
    }

    v19 = [v11 leafIdentifier];
    v20 = sub_1BEE4708C();
    v22 = v21;

    swift_beginAccess();

    sub_1BEE27FD0(0, v20, v22);
    swift_endAccess();
    swift_beginAccess();
    sub_1BEE27FE4(0, v20, v22);
    swift_endAccess();
    v23 = [v11 applicationBundleID];
    if (v23)
    {
      v48 = v12;
      v24 = v23;
      v25 = sub_1BEE4708C();
      v27 = v26;

      swift_beginAccess();
      v29 = sub_1BEE0EECC(v50, v25, v27);
      if (*v28)
      {
        v30 = v28;
        v47 = a3;
        v31 = a2;
        v32 = v48;
        v33 = sub_1BEE1FFDC(v30);

        if (*v30 >> 62)
        {
          v34 = sub_1BEE474CC();
        }

        else
        {
          v34 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a2 = v31;
        a3 = v47;
        if (v34 < v33)
        {
          __break(1u);
          swift_endAccess();
          __break(1u);
          return;
        }

        sub_1BEB528F4(v33, v34, sub_1BEB528EC, &unk_1EBDBFFD0);
        (v29)(v50, 0);
      }

      else
      {
        (v29)(v50, 0);
      }

      swift_endAccess();

      v12 = v48;
    }

    v40 = [v11 uniqueIdentifier];
    v41 = sub_1BEE4708C();
    v43 = v42;

    swift_beginAccess();
    sub_1BEE27FBC(0, v41, v43);
    swift_endAccess();
    if (v49 && (a3 & 1) != 0)
    {
      v44 = [v4 iconRepository];
      [v44 removeIcon_];

      if ((a2 & 1) == 0)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_25:
    if ((a2 & 1) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    goto LABEL_25;
  }

  v36 = v35;
  v37 = a1;
  v38 = [v36 folder];
  if (v38)
  {
    v39 = v38;
    [v38 removeFolderObserver_];
    [*&v4[OBJC_IVAR___SBHIconModel_folders] removeObject_];

    if ((a2 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    if ((a2 & 1) == 0)
    {
      return;
    }
  }

LABEL_26:
  v45 = [v4 rootFolder];
  if (v45)
  {
    v46 = v45;
    [v45 removeIcon:a1 options:3145728];
  }
}

void (*sub_1BEE0EECC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1BEE1E1DC(v6, a2, a3);
  return sub_1BEE0EF54;
}

void sub_1BEE0EF54(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1BEE0EFA0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    sub_1BEE472AC();
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v18 = v5;
  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_1BEB2AAE8();
      return;
    }

    while (1)
    {
      [v2 removeIcon_];

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = sub_1BEE474FC();
      if (v17)
      {
        v19 = v17;
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        swift_dynamicCast();
        v16 = v20;
        v14 = v6;
        v15 = v7;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1BEE0F33C()
{
  v1 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + v1) = MEMORY[0x1E69E7CC8];

  v3 = OBJC_IVAR___SBHIconModel_fileStackIconsByIdentifier;
  swift_beginAccess();
  *(v0 + v3) = v2;

  v4 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
  swift_beginAccess();
  *(v0 + v4) = v2;

  v5 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByUniqueIdentifier;
  swift_beginAccess();
  *(v0 + v5) = v2;

  return [*(v0 + OBJC_IVAR___SBHIconModel_folders) removeAllObjects];
}

uint64_t sub_1BEE0F470(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 leafIdentifier];
    if (!v6)
    {
      sub_1BEE4708C();
      v6 = sub_1BEE4705C();
    }

    v7 = [v1 leafIconForIdentifier_];

    if (v7)
    {
      v8 = 1;
LABEL_11:

      return v8;
    }
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v7 = a1;
      v11 = [v10 folder];
      if (v11)
      {
        v12 = v11;
        v13 = *&v1[OBJC_IVAR___SBHIconModel_folders];
        v14 = v12;
        v8 = [v13 containsObject_];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t sub_1BEE0F724()
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = [v0 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v2 = sub_1BEE4726C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CD0];
    v42 = MEMORY[0x1E69E7CD0];
    v2 = sub_1BEE4748C();
    for (i = sub_1BEE474FC(); i; i = sub_1BEE474FC())
    {
      v40 = i;
      swift_dynamicCast();
      v6 = [v41 applicationBundleID];
      if (v6 && (v6, ([v41 leafIdentifierAndApplicationBundleIDMatches] & 1) == 0))
      {
      }

      else
      {
        v7 = v41;
        v8 = v4[2];
        if (v4[3] <= v8)
        {
          sub_1BEDF69D0(v8 + 1);
        }

        v4 = v42;
        v9 = sub_1BEE473BC();
        v10 = v42 + 56;
        v11 = -1 << *(v42 + 32);
        v12 = v9 & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v42 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v42 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              goto LABEL_42;
            }

            v17 = v13 == v16;
            if (v13 == v16)
            {
              v13 = 0;
            }

            v15 |= v17;
            v18 = *(v10 + 8 * v13);
          }

          while (v18 == -1);
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(v4[6] + 8 * v14) = v7;
        ++v4[2];
      }
    }

    return v4;
  }

  v19 = *(v2 + 32);
  v39 = ((1 << v19) + 63) >> 6;
  if ((v19 & 0x3Fu) > 0xD)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v38[1] = v38;
    MEMORY[0x1EEE9AC00](v3);
    v21 = v38 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v20);
    v22 = 0;
    v23 = 0;
    v24 = 1 << *(v2 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v2 + 56);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_33:
      v31 = v28 | (v23 << 6);
      v32 = *(*(v2 + 48) + 8 * v31);
      v33 = [v32 applicationBundleID];
      if (v33)
      {

        v34 = [v32 leafIdentifierAndApplicationBundleIDMatches];
        if (v34)
        {
          goto LABEL_37;
        }
      }

      else
      {

LABEL_37:
        *&v21[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1BEE1D8C0(v21, v39, v22, v2, &qword_1EBDC79E0);
        }
      }
    }

    v29 = v23;
    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
        return sub_1BEE1D8C0(v21, v39, v22, v2, &qword_1EBDC79E0);
      }

      v30 = *(v2 + 56 + 8 * v23);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v26 = (v30 - 1) & v30;
        goto LABEL_33;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v37 = swift_slowAlloc();
  v4 = sub_1BEE1D538(v37, v39, v2, sub_1BEE0FBC4);

  MEMORY[0x1BFB50850](v37, -1, -1);
  return v4;
}

uint64_t sub_1BEE0FBC4(id *a1)
{
  v1 = *a1;
  v2 = [*a1 applicationBundleID];
  if (!v2)
  {
    return 1;
  }

  return [v1 leafIdentifierAndApplicationBundleIDMatches];
}

uint64_t sub_1BEE0FC24(void *a1, _BYTE *a2, void (*a3)(void *, uint64_t, uint64_t, _BYTE *), uint64_t a4, _BYTE *a5)
{
  v9 = [a1 leafIdentifier];
  v10 = sub_1BEE4708C();
  v12 = v11;

  a3(a1, v10, v12, a5);

  if (*a5 == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_1BEE0FD30(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 leafIdentifier];
    if (!v6)
    {
      sub_1BEE4708C();
      v6 = sub_1BEE4705C();
    }

    v7 = [v1 leafIconForIdentifier_];

    if (v7)
    {

      return 1;
    }
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 folder];
    if (v11)
    {
      v12 = v11;
      v13 = *&v1[OBJC_IVAR___SBHIconModel_folders];
      v14 = v12;
      v15 = [v13 containsObject_];

      if (v15)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_1BEE0FEE4()
{
  v1 = [v0 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v2 = sub_1BEE4726C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BEE4748C();
    sub_1BEE472AC();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v8 = ~v7;
    v9 = -v7;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v2 + 56);

    v4 = v8;
    v5 = 0;
  }

  v11 = (v4 + 64) >> 6;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_1BEE474FC() && (swift_dynamicCast(), v12 = v19, v13 = v5, v14 = v6, v19))
  {
    while (1)
    {
      v17 = sub_1BEE4705C();
      v18 = [v12 firstIconDataSourceWithUniqueIdentifier_];

      if (v18)
      {
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      v5 = v13;
      v6 = v14;
      if (v2 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v15 = v5;
      v16 = v6;
      v13 = v5;
      if (!v6)
      {
        break;
      }

LABEL_15:
      v14 = (v16 - 1) & v16;
      v12 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 8 * v13);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1BEB2AAE8();
  }
}

void sub_1BEE10160(uint64_t a1, void *a2)
{
  v3 = [v2 leafIcons];
  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v4 = sub_1BEE4726C();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1BEE4748C();
    sub_1BEE472AC();
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!sub_1BEE474FC() || (swift_dynamicCast(), v17 = v19, v15 = v7, v16 = v8, !v19))
    {
LABEL_20:
      sub_1BEB2AAE8();
      return;
    }

LABEL_18:
    if ([v17 isKindOfClass_])
    {
      [a2 addObject_];
    }

    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id SBHIconModel.addIcon(toDesignatedLocation:options:listGridCellInfoOptions:)(void *a1, char *a2, uint64_t *a3)
{
  result = [v3 rootFolder];
  if (result)
  {
    v8 = result;
    v9 = sub_1BEE10740(a1, result, a2, a3);

    return (v9 & 1);
  }

  return result;
}

uint64_t sub_1BEE10740(void *a1, void *a2, char *a3, uint64_t *a4)
{
  v5 = v4;
  if (qword_1EBDBFE30 != -1)
  {
    swift_once();
  }

  v10 = sub_1BEE46A0C();
  __swift_project_value_buffer(v10, qword_1EBDCA800);
  v11 = a1;
  v12 = sub_1BEE469FC();
  v13 = sub_1BEE4733C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1BEB18000, v12, v13, "icon model preparing to add icon to designated location: %@", v14, 0xCu);
    sub_1BEB4992C(v15, &qword_1EBDC7490);
    MEMORY[0x1BFB50850](v15, -1, -1);
    MEMORY[0x1BFB50850](v14, -1, -1);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v18 = result;
    v19 = v11;
    if (([v5 isIconVisible_] & 1) == 0)
    {

      return 0;
    }

    v110 = v19;
    v20 = [a2 containsIcon_];
    v21 = v20;
    if ((a3 & 0x10) != 0)
    {
      v23 = [v18 uniqueIdentifier];
      if (!v23)
      {
        sub_1BEE4708C();
        v23 = sub_1BEE4705C();
      }

      v22 = [a2 iconWithIdentifier_];

      v109 = a4;
      if (v21)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = 0;
      v109 = a4;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    if (([v5 isCheckingModelConsistency] & 1) == 0)
    {
      v24 = [v5 delegate];
      if (v24)
      {
        v25 = v24;
        v26 = v21;
        if ([v24 respondsToSelector_])
        {
          v27 = [v25 iconModel:v5 shouldPlaceIconOnIgnoredList:v18];
          swift_unknownObjectRelease();
          v28 = v27 ^ 1;
          goto LABEL_21;
        }

        swift_unknownObjectRelease();
LABEL_20:
        v28 = 1;
LABEL_21:
        LODWORD(v108) = v28;
        sub_1BEE20D6C(v18);
        v30 = v29;
        v31 = [a2 ignoredList];
        v32 = [v31 directlyContainsIcon_];

        v33 = v26;
        if ((a3 & 4) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = v26;
        }

        v35 = v109;
        if (v34 == 1 && ((a3 & 2) == 0 || (v32 & 1) == 0))
        {
          v37 = v110;

LABEL_30:
          v38 = 0;
          if ((v33 & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_74;
        }

        if (v22)
        {
          v36 = v22;
          v37 = v110;

          [a2 replaceIcon:v36 withIcon:v18];
          goto LABEL_30;
        }

        v107 = 0;
        if (v30)
        {
          v39 = v110;

          v38 = 0;
LABEL_35:

          sub_1BEB326F8(v38);
          return 0;
        }

        if ((a3 & 4) != 0 || (((a3 & 2) != 0) & v32) != 0)
        {
          [a2 removeIcon:v18 options:0];
        }

        v106 = v33;
        if (sub_1BEE212B8(v18, a2))
        {
          v40 = sub_1BEE469FC();
          v41 = sub_1BEE4733C();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Added icon based on delegate";
LABEL_71:
            _os_log_impl(&dword_1BEB18000, v40, v41, v43, v42, 2u);
            MEMORY[0x1BFB50850](v42, -1, -1);
            goto LABEL_72;
          }

          goto LABEL_72;
        }

        v44 = 0;
        v45 = [v18 uniqueIdentifier];
        v46 = sub_1BEE4708C();
        v48 = v47;

        v49 = OBJC_IVAR___SBHIconModel_additionalDesiredIconRelativePaths;
        swift_beginAccess();
        v50 = *&v5[v49];
        if (*(v50 + 16) && (v51 = sub_1BEB1DAFC(v46, v48), (v52 & 1) != 0))
        {
          v53 = *(*(v50 + 56) + 8 * v51);
          swift_endAccess();
          v54 = v53;

          v55 = [a2 gridPathForRelativePath_];
          if (v55)
          {
            v56 = v55;
            v57 = [a2 insertIcon:v18 atGridPath:v55 options:0];
            if (!v57)
            {

              goto LABEL_69;
            }

            v58 = v57;
            sub_1BEB20D28(0, &qword_1EBDBFEA0);
            v105 = 0;
            v59 = sub_1BEE471AC();

            v104 = &v104;
            aBlock[0] = v18;
            MEMORY[0x1EEE9AC00](v60);
            v103 = aBlock;
            v61 = v59;
            v44 = v105;
            LODWORD(v105) = sub_1BEB52D94(sub_1BEE24520, v102, v61);

            if ((v105 & 1) == 0)
            {
LABEL_69:
              v40 = sub_1BEE469FC();
              v41 = sub_1BEE4733C();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                *v42 = 0;
                v43 = "Added icon based on additional desired relative path";
                goto LABEL_71;
              }

              goto LABEL_72;
            }
          }

          else
          {
          }
        }

        else
        {
          swift_endAccess();
        }

        v62 = OBJC_IVAR___SBHIconModel__cachedDesiredRootFolder;
        v63 = *&v5[OBJC_IVAR___SBHIconModel__cachedDesiredRootFolder];
        if (!v63)
        {
          v64 = [v5 desiredIconState];
          if (v64)
          {
            v65 = v64;
            sub_1BEE4701C();

            v66 = sub_1BEE11674();

            v67 = *&v5[v62];
            *&v5[v62] = v66;

            sub_1BEE117A0();
          }

          v63 = *&v5[v62];
          if (!v63)
          {
            goto LABEL_57;
          }
        }

        v68 = v63;
        sub_1BEE118EC(v18, a2, v68, a3, v35);
        v70 = v69;

        if (v70)
        {
          v40 = sub_1BEE469FC();
          v41 = sub_1BEE4733C();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Added icon based on desired icon state";
            goto LABEL_71;
          }
        }

        else
        {
LABEL_57:
          if (sub_1BEE21BB0(v18, a2))
          {
            v40 = sub_1BEE469FC();
            v41 = sub_1BEE4733C();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              v43 = "Added icon to ignored list based on default icon state";
              goto LABEL_71;
            }
          }

          else
          {
            if (v108)
            {
              objc_opt_self();
              v71 = swift_dynamicCastObjCClass();
              v105 = v44;
              if (v71)
              {
                v72 = v71;
                v73 = v110;
                v108 = v110;
                if ([v72 leafIdentifierAndApplicationBundleIDMatches])
                {
                  v74 = [v72 applicationBundleID];
                  if (v74)
                  {
                    v75 = v74;
                    v76 = sub_1BEE4708C();
                    v78 = v77;
                  }

                  else
                  {
                    v76 = 0;
                    v78 = 0;
                  }

                  v80 = swift_allocObject();
                  *(v80 + 16) = v76;
                  *(v80 + 24) = v78;
                  v81 = swift_allocObject();
                  *(v81 + 16) = sub_1BEE244D8;
                  *(v81 + 24) = v80;
                  aBlock[4] = sub_1BEE244E0;
                  aBlock[5] = v81;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_1BEDE070C;
                  aBlock[3] = &block_descriptor_87;
                  v82 = _Block_copy(aBlock);

                  v83 = [a2 firstIconPassingTest2_];
                  _Block_release(v82);
                  LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

                  if (v82)
                  {
                    __break(1u);
                    return result;
                  }

                  if (v83)
                  {
                    v84 = [a2 replaceIcon:v83 withIcon:v18];

                    if (v84)
                    {
                      v85 = sub_1BEE469FC();
                      v86 = sub_1BEE4733C();
                      if (os_log_type_enabled(v85, v86))
                      {
                        v87 = swift_slowAlloc();
                        *v87 = 0;
                        _os_log_impl(&dword_1BEB18000, v85, v86, "Added icon replacing another icon", v87, 2u);
                        MEMORY[0x1BFB50850](v87, -1, -1);
                      }

                      v38 = sub_1BEE244D8;
LABEL_73:
                      v22 = v107;
                      v37 = v110;

                      if ((v106 & 1) == 0)
                      {
LABEL_31:
                        [v5 addIcon_];
                        if (a3)
                        {
                          [v5 saveIconStateIfNeeded];
                        }
                      }

LABEL_74:

                      sub_1BEB326F8(v38);
                      return 1;
                    }
                  }

                  v38 = sub_1BEE244D8;
                  v73 = v110;
                }

                else
                {
                  v38 = 0;
                }
              }

              else
              {
                v38 = 0;
                v73 = v110;
              }

              v88 = [v18 gridSizeClass];

              v108 = v88;
              v89 = v109;
              v90 = [a2 gridPathForFirstFreeSlotOfRangeOfSizeClass:v88 avoidingFirstList:1 listGridCellInfoOptions:v109];
              v91 = v90;
              if (!v90)
              {

                v92 = [a2 gridPathForFirstFreeSlotOfRangeOfSizeClass:v108 avoidingFirstList:1 listGridCellInfoOptions:v89];
                if (!v92)
                {

                  v39 = v110;
                  goto LABEL_35;
                }

                v91 = v92;
                v90 = 0;
              }

              v93 = v90;
              v94 = [a2 insertIcon:v18 atGridPath:v91 options:16];
              v95 = v91;
              if (v94)
              {
                v96 = v94;
                sub_1BEB20D28(0, &qword_1EBDBFEA0);
                v97 = sub_1BEE471AC();

                v109 = &v104;
                aBlock[0] = v18;
                MEMORY[0x1EEE9AC00](v98);
                v103 = aBlock;
                LOBYTE(v96) = sub_1BEB52D94(sub_1BEE244B8, v102, v97);

                if (v96)
                {

                  v39 = v110;
                  goto LABEL_35;
                }
              }

              else
              {
              }

              v99 = sub_1BEE469FC();
              v100 = sub_1BEE4733C();
              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                *v101 = 0;
                _os_log_impl(&dword_1BEB18000, v99, v100, "Added icon to the first free slot available", v101, 2u);
                MEMORY[0x1BFB50850](v101, -1, -1);
              }

              v22 = v107;
              v37 = v110;
              if (v106)
              {
                goto LABEL_74;
              }

              goto LABEL_31;
            }

            v79 = [a2 ignoredList];

            v40 = sub_1BEE469FC();
            v41 = sub_1BEE4733C();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              v43 = "Added icon to ignored list";
              goto LABEL_71;
            }
          }
        }

LABEL_72:

        v38 = 0;
        goto LABEL_73;
      }
    }

LABEL_19:
    v26 = v21;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BEE11558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v8 = result;
    v9 = a1;
    if ([v8 leafIdentifierAndApplicationBundleIDMatches])
    {
LABEL_3:

      return 0;
    }

    v10 = [v8 applicationBundleID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1BEE4708C();
      v14 = v13;

      if (!a4)
      {

        goto LABEL_3;
      }

      if (v12 == a3 && v14 == a4)
      {

        return 1;
      }

      else
      {
        v16 = sub_1BEE4770C();

        return v16 & 1;
      }
    }

    else
    {

      return a4 == 0;
    }
  }

  return result;
}

id sub_1BEE11674()
{
  v1 = objc_allocWithZone(SBHIconStateUnarchiver);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8288);
  v2 = [v1 initWithArchive_];
  swift_unknownObjectRelease();
  v3 = [objc_allocWithZone(_s34IconStateUnarchivingSlugIconSourceCMa()) init];
  [v2 setIconSource_];
  [v2 setIconModel_];
  [v2 setDelegate_];
  v4 = [v2 unarchive];
  v5 = [v4 rootFolder];

  return v5;
}

void sub_1BEE117A0()
{
  v1 = OBJC_IVAR___SBHIconModel_discardCachedOtherRootFoldersRunLoopObserver;
  if (!*(v0 + OBJC_IVAR___SBHIconModel_discardCachedOtherRootFoldersRunLoopObserver))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_1BEE24300;
    v9[5] = v3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1BEE12CE8;
    v9[3] = &block_descriptor_23;
    v4 = _Block_copy(v9);

    v5 = CFRunLoopObserverCreateWithHandler(v2, 0xA0uLL, 0, 1999900, v4);
    _Block_release(v4);
    if (v5)
    {
      v6 = *(v0 + v1);
      *(v0 + v1) = v5;
      v7 = v5;

      v8 = CFRunLoopGetMain();
      CFRunLoopAddObserver(v8, v7, *MEMORY[0x1E695E8D0]);
    }
  }
}

void sub_1BEE118EC(void *a1, void *a2, id a3, char *a4, uint64_t a5)
{
  v150 = a2;
  v9 = sub_1BEE469DC();
  v149 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v143 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v144 = &v133 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v133 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v133 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v147 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v133 - v21;
  v23 = &selRef_supportsCachedIconLookup;
  if ((a4 & 2) == 0)
  {
    goto LABEL_5;
  }

  v24 = [a3 ignoredList];
  v25 = a1;
  v26 = [a1 uniqueIdentifier];
  if (!v26)
  {
    sub_1BEE4708C();
    v26 = sub_1BEE4705C();
  }

  v27 = [v24 directlyContainsIconWithIdentifier_];

  a1 = v25;
  v23 = &selRef_supportsCachedIconLookup;
  if ((v27 & 1) == 0)
  {
LABEL_5:
    v28 = v23[291];
    v142 = a1;
    v29 = [a1 v28];
    v30 = v29;
    v31 = v29;
    if (!v29)
    {
      sub_1BEE4708C();
      v31 = sub_1BEE4705C();

      sub_1BEE4708C();
      v146 = a3;
      v30 = sub_1BEE4705C();
      a3 = v146;
    }

    v32 = v29;
    v33 = [a3 iconWithIdentifier_];

    if (v33)
    {
      v34 = [a3 relativePathForIcon:v33 listGridCellInfoOptions:a5];
      if (v34)
      {
        v35 = v34;
        v141 = v33;
        v36 = [a3 indexPathForIconWithIdentifier_];

        if (!v36)
        {

          return;
        }

        v140 = v35;
        v146 = a3;
        v37 = v147;
        sub_1BEE4697C();

        v38 = v149 + 32;
        v137 = *(v149 + 32);
        v137(v22, v37, v9);
        v39 = sub_1BEE4696C();
        v40 = [v39 sb_indexPathByRemovingLastIconIndex];

        sub_1BEE4697C();
        v41 = sub_1BEE4696C();
        v42 = v150;
        LOBYTE(v40) = [v150 isValidIndexPath_];

        v139 = v18;
        if (v40)
        {
          goto LABEL_47;
        }

        v136 = v38;
        v43 = sub_1BEE4696C();
        v44 = [v146 folderContainingIndexPath_];

        v45 = v44;
        if (!v44)
        {
LABEL_46:
          swift_beginAccess();
          v73 = v45;
          v74 = sub_1BEE4696C();
          swift_endAccess();
          v75 = [v42 isValidIndexPath_];

          if ((v75 & 1) == 0)
          {

            v104 = *(v149 + 8);
            v104(v18, v9);
            v104(v22, v9);
            return;
          }

LABEL_47:
          swift_beginAccess();
          v76 = sub_1BEE4696C();
          swift_endAccess();
          v77 = [v42 listAtIndexPath_];

          v78 = v77;
          v79 = [v77 folder];
          if (v79)
          {
            v80 = v79;
            v81 = [v79 v23[291]];

            sub_1BEE4708C();
            v83 = v82;
          }

          else
          {
            v83 = 0;
          }

          v84 = v23[291];
          v85 = v78;
          v86 = [v78 v84];
          if (!v86)
          {
            sub_1BEE4708C();
            v86 = sub_1BEE4705C();
            v42 = v150;
          }

          v87 = v140;
          if (v83)
          {
            v88 = sub_1BEE4705C();
          }

          else
          {
            v88 = 0;
          }

          v89 = [v87 iconRelativePathWithFolderIdentifier:v88 listIdentifier:v86];

          v145 = v89;
          v90 = [v42 gridPathForRelativePath_];
          v144 = v85;
          if (v90)
          {
            v91 = v90;
            v92 = v142;
          }

          else
          {
            v92 = v142;
            v100 = [v42 addIcon:v142 toList:v85 options:0];
            if (v100)
            {
              v101 = v100;
              sub_1BEB20D28(0, &qword_1EBDBFEA0);
              v102 = sub_1BEE471AC();

              aBlock = v92;
              MEMORY[0x1EEE9AC00](v103);
              *(&v133 - 2) = &aBlock;
              LOBYTE(v101) = sub_1BEB52D94(sub_1BEE24520, (&v133 - 4), v102);

              if (v101)
              {

                v93 = 0;
                goto LABEL_88;
              }

              v92 = v142;
            }
          }

          objc_opt_self();
          v93 = swift_dynamicCastObjCClass();
          if (v93)
          {
            v94 = v92;
            if ([v93 leafIdentifierAndApplicationBundleIDMatches])
            {
              v142 = v94;
              v95 = [v93 applicationBundleID];
              if (v95)
              {
                v96 = v95;
                v97 = sub_1BEE4708C();
                v99 = v98;
              }

              else
              {
                v97 = 0;
                v99 = 0;
              }

              v138 = a5;
              v105 = swift_allocObject();
              *(v105 + 16) = v97;
              *(v105 + 24) = v99;
              v106 = swift_allocObject();
              *(v106 + 16) = sub_1BEE244E8;
              *(v106 + 24) = v105;
              v157 = sub_1BEE24518;
              v158 = v106;
              aBlock = MEMORY[0x1E69E9820];
              v154 = 1107296256;
              v155 = sub_1BEDE070C;
              v156 = &block_descriptor_98;
              v107 = _Block_copy(&aBlock);

              v108 = [v146 iconsPassingTest_];
              _Block_release(v107);
              LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

              if ((v107 & 1) == 0)
              {
                v136 = v105;
                v147 = a4;
                v137 = v9;
                v109 = sub_1BEB20D28(0, &qword_1EBDBFEA0);
                sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
                v110 = sub_1BEE4726C();

                v134 = v22;
                v143 = v109;
                v135 = 0;
                if ((v110 & 0xC000000000000001) != 0)
                {
                  sub_1BEE4748C();
                  sub_1BEE472AC();
                  v110 = aBlock;
                  v111 = v154;
                  v112 = v155;
                  v113 = v156;
                  v114 = v157;
                }

                else
                {
                  v113 = 0;
                  v115 = -1 << *(v110 + 32);
                  v111 = v110 + 56;
                  v112 = ~v115;
                  v116 = -v115;
                  if (v116 < 64)
                  {
                    v117 = ~(-1 << v116);
                  }

                  else
                  {
                    v117 = -1;
                  }

                  v114 = v117 & *(v110 + 56);
                }

                v118 = (v112 + 64) >> 6;
                if ((v110 & 0x8000000000000000) == 0)
                {
                  goto LABEL_80;
                }

                while (1)
                {
                  v119 = sub_1BEE474FC();
                  if (!v119)
                  {
                    break;
                  }

                  v151 = v119;
                  swift_dynamicCast();
                  v120 = v152;
                  v121 = v113;
                  v122 = v114;
                  if (!v152)
                  {
                    break;
                  }

                  while (1)
                  {
                    sub_1BEE118EC(v120, v150, v146, v147, v138);

                    v113 = v121;
                    v114 = v122;
                    if (v110 < 0)
                    {
                      break;
                    }

LABEL_80:
                    v123 = v113;
                    v124 = v114;
                    v121 = v113;
                    if (!v114)
                    {
                      while (1)
                      {
                        v121 = v123 + 1;
                        if (__OFADD__(v123, 1))
                        {
                          break;
                        }

                        if (v121 >= v118)
                        {
                          goto LABEL_87;
                        }

                        v124 = *(v111 + 8 * v121);
                        ++v123;
                        if (v124)
                        {
                          goto LABEL_84;
                        }
                      }

                      __break(1u);
                      goto LABEL_101;
                    }

LABEL_84:
                    v122 = (v124 - 1) & v124;
                    v120 = *(*(v110 + 48) + ((v121 << 9) | (8 * __clz(__rbit64(v124)))));
                    if (!v120)
                    {
                      goto LABEL_87;
                    }
                  }
                }

LABEL_87:

                sub_1BEB2AAE8();
                v93 = sub_1BEE244E8;
                v9 = v137;
                v22 = v134;
                goto LABEL_88;
              }

LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v93 = 0;
          }

          else
          {
          }

LABEL_88:
          v125 = *(v149 + 8);
          v125(v139, v9);
          v125(v22, v9);
          sub_1BEB326F8(v93);
          return;
        }

        v147 = a4;
        type metadata accessor for SBFolder(0);
        v135 = v44;
        v46 = v44;
        if (sub_1BEE473CC())
        {
          goto LABEL_21;
        }

        v47 = [v46 v23[291]];
        if (!v47)
        {
          sub_1BEE4708C();
          v47 = sub_1BEE4705C();
        }

        v48 = [v42 firstFolderWithUniqueIdentifier_];

        if (!v48)
        {
LABEL_21:
        }

        else
        {
          v49 = v145;
          sub_1BEE13020(v48, v42, v18);
          (*(v149 + 8))(v18, v9);
          swift_beginAccess();
          v137(v18, v49, v9);
          swift_beginAccess();
          v50 = sub_1BEE4696C();
          swift_endAccess();
          v51 = [v42 isValidIndexPath_];

          if (v51)
          {
            goto LABEL_24;
          }
        }

        v52 = v46;
        v53 = v146;
        if ((sub_1BEE473CC() & 1) == 0)
        {
          v143 = sub_1BEE21750(v52, v53, v150, a5);
          if (!v143)
          {
            v126 = [v52 displayName];
            if (!v126)
            {
              sub_1BEE4708C();
              v126 = sub_1BEE4705C();
            }

            v127 = [v52 displayName];
            if (!v127)
            {
              sub_1BEE4708C();
              v127 = sub_1BEE4705C();
            }

            v128 = v52;
            v129 = [v52 v23[291]];
            v130 = v150;
            if (!v129)
            {
              sub_1BEE4708C();
              v129 = sub_1BEE4705C();
              v130 = v150;
            }

            v131 = [v130 firstFolderWithUniqueIdentifier:v129 displayName:v126 defaultDisplayName:v127];

            if (v131)
            {
              v132 = v145;
              v18 = v139;
              sub_1BEE13020(v131, v130, v139);

              (*(v149 + 8))(v18, v9);
              swift_beginAccess();
              v137(v18, v132, v9);
            }

            else
            {

              v18 = v139;
            }

            a4 = v147;
            v42 = v130;
            goto LABEL_45;
          }

          v60 = [v52 displayName];
          v61 = v148;
          if (!v60)
          {
            sub_1BEE4708C();
            v60 = sub_1BEE4705C();
          }

          v62 = [v52 v23[291]];
          if (!v62)
          {
            sub_1BEE4708C();
            v62 = sub_1BEE4705C();
          }

          v138 = a5;
          v63 = [v61 makeFolderWithDisplayName:v60 uniqueIdentifier:v62];

          v145 = v52;
          v64 = [v52 defaultDisplayName];
          [v63 setDefaultDisplayName_];

          v65 = [v140 listIdentifier];
          if (!v65)
          {
            sub_1BEE4708C();
            v65 = sub_1BEE4705C();
          }

          v134 = v22;
          v66 = [v63 firstList];

          if (v66)
          {
            [v63 removeList_];
          }

          v67 = [objc_allocWithZone(SBFolderIcon) initWithFolder_];
          v68 = v150;

          v69 = [v63 firstList];
          if (!v69)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          v70 = v69;
          v71 = [v68 indexPathForList_];

          if (!v71)
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          v72 = v144;
          sub_1BEE4697C();

          (*(v149 + 8))(v18, v9);
          swift_beginAccess();
          v137(v18, v72, v9);
          v22 = v134;
          a5 = v138;
          goto LABEL_43;
        }

LABEL_24:
        sub_1BEB20D28(0, &qword_1EBDBFE90);
        v54 = v46;
        if (sub_1BEE473CC())
        {
          v55 = [v140 listIdentifier];
          a4 = v147;
          if (!v55)
          {
            sub_1BEE4708C();
            v55 = sub_1BEE4705C();
          }

          v42 = v150;
          v56 = [v150 addEmptyListWithIdentifier_];

          if (!v56)
          {

            v18 = v139;
            goto LABEL_45;
          }

          v57 = [v42 indexPathForList_];
          if (!v57)
          {
LABEL_104:
            __break(1u);
            return;
          }

          v58 = v57;
          v59 = v143;
          sub_1BEE4697C();

          v18 = v139;
          (*(v149 + 8))(v139, v9);
          swift_beginAccess();
          v137(v18, v59, v9);
LABEL_44:
          v42 = v150;
LABEL_45:
          v45 = v135;
          goto LABEL_46;
        }

        v18 = v139;
LABEL_43:
        a4 = v147;
        goto LABEL_44;
      }
    }
  }
}

void sub_1BEE12C78()
{
  v1 = OBJC_IVAR___SBHIconModel_discardCachedOtherRootFoldersRunLoopObserver;
  v2 = *(v0 + OBJC_IVAR___SBHIconModel_discardCachedOtherRootFoldersRunLoopObserver);
  if (v2)
  {
    CFRunLoopObserverInvalidate(v2);
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = *(v0 + OBJC_IVAR___SBHIconModel__cachedDesiredRootFolder);
  *(v0 + OBJC_IVAR___SBHIconModel__cachedDesiredRootFolder) = 0;

  v5 = *(v0 + OBJC_IVAR___SBHIconModel__cachedDefaultRootFolder);
  *(v0 + OBJC_IVAR___SBHIconModel__cachedDefaultRootFolder) = 0;
}

void sub_1BEE12CE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

id sub_1BEE12D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8134IconStateUnarchivingSlugIconSource_leafAppIcons;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_1BEB1DAFC(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    return v10;
  }

  else
  {
    swift_endAccess();
    v12 = objc_allocWithZone(SBHApplicationIcon);
    v13 = sub_1BEE4705C();
    v14 = sub_1BEE4705C();
    v15 = [v12 initWithLeafIdentifier:v13 applicationBundleID:v14];

    swift_beginAccess();

    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1BEE31F1C(v16, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v6) = v18;
    swift_endAccess();
    return v16;
  }
}

id sub_1BEE12FD8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BEE13020(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = [a2 indexPathForFolder_];
  if (v16)
  {
    v17 = v16;
    sub_1BEE4697C();

    (*(v7 + 32))(v15, v13, v6);
    swift_beginAccess();
    (*(v7 + 16))(v10, a3, v6);
    v18 = sub_1BEE4696C();
    v19 = *(v7 + 8);
    v19(v10, v6);
    v20 = [v18 sb_indexPathByRemovingFirstIconPathComponent];

    if (v20)
    {
      v21 = [v20 sbListIndex];

      [a1 isValidListIndex_];
      sub_1BEE469BC();
      v19(v15, v6);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BEE13254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = a1;
  if ([v8 leafIdentifierAndApplicationBundleIDMatches])
  {
    goto LABEL_3;
  }

  v11 = [v8 applicationBundleID];
  if (!v11)
  {

    return !a4;
  }

  v12 = v11;
  v13 = sub_1BEE4708C();
  v15 = v14;

  if (!a4)
  {

LABEL_3:

    return 0;
  }

  if (v13 != a3 || v15 != a4)
  {
    v17 = sub_1BEE4770C();

    return (v17 & 1) != 0;
  }

  return 1;
}

void sub_1BEE13370(void *a1)
{
  v12 = [a1 ignoredList];
  v1 = [objc_opt_self() hiddenApplications];
  sub_1BEE4730C();
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    v3 = sub_1BEE474CC();
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB4EA90](v4, v2);
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 bundleIdentifier];
    if (!v7)
    {
      sub_1BEE4708C();
      v7 = sub_1BEE4705C();
    }

    v8 = [v11 applicationIconsForBundleIdentifier_];

    sub_1BEB20D28(0, &unk_1EBDBFFD0);
    v9 = sub_1BEE471AC();

    if (v9 >> 62)
    {
      sub_1BEB20D28(0, &qword_1EBDBFEA0);

      sub_1BEE4765C();
    }

    else
    {

      sub_1BEE4771C();
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
    }

    ++v4;

    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v10 = sub_1BEE4719C();
  }

  while (v3 != v4);
LABEL_16:
}

uint64_t sub_1BEE13820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR___SBHIconModel_additionalDesiredIconRelativePaths;
  swift_beginAccess();
  v16 = *&v4[v15];
  if (*(v16 + 16) && (v17 = sub_1BEB1DAFC(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v20 = v19;
    v21 = [v4 rootFolder];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 indexPathForRelativePath_];
      if (v23)
      {
        v24 = v23;
        sub_1BEE4697C();

        v25 = *(v9 + 32);
        v25(v14, v12, v8);
        v25(a3, v14, v8);
        goto LABEL_11;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  if (!*&v4[OBJC_IVAR___SBHIconModel__desiredIconState])
  {
    v30 = 1;
    return (*(v9 + 56))(a3, v30, 1, v8);
  }

  v26 = objc_opt_self();

  v27 = sub_1BEE4705C();
  v28 = sub_1BEE4700C();

  v29 = [v26 indexPathForLeafIdentifier:v27 inArchive:v28];

  sub_1BEE4697C();
LABEL_11:
  v30 = 0;
  return (*(v9 + 56))(a3, v30, 1, v8);
}

void *sub_1BEE13C34()
{
  if (!*&v0[OBJC_IVAR___SBHIconModel__desiredIconState])
  {
    return MEMORY[0x1E69E7CD0];
  }

  v1 = objc_opt_self();

  v2 = sub_1BEE4700C();

  v3 = [v1 leafIdentifiersFromArchive_];

  v4 = [v3 set];
  v5 = sub_1BEE4726C();

  v6 = sub_1BEE0B284(v5);

  if (!v6)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v7 = [v0 currentLeafIdentifiers];
  v8 = sub_1BEE4726C();

  v9 = sub_1BEE22204(v6, v8);

  return v9;
}

id sub_1BEE13DAC(uint64_t a1)
{
  v2 = v1;
  v25[1] = *MEMORY[0x1E69E9840];
  result = [v2 hasDesiredIconState];
  if (result)
  {
    result = [v2 store];
    if (result)
    {
      v25[0] = 0;
      if ([result deleteDesiredIconStateWithOptions:a1 error:v25])
      {
        v5 = qword_1EBDBFFA8;
        v6 = v25[0];
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_1BEE46A0C();
        __swift_project_value_buffer(v7, qword_1EBDCA820);
        v8 = v2;
        v9 = sub_1BEE469FC();
        v10 = sub_1BEE4731C();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *v11 = 138412290;
          *(v11 + 4) = v8;
          *v12 = v8;
          v13 = v8;
          _os_log_impl(&dword_1BEB18000, v9, v10, "%@: deleted desired icon state", v11, 0xCu);
          sub_1BEB4992C(v12, &qword_1EBDC7490);
          MEMORY[0x1BFB50850](v12, -1, -1);
          MEMORY[0x1BFB50850](v11, -1, -1);
        }
      }

      else
      {
        v14 = v25[0];
        v15 = sub_1BEE4682C();

        swift_willThrow();
        if (qword_1EBDBFFA8 != -1)
        {
          swift_once();
        }

        v16 = sub_1BEE46A0C();
        __swift_project_value_buffer(v16, qword_1EBDCA820);
        v17 = v2;
        v18 = v15;
        v9 = sub_1BEE469FC();
        v19 = sub_1BEE4732C();

        if (!os_log_type_enabled(v9, v19))
        {

          goto LABEL_14;
        }

        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        *(v20 + 4) = v17;
        *v21 = v17;
        *(v20 + 12) = 2112;
        v22 = v17;
        v23 = v15;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v24;
        v21[1] = v24;
        _os_log_impl(&dword_1BEB18000, v9, v19, "%@: unable to delete desired icon state: %@", v20, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7490);
        swift_arrayDestroy();
        MEMORY[0x1BFB50850](v21, -1, -1);
        MEMORY[0x1BFB50850](v20, -1, -1);
      }

LABEL_14:
      *&v2[OBJC_IVAR___SBHIconModel__desiredIconState] = 0;

      [v2 setDesiredIconStateFlattened_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1BEE14184()
{
  if (!*&v0[OBJC_IVAR___SBHIconModel__desiredIconState])
  {
    return;
  }

  v17 = [v0 rootFolder];
  if (v17)
  {
    v1 = [v0 desiredIconStateFlattened];
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      v3 = objc_opt_self();
      v4 = sub_1BEE4700C();

      v5 = [v3 leafIdentifiersFromArchive_];

      v6 = [v5 set];
      v7 = sub_1BEE4726C();

      v8 = sub_1BEE0B284(v7);

      if (!v8)
      {
        goto LABEL_11;
      }

      v2 = sub_1BEE4724C();

      [v0 setDesiredIconStateFlattened_];
    }

LABEL_11:
    v9 = [v0 desiredIconStateFlattened];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1BEE4726C();

      v20 = MEMORY[0x1E69E7CD0];
      v12 = swift_allocObject();
      *(v12 + 16) = &v20;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1BEE243B4;
      *(v13 + 24) = v12;
      aBlock[4] = sub_1BEDFBF74;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BEB31DD8;
      aBlock[3] = &block_descriptor_51;
      v14 = _Block_copy(aBlock);

      [v18 enumerateAllIconsWithOptions:1 usingBlock:v14];
      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }

      else
      {
        if (*(v20 + 16) >= *(v11 + 16))
        {

          v16 = sub_1BEE14600(v15, v11);

          if (v16)
          {
            [v0 clearDesiredIconState];
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

    return;
  }
}

uint64_t sub_1BEE14554(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    v5 = [v3 leafIdentifier];
    v6 = sub_1BEE4708C();
    v8 = v7;

    sub_1BEDF6558(&v9, v6, v8);
  }

  return result;
}

uint64_t sub_1BEE14600(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_1BEE4777C();

      sub_1BEE470CC();
      v15 = sub_1BEE477CC();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_1BEE4770C() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

void sub_1BEE14824()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = [v0 store];
  if (v1)
  {
    v19[0] = 0;
    v2 = [v1 loadDesiredIconState_];
    v3 = v19[0];
    if (v2)
    {
      v4 = v2;
      sub_1BEE4701C();
      v5 = v3;

      v6 = sub_1BEE4700C();

      v7 = [v0 modernizeRootArchive_];

      v8 = sub_1BEE4701C();
      swift_unknownObjectRelease();
      *&v0[OBJC_IVAR___SBHIconModel__desiredIconState] = v8;
    }

    else
    {
      v9 = v19[0];
      v10 = sub_1BEE4682C();

      swift_willThrow();
      if (qword_1EBDBFFA8 != -1)
      {
        swift_once();
      }

      v11 = sub_1BEE46A0C();
      __swift_project_value_buffer(v11, qword_1EBDCA820);
      v12 = v10;
      v13 = sub_1BEE469FC();
      v14 = sub_1BEE4731C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = v10;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_1BEB18000, v13, v14, "Unable to read desired icon state: %@", v15, 0xCu);
        sub_1BEB4992C(v16, &qword_1EBDC7490);
        MEMORY[0x1BFB50850](v16, -1, -1);
        MEMORY[0x1BFB50850](v15, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1BEE14D78()
{
  v1 = v0;
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = [v0 store];
  if (!v2)
  {
    return 0;
  }

  v37[0] = 0;
  v3 = [v2 loadCurrentIconState_];
  v4 = v37[0];
  if (v3)
  {
    v5 = v3;
    sub_1BEE4701C();
    v6 = v4;

    v7 = sub_1BEE4700C();

    v8 = [v1 modernizeRootArchive_];

    v9 = sub_1BEE4701C();
  }

  else
  {
    v10 = v37[0];
    v11 = sub_1BEE4682C();

    swift_willThrow();
    if (qword_1EBDBFFA8 != -1)
    {
      swift_once();
    }

    v12 = sub_1BEE46A0C();
    __swift_project_value_buffer(v12, qword_1EBDCA820);
    v13 = v11;
    v14 = sub_1BEE469FC();
    v15 = sub_1BEE4731C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BEB18000, v14, v15, "Unable to read icon state: %@. Defaulting to platform state", v16, 0xCu);
      sub_1BEB4992C(v17, &qword_1EBDC7490);
      MEMORY[0x1BFB50850](v17, -1, -1);
      MEMORY[0x1BFB50850](v16, -1, -1);
    }

    v8 = [v1 defaultIconState];
    v9 = sub_1BEE4701C();
  }

  v20 = [v1 todayListsStore];
  if (v20)
  {
    v37[0] = 0;
    v21 = [v20 loadCurrentIconState_];
    v22 = v37[0];

    if (v21)
    {
      sub_1BEE4701C();

      v23 = objc_opt_self();
      v24 = sub_1BEE4700C();

      v25 = sub_1BEE4700C();

      v26 = [v23 iconStateByReplacingTodayListsInIconState:v24 withTodayListsFromIconState:v25];

      v9 = sub_1BEE4701C();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = sub_1BEE4682C();

      swift_willThrow();
      if (qword_1EBDBFFA8 != -1)
      {
        swift_once();
      }

      v28 = sub_1BEE46A0C();
      __swift_project_value_buffer(v28, qword_1EBDCA820);
      v29 = v27;
      v30 = sub_1BEE469FC();
      v31 = sub_1BEE4732C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = v27;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1BEB18000, v30, v31, "Unable to load layout from the today lists store: %@", v32, 0xCu);
        sub_1BEB4992C(v33, &qword_1EBDC7490);
        MEMORY[0x1BFB50850](v33, -1, -1);
        MEMORY[0x1BFB50850](v32, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_1BEE15318()
{
  v1 = v0;
  v2 = sub_1BEE14D78();
  if (!v2)
  {
    return sub_1BEE157B0();
  }

  v4 = v2;
  v5 = v3;

  if (v5 == 1 && ([v0 hasDesiredIconState] & 1) == 0)
  {
    sub_1BEE14824();
    if (!*&v0[OBJC_IVAR___SBHIconModel__desiredIconState])
    {
      *&v0[OBJC_IVAR___SBHIconModel__desiredIconState] = v4;
    }
  }

  v6 = v5 == 1;
  v7 = objc_allocWithZone(SBHIconStateUnarchiver);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8288);
  v8 = [v7 initWithArchive:sub_1BEE4773C() iconModel:v1];

  swift_unknownObjectRelease();
  [v8 setRemovesEmptyFolders_];

  [v8 setLeavesGapsForMissingIcons_];
  v9 = [v8 unarchive];
  if ([v9 isValid] && (v10 = objc_msgSend(v9, sel_rootFolder)) != 0)
  {
    v11 = v10;
  }

  else
  {
    if (qword_1EBDBFFA8 != -1)
    {
      swift_once();
    }

    v12 = sub_1BEE46A0C();
    __swift_project_value_buffer(v12, qword_1EBDCA820);
    v13 = sub_1BEE469FC();
    v14 = sub_1BEE4732C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BEB18000, v13, v14, "icon state was corrupt; reverting to the default platform state", v15, 2u);
      MEMORY[0x1BFB50850](v15, -1, -1);
    }

    [v1 clearDesiredIconState];
    [v1 deleteIconState];
    v16 = [v1 defaultIconState];
    sub_1BEE4701C();

    v17 = objc_opt_self();
    v11 = sub_1BEE4700C();

    v18 = [v17 unarchiveRootFolderFromArchive:v11 withIconSource:v1];

    v9 = v18;
  }

  v19 = [v9 metadata];
  if (v19)
  {
    v20 = v19;
    sub_1BEE4701C();
  }

  else
  {
    sub_1BEB449C8(MEMORY[0x1E69E7CC0]);
  }

  v22 = sub_1BEE4700C();

  [v1 didUnarchiveMetadata_];

  v23 = [v9 rootFolder];
  if (!v23)
  {
    goto LABEL_21;
  }

  v21 = v23;
  if (([v9 isValid] & 1) == 0)
  {

LABEL_21:
    v21 = sub_1BEE157B0();
  }

  [v21 compactLists];
  v24 = [v9 unarchivedIdentifiers];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1BEE4726C();

    sub_1BEE0B284(v26);
  }

  return v21;
}

id sub_1BEE157B0()
{
  type metadata accessor for SBRootFolder(0);
  v1 = [v0 maxListCountForFolders];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [v0 listGridSizeForFolderClass_];
  v4 = [v0 gridSizeClassSizes];
  v5 = objc_allocWithZone(SBRootFolder);
  v6 = v4;
  v7 = sub_1BEE4705C();
  v8 = [v5 initWithDisplayName:v7 maxListCount:v1 listGridSize:v3 iconGridSizeClassSizes:v6];

  v9 = v8;
  v10 = [v0 listRotatedLayoutClusterGridSizeClass];
  [v9 setListRotatedLayoutClusterGridSizeClass_];

  v11 = [v0 delegate];
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector_])
    {
      v13 = [v12 iconModel:v0 allowedGridSizeClassesForFolderClass:ObjCClassFromMetadata];
      swift_unknownObjectRelease();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v13 = [v0 rootFolderAllowedGridSizeClasses];
LABEL_7:
  [v9 setListAllowedGridSizeClasses_];

  v14 = [v0 delegate];
  if (v14)
  {
    v15 = v14;
    if ([v14 respondsToSelector_])
    {
      v16 = [v15 gridSizeClassDomainForIconModel_];
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  [v9 setGridSizeClassDomain_];

  v17 = [v0 delegate];
  if (v17)
  {
    v18 = v17;
    if ([v17 respondsToSelector_])
    {
      v19 = [v18 iconModel:v0 listsAllowRotatedLayoutForFolderClass:ObjCClassFromMetadata];
    }

    else
    {
      v19 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
  }

  [v9 setListsAllowRotatedLayout_];
  v20 = [v0 delegate];
  if (v20)
  {
    v21 = v20;
    if ([v20 respondsToSelector_])
    {
      v22 = [v21 iconModel:v0 listWithNonDefaultSizedIconsGridSizeForFolderClass:ObjCClassFromMetadata];
      swift_unknownObjectRelease();
      v23 = v22 & 0xFFFF0000;
      v24 = v22;
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
  }

  v24 = 0;
  v23 = 0;
LABEL_24:
  [v9 setListWithNonDefaultSizedIconsGridSize_];
  v25 = [v0 delegate];
  if (v25)
  {
    v26 = v25;
    if ([v25 respondsToSelector_])
    {
      v27 = [v26 iconModel:v0 listsFixedIconLocationBehaviorForFolderClass:ObjCClassFromMetadata];
    }

    else
    {
      v27 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 1;
  }

  [v9 setListsFixedIconLocationBehavior_];
  v28 = [v0 delegate];
  if (v28)
  {
    v29 = v28;
    if ([v28 respondsToSelector_])
    {
      v30 = [v29 iconModel:v0 listsIconLayoutBehaviorForFolderClass:ObjCClassFromMetadata];
    }

    else
    {
      v30 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0;
  }

  [v9 setListsIconLayoutBehavior_];
  v31 = [v0 delegate];
  if (v31)
  {
    v32 = v31;
    if ([v31 respondsToSelector_])
    {
      v33 = [v32 rotatedGridSizeClassSizesForIconModel_];
    }

    else
    {
      v33 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0;
  }

  [v9 setRotatedIconGridSizeClassSizes_];

  return v9;
}

uint64_t sub_1BEE15CF8(uint64_t a1)
{
  v2 = v1;
  v23[1] = *MEMORY[0x1E69E9840];
  [v2 markIconStateClean];
  result = [v2 store];
  if (result)
  {
    v23[0] = 0;
    if ([result deleteCurrentIconStateWithOptions:a1 error:v23])
    {
      v5 = qword_1EBDBFFA8;
      v6 = v23[0];
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_1BEE46A0C();
      __swift_project_value_buffer(v7, qword_1EBDCA820);
      v8 = sub_1BEE469FC();
      v9 = sub_1BEE4731C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1BEB18000, v8, v9, "deleted current icon state", v10, 2u);
        MEMORY[0x1BFB50850](v10, -1, -1);
      }

      v11 = [v2 delegate];
      if (v11)
      {
        v12 = v11;
        if ([v11 respondsToSelector_])
        {
          [v12 didDeleteIconState_];
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      v13 = v23[0];
      v14 = sub_1BEE4682C();

      swift_willThrow();
      if (qword_1EBDBFFA8 != -1)
      {
        swift_once();
      }

      v15 = sub_1BEE46A0C();
      __swift_project_value_buffer(v15, qword_1EBDCA820);
      v16 = v14;
      v17 = sub_1BEE469FC();
      v18 = sub_1BEE4732C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1BEB18000, v17, v18, "unable to delete current icon state: %@", v19, 0xCu);
        sub_1BEB4992C(v20, &qword_1EBDC7490);
        MEMORY[0x1BFB50850](v20, -1, -1);
        MEMORY[0x1BFB50850](v19, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return 0;
    }
  }

  return result;
}

void sub_1BEE16078()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = [v0 store];
  if (v1)
  {
    v2 = v1;
    if (*&v0[OBJC_IVAR___SBHIconModel__desiredIconState])
    {

      v3 = sub_1BEE4700C();

      v20[0] = 0;
      v4 = [v2 saveDesiredIconState:v3 error:v20];

      if (v4)
      {
        v5 = qword_1EBDBFFA8;
        v6 = v20[0];
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_1BEE46A0C();
        __swift_project_value_buffer(v7, qword_1EBDCA820);
        v8 = sub_1BEE469FC();
        v9 = sub_1BEE4731C();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1BEB18000, v8, v9, "desired icon state saved", v10, 2u);
          MEMORY[0x1BFB50850](v10, -1, -1);
        }

        goto LABEL_15;
      }

      v11 = v20[0];
      v12 = sub_1BEE4682C();

      swift_willThrow();
      if (qword_1EBDBFFA8 != -1)
      {
        swift_once();
      }

      v13 = sub_1BEE46A0C();
      __swift_project_value_buffer(v13, qword_1EBDCA820);
      v14 = v12;
      v8 = sub_1BEE469FC();
      v15 = sub_1BEE4732C();

      if (os_log_type_enabled(v8, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = v12;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_1BEB18000, v8, v15, "unable to save desired icon state: %@", v16, 0xCu);
        sub_1BEB4992C(v17, &qword_1EBDC7490);
        MEMORY[0x1BFB50850](v17, -1, -1);
        MEMORY[0x1BFB50850](v16, -1, -1);

LABEL_15:
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}