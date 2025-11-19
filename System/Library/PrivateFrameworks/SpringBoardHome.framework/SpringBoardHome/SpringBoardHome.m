id SBLogIcon()
{
  if (SBLogIcon_onceToken != -1)
  {
    SBLogIcon_cold_1();
  }

  v1 = SBLogIcon___logObj;

  return v1;
}

__CFString *SBHStringFromContentVisibility(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E808FB90[a1];
  }
}

id SBHGetIconLayerWithImageAppearance(void *a1, void *a2, unint64_t a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69A8A30];
  v12 = a2;
  v13 = a1;
  v14 = [[v11 alloc] initWithSize:a4 scale:{a5, a6}];
  SBHModifyImageDescriptorWithImageAppearance(v14, v12, a3);
  v15 = SBHIconServicesImageForDescriptor(v13, v14, a3);

  v17 = SBHGetIconLayerFromIconServicesImage(v15, a4, a5, a6, v16, a3);

  return v17;
}

id SBHGetIconLayerFromIconServicesImage(void *a1, double a2, double a3, double a4, uint64_t a5, unint64_t a6)
{
  v10 = a1;
  v11 = [MEMORY[0x1E696AF00] isMainThread];
  v12 = (a6 >> 3) & 1;
  v13 = v12 & (v11 ^ 1);
  v14 = v12 | v11;
  if (v13 == 1)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v15 = [v10 ICRIconLayer];
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      [v15 setContentsScale:a4];
    }

    else if ((a6 & 4) != 0 && (v17 = [v10 CGImage]) != 0)
    {
      v18 = v17;
      v16 = objc_alloc_init(MEMORY[0x1E6979398]);
      [v16 setContents:v18];
    }

    else
    {
      v16 = 0;
    }

    [v16 setBounds:{0.0, 0.0, a2, a3}];
  }

  if (v13)
  {
    [MEMORY[0x1E6979518] commit];
  }

  return v16;
}

id SBHGetApplicationIconLayerWithTraitCollection(void *a1, uint64_t a2, unint64_t a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a1;
  v13 = [v11 sbh_iconImageAppearanceFromTraitCollection:a2];
  v14 = SBHGetApplicationIconLayerWithImageAppearance(v12, v13, a3, a4, a5, a6);

  return v14;
}

id SBHGetApplicationIconLayerWithImageAppearance(void *a1, void *a2, unint64_t a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69A8A00];
  v12 = a2;
  v13 = a1;
  v14 = [[v11 alloc] initWithBundleIdentifier:v13];

  v15 = SBHGetIconLayerWithImageAppearance(v14, v12, a3, a4, a5, a6);

  return v15;
}

id SBLogLightAngle()
{
  if (SBLogLightAngle_onceToken != -1)
  {
    SBLogLightAngle_cold_1();
  }

  v1 = SBLogLightAngle___logObj;

  return v1;
}

void SBHModifyImageDescriptorWithImageAppearance(void *a1, void *a2, char a3)
{
  v15 = a1;
  v5 = a2;
  v6 = [v5 appearanceType];
  if (v6 <= 3)
  {
    v7 = 3;
    v8 = 1;
    v9 = 3;
    if (v6 != 3)
    {
      v9 = 0;
      v8 = 0;
    }

    if (v6 == 2)
    {
      v8 = 0;
    }

    else
    {
      v7 = v9;
    }

    v10 = 0;
    if (v6 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    if (v6 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8;
    }

    goto LABEL_20;
  }

  switch(v6)
  {
    case 4:
      v10 = [v5 tintColor];
      v12 = 0;
LABEL_19:
      v11 = 2;
      goto LABEL_20;
    case 5:
      v10 = [v5 tintColor];
      v12 = 1;
      goto LABEL_19;
    case 6:
      [v15 setBackground:1];
      v13 = v15;
      v10 = 0;
      v11 = 0;
      v12 = 2;
      goto LABEL_21;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
LABEL_20:
  v13 = v15;
LABEL_21:
  [v13 setAppearance:v12];
  [v15 setAppearanceVariant:v11];
  if (v10)
  {
    v14 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(v10, "CGColor")}];
    [v15 setTintColor:v14];
  }

  [v15 setShouldApplyMask:(a3 & 1) == 0];
}

id SBHIconServicesImageForDescriptor(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if ((a3 & 2) != 0)
  {
    v7 = [v5 imageForDescriptor:v6];
    v8 = [v7 placeholder];
    if ((a3 & 0x10) == 0 && v8)
    {

      v7 = 0;
    }
  }

  else
  {
    v7 = [v5 prepareImageForDescriptor:v6];
  }

  return v7;
}

id SBLogHomeScreenUsageMonitor()
{
  if (SBLogHomeScreenUsageMonitor_onceToken != -1)
  {
    SBLogHomeScreenUsageMonitor_cold_1();
  }

  v1 = SBLogHomeScreenUsageMonitor___logObj;

  return v1;
}

id SBLogClock()
{
  if (SBLogClock_onceToken != -1)
  {
    SBLogClock_cold_1();
  }

  v1 = SBLogClock___logObj;

  return v1;
}

uint64_t SBHFeatureEnabled(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = _os_feature_enabled_impl();
  }

  return ((overriddenEnabledFeatures & (1 << v1)) != 0) | v2 & 1u;
}

void sub_1BEB1D1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1BEB1DA84(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

unint64_t sub_1BEB1DAFC(uint64_t a1, uint64_t a2)
{
  sub_1BEE4777C();
  sub_1BEE470CC();
  v4 = sub_1BEE477CC();

  return sub_1BEB1FBD4(a1, a2, v4);
}

Swift::Bool __swiftcall SBHIconRepository.isIconVisible(_:)(SBLeafIcon *a1)
{
  v2 = v1;
  v4 = [v1 hiddenIconTags];
  v5 = MEMORY[0x1E69E6168];
  v6 = sub_1BEE4726C();

  v7 = [v1 visibleIconTags];
  v8 = sub_1BEE4726C();

  v9 = &selRef_supportsCachedIconLookup;
  v83 = a1;
  v10 = [(SBLeafIcon *)a1 tags];
  v11 = sub_1BEE471AC();

  v82 = *(v11 + 16);
  if (!v82)
  {

LABEL_31:
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = v38;
      v40 = v83;
      v41 = [v39 applicationBundleID];
      if (v41)
      {
        v42 = v41;
        v43 = sub_1BEE4708C();
        v45 = v44;

        LOBYTE(v42) = sub_1BEB1E8D4(v43, v45, v6);

        if (v42)
        {
          if (qword_1EBDBFE30 != -1)
          {
            swift_once();
          }

          v46 = sub_1BEE46A0C();
          __swift_project_value_buffer(v46, qword_1EBDCA800);

          v47 = sub_1BEE469FC();
          v48 = sub_1BEE4731C();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v84[0] = v50;
            *v49 = 136315138;
            v51 = sub_1BEDCE8F4(v43, v45, v84);

            *(v49 + 4) = v51;
            _os_log_impl(&dword_1BEB18000, v47, v48, "Icon is not visible because bundle identifier is in hidden tags: %s / app icon", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x1BFB50850](v50, -1, -1);
            MEMORY[0x1BFB50850](v49, -1, -1);
          }

          else
          {
          }

          goto LABEL_78;
        }

        v60 = [v39 application];
        if (v60)
        {
          v61 = v60;
          if ([v60 respondsToSelector_] & 1) != 0 && objc_msgSend(v61, sel_hasHiddenTag) || (objc_msgSend(v61, sel_respondsToSelector_, v9[62], v80) & 1) != 0 && (v62 = objc_msgSend(v61, v9[62]), v63 = sub_1BEE471AC(), v62, v84[0] = 0x6E6564646968, v84[1] = 0xE600000000000000, MEMORY[0x1EEE9AC00](), v79[2] = v84, LOBYTE(v62) = sub_1BEB1E9CC(sub_1BEB2135C, v79, v63), , (v62))
          {
            if (qword_1EBDBFE30 != -1)
            {
              swift_once();
            }

            v64 = sub_1BEE46A0C();
            __swift_project_value_buffer(v64, qword_1EBDCA800);

            v47 = sub_1BEE469FC();
            v65 = sub_1BEE4731C();

            if (os_log_type_enabled(v47, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v84[0] = v67;
              *v66 = 136315138;
              v68 = sub_1BEDCE8F4(v43, v45, v84);

              *(v66 + 4) = v68;
              v69 = "Icon is not visible due to hidden tag: %s";
LABEL_65:
              _os_log_impl(&dword_1BEB18000, v47, v65, v69, v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v67);
              MEMORY[0x1BFB50850](v67, -1, -1);
              MEMORY[0x1BFB50850](v66, -1, -1);
LABEL_77:
              swift_unknownObjectRelease();
LABEL_78:

LABEL_79:
              return 0;
            }

            goto LABEL_76;
          }

          if (([v61 respondsToSelector_] & 1) != 0 && objc_msgSend(v61, sel_isAppClip))
          {
            if (qword_1EBDBFE30 != -1)
            {
              swift_once();
            }

            v70 = sub_1BEE46A0C();
            __swift_project_value_buffer(v70, qword_1EBDCA800);

            v47 = sub_1BEE469FC();
            v65 = sub_1BEE4731C();

            if (os_log_type_enabled(v47, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v84[0] = v67;
              *v66 = 136315138;
              v71 = sub_1BEDCE8F4(v43, v45, v84);

              *(v66 + 4) = v71;
              v69 = "App clip icon is not visible: %s / app clip icon";
              goto LABEL_65;
            }

LABEL_76:

            goto LABEL_77;
          }

          swift_unknownObjectRelease();
        }

        v72 = [v39 applicationPlaceholder];
        if (v72)
        {
          v73 = v72;
          if ([v72 respondsToSelector_] & 1) != 0 && (objc_msgSend(v73, sel_isAppClip))
          {
            if (qword_1EBDBFE30 != -1)
            {
              swift_once();
            }

            v74 = sub_1BEE46A0C();
            __swift_project_value_buffer(v74, qword_1EBDCA800);

            v47 = sub_1BEE469FC();
            v75 = sub_1BEE4731C();

            if (os_log_type_enabled(v47, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v84[0] = v77;
              *v76 = 136315138;
              v78 = sub_1BEDCE8F4(v43, v45, v84);

              *(v76 + 4) = v78;
              _os_log_impl(&dword_1BEB18000, v47, v75, "Downloading icon for app clip is not visible: %s", v76, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v77);
              MEMORY[0x1BFB50850](v77, -1, -1);
              MEMORY[0x1BFB50850](v76, -1, -1);
              goto LABEL_77;
            }

            goto LABEL_76;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return 1;
      }
    }

    if ([(SBIcon *)v83 isBookmarkIcon])
    {
      v52 = [v2 hiddenTagsThatAffectBookmarkIcons];
      v53 = sub_1BEE4726C();

      v54 = sub_1BEDCEE28(v53, v6);

      v55 = *(v54 + 16);

      if (v55)
      {
        if (qword_1EBDBFE30 != -1)
        {
          swift_once();
        }

        v56 = sub_1BEE46A0C();
        __swift_project_value_buffer(v56, qword_1EBDCA800);
        v40 = sub_1BEE469FC();
        v57 = sub_1BEE4731C();
        if (os_log_type_enabled(v40, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_1BEB18000, v40, v57, "Bookmark icons are not visible because of tag", v58, 2u);
          MEMORY[0x1BFB50850](v58, -1, -1);
        }

        goto LABEL_79;
      }
    }

    else
    {
    }

    return 1;
  }

  v80 = v1;
  v12 = 0;
  v13 = v11 + 32;
  v14 = v6 + 56;
  v15 = v8 + 56;
  v81 = v11 + 32;
  while (1)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_83;
    }

    v16 = (v13 + 16 * v12);
    v5 = *v16;
    v10 = v16[1];
    if (!*(v6 + 16))
    {

      goto LABEL_15;
    }

    sub_1BEE4777C();

    sub_1BEE470CC();
    v17 = sub_1BEE477CC();
    v18 = -1 << *(v6 + 32);
    v19 = v17 & ~v18;
    if ((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      break;
    }

LABEL_15:
    if (!*(v8 + 16))
    {
      goto LABEL_27;
    }

    sub_1BEE4777C();
    sub_1BEE470CC();
    v23 = sub_1BEE477CC();
    v24 = -1 << *(v8 + 32);
    v25 = v23 & ~v24;
    if (((*(v15 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_27;
    }

    ++v12;
    v26 = ~v24;
    while (1)
    {
      v27 = (*(v8 + 48) + 16 * v25);
      v28 = *v27 == v5 && v27[1] == v10;
      if (v28 || (sub_1BEE4770C() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v15 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v13 = v81;
    if (v12 == v82)
    {

      v9 = &selRef_supportsCachedIconLookup;
      v2 = v80;
      goto LABEL_31;
    }
  }

  v20 = ~v18;
  while (1)
  {
    v21 = (*(v6 + 48) + 16 * v19);
    v22 = *v21 == v5 && v21[1] == v10;
    if (v22 || (sub_1BEE4770C() & 1) != 0)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_27:

  if (qword_1EBDBFE30 == -1)
  {
    goto LABEL_28;
  }

LABEL_83:
  swift_once();
LABEL_28:
  v29 = sub_1BEE46A0C();
  __swift_project_value_buffer(v29, qword_1EBDCA800);

  v30 = v83;
  v31 = sub_1BEE469FC();
  v32 = sub_1BEE4731C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v84[0] = v35;
    *v33 = 138412546;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2082;
    v36 = v30;
    v37 = sub_1BEDCE8F4(v5, v10, v84);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_1BEB18000, v31, v32, "Icon is not visible due to tag: %@/%{public}s", v33, 0x16u);
    sub_1BEDCF938(v34);
    MEMORY[0x1BFB50850](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1BFB50850](v35, -1, -1);
    MEMORY[0x1BFB50850](v33, -1, -1);
  }

  else
  {
  }

  return 0;
}

id sub_1BEB1E76C()
{

  v0 = sub_1BEE4724C();

  return v0;
}

uint64_t sub_1BEB1E8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BEE4777C();
  sub_1BEE470CC();
  v6 = sub_1BEE477CC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BEE4770C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BEB1E9CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1BEB1ECB8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id sub_1BEB1ED30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 iconRepository];
  v7 = sub_1BEE4705C();
  v8 = [v6 iconForIdentifier_];

  if (!v8)
  {
    v9 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByUniqueIdentifier;
    swift_beginAccess();
    v10 = *&v3[v9];
    if (*(v10 + 16) && (v11 = sub_1BEB1DAFC(a1, a2), (v12 & 1) != 0) || (swift_endAccess(), v13 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier, swift_beginAccess(), v10 = *&v3[v13], *(v10 + 16)) && (v11 = sub_1BEB1DAFC(a1, a2), (v14 & 1) != 0))
    {
      v8 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      v15 = v8;
    }

    else
    {
      swift_endAccess();
      v16 = OBJC_IVAR___SBHIconModel_fileStackIconsByIdentifier;
      swift_beginAccess();
      v17 = *&v3[v16];
      if (*(v17 + 16) && (v18 = sub_1BEB1DAFC(a1, a2), (v19 & 1) != 0))
      {
        v8 = *(*(v17 + 56) + 8 * v18);
        v20 = v8;
      }

      else
      {
        v8 = 0;
      }

      swift_endAccess();
    }
  }

  return v8;
}

uint64_t SBIconLocationGroupContainsLocation(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = SBGetIconLocationGroups();
  v6 = [v5 objectForKey:v4];

  if (v3)
  {
    v7 = [v6 containsObject:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SBGetIconLocationGroups()
{
  v0 = SBGetIconLocationGroups_groups;
  if (!SBGetIconLocationGroups_groups)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = SBGetIconLocationGroups_groups;
    SBGetIconLocationGroups_groups = v1;

    v3 = SBGetIconLocationGroups_groups;
    v4 = [MEMORY[0x1E695DFA8] setWithObjects:{@"SBIconLocationRoot", @"SBIconLocationRootWithWidgets", 0}];
    [v3 setObject:v4 forKey:@"SBIconLocationGroupRoot"];

    v5 = SBGetIconLocationGroups_groups;
    v6 = [MEMORY[0x1E695DFA8] setWithObjects:{@"SBIconLocationDock", @"SBIconLocationFloatingDock", @"SBIconLocationFloatingDockUtilities", 0}];
    [v5 setObject:v6 forKey:@"SBIconLocationGroupDock"];

    v7 = SBGetIconLocationGroups_groups;
    v8 = [MEMORY[0x1E695DFA8] setWithObjects:{@"SBIconLocationFloatingDock", @"SBIconLocationFloatingDockUtilities", 0}];
    [v7 setObject:v8 forKey:@"SBIconLocationGroupFloatingDock"];

    v9 = SBGetIconLocationGroups_groups;
    v10 = [MEMORY[0x1E695DFA8] setWithObjects:{@"SBIconLocationAppLibrary", @"SBIconLocationAppLibraryOverlay", @"SBIconLocationAppLibraryCategoryPod", @"SBIconLocationAppLibraryCategoryPodRecents", @"SBIconLocationAppLibraryCategoryPodSuggestions", @"SBIconLocationAppLibraryCategoryPodAdditionalItems", @"SBIconLocationAppLibraryCategoryPodExpanded", @"SBIconLocationAppLibrarySearch", 0}];
    [v9 setObject:v10 forKey:@"SBIconLocationGroupAppLibrary"];

    v11 = SBGetIconLocationGroups_groups;
    v12 = [MEMORY[0x1E695DFA8] setWithObjects:{@"SBIconLocationTodayView", @"SBIconLocationTodayViewOverlay", 0}];
    [v11 setObject:v12 forKey:@"SBIconLocationGroupTodayView"];

    v13 = SBGetIconLocationGroups_groups;
    v14 = [MEMORY[0x1E695DFA8] setWithObjects:{@"SBIconLocationAddWidgetSheet", @"SBIconLocationWidgetConfiguration", @"SBIconLocationStackConfiguration", 0}];
    [v13 setObject:v14 forKey:@"SBIconLocationGroupWidgetConfiguration"];

    v15 = SBGetIconLocationGroups_groups;
    v16 = [MEMORY[0x1E695DFA8] setWithObjects:{@"SBIconLocationRoot", @"SBIconLocationRootWithWidgets", @"SBIconLocationDock", @"SBIconLocationFloatingDock", @"SBIconLocationFloatingDockUtilities", @"SBIconLocationFolder", @"SBIconLocationTodayView", 0}];
    [v15 setObject:v16 forKey:@"SBIconLocationGroupIconHierarchy"];

    v0 = SBGetIconLocationGroups_groups;
  }

  return v0;
}

id SBIconViewQueryingBestIconViewForIcon(void *a1, void *a2, void *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = SBIconViewQueryingIconViewForIconInLocation(v7, v8, *(*(&v21 + 1) + 8 * i), a4);
        if (v14)
        {
          v15 = v14;
          v17 = v9;
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = SBIconViewQueryingFirstIconViewForIcon(v7, v8, a4 | 0x10);
  if (!v15)
  {
    if ([v8 isApplicationIcon])
    {
      v16 = [v8 applicationBundleID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __SBIconViewQueryingBestIconViewForIcon_block_invoke;
      v19[3] = &unk_1E8089C20;
      v20 = v16;
      v17 = v16;
      v15 = SBIconViewQueryingFirstIconViewForIconPassingTest(v7, a4 | 0x10, v19);

LABEL_13:
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

id SBIconViewQueryingIconViewForIconInLocation(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__12;
  v30 = __Block_byref_object_dispose__12;
  v31 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __SBIconViewQueryingIconViewForIconInLocation_block_invoke;
  v20[3] = &unk_1E808D5C0;
  v24 = &v26;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v25 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SBIconViewQueryingIconViewForIconInLocation_block_invoke_2;
  v15[3] = &unk_1E808D5E8;
  v19 = &v26;
  v10 = v21;
  v16 = v10;
  v11 = v22;
  v17 = v11;
  v12 = v23;
  v18 = v12;
  SBIconViewQueryingOptionalMethodImplementation(v10, a4, sel_iconViewForIcon_location_options_, v20, v15);
  v13 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v13;
}

void SBIconViewQueryingOptionalMethodImplementation(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a1;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    if (((*(v9 + 2))(v9, v8) & 1) == 0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __SBIconViewQueryingOptionalMethodImplementation_block_invoke;
      v11[3] = &unk_1E808D610;
      v12 = v9;
      SBIconViewQueryingEnumerateIconViewQueryable(v8, a2, v11);
    }
  }

  else
  {
    v10[2](v10);
  }
}

BOOL __SBIconViewQueryingIconViewForIconInLocation_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iconViewForIcon:*(a1 + 40) location:*(a1 + 48) options:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

unint64_t sub_1BEB1FBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BEE4770C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1BEB1FF98()
{
  if ((*(v0 + OBJC_IVAR___SBHIconRepository_hasLoadedIcons) & 1) == 0)
  {
    v2 = v0;
    *(v0 + OBJC_IVAR___SBHIconRepository_hasLoadedIcons) = 1;
    v69 = OBJC_IVAR___SBHIconRepository_isLoadingIcons;
    *(v0 + OBJC_IVAR___SBHIconRepository_isLoadingIcons) = 1;
    v3 = [v0 applicationInfoProvider];
    v70 = v0;
    if (!v3)
    {
      goto LABEL_47;
    }

    v4 = [v3 applications];
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBDC7F40);
    v5 = sub_1BEE471AC();

    v74 = MEMORY[0x1E69E7CC0];
    if (v5 >> 62)
    {
      goto LABEL_43;
    }

    v73 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v71 = v2;
    v7 = 0;
    v68 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
LABEL_6:

      if (v68 >> 62)
      {
        v2 = v68;
        sub_1BEB20D28(0, &qword_1EBDBFFE0);

        v9 = sub_1BEE4765C();
        swift_bridgeObjectRelease_n();
        v8 = v9;
      }

      else
      {

        sub_1BEE4771C();
        sub_1BEB20D28(0, &qword_1EBDBFFE0);

        v8 = v68;
        v9 = v68;
      }

      v10 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
      if (v8 >> 62)
      {
        v25 = v8;
        v26 = sub_1BEE474CC();
        v8 = v25;
        v11 = v26;
        if (v26)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
LABEL_10:
          if (v11 < 1)
          {
            goto LABEL_92;
          }

          v12 = 0;
          v13 = v8;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x1BFB4EA90](v12);
            }

            else
            {
              v23 = *(v8 + 8 * v12 + 32);
            }

            v24 = v23;
            ++v12;
            _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v23);

            v8 = v13;
          }

          while (v11 != v12);
        }
      }

      v2 = v70;
LABEL_47:
      v27 = [v2 applicationInfoProvider];
      v1 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
      if (!v27)
      {
        goto LABEL_97;
      }

      v28 = v27;
      if (([v27 respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_97;
      }

      v29 = [v28 applicationPlaceholders];
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7580);
      v10 = sub_1BEE471AC();

      v74 = MEMORY[0x1E69E7CC0];
      if (v10 >> 62)
      {
        goto LABEL_93;
      }

      v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_51:
      v31 = v2;
      v32 = v31;
      if (v30)
      {
        v33 = 0;
        v2 = (v10 & 0xFFFFFFFFFFFFFF8);
        v72 = v31;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x1BFB4EA90](v33, v10);
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v33 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v34 = *(v10 + 8 * v33 + 32);
            swift_unknownObjectRetain();
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              v30 = sub_1BEE474CC();
              goto LABEL_51;
            }
          }

          v36 = [v34 applicationBundleIdentifier];
          v37 = sub_1BEE4708C();
          v1 = v38;

          v39 = v37 == 0xD000000000000015 && 0x80000001BEEA2690 == v1;
          if (v39 || (sub_1BEE4770C() & 1) != 0)
          {

            v40 = &unk_1EBDBFFC8;
          }

          else
          {
            if (v37 == 0xD000000000000013 && 0x80000001BEEA26B0 == v1)
            {
            }

            else
            {
              v43 = sub_1BEE4770C();

              if ((v43 & 1) == 0)
              {
                [swift_getObjCClassFromObject() applicationIconClass];
                swift_getObjCClassMetadata();
                v1 = sub_1BEB20D28(0, &unk_1EBDBFFD0);
                swift_dynamicCastMetatype();
                goto LABEL_63;
              }
            }

            v40 = &unk_1EBDBFEC0;
          }

          sub_1BEB20D28(0, v40);
LABEL_63:
          [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithApplicationPlaceholder_];
          v41 = swift_unknownObjectRelease();
          MEMORY[0x1BFB4E650](v41);
          if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v1 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BEE471BC();
          }

          sub_1BEE471DC();
          ++v33;
          if (v35 == v30)
          {
            v44 = v74;
            v2 = v70;
            v32 = v72;
            v1 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
            goto LABEL_80;
          }
        }
      }

      v44 = MEMORY[0x1E69E7CC0];
LABEL_80:

      if (v44 >> 62)
      {
        sub_1BEB20D28(0, &qword_1EBDBFFE0);

        v45 = sub_1BEE4765C();
        swift_bridgeObjectRelease_n();
        v44 = v45;
        if (v45 >> 62)
        {
          v46 = sub_1BEE474CC();
          if (v46)
          {
            goto LABEL_83;
          }

          goto LABEL_96;
        }
      }

      else
      {

        sub_1BEE4771C();
        sub_1BEB20D28(0, &qword_1EBDBFFE0);

        v45 = v44;
      }

      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_83:
        if (v46 < 1)
        {
          __break(1u);
          goto LABEL_132;
        }

        for (i = 0; i != v46; ++i)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x1BFB4EA90](i, v44);
          }

          else
          {
            v48 = *(v44 + 8 * i + 32);
          }

          v49 = v48;
          _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v48);
        }
      }

LABEL_96:

LABEL_97:
      v50 = [v2 applicationInfoProvider];
      if (v50)
      {
        v51 = v50;
        if ([v50 v1[129]])
        {
          v52 = [v51 webClips];
          swift_unknownObjectRelease();
          sub_1BEB20D28(0, &qword_1EBDBFE50);
          v53 = sub_1BEE471AC();

          v75 = MEMORY[0x1E69E7CC0];
          if (v53 >> 62)
          {
            goto LABEL_125;
          }

          for (j = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_1BEE474CC())
          {
            v2 = v2;
            if (!j)
            {
              break;
            }

            v55 = 0;
            while (1)
            {
              if ((v53 & 0xC000000000000001) != 0)
              {
                v56 = MEMORY[0x1BFB4EA90](v55, v53);
              }

              else
              {
                if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_124;
                }

                v56 = *(v53 + 8 * v55 + 32);
              }

              v57 = v56;
              v58 = v55 + 1;
              if (__OFADD__(v55, 1))
              {
                break;
              }

              v59 = j;
              ObjCClassFromObject = swift_getObjCClassFromObject();
              [ObjCClassFromObject bookmarkClass];
              swift_getObjCClassMetadata();
              sub_1BEB20D28(0, &qword_1EBDC73C8);
              swift_dynamicCastMetatype();
              v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWebClip_];
              [ObjCClassFromObject bookmarkIconClass];
              swift_getObjCClassMetadata();
              sub_1BEB20D28(0, &qword_1EBDC73D0);
              swift_dynamicCastMetatype();
              [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBookmark_];

              MEMORY[0x1BFB4E650]();
              if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1BEE471BC();
              }

              sub_1BEE471DC();
              ++v55;
              j = v59;
              if (v58 == v59)
              {
                v62 = v75;
                goto LABEL_114;
              }
            }

            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            ;
          }

          v62 = MEMORY[0x1E69E7CC0];
LABEL_114:

          if (v62 >> 62)
          {
            sub_1BEB20D28(0, &qword_1EBDBFFE0);

            v63 = sub_1BEE4765C();
            swift_bridgeObjectRelease_n();
            v62 = v63;
            if (v63 >> 62)
            {
              v64 = sub_1BEE474CC();
              if (v64)
              {
LABEL_117:
                if (v64 >= 1)
                {
                  for (k = 0; k != v64; ++k)
                  {
                    if ((v63 & 0xC000000000000001) != 0)
                    {
                      v66 = MEMORY[0x1BFB4EA90](k, v62);
                    }

                    else
                    {
                      v66 = *(v62 + 8 * k + 32);
                    }

                    v67 = v66;
                    _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v66);
                  }

                  goto LABEL_128;
                }

LABEL_132:
                __break(1u);
                return;
              }

LABEL_128:

              v2 = v70;
              goto LABEL_129;
            }
          }

          else
          {

            sub_1BEE4771C();
            sub_1BEB20D28(0, &qword_1EBDBFFE0);

            v63 = v62;
          }

          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v64)
          {
            goto LABEL_117;
          }

          goto LABEL_128;
        }

        swift_unknownObjectRelease();
      }

LABEL_129:
      *(v2 + v69) = 0;
      return;
    }

    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB4EA90](v7, v5);
        v2 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v7 >= *(v73 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v2 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v73 = v5 & 0xFFFFFFFFFFFFFF8;
          v6 = sub_1BEE474CC();
          goto LABEL_5;
        }
      }

      v17 = [v16 bundleIdentifier];
      v18 = sub_1BEE4708C();
      v20 = v19;

      v21 = v18 == 0xD000000000000015 && 0x80000001BEEA2690 == v20;
      if (v21 || (sub_1BEE4770C() & 1) != 0)
      {

        v14 = &unk_1EBDBFFC8;
      }

      else
      {
        if (v18 == 0xD000000000000013 && 0x80000001BEEA26B0 == v20)
        {
        }

        else
        {
          v22 = sub_1BEE4770C();

          if ((v22 & 1) == 0)
          {
            [swift_getObjCClassFromObject() applicationIconClass];
            swift_getObjCClassMetadata();
            sub_1BEB20D28(0, &unk_1EBDBFFD0);
            swift_dynamicCastMetatype();
            goto LABEL_14;
          }
        }

        v14 = &unk_1EBDBFEC0;
      }

      sub_1BEB20D28(0, v14);
LABEL_14:
      v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithApplication_];
      v15 = swift_unknownObjectRelease();
      ++v7;
      if (v1)
      {
        MEMORY[0x1BFB4E650](v15);
        if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BEE471BC();
        }

        sub_1BEE471DC();
        v68 = v74;
        v7 = v2;
        if (v6 == v2)
        {
          goto LABEL_6;
        }
      }

      else if (v6 == v7)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_1BEB20D28(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1BEB20F00(uint64_t a1, uint64_t a2)
{
  sub_1BEB1FF98();
  v5 = OBJC_IVAR___SBHIconRepository_storedIcons;
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

uint64_t sub_1BEB2135C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BEE4770C() & 1;
  }
}

void SBIconViewQueryingEnumerateIconViewQueryable(void *a1, uint64_t a2, void *a3)
{
  v6 = a1;
  v5 = a3;
  if (a2 & 0x10) != 0 && (objc_opt_respondsToSelector())
  {
    [v6 enumerateIconViewQueryableChildrenWithOptions:a2 usingBlock:v5];
  }
}

uint64_t __SBIconViewQueryingOptionalMethodImplementation_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t SBIconCoordinateGetGridCellIndex(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (SBIconCoordinateIsNotFound(a1, a2))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a1 + (a2 - 1) * a3 - 1;
  }
}

unint64_t SBHIconGridRangeUnion(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  if (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return a1;
    }

    else
    {
      v5 = a1 / a5;
      v6 = a1 % a5;
      if (v6 >= a3 % a5)
      {
        v6 = a3 % a5;
      }

      if (v5 >= a3 / a5)
      {
        v5 = a3 / a5;
      }

      return v6 + v5 * a5;
    }
  }

  return a3;
}

void sub_1BEB225C8()
{
  v1 = *(v0 + OBJC_IVAR___SBHIconLayer_observers);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B00);
  v4 = sub_1BEE471AC();

  if (v4 >> 62)
  {
    v5 = sub_1BEE474CC();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1BFB4EA90](i, v4);
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v7 respondsToSelector_])
        {
          [v7 iconLayerContentLayerDidChange_];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1BEB22794(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SBHIconLayer_iconContentType);
  *(v1 + OBJC_IVAR___SBHIconLayer_iconContentType) = a1;
  if (v2 == a1)
  {
    return;
  }

  v3 = *(v1 + OBJC_IVAR___SBHIconLayer_observers);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v4 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B00);
  v6 = sub_1BEE471AC();

  if (v6 >> 62)
  {
    v7 = sub_1BEE474CC();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_5:
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
          [v9 iconLayerContentTypeDidChange_];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

double SBHIconListLayoutCalculateHorizontalColumnBump(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = 0.0;
  if (a1)
  {
    v13 = a2 <= 1 ? 1 : a2;
    v14 = v13 - 1;
    v15 = a2;
    SBFFloatFloorForScale();
    v17 = a5 - (v16 * v14 + a3 * v15);
    if (v17 >= 0.0)
    {
      v18 = vcvtpd_s64_f64(v17 * a6);
      v19 = v18 / v14;
      v20 = v18 % v14;
      if (a2 >> 1 != a1 || (a2 & 1) != 0)
      {
        v20 = 0;
      }

      return SBHIconListLayoutCalculateHorizontalColumnBump(a1 - 1, a2, a3, a4, a5, a6) + (v20 + v19) / a6;
    }
  }

  return v6;
}

uint64_t SBVisibleColumnRangeGetVisibleColumnsForIconListIndex(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[2];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v4 >= v3)
  {
    v7 = a1[1];
    v8 = a1[3];
    v9 = v3 != v4 || v8 >= v7;
    v10 = !v9;
    if (v3 <= a2 && !v10 && v4 >= a2)
    {
      if (v3 == a2 && v4 == a2)
      {
        return v7;
      }

      else if (v3 == a2)
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t SBIconCoordinateMakeWithGridCellIndex(unint64_t a1, unsigned __int16 a2)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a1 % a2 + 1;
  }
}

NSString *SBHContentSizeCategoryClip(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5;
    v9 = UIContentSizeCategoryCompareToCategory(v8, v7);
    v10 = v7;
    if (v9 == NSOrderedDescending || (v11 = UIContentSizeCategoryCompareToCategory(v8, v6), v10 = v6, v11 == NSOrderedAscending))
    {
      v12 = v10;

      v8 = v12;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

id getPUIStylePickerHomeScreenConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIStylePickerHomeScreenConfigurationClass_softClass;
  v7 = getPUIStylePickerHomeScreenConfigurationClass_softClass;
  if (!getPUIStylePickerHomeScreenConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUIStylePickerHomeScreenConfigurationClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getPUIStylePickerHomeScreenConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEB249D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1BEB261C0(uint64_t a1)
{
  v3 = OBJC_IVAR___SBHIconLayer_observers;
  result = *(v1 + OBJC_IVAR___SBHIconLayer_observers);
  if (result || (v5 = [objc_opt_self() weakObjectsHashTable], v6 = *(v1 + v3), *(v1 + v3) = v5, v6, (result = *(v1 + v3)) != 0))
  {

    return [result addObject_];
  }

  return result;
}

void sub_1BEB26350(void *a1)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_1BEE4736C();
}

uint64_t SBHIconListLayoutShowsTooltipsOnHover(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 showsTooltipsOnHover];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SBHGetGraphicIconLayerWithImageAppearance(void *a1, void *a2, unint64_t a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69A8A00];
  v12 = a2;
  v13 = a1;
  v14 = [v11 alloc];
  v15 = [v14 initWithTypeIdentifier:v13 layerGroups:MEMORY[0x1E695E0F0]];

  v16 = SBHGetIconLayerWithImageAppearance(v15, v12, a3, a4, a5, a6);

  return v16;
}

void sub_1BEB27090(id a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR___SBHIconLayer__iconContentLayer;
  v5 = *&v1[OBJC_IVAR___SBHIconLayer__iconContentLayer];
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
  v19 = v3;
  v7 = sub_1BEE473CC();

  if ((v7 & 1) == 0)
  {
    v5 = *&v2[v4];
    a1 = v19;
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    v20 = a1;
    [v5 removeFromSuperlayer];
    v8 = *&v2[v4];
    *&v2[v4] = v3;
    v19 = v20;

    if (!v3)
    {
      [v2 setIconContentType_];
      goto LABEL_13;
    }

    v9 = v19;
LABEL_10:
    v19 = v9;
    [v2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v19 setBounds_];
    v22.origin.x = v11;
    v22.origin.y = v13;
    v22.size.width = v15;
    v22.size.height = v17;
    MidX = CGRectGetMidX(v22);
    v23.origin.x = v11;
    v23.origin.y = v13;
    v23.size.width = v15;
    v23.size.height = v17;
    [v19 setPosition_];
    [v2 contentsScale];
    [v19 setContentsScale_];
    [v2 addSublayer_];

LABEL_13:
    sub_1BEB225C8();
  }
}

id _SBClockIconGetCalendar()
{
  if (_SBClockIconInitialize___once != -1)
  {
    _SBClockIconGetCalendar_cold_1();
  }

  v1 = __calendar;

  return v1;
}

double SBHIconListLayoutIconAccessorySize(void *a1)
{
  v1 = a1;
  v2 = 26.0;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 iconAccessoryVisualConfiguration];
    [v3 size];
    v2 = v4;
  }

  return v2;
}

void sub_1BEB290BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _touchesContainNonIndirectTouch(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) type] != 1)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

id SBIconAccessoryCountedMap()
{
  if (SBIconAccessoryCountedMap_onceToken != -1)
  {
    SBIconAccessoryCountedMap_cold_1();
  }

  v1 = SBIconAccessoryCountedMap___accessoryCountedMap;

  return v1;
}

double SBHIconListLayoutIconAccessoryOffset(void *a1)
{
  v1 = a1;
  v2 = 11.0;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 iconAccessoryVisualConfiguration];
    [v3 offset];
    v2 = v4;
  }

  return v2;
}

double SBIconBadgeViewCalculateAccessoryCenter(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SBIconBadgeViewCalculateAccessoryCenter_block_invoke;
  v15[3] = &__block_descriptor_97_e5_d8__0l;
  v16 = a1;
  *&v15[4] = a6;
  *&v15[5] = a7;
  *&v15[6] = a8;
  *&v15[7] = a9;
  *&v15[8] = a2;
  *&v15[9] = a3;
  *&v15[10] = a4;
  *&v15[11] = a5;
  v13 = __SBIconBadgeViewCalculateAccessoryCenter_block_invoke(v15);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  return v13;
}

double __SBIconBadgeViewCalculateAccessoryCenter_block_invoke(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    return *(a1 + 32) * 0.5 - *(a1 + 48);
  }

  else
  {
    return *(a1 + 48) + CGRectGetMaxX(*(a1 + 64)) + *(a1 + 32) * -0.5;
  }
}

uint64_t sub_1BEB29E6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 iconRepository];
  v7 = sub_1BEE4705C();
  v8 = [v6 applicationIconForBundleIdentifier_];

  if (v8)
  {
    return v8;
  }

  v9 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
  swift_beginAccess();
  v10 = *&v3[v9];
  if (*(v10 + 16) && (v11 = sub_1BEB1DAFC(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    return 0;
  }

  result = sub_1BEE474CC();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1BFB4EA90](0, v13);
    goto LABEL_11;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_11:
    v8 = v15;

    return v8;
  }

  __break(1u);
  return result;
}

id sub_1BEB29FEC(void *a1)
{
  v1 = [a1 iconFor_];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {

      v1 = 0;
    }
  }

  return v1;
}

id sub_1BEB2A2A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v5 = sub_1BEE4724C();

  return v5;
}

uint64_t sub_1BEB2A350()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BEE474CC())
  {
    sub_1BEDF9090(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v12 = v1;
  v2 = [v0 iconRepository];
  v3 = [v2 icons];

  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v4 = sub_1BEE4726C();

  sub_1BEB2A840(v4, &qword_1EBDBFFE0, off_1E80877A0, &qword_1EBDBFF70, sub_1BEB2B000);
  swift_beginAccess();

  sub_1BEB2AA3C(v5);
  sub_1BEB2A840(v6, &qword_1EBDBFFE0, off_1E80877A0, &qword_1EBDBFF70, sub_1BEB2B000);
  swift_beginAccess();

  sub_1BEB2AAF0(v7);
  sub_1BEE0A298(v8);
  v10 = v9;

  sub_1BEB2A840(v10, &qword_1EBDBFFE0, off_1E80877A0, &qword_1EBDBFF70, sub_1BEB2B000);
  return v12;
}

void sub_1BEB2A6A4(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = *(a1 + 16);
  v10 = sub_1BEB20D28(0, a2);
  v11 = sub_1BEB2A7E0(a4, a2);
  v12 = 0;
  v19[1] = MEMORY[0x1BFB4E750](v9, v10, v11);
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    a5(v19, *(*(a1 + 56) + ((v17 << 9) | (8 * v18))));
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 64 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1BEB2A7E0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BEB20D28(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BEB2A840(unint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1BEE4748C();
    sub_1BEB20D28(0, a2);
    sub_1BEB2A7E0(a4, a2);
    sub_1BEE472AC();
    v6 = v22[1];
    v9 = v22[2];
    v10 = v22[3];
    v11 = v22[4];
    v12 = v22[5];
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(a1 + 32);
    v9 = (a1 + 56);
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = (v15 & *(a1 + 56));
  }

  v16 = (v10 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    if (!*(*(v6 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18))))))
    {
LABEL_18:
      sub_1BEB2AAE8();
      return;
    }

    while (1)
    {
      a5(v22);

      v11 = v19;
      v12 = v20;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BEE474FC())
      {
        sub_1BEB20D28(0, a2);
        swift_dynamicCast();
        v19 = v11;
        v20 = v12;
        if (v22[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = v9[v19];
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

double SBHIconListLayoutFolderIconGridCellSize(void *a1)
{
  v1 = a1;
  v2 = 12.0;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 folderIconVisualConfiguration];
    [v3 gridCellSize];
    v2 = v4;
  }

  return v2;
}

uint64_t sub_1BEB2AB48(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_1BEE474DC();

    if (v16)
    {

      sub_1BEB20D28(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_1BEE474CC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_1BEDF67D0(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_1BEB2B240(v27 + 1, a5);
        }

        v28 = v15;
        sub_1BEDF6E7C(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_1BEB20D28(0, a3);
    v18 = sub_1BEE473BC();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_1BEE473CC();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_1BEB2ADF0(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

void sub_1BEB2ADF0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1BEB2B240(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1BEDF743C(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1BEB2B024(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_1BEE473BC();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_1BEB20D28(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_1BEE473CC();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BEE4774C();
  __break(1u);
}

double SBHIconListLayoutFolderIconGridCellSpacing(void *a1)
{
  v1 = a1;
  v2 = 2.0;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 folderIconVisualConfiguration];
    [v3 gridCellSpacing];
    v2 = v4;
  }

  return v2;
}

uint64_t sub_1BEB2B024(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BEE4756C();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1BEE473BC();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1BEB2B240(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BEE4756C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_1BEE473BC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

void sub_1BEB2C624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBLogProactiveAppLibrary()
{
  if (SBLogProactiveAppLibrary_onceToken != -1)
  {
    SBLogProactiveAppLibrary_cold_1();
  }

  v1 = SBLogProactiveAppLibrary___logObj;

  return v1;
}

uint64_t SBHIconListLayoutShowsLabels(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 showsLabels];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

id NSDictionaryFromSBHLibraryCategoryMapRefreshOptions(unint64_t a1)
{
  v1 = a1;
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = (a1 >> 2) & 1;
  v3 = (a1 >> 3) & 1;
  v10[0] = @"fetch proactive categories";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:(a1 >> 1) & 1];
  v11[0] = v4;
  v10[1] = @"fetch categories";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v11[1] = v5;
  v10[2] = @"startFromScratch";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v1 & 1];
  v11[2] = v6;
  v10[3] = @"refreshNow";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

void sub_1BEB2DBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a53);
  objc_destroyWeak((v53 - 136));
  objc_destroyWeak((v53 - 112));
  _Unwind_Resume(a1);
}

id __generateCacheKeyForMetricsAndLegibilityDescriptor(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v7)
  {
    __generateCacheKeyForMetricsAndLegibilityDescriptor_cold_1();
  }

  v10 = v9;
  v11 = objc_autoreleasePoolPush();
  v12 = [v10 localeIdentifier];
  v13 = [v7 hash];
  if (a4 == 1)
  {
    v14 = [v8 background];
    v15 = [v14 cacheKey];

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &stru_1F3D472A8;
    }
  }

  else
  {
    v16 = &stru_1F3D472A8;
  }

  v17 = [v7 attributedText];

  if (v17)
  {
    v18 = [v7 attributedText];
    v19 = [v18 string];
  }

  else
  {
    v19 = [v7 drawingText];
  }

  v20 = [(__CFString *)v16 hash];
  v21 = __versionSuffix();
  v22 = [v19 stringByAppendingFormat:@"@@%@_%lu_%lu_%@@@", v12, v13, v20, v21];

  objc_autoreleasePoolPop(v11);

  return v22;
}

uint64_t sub_1BEB3055C(void *a1)
{
  v11 = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BEB320C0;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_516;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v1 enumerateAllIconsWithOptions:1 usingBlock:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

uint64_t sub_1BEB306C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BEB30868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE469CC();
  v12 = sub_1BEE4696C();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_273;
  v14 = _Block_copy(aBlock);

  [v4 enumerateAllIconsWithBaseIndexPath:v12 options:a1 usingBlock:v14];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id __versionSuffix()
{
  if (__versionSuffix_onceToken != -1)
  {
    __versionSuffix_cold_1();
  }

  v1 = __versionSuffix_versionSuffix;

  return v1;
}

uint64_t sub_1BEB3102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BEE469DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  (*(v10 + 32))(v13 + v12, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a3;
  v14[1] = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BEDFB4E4;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_256;
  v16 = _Block_copy(aBlock);
  v17 = v4;

  [v17 enumerateListsWithOptions:a2 usingBlock:v16];
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEB31278()
{
  v1 = sub_1BEE469DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

void SBHModifyImageDescriptorWithTraitCollection(void *a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a1;
  v7 = [v5 sbh_iconImageAppearanceFromTraitCollection:a2];
  SBHModifyImageDescriptorWithImageAppearance(v6, v7, a3);
}

uint64_t sub_1BEB31510(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

id sub_1BEB31568(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = a3;
  v11 = a1;
  a4(v10);

  v12 = sub_1BEE469DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1BEE4696C();
    (*(v13 + 8))(v9, v12);
    v15 = v16;
  }

  return v15;
}

uint64_t sub_1BEB316B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BEE469DC();
  v21 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = [a1 folder];
  if (v14)
  {
    v15 = v14;
    sub_1BEB20D28(0, &qword_1EBDBFE90);
    if (sub_1BEE473CC())
    {
      [v2 indexOfList_];
      sub_1BEE4699C();
    }

    else
    {
      v18 = [v2 indexPathForFolder_];
      if (!v18)
      {

        (*(v21 + 56))(v13, 1, 1, v5);
        return sub_1BEB31BF4(v13, a2);
      }

      v19 = v18;
      sub_1BEE4697C();

      (*(v21 + 32))(v10, v8, v5);
      [v15 indexOfList_];
      sub_1BEE469BC();

      (*(v21 + 8))(v10, v5);
    }

    (*(v21 + 56))(v13, 0, 1, v5);
    return sub_1BEB31BF4(v13, a2);
  }

  v16 = *(v21 + 56);

  return v16(a2, 1, 1, v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1BEB31AEC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_1BEE474CC();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB4EA90](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_1BEB20D28(0, a3);
    v10 = sub_1BEE473CC();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1BEB31BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BEB31DD8(uint64_t a1, void *a2)
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1BEE4697C();
  v9 = a2;
  v8();

  return (*(v5 + 8))(v7, v4);
}

void sub_1BEB31FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = sub_1BEE4696C();
  (*(v6 + 16))(v6, a1, v7, a3);
}

void sub_1BEB3204C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BEE4696C();
  (*(a4 + 16))(a4, a1, v7, a3);
}

uint64_t sub_1BEB320C0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 24);
  sub_1BEB20D28(0, &qword_1EBDBFE90);
  result = sub_1BEE473CC();
  if (result)
  {
    *v5 = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1BEB326F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1BEB32C5C(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = a1;
  a3();

  sub_1BEB20D28(0, a4);
  sub_1BEB2A7E0(a6, a4);
  v10 = sub_1BEE4724C();

  return v10;
}

uint64_t sub_1BEB32D04()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BEE474CC())
  {
    sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC79E0, &unk_1BEE8B078, &qword_1EBDBFFE0);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v9 = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1BEB32F70;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_556;
  v4 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void sub_1BEB32ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t *a7, uint64_t a8)
{
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    sub_1BEB2AB48(&v16, v14, a6, a5, a7, a8);
  }
}

uint64_t sub_1BEB3308C()
{
  v1 = [v0 rootFolder];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 supportsBadging];

    if (!v3)
    {
      return 0;
    }
  }

  else
  {
  }

  v25 = 0;
  v24 = 0;
  v23 = 0;
  v5 = [v0 effectiveBadgeBehaviorProvider];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &v25 + 1;
  v6[4] = &v24;
  v6[5] = &v25;
  v6[6] = &v23;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BEDFB8C0;
  *(v7 + 24) = v6;
  v21 = sub_1BEDFBF74;
  v22 = v7;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1BEB31DD8;
  v20 = &block_descriptor_470;
  v8 = _Block_copy(&v17);
  swift_unknownObjectRetain();

  [v0 enumerateAllIconsUsingBlock_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (HIBYTE(v25) == 1)
  {

    swift_unknownObjectRelease();
    return 33;
  }

  else
  {
    v10 = v23;
    if (v23 <= 0)
    {
      if (v25 == 1)
      {

        swift_unknownObjectRelease();
        if (v10)
        {
          return 0;
        }

        else
        {
          return 43;
        }
      }

      else
      {

        swift_unknownObjectRelease();
        return 0;
      }
    }

    else
    {
      v11 = [objc_opt_self() sbf_cachedDecimalNumberFormatter];
      v12 = sub_1BEE472BC();
      v13 = [v11 stringFromNumber_];

      if (v13)
      {
        v14 = sub_1BEE4708C();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      if (v25 == 1)
      {
        v17 = v14;
        v18 = v16;

        MEMORY[0x1BFB4E5A0](43, 0xE100000000000000);

        swift_unknownObjectRelease();
        return v17;
      }

      else
      {

        swift_unknownObjectRelease();
        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1BEB333E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1BEB334F4()
{
  result = [v0 treeParent];
  if (result)
  {
    v2 = result;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v3 = [v2 treeParent];
      swift_unknownObjectRelease();
      v2 = v3;
      if (!v3)
      {
        return 0;
      }
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t SBHIsSpotlightFloatingWindowEnabled()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSPUIDefaultsClass_softClass;
  v7 = getSPUIDefaultsClass_softClass;
  if (!getSPUIDefaultsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSPUIDefaultsClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getSPUIDefaultsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  return [v0 enableFloatingWindow];
}

void sub_1BEB33D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBHIconListLayoutListGridSize(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 numberOfColumnsForOrientation:a2];
  LOWORD(a2) = [v3 numberOfRowsForOrientation:a2];

  return v4 | (a2 << 16);
}

void sub_1BEB34B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SBHIconListLayoutListIconSpacingWithDefault(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v5 iconSpacingForOrientation:a2];
    a3 = v6;
  }

  return a3;
}

CGFloat SBHIconListLayoutListIconSpacingForListSize(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  v8 = SBHIconListLayoutListGridSize(v7, a2);
  [v7 layoutInsetsForOrientation:a2];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v7 iconImageInfo];
  v18 = v17;

  return SBHCalculateIconSpacing(v8, a3, a4, v10, v12, v14, v16, v18);
}

CGFloat SBHCalculateIconSpacing(unsigned __int16 a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a5 + 0.0;
  v9 = a4 + 0.0;
  v10 = a2 - (a5 + a7);
  v11 = a3 - (a4 + a6);
  v15.origin.x = a5 + 0.0;
  v15.origin.y = a4 + 0.0;
  v15.size.width = v10;
  v15.size.height = v11;
  v12 = a1;
  v13 = CGRectGetWidth(v15) - a1 * a8;
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  CGRectGetHeight(v16);
  return v13 / (v12 - 1);
}

double SBHDirectionalEdgeInsetsByClearingEdges(char a1)
{
  if (a1)
  {
    return 0.0;
  }

  return result;
}

id SBLogCommon()
{
  if (SBLogCommon_onceToken != -1)
  {
    SBLogCommon_cold_1();
  }

  v1 = SBLogCommon___logObj;

  return v1;
}

double SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v9 = 50.0;
    goto LABEL_7;
  }

  if (v6 && ![v6 isEqualToString:@"SBHIconGridSizeClassDefault"])
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 iconImageInfoForGridSizeClass:v7 orientation:a2];
      goto LABEL_5;
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 iconImageInfoForGridSizeClass:v7];
      goto LABEL_5;
    }
  }

  [v5 iconImageInfo];
LABEL_5:
  v9 = v8;
LABEL_7:

  return v9;
}

uint64_t sub_1BEB368E8()
{
  v1 = *&v0[OBJC_IVAR___SBRootFolder__dock];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___SBRootFolder__dock];
LABEL_11:
    v8 = v1;
    return v2;
  }

  v3 = [v0 iconGridSizeClassSizes];
  v4 = [v0 delegate];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  if (([v4 respondsToSelector_] & 1) == 0)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v6 = 4;
    goto LABEL_10;
  }

  v6 = [v5 maxIconCountForDockForRootFolder_];
  result = swift_unknownObjectRelease();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!(v6 >> 16))
    {
LABEL_10:
      v2 = [objc_allocWithZone(SBIconListModel) initWithFolder:v0 gridSize:v6 | 0x10000 gridSizeClassSizes:v3];
      [v0 _setDock_];

      v1 = 0;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEB36A44()
{
  v1 = *&v0[OBJC_IVAR___SBRootFolder__todayList];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___SBRootFolder__todayList];
LABEL_11:
    v8 = v1;
    return v2;
  }

  v3 = [v0 iconGridSizeClassSizes];
  v4 = [v0 delegate];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  if (([v4 respondsToSelector_] & 1) == 0)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v6 = 4;
    goto LABEL_10;
  }

  v6 = [v5 columnCountForTodayListForRootFolder_];
  result = swift_unknownObjectRelease();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!(v6 >> 16))
    {
LABEL_10:
      v2 = [objc_allocWithZone(SBIconListModel) initWithFolder:v0 gridSize:v6 | 0xFFFF0000 gridSizeClassSizes:v3];
      [v0 _setTodayList_];

      v1 = 0;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEB36E2C()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB4EA90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 isHidden];

      ++v4;
      if (v8)
      {
        v9 = v7 == i;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        i = v8 ^ 1;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return i;
}

uint64_t sub_1BEB37078()
{
  v1 = *&v0[OBJC_IVAR___SBRootFolder__dockUtilities];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___SBRootFolder__dockUtilities];
LABEL_11:
    v8 = v1;
    return v2;
  }

  v3 = [v0 iconGridSizeClassSizes];
  v4 = [v0 delegate];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  if (([v4 respondsToSelector_] & 1) == 0)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v6 = 3;
    goto LABEL_10;
  }

  v6 = [v5 maxIconCountForDockUtilitiesForRootFolder_];
  result = swift_unknownObjectRelease();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!(v6 >> 16))
    {
LABEL_10:
      v2 = [objc_allocWithZone(SBIconListModel) initWithFolder:v0 gridSize:v6 | 0x10000 gridSizeClassSizes:v3];
      [v0 _setDockUtilities_];

      v1 = 0;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_4(os_unfair_lock_s *a1)
{
  v2 = a1 + 12;

  os_unfair_lock_lock(v2);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

double SBHEdgeInsetsForTransformingRectIntoRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v19 = MinY - CGRectGetMinY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMaxY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxX(v27);
  return v19;
}

uint64_t SBHIconGridRangeIsEmpty(uint64_t a1, int a2)
{
  v2 = a2 == 0;
  if ((a2 & 0xFFFF0000) == 0)
  {
    v2 = 1;
  }

  return a1 == 0x7FFFFFFFFFFFFFFFLL || v2;
}

void sub_1BEB38214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BEB384A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SBHIconListLayoutIconSpacingAxisMatchingBehavior(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 iconSpacingAxisMatchingBehavior];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1BEB38740()
{
  result = qword_1EBDBFDE8;
  if (!qword_1EBDBFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDBFDE8);
  }

  return result;
}

uint64_t sub_1BEB38794@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BEE01050();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

BOOL SBHIconGridRangeContainsCellIndex(unint64_t a1, int a2, unint64_t a3, unsigned __int16 a4)
{
  if (!HIWORD(a2))
  {
    return 0;
  }

  if (a1 + a2 > a3 && a1 <= a3)
  {
    return 1;
  }

  v5 = a1 + a4;
  v6 = 1;
  do
  {
    v7 = v6;
    if (HIWORD(a2) == v6)
    {
      break;
    }

    v8 = v5;
    v9 = a2 + v5;
    ++v6;
    v5 += a4;
  }

  while (v9 <= a3 || v8 > a3);
  return v7 < HIWORD(a2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_1BEB38BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEB39764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BEB3AB10()
{
  v1 = v0;
  v2 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + v2);
    *(v0 + v2) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC84B0);
    sub_1BEE4763C();
    *(v0 + v2) = v6;
  }

  swift_endAccess();
  v3 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
  swift_beginAccess();
  *(v1 + v3) = MEMORY[0x1E69E7CD0];

  v5 = v1 + OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex;
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_1BEB3ACC8(uint64_t a1)
{
  v3 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  *(v1 + v5) = v4;

  v6 = *(a1 + OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8);
  v7 = v1 + OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex;
  *v7 = *(a1 + OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex);
  *(v7 + 8) = v6;
  v8 = *(a1 + OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex + 8);
  v9 = v1 + OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex;
  *v9 = *(a1 + OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex);
  *(v9 + 8) = v8;
  v10 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
  swift_beginAccess();
  v11 = *(a1 + v10);
  v12 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
  swift_beginAccess();
  *(v1 + v12) = v11;
}

id SBLogWidgets()
{
  if (SBLogWidgets_onceToken != -1)
  {
    SBLogWidgets_cold_1();
  }

  v1 = SBLogWidgets___logObj;

  return v1;
}

uint64_t SBHScreenTypeForCurrentDevice()
{
  if (SBHScreenTypeForCurrentDevice_onceToken != -1)
  {
    SBHScreenTypeForCurrentDevice_cold_1();
  }

  return SBHScreenTypeForCurrentDevice_screenType;
}

uint64_t SBHDefaultIconListGridSize(uint64_t a1, char a2, uint64_t a3, int a4)
{
  memset(v14, 0, sizeof(v14));
  getRootMetrics(a1, a2, v14, 0, 0);
  v6 = a3 - 3;
  v7 = 72;
  if (!a4)
  {
    v7 = 0;
  }

  v8 = 2;
  if (a4)
  {
    v8 = 74;
  }

  v9 = 3;
  if (a4)
  {
    v9 = 75;
  }

  v10 = 73;
  if (!a4)
  {
    v10 = 1;
  }

  v11 = v6 >= 2;
  if (v6 >= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (!v11)
  {
    v7 = v8;
  }

  return *(v14 + v7) | (*(v14 + v12) << 16);
}

uint64_t _SBHDefaultDockMetricsWithHorizontalListInset@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = SBHGetScreenSpecification(a1, v15);
  if (a1 - 3 >= 0x1C)
  {
    if (a1 - 100 >= 0x13)
    {
      if (a1 <= 2)
      {
        *a3 = xmmword_1BEE87EE0;
        *(a3 + 16) = 0x4010000000000000;
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 0x4010000000000000;
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        *(a3 + 72) = 0;
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v13 = *MEMORY[0x1E69DDCE0];
      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      *(a3 + 16) = *MEMORY[0x1E69DDCE0];
      *(a3 + 32) = v14;
      *(a3 + 48) = v13;
      *(a3 + 64) = v14;
    }
  }

  else
  {
    v7 = SBHDefaultIconSizeBucket(a1, a2);
    SBHDefaultIconImageSizeForIconSizeBucket(v7, a1, a2);
    v8 = _SBHDefaultDockPlatterMetrics(a1, a2);
    v10 = v9;
    _SBHDefaultDockAdditionalIconInset(a1, a2);
    SBHDisplayCornerRadiusForScreenType(a1);
    _SBHDefaultDockCornerRadiusAdjustment(a1, a2);
    UIRoundToScale();
    *a3 = v11;
    result = UIRoundToScale();
    *(a3 + 8) = v12;
    *(a3 + 16) = 0;
    *(a3 + 24) = v8;
    *(a3 + 32) = v10;
    *(a3 + 40) = v8;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = v10;
    *(a3 + 72) = 0;
  }

  return result;
}

void SBHEnumerateIconGridSizeClasses(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  [v2 enumerateGridSizeClassesUsingBlock:v1];
}

uint64_t SBHDefaultIconSizeBucket(uint64_t a1, char a2)
{
  result = 0;
  switch(a1)
  {
    case 0:
    case 4:
    case 10:
    case 12:
    case 16:
    case 18:
    case 22:
    case 26:
      result = 56;
      break;
    case 1:
    case 8:
      result = 60;
      break;
    case 2:
    case 3:
    case 6:
    case 7:
    case 9:
    case 11:
    case 14:
    case 15:
    case 17:
    case 20:
    case 21:
    case 24:
    case 25:
    case 28:
      result = 64;
      break;
    case 5:
    case 13:
    case 19:
    case 23:
    case 27:
    case 29:
    case 30:
      result = 68;
      break;
    case 100:
    case 101:
    case 102:
    case 103:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 112:
    case 114:
    case 115:
    case 117:
      result = a2 & 8 | 0x44;
      break;
    case 104:
    case 111:
    case 113:
    case 116:
    case 118:
      if ((a2 & 8) != 0)
      {
        result = 83;
      }

      else
      {
        result = 68;
      }

      break;
    default:
      return result;
  }

  return result;
}

double SBHDefaultIconImageSize(unint64_t a1, char a2)
{
  v4 = SBHDefaultIconSizeBucket(a1, a2);

  return SBHDefaultIconImageSizeForIconSizeBucket(v4, a1, a2);
}

uint64_t SBHGetDefaultIconListLayoutMetrics(unint64_t a1, uint64_t a2, void *a3)
{
  v32 = 0;
  SBHGetScreenSpecification(a1, v31);
  getRootMetrics(a1, a2, a3, &v32 + 1, &v32);
  if (SBHScreenTypeIsPad(a1))
  {
    v6 = _SBHDefaultIconGridSizeClassIconImageInfos(a1, a2);
    [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];

    SBHDefaultIconImageSize(a1, a2 & 0xE7);
    SBHDefaultIconImageSize(a1, a2 | 8);
    if (v32 == 1)
    {
      SBFFloatCeilForScale();
      UIEdgeInsetsSubtract();
      a3[1] = v7;
      a3[2] = v8;
      a3[3] = v9;
      a3[4] = v10;
    }

    if (HIBYTE(v32) == 1)
    {
      SBFFloatCeilForScale();
      UIEdgeInsetsSubtract();
      a3[1] = v11;
      a3[2] = v12;
      a3[3] = v13;
      a3[4] = v14;
      UIEdgeInsetsSubtract();
      a3[5] = v15;
      a3[6] = v16;
      a3[7] = v17;
      a3[8] = v18;
      UIEdgeInsetsSubtract();
      a3[10] = v19;
      a3[11] = v20;
      a3[12] = v21;
      a3[13] = v22;
      UIEdgeInsetsSubtract();
      a3[14] = v23;
      a3[15] = v24;
      a3[16] = v25;
      a3[17] = v26;
    }
  }

  result = SBHScreenTypeIsPhone(a1);
  if (result)
  {
    SBHDefaultIconListPhoneIconSpacing(a1, a2, 1, 0);
    SBHDefaultIconImageSize(a1, a2);
    SBHGetScreenSpecification(a1, v30);
    SBHCalculateHorizontalInsetWithDynamicMargins(v30[0], v30[1]);
    a3[13] = v28;
    a3[11] = v28;
    a3[4] = v28;
    a3[2] = v28;
    result = UIRoundToScale();
    a3[12] = v29;
    a3[3] = v29;
  }

  return result;
}

double SBHDefaultIconListTopInset(uint64_t a1, char a2, uint64_t a3, int a4)
{
  memset(v10, 0, sizeof(v10));
  getRootMetrics(a1, a2, v10, 0, 0);
  v6 = 40;
  if (a4)
  {
    v6 = 112;
  }

  v7 = 8;
  if (a4)
  {
    v7 = 80;
  }

  if ((a3 - 3) >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return *(v10 + v8);
}

double SBHDefaultWidgetOvershootForOrientation(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0.0;
  if ((a2 - 5) <= 0xFFFFFFFFFFFFFFFDLL && (a3 & 0x10) == 0 && SBHScreenTypeIsPhone(a1))
  {
    v8 = SBHDefaultIconSizeBucket(a1, a3);
    SBHDefaultIconImageSizeForIconSizeBucket(v8, a1, a3);
    v10 = v9;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    SBHGetScreenSpecification(a1, v23);
    v11 = *(v23 + 1);
    v12 = *v23;
    UIRoundToScale();
    v14 = v13 + v13;
    v15 = SBHDefaultIconListGridSize(a1, a3, a2, 1);
    SBHDefaultSmallIconSizeWithNumberOfColumnsAndWidgetOvershoot(v15, a1, a3);
    SBHDefaultIconListPhoneIconSpacingWithGridSizeAndSmallIconSize(v15, a1, a3);
    v17 = v16 * (HIWORD(v15) - 1) + v10 * HIWORD(v15);
    v18 = SBHDefaultIconListTopInset(a1, a3, a2, 1);
    SBHCalculateHorizontalInsetWithDynamicMargins(v12, v11);
    memset(v22, 0, sizeof(v22));
    _SBHDefaultDockMetricsWithHorizontalListInset(a1, a3, v22);
    v19 = v17 / (v11 - v18 - *v22);
    v3 = 0.0;
    if (v19 < 0.95)
    {
      if (v19 >= 0.9)
      {
        UIRoundToScale();
        return v20 + v20;
      }

      else
      {
        return v14;
      }
    }
  }

  return v3;
}

SBHMutableIconGridSizeClassSizeMap *SBHDefaultGridSizeClassSizes(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SBHMutableIconGridSizeClassSizeMap);
  [(SBHMutableIconGridSizeClassSizeMap *)v4 setGridSize:65537 forGridSizeClass:@"SBHIconGridSizeClassDefault"];
  if (!SBHScreenTypeIsPad(a1) || ([v3 isEqualToString:@"SBIconLocationAppLibrary"] & 1) == 0)
  {
    v5 = 131074;
    if (SBHScreenTypeIsPad(a1))
    {
      [(SBHMutableIconGridSizeClassSizeMap *)v4 setGridSize:65537 forGridSizeClass:@"SBHIconGridSizeClassSmall"];
      [(SBHMutableIconGridSizeClassSizeMap *)v4 setGridSize:65538 forGridSizeClass:@"SBHIconGridSizeClassMedium"];
      v6 = 131076;
      v7 = 196610;
      v8 = SBHIconGridSizeClassExtraLarge;
      v9 = SBHIconGridSizeClassNewsLargeTall;
      v10 = SBHIconGridSizeClassLarge;
    }

    else
    {
      v7 = 262148;
      [(SBHMutableIconGridSizeClassSizeMap *)v4 setGridSize:131074 forGridSizeClass:@"SBHIconGridSizeClassSmall"];
      v5 = 131076;
      v6 = 393220;
      v8 = SBHIconGridSizeClassNewsLargeTall;
      v9 = SBHIconGridSizeClassLarge;
      v10 = SBHIconGridSizeClassMedium;
    }

    [(SBHMutableIconGridSizeClassSizeMap *)v4 setGridSize:v5 forGridSizeClass:*v10];
    [(SBHMutableIconGridSizeClassSizeMap *)v4 setGridSize:v7 forGridSizeClass:*v9];
    [(SBHMutableIconGridSizeClassSizeMap *)v4 setGridSize:v6 forGridSizeClass:*v8];
  }

  return v4;
}

id _SBHDefaultIconGridSizeClassEditingAnimationStrengths(void *a1, uint64_t a2)
{
  v3 = SBHDefaultGridSizeClassSizes(a2, a1);
  IsPad = SBHScreenTypeIsPad(a2);
  v5 = IsPad;
  if (IsPad)
  {
    v6 = +[SBHIconGridSizeClassDomain builtInDomain];
    v7 = [v6 allGridSizeClasses];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___SBHDefaultIconGridSizeClassEditingAnimationStrengths_block_invoke;
  v15[3] = &unk_1E808F9D8;
  v19 = v5;
  v16 = v3;
  v17 = v7;
  v9 = v8;
  v18 = v9;
  v10 = v7;
  v11 = v3;
  SBHEnumerateIconGridSizeClasses(v15);
  v12 = v18;
  v13 = v9;

  return v9;
}

SBHMutableIconGridSizeClassIconImageInfoMap *_SBHDefaultIconGridSizeClassIconImageInfos(unint64_t a1, uint64_t a2)
{
  v4 = SBHDefaultIconSizeBucket(a1, a2);
  v5 = SBHDefaultIconImageSizeForIconSizeBucket(v4, a1, a2);
  v7 = v6;
  *&v14 = 0;
  v12 = 0u;
  v13 = 0u;
  SBHGetScreenSpecification(a1, &v12);
  v8 = *&v13;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _SBHDefaultNonDefaultIconSizes(&v12, a1, a2);
  v9 = objc_alloc_init(SBHMutableIconGridSizeClassIconImageInfoMap);
  [(SBHMutableIconGridSizeClassIconImageInfoMap *)v9 setIconImageInfo:@"SBHIconGridSizeClassDefault" forGridSizeClass:v5, v7, v8, v5 * 0.26];
  v10 = v17;
  [(SBHMutableIconGridSizeClassIconImageInfoMap *)v9 setIconImageInfo:@"SBHIconGridSizeClassSmall" forGridSizeClass:v12, v17];
  [(SBHMutableIconGridSizeClassIconImageInfoMap *)v9 setIconImageInfo:@"SBHIconGridSizeClassMedium" forGridSizeClass:v13, v10];
  [(SBHMutableIconGridSizeClassIconImageInfoMap *)v9 setIconImageInfo:@"SBHIconGridSizeClassLarge" forGridSizeClass:v14, v10];
  [(SBHMutableIconGridSizeClassIconImageInfoMap *)v9 setIconImageInfo:@"SBHIconGridSizeClassExtraLarge" forGridSizeClass:v15, v10];
  [(SBHMutableIconGridSizeClassIconImageInfoMap *)v9 setIconImageInfo:@"SBHIconGridSizeClassNewsLargeTall" forGridSizeClass:v16, v10];

  return v9;
}

void SBHDefaultSmallIconSizeWithNumberOfColumnsAndWidgetOvershoot(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (SBHScreenTypeIsPhone(a2))
  {
    *&v16 = 0;
    v14 = 0u;
    v15 = 0u;
    SBHGetScreenSpecification(a2, &v14);
    v7 = *(&v14 + 1);
    v6 = *&v14;
    v8 = *&v15;
    v9 = SBHDefaultIconSizeBucket(a2, a3);
    v10 = SBHDefaultIconImageSizeForIconSizeBucket(v9, a2, a3);
    SBHCalculateHorizontalInsetWithDynamicMargins(v6, v7);
    v12 = v11;
    SBHCalculateHorizontalIconSpacingWithHorizontalBump();
    SBHIconListLayoutCalculateHorizontalColumnBump(1, a1, v10, v13, v6 - v12 - v12, v8);
    UIRoundToScale();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _SBHDefaultNonDefaultIconSizes(a2, a3, &v14);
  }
}

uint64_t SBHDefaultSmallIconSizeWithNumberOfColumns(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SBHDefaultWidgetOvershootForOrientation(a2, 1);

  return SBHDefaultSmallIconSizeWithNumberOfColumnsAndWidgetOvershoot(a1, a2, a3);
}

uint64_t SBHDefaultIconListPhoneIconSpacingWithGridSizeAndSmallIconSize(uint64_t a1, unint64_t a2, char a3)
{
  SBHDefaultIconImageSize(a2, a3);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  SBHGetScreenSpecification(a2, v5);
  return SBHCalculateHorizontalIconSpacingWithDynamicMargins(*v5, *(v5 + 1));
}

BOOL SBHGetScreenSpecification@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = SBHScreenTypeHasHomeButton(a1);
  v5 = 1;
  if (!result)
  {
    v5 = 2;
  }

  *(a2 + 32) = v5;
  switch(a1)
  {
    case 0:
      *a2 = *(MEMORY[0x1E69D4380] + 16);
      v8 = 0x4000000000000000;
      v9 = 568;
      goto LABEL_60;
    case 1:
      *a2 = *(MEMORY[0x1E69D4380] + 32);
      v8 = 0x4000000000000000;
      v9 = 569;
      goto LABEL_60;
    case 2:
      *a2 = *(MEMORY[0x1E69D4380] + 48);
      v8 = 0x4008000000000000;
      v9 = 570;
      goto LABEL_60;
    case 3:
      v19 = *(MEMORY[0x1E69D4380] + 80);
      goto LABEL_30;
    case 4:
      v19 = *(MEMORY[0x1E69D4380] + 64);
LABEL_30:
      *a2 = v19;
      v8 = 0x4008000000000000;
      v9 = 2436;
      goto LABEL_60;
    case 5:
      v17 = *(MEMORY[0x1E69D4380] + 112);
      goto LABEL_33;
    case 6:
      v17 = *(MEMORY[0x1E69D4380] + 80);
LABEL_33:
      *a2 = v17;
      v8 = 0x4008000000000000;
      v9 = 2688;
      goto LABEL_60;
    case 7:
      v16 = *(MEMORY[0x1E69D4380] + 112);
      goto LABEL_35;
    case 8:
      v16 = *(MEMORY[0x1E69D4380] + 80);
LABEL_35:
      *a2 = v16;
      v8 = 0x4000000000000000;
      v9 = 1792;
      goto LABEL_60;
    case 9:
    case 15:
      v6 = *(MEMORY[0x1E69D4380] + 80);
      goto LABEL_10;
    case 10:
    case 16:
      v6 = *(MEMORY[0x1E69D4380] + 64);
LABEL_10:
      *a2 = v6;
      v8 = 0x4008000000000000;
      v9 = 2340;
      goto LABEL_60;
    case 11:
    case 17:
      v10 = *(MEMORY[0x1E69D4380] + 96);
      goto LABEL_13;
    case 12:
    case 18:
      v10 = *(MEMORY[0x1E69D4380] + 64);
LABEL_13:
      *a2 = v10;
      v8 = 0x4008000000000000;
      v9 = 2532;
      goto LABEL_60;
    case 13:
    case 19:
      v7 = *(MEMORY[0x1E69D4380] + 128);
      goto LABEL_8;
    case 14:
    case 20:
      v7 = *(MEMORY[0x1E69D4380] + 80);
LABEL_8:
      *a2 = v7;
      v8 = 0x4008000000000000;
      v9 = 2778;
      goto LABEL_60;
    case 21:
      v21 = *(MEMORY[0x1E69D4380] + 144);
      goto LABEL_47;
    case 22:
      v21 = *(MEMORY[0x1E69D4380] + 64);
LABEL_47:
      *a2 = v21;
      v8 = 0x4008000000000000;
      v9 = 2556;
      goto LABEL_60;
    case 23:
      v14 = *(MEMORY[0x1E69D4380] + 160);
      goto LABEL_44;
    case 24:
      v14 = *(MEMORY[0x1E69D4380] + 80);
LABEL_44:
      *a2 = v14;
      v8 = 0x4008000000000000;
      v9 = 2796;
      goto LABEL_60;
    case 25:
      v20 = *(MEMORY[0x1E69D4380] + 176);
      goto LABEL_39;
    case 26:
      v20 = *(MEMORY[0x1E69D4380] + 64);
LABEL_39:
      *a2 = v20;
      v8 = 0x4008000000000000;
      v9 = 2622;
      goto LABEL_60;
    case 27:
      v18 = *(MEMORY[0x1E69D4380] + 192);
      goto LABEL_42;
    case 28:
      v18 = *(MEMORY[0x1E69D4380] + 80);
LABEL_42:
      *a2 = v18;
      v8 = 0x4008000000000000;
      v9 = 2868;
      goto LABEL_60;
    case 29:
      v22 = *(MEMORY[0x1E69D4380] + 208);
      goto LABEL_49;
    case 30:
      v22 = *(MEMORY[0x1E69D4380] + 80);
LABEL_49:
      *a2 = v22;
      v8 = 0x4008000000000000;
      v9 = 2736;
      goto LABEL_60;
    case 100:
    case 101:
    case 112:
      *a2 = *(MEMORY[0x1E69D4380] + 224);
      *(a2 + 16) = 0x4000000000000000;
      return result;
    case 102:
      *a2 = *(MEMORY[0x1E69D4380] + 240);
      v8 = 0x4000000000000000;
      v9 = 2160;
      goto LABEL_60;
    case 103:
      *a2 = *(MEMORY[0x1E69D4380] + 256);
      v8 = 0x4000000000000000;
      v9 = 2224;
      goto LABEL_60;
    case 104:
    case 111:
      v12 = *(MEMORY[0x1E69D4380] + 272);
      goto LABEL_37;
    case 105:
      *a2 = *(MEMORY[0x1E69D4380] + 288);
      v8 = 0x4000000000000000;
      v9 = 2266;
      goto LABEL_60;
    case 106:
    case 107:
      v11 = *(MEMORY[0x1E69D4380] + 336);
      goto LABEL_51;
    case 108:
      v11 = *(MEMORY[0x1E69D4380] + 352);
LABEL_51:
      *a2 = v11;
      v8 = 0x4000000000000000;
      v9 = 2360;
      goto LABEL_60;
    case 109:
      v15 = *(MEMORY[0x1E69D4380] + 368);
      goto LABEL_59;
    case 110:
      v15 = *(MEMORY[0x1E69D4380] + 384);
LABEL_59:
      *a2 = v15;
      v8 = 0x4000000000000000;
      v9 = 2388;
      goto LABEL_60;
    case 113:
      v12 = *(MEMORY[0x1E69D4380] + 448);
LABEL_37:
      *a2 = v12;
      v8 = 0x4000000000000000;
      v9 = 2732;
      goto LABEL_60;
    case 114:
      v23 = *(MEMORY[0x1E69D4380] + 400);
      goto LABEL_56;
    case 115:
      v23 = *(MEMORY[0x1E69D4380] + 416);
LABEL_56:
      *a2 = v23;
      v8 = 0x4000000000000000;
      v9 = 2420;
      goto LABEL_60;
    case 116:
      v13 = *(MEMORY[0x1E69D4380] + 464);
      goto LABEL_53;
    case 117:
      v13 = *(MEMORY[0x1E69D4380] + 320);
      goto LABEL_53;
    case 118:
      v13 = *(MEMORY[0x1E69D4380] + 480);
LABEL_53:
      *a2 = v13;
      v8 = 0x4000000000000000;
      v9 = 2752;
LABEL_60:
      *(a2 + 16) = v8;
      *(a2 + 24) = v9;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SBHDefaultIconListPhoneIconSpacing(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = SBHDefaultIconListGridSize(a1, a2, a3, a4);
  SBHDefaultSmallIconSizeWithNumberOfColumns(v6, a1, a2);

  return SBHDefaultIconListPhoneIconSpacingWithGridSizeAndSmallIconSize(v6, a1, a2);
}

double _SBHDefaultNonDefaultIconSizes@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = SBHDefaultIconSizeBucket(a1, a2);
  SBHDefaultIconImageSizeForIconSizeBucket(v6, a1, a2);
  *&v23 = 0;
  v21 = 0u;
  v22 = 0u;
  SBHGetScreenSpecification(a1, &v21);
  v7 = a1 - 100;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  if (a1 - 100 <= 0x12)
  {
    v8 = qword_1BEE88078[v7];
    v9 = qword_1BEE88110[v7];
    v10 = qword_1BEE881A8[v7];
    v11 = dbl_1BEE88240[v7];
  }

  v12 = v22;
  v13 = v10;
  v14 = v11;
  if (SBHScreenTypeIsPhone(a1))
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    SBHGetDefaultIconListLayoutMetrics(a1, a2, &v21);
    SBHDefaultWidgetOvershootForOrientation(a1, 1);
    v14 = SBHDefaultSmallIconSizeWithNumberOfColumnsAndWidgetOvershoot(v21, a1, a2);
    v11 = v15;
    SBHDefaultMediumIconSizeWithNumberOfColumnsAndWidgetOvershoot(v21, a1, a2);
    v13 = v16;
    v17 = SBHDefaultIconListGridSize(a1, a2, 1, 0);
    SBHDefaultIconListPhoneIconSpacingWithGridSizeAndSmallIconSize(v17, a1, a2);
    UIRoundToScale();
    v10 = v18;
    UIRoundToScale();
    v8 = v19;
  }

  result = v14 * 0.17;
  *a3 = v14;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v10;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  *(a3 + 64) = v13;
  *(a3 + 72) = v8;
  *(a3 + 80) = v12;
  *(a3 + 88) = v14 * 0.17;
  return result;
}

double _SBHDefaultDockCornerRadiusAdjustment(unint64_t a1, char a2)
{
  result = 0.0;
  if (a1 <= 0x1E)
  {
    if (((1 << a1) & 0x651400) != 0)
    {
      if ((a2 & 0x18) == 0)
      {
        return -2.0;
      }

      IsPhone = SBHScreenTypeIsPhone(a1);
      result = -2.0;
      v5 = a1 == 22;
      v6 = -1.0;
      v7 = 2.0;
    }

    else
    {
      if (((1 << a1) & 0x2A000000) != 0)
      {
        return -6.0;
      }

      if (((1 << a1) & 0x54000000) == 0)
      {
        return result;
      }

      if ((a2 & 0x18) == 0)
      {
        return -6.0;
      }

      IsPhone = SBHScreenTypeIsPhone(a1);
      result = -6.0;
      v5 = a1 == 26;
      v6 = -4.0;
      v7 = -1.0;
    }

    if (v5)
    {
      v6 = v7;
    }

    if (IsPhone)
    {
      return v6;
    }
  }

  return result;
}

double _SBHDefaultDockPlatterMetrics(uint64_t a1, char a2)
{
  v2 = *MEMORY[0x1E695F060];
  switch(a1)
  {
    case 3:
    case 6:
    case 8:
    case 9:
    case 15:
      v3 = 10.0;
      break;
    case 4:
      v3 = 7.0;
      break;
    case 5:
    case 7:
      v3 = 12.0;
      break;
    case 10:
    case 12:
    case 16:
    case 18:
      goto LABEL_10;
    case 11:
    case 17:
    case 21:
      v3 = 12.0;
      if ((a2 & 0x18) != 0)
      {
        SBHScreenTypeIsPhone(a1);
      }

      break;
    case 13:
    case 19:
    case 23:
    case 28:
    case 30:
      v3 = 14.0;
      break;
    case 14:
    case 20:
    case 24:
      v3 = 9.0;
      break;
    case 22:
    case 26:
      if ((a2 & 0x18) == 0 || (v3 = 10.0, !SBHScreenTypeIsPhone(a1)))
      {
LABEL_10:
        v3 = 8.0;
      }

      break;
    case 25:
    case 27:
    case 29:
      v3 = 17.0;
      break;
    default:
      v3 = 0.0;
      break;
  }

  return v2 + v3;
}

void getRootMetrics(uint64_t a1, char a2, uint64_t a3, BOOL *a4, char *a5)
{
  v9 = 0;
  v10 = 0;
  v11 = a2 & 0x18;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  switch(a1)
  {
    case 0:
      v10 = 0;
      v14 = 0;
      v15 = 0;
      v13 = 8u;
      v9 = 0x28u;
      goto LABEL_33;
    case 1:
      v10 = 0;
      v14 = 0x90u;
      v13 = 0x98u;
      v9 = 0xB8u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 2:
      v10 = 0;
      v14 = 0x120u;
      v13 = 0x128u;
      v9 = 0x148u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 3:
    case 6:
    case 8:
    case 9:
    case 14:
    case 15:
    case 20:
    case 24:
    case 28:
    case 30:
      v10 = 0;
      v14 = 0x1B0u;
      v13 = 0x1B8u;
      v9 = 0x1D8u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 4:
    case 10:
    case 12:
    case 16:
    case 18:
    case 22:
    case 26:
      v10 = 0;
      v14 = 0x240u;
      v13 = 0x248u;
      v9 = 0x268u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 5:
    case 7:
      v10 = 0;
      v14 = 0x2D0u;
      v13 = 0x2D8u;
      v9 = 0x2F8u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 11:
    case 17:
      v10 = 0;
      v14 = 0x360u;
      v13 = 0x368u;
      v9 = 0x388u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 13:
    case 19:
      v10 = 0;
      v14 = 0x3F0u;
      v13 = 0x3F8u;
      v9 = 0x418u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 21:
      v10 = 0;
      v12 = 0;
      v16 = v11 == 0;
      v14 = 1152;
      v17 = 1224;
      goto LABEL_14;
    case 23:
      v10 = 0;
      v14 = 0x510u;
      v13 = 0x518u;
      v9 = 0x538u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 25:
    case 29:
      v10 = 0;
      v12 = 0;
      v16 = v11 == 0;
      v14 = 1440;
      v17 = 1512;
LABEL_14:
      if (!v16)
      {
        v14 = v17;
      }

      v13 = v14 + 8;
      v9 = v14 + 40;
      v15 = v14;
      break;
    case 27:
      v10 = 0;
      v14 = 0x630u;
      v13 = 0x638u;
      v9 = 0x658u;
      v12 = (a2 & 0x18) != 0;
      v15 = v14;
      break;
    case 100:
    case 112:
      v10 = 1;
      v15 = 0x6C0u;
      v14 = 0x708u;
      v13 = 0x710u;
      v9 = 0x730u;
      goto LABEL_33;
    case 101:
      v10 = 1;
      v15 = 0x7E0u;
      v14 = 0x828u;
      v13 = 0x830u;
      v9 = 0x850u;
      goto LABEL_33;
    case 102:
      v10 = 1;
      v15 = 0x900u;
      v14 = 0x948u;
      v13 = 0x950u;
      v9 = 0x970u;
      goto LABEL_33;
    case 103:
      v10 = 1;
      v15 = 0xA20u;
      v14 = 0xA68u;
      v13 = 0xA70u;
      v9 = 0xA90u;
      goto LABEL_33;
    case 104:
    case 111:
      v10 = 1;
      v15 = 0xB40u;
      v14 = 0xB88u;
      v13 = 0xB90u;
      v9 = 0xBB0u;
      goto LABEL_33;
    case 105:
      v10 = 1;
      v15 = 0x10E0u;
      v14 = 0x1128u;
      v13 = 0x1130u;
      v9 = 0x1150u;
      goto LABEL_33;
    case 106:
    case 107:
      v10 = 1;
      v15 = 0xC60u;
      v14 = 0xCA8u;
      v13 = 0xCB0u;
      v9 = 0xCD0u;
      goto LABEL_33;
    case 108:
      v10 = 1;
      v15 = 0xD80u;
      v14 = 0xDC8u;
      v13 = 0xDD0u;
      v9 = 0xDF0u;
      goto LABEL_33;
    case 109:
      v10 = 1;
      v15 = 0xEA0u;
      v14 = 0xEE8u;
      v13 = 0xEF0u;
      v9 = 0xF10u;
      goto LABEL_33;
    case 110:
      v10 = 1;
      v15 = 0xFC0u;
      v14 = 0x1008u;
      v13 = 0x1010u;
      v9 = 0x1030u;
      goto LABEL_33;
    case 113:
      v10 = 1;
      v15 = 0x1200u;
      v14 = 0x1248u;
      v13 = 0x1250u;
      v9 = 0x1270u;
      goto LABEL_33;
    case 114:
      v10 = 1;
      v15 = 0x1320u;
      v14 = 0x1368u;
      v13 = 0x1370u;
      v9 = 0x1390u;
      goto LABEL_33;
    case 115:
      v10 = 1;
      v15 = 0x1440u;
      v14 = 0x1488u;
      v13 = 0x1490u;
      v9 = 0x14B0u;
      goto LABEL_33;
    case 116:
      v10 = 1;
      v15 = 0x1680u;
      v14 = 0x16C8u;
      v13 = 0x16D0u;
      v9 = 0x16F0u;
      goto LABEL_33;
    case 117:
      v10 = 1;
      v15 = 0x1560u;
      v14 = 0x15A8u;
      v13 = 0x15B0u;
      v9 = 0x15D0u;
      goto LABEL_33;
    case 118:
      v10 = 1;
      v15 = 0x17A0u;
      v14 = 0x17E8u;
      v13 = 0x17F0u;
      v9 = 0x1810u;
LABEL_33:
      v12 = (a2 & 0x18) != 0;
      break;
    default:
      break;
  }

  v18 = (&defaultRootMetrics + v13);
  v19 = (&defaultRootMetrics + v9);
  *a3 = *(&defaultRootMetrics + v15);
  v20 = *v18;
  *(a3 + 24) = v18[1];
  *(a3 + 8) = v20;
  v21 = *v19;
  *(a3 + 56) = v19[1];
  *(a3 + 40) = v21;
  *(a3 + 72) = *(&defaultRootMetrics + v14);
  v22 = v18[1];
  *(a3 + 80) = *v18;
  *(a3 + 96) = v22;
  v23 = v19[1];
  *(a3 + 112) = *v19;
  *(a3 + 128) = v23;
  if (SBHScreenTypeIsPhone(a1) && !SBHScreenTypeHasHomeButton(a1))
  {
    v24 = (a3 + 8);
    v25 = (a3 + 80);
    v26 = _SBHDefaultTopLayoutInsetAdjustment(a1, a2);
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = v24[1];
      v30 = [MEMORY[0x1E69DEBC0] sbh_displayEdgeInfoForScreenType:a1];
      v31 = [v30 safeAreaInsetsPortrait];
      [v31 topInset];
      v33 = v26 + v29 + v32;

      v27 = 0;
      v24[2] = v24[2] - (v33 - *v24);
      *v24 = v33;
      v24 = v25;
    }

    while ((v28 & 1) != 0);
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = v10;
  }
}

uint64_t SBHCalculateHorizontalIconSpacingWithDynamicMargins(CGFloat a1, CGFloat a2)
{
  v4.size.height = a2;
  v4.size.width = a1;
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  CGRectGetWidth(v4);

  return UIFloorToScale();
}

double SBHDefaultIconImageSizeForIconSizeBucket(uint64_t a1, unint64_t a2, char a3)
{
  v3 = 0.0;
  if (a1 <= 67)
  {
    if (a1 == 64)
    {
      v3 = 64.0;
    }

    if (a1 == 60)
    {
      v3 = 60.0;
    }

    if (a1 == 56)
    {
      v3 = 56.0;
    }

    goto LABEL_16;
  }

  switch(a1)
  {
    case 'D':
      v4 = 0x4051000000000000;
LABEL_15:
      v3 = *&v4;
      break;
    case 'L':
      v4 = 0x4053000000000000;
      goto LABEL_15;
    case 'S':
      v3 = 83.5;
      break;
  }

LABEL_16:
  v5 = 0.0;
  if ((a3 & 0x18) != 0 && a2 <= 0x1E)
  {
    v5 = dbl_1BEE87EF0[a2];
  }

  return v3 + v5;
}

double _SBHDefaultTopLayoutInsetAdjustment(uint64_t a1, char a2)
{
  if ((a1 - 3) < 0x16)
  {
    return -10.0;
  }

  result = 0.0;
  if (a1 > 26)
  {
    if (a1 == 27)
    {
      return -8.0;
    }

    if (a1 != 29)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a1 == 25)
  {
LABEL_9:
    if ((a2 & 0x18) == 0)
    {
      return -7.0;
    }

    IsPhone = SBHScreenTypeIsPhone(a1);
    result = -6.0;
    if (!IsPhone)
    {
      return -7.0;
    }

    return result;
  }

  if (a1 == 26)
  {
    return -10.0;
  }

  return result;
}

double SBHIconListLayoutDefaultEditingAnimationStrengthForGridSize(int a1)
{
  v1 = HIWORD(a1);
  if (HIWORD(a1) <= a1)
  {
    v1 = a1;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  return 1.0 / v1;
}

double SBHDisplayCornerRadiusForScreenType(uint64_t a1)
{
  switch(a1)
  {
    case 3:
    case 5:
      return 39.0;
    case 4:
      return 33.33;
    case 6:
      return 35.33;
    case 7:
      return 41.5;
    case 8:
      return 37.5;
    case 9:
    case 15:
      v1 = 44.0;
      goto LABEL_17;
    case 10:
    case 16:
      return 37.33;
    case 11:
    case 17:
      return 47.33;
    case 12:
    case 18:
      return 38.67;
    case 13:
    case 19:
      return 53.33;
    case 14:
    case 20:
      return 46.67;
    case 21:
    case 23:
      return 55.0;
    case 22:
      return 44.67;
    case 24:
      v1 = 48.0;
      goto LABEL_17;
    case 25:
    case 27:
    case 29:
      v1 = 62.0;
LABEL_17:
      result = v1;
      break;
    case 26:
      result = 49.3333333;
      break;
    case 28:
      result = 52.67;
      break;
    case 30:
      result = 55.33;
      break;
    default:
      switch(a1)
      {
        case 'i':
          result = 21.5;
          break;
        case 'j':
          result = 25.0;
          break;
        case 'k':
        case 'm':
        case 'o':
          result = 18.0;
          break;
        case 'l':
        case 'n':
        case 'q':
          result = 21.0;
          break;
        case 'p':
          result = 13.5;
          break;
        case 'r':
        case 't':
          result = 30.0;
          break;
        case 's':
        case 'v':
          result = 35.0;
          break;
        case 'u':
          result = 22.5;
          break;
        default:
          result = 0.0;
          break;
      }

      break;
  }

  return result;
}

double SBHDefaultAdditionalWidgetLayoutInsetsForOrientation(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E69DDCE0];
  if ((a2 - 5) <= 0xFFFFFFFFFFFFFFFDLL && (a3 & 0x10) == 0)
  {
    SBHDefaultWidgetOvershootForOrientation(a1, a2, a3);
  }

  return v3;
}

id _SBHLayoutOptionsKeyTypeForListLayoutProvider(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 layoutOptions];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  }

  else
  {
    v3 = &unk_1F3DB28E8;
  }

  return v3;
}

void sub_1BEB3FD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __SBHScreenTypeForCurrentDevice_block_invoke()
{
  if (__sb__runningInSpringBoard())
  {
    __sb__mainScreenReferenceBounds();
    v1 = v0;
    v3 = v2;
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 _referenceBounds];
    v1 = v9;
    v3 = v10;
    v5 = v11;
    v7 = v12;
  }

  if (__sb__runningInSpringBoard())
  {
    __sb__mainScreenScale();
    v14 = v13;
  }

  else
  {
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 scale];
    v14 = v16;
  }

  v17 = SBFEffectiveArtworkSubtype();
  v18 = SBFEffectiveDeviceClass();
  v19 = SBFEffectiveHomeButtonType();
  result = _SBHScreenTypeLookup(v18, v19, v17, &__block_literal_global_3, &__block_literal_global_6, &__block_literal_global_14, v1, v3, v5, v7, v14);
  SBHScreenTypeForCurrentDevice_screenType = result;
  return result;
}

uint64_t _SBHScreenTypeLookup(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11)
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = ___SBHScreenTypeLookup_block_invoke;
  v42[3] = &unk_1E808A190;
  *&v42[6] = a9;
  *&v42[7] = a10;
  *&v42[8] = a11;
  v42[9] = a3;
  v42[10] = a2;
  v42[4] = &v47;
  v42[5] = &v43;
  SBHEnumerateScreenTypes(v42);
  if ((v44[3] & 1) == 0)
  {
    if (a1 == 2)
    {
      if (a2 == 2)
      {
        if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 113;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 111;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 110;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 108;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 109;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 107;
        }

        else
        {
          v40 = BSSizeGreaterThanOrEqualToSize();
          v22 = v48;
          if (v40)
          {
            v23 = 112;
          }

          else
          {
            v23 = 105;
          }
        }
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v48;
        v23 = 104;
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v48;
        v23 = 103;
      }

      else
      {
        v25 = BSSizeGreaterThanOrEqualToSize();
        v22 = v48;
        if (v25)
        {
          v23 = 102;
        }

        else
        {
          v23 = 100;
        }
      }
    }

    else
    {
      if (a1 > 1)
      {
        goto LABEL_33;
      }

      if (a2 == 2)
      {
        if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 27;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 23;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 13;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 29;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 5;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 25;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 21;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v48;
          v23 = 11;
        }

        else
        {
          v41 = BSSizeGreaterThanOrEqualToSize();
          v22 = v48;
          if (v41)
          {
            v23 = 3;
          }

          else
          {
            v23 = 4;
          }
        }
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v48;
        v23 = 2;
      }

      else
      {
        v24 = BSSizeGreaterThanOrEqualToSize();
        v22 = v48;
        if (!v24)
        {
          v48[3] = 0;
          goto LABEL_33;
        }

        v23 = 1;
      }
    }

    v22[3] = v23;
  }

LABEL_33:
  v26 = v48[3];
  if (v26 > 16)
  {
    if (v26 > 19)
    {
      if ((v26 - 100) < 2)
      {
        v33 = v19[2](v19);
        v28 = v48;
        if (v33)
        {
          v29 = 101;
        }

        else
        {
          v29 = 100;
        }
      }

      else
      {
        if ((v26 - 106) >= 2)
        {
          if (v26 != 20)
          {
            goto LABEL_67;
          }

          goto LABEL_60;
        }

        v27 = v21[2](v21);
        v28 = v48;
        if (v27)
        {
          v29 = 106;
        }

        else
        {
          v29 = 107;
        }
      }

      v28[3] = v29;
      goto LABEL_67;
    }

    if (v26 == 17)
    {
      goto LABEL_53;
    }

    if (v26 == 18)
    {
LABEL_52:
      v30 = v20[2](v20) == 0;
      v31 = 12;
      v32 = 18;
      goto LABEL_61;
    }
  }

  else
  {
    if (v26 <= 12)
    {
      if (v26 <= 10)
      {
        if (v26 != 9)
        {
          if (v26 != 10)
          {
            goto LABEL_67;
          }

          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v26 != 11)
      {
        goto LABEL_52;
      }

LABEL_53:
      v30 = v20[2](v20) == 0;
      v31 = 11;
      v32 = 17;
      goto LABEL_61;
    }

    if (v26 > 14)
    {
      if (v26 != 15)
      {
LABEL_55:
        v30 = v20[2](v20) == 0;
        v31 = 10;
        v32 = 16;
        goto LABEL_61;
      }

LABEL_56:
      v30 = v20[2](v20) == 0;
      v31 = 9;
      v32 = 15;
      goto LABEL_61;
    }

    if (v26 != 13)
    {
LABEL_60:
      v30 = v20[2](v20) == 0;
      v31 = 14;
      v32 = 20;
      goto LABEL_61;
    }
  }

  v30 = v20[2](v20) == 0;
  v31 = 13;
  v32 = 19;
LABEL_61:
  if (!v30)
  {
    v31 = v32;
  }

  v48[3] = v31;
LABEL_67:
  if (os_variant_has_internal_content())
  {
    v34 = objc_alloc_init(MEMORY[0x1E69D4030]);
    v35 = [v34 overriddenScreenType];
    v36 = v35;
    if (v35)
    {
      v37 = SBHScreenTypeForShortString(v35);
      v48[3] = v37;
    }
  }

  v38 = v48[3];
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  return v38;
}

void sub_1BEB41930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void SBHEnumerateScreenTypes(void *a1)
{
  v1 = a1;
  for (i = 0; i < 0x1F || i - 100 <= 0x12; ++i)
  {
    v3 = 0;
    v1[2](v1, i, &v3);
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_5:
    ;
  }

  if (i <= 0x63)
  {
    i = 99;
    goto LABEL_5;
  }

LABEL_8:
}

uint64_t SBHScreenSpecificationEqualToScreenSpecification(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v3 = 0;
  }

  result = *(a1 + 16) == *(a2 + 16) && v3;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = v5 == v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;
    result = v8 & result;
  }

  v9 = *(a1 + 32);
  if (v9 != -1)
  {
    v10 = *(a2 + 32);
    v11 = ((v9 == 2) ^ (v10 != 2)) & result;
    if (v10 == -1)
    {
      return result;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void SBHDefaultSmallIconSize(unint64_t a1, uint64_t a2)
{
  v4 = SBHDefaultIconListGridSize(a1, a2, 1, 1);
  SBHDefaultWidgetOvershootForOrientation(a1, 1, a2);

  SBHDefaultSmallIconSizeWithNumberOfColumnsAndWidgetOvershoot(v4, a1, a2);
}

uint64_t _SBHDefaultNumberOfRowsAndColumnsInFolders(uint64_t a1)
{
  if (SBHScreenTypeIsPad(a1))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t SBHDefaultScreenSizeBucket(unint64_t a1)
{
  if (a1 > 0x1E)
  {
    goto LABEL_6;
  }

  if (((1 << a1) & 0x7332CB48) != 0)
  {
    return 1;
  }

  if (((1 << a1) & 0x88820A4) != 0)
  {
    return 2;
  }

LABEL_6:
  if (((1 << (a1 - 100)) & 0x7EE10) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = ((1 << (a1 - 100)) & 0x11ED) != 0;
  }

  if (a1 - 100 <= 0x12)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t _SBHDefaultDockMetrics@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (a1 - 3 <= 0x1B)
  {
    memset(v7, 0, sizeof(v7));
    SBHGetDefaultIconListLayoutMetrics(a1, a2, v7);
  }

  return _SBHDefaultDockMetricsWithHorizontalListInset(a1, v3, a3);
}

id SBHBundle()
{
  if (SBHBundle___onceToken != -1)
  {
    SBHBundle_cold_1();
  }

  v1 = SBHBundle___springBoardHomeBundle;

  return v1;
}

uint64_t SBRootFolderPageStateVerticalGroupForRootFolderPageState(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1BEE85A80[a1 + 1];
  }
}

id _SBCreateAppProtectionApplicationShortcutItemForBundleIdentifier(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:a1];
  v16 = 0;
  v17 = 0;
  v2 = [MEMORY[0x1E698B118] sharedInstance];
  v15 = 0;
  v3 = [v2 getPreferredEnablementAction:&v17 preferredEnableableFeature:&v16 forSubject:v1 error:&v15];
  v4 = v15;

  if (v3)
  {
    v5 = [MEMORY[0x1E698B120] sharedManager];
    v6 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v7 = [v5 systemImageNameForEnablementAction:v17 ofFeature:v16];
    v8 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:v7];
    [v6 setIcon:v8];
    v9 = [v5 titleForEnablementAction:v17 ofFeature:v16];
    [v6 setLocalizedTitle:v9];

    v18[0] = kSBHIconAppProtectionFeatureUserInfoKey;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    v18[1] = kSBHIconAppProtectionActionUserInfoKey;
    v19[0] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    v19[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v6 setUserInfo:v12];

    [v6 setType:@"com.apple.springboardhome.application-shortcut-item.app-protection"];
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Error fetching preferred app protection enablement action", v14, 2u);
    }

    v6 = 0;
  }

  return v6;
}

id _SBCreateDeleteAppApplicationShortcutItemWithLocalizedTitle(void *a1)
{
  v1 = MEMORY[0x1E69D41B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"trash"];
  [v3 setIcon:v4];

  [v3 setLocalizedTitle:v2];
  [v3 setType:@"com.apple.springboardhome.application-shortcut-item.delete-app"];

  return v3;
}

id sub_1BEB43330(uint64_t a1, void *a2)
{
  if (a2 && (v5 = swift_dynamicCastObjCProtocolConditional()) != 0)
  {
    v6 = v5;
    swift_unknownObjectRetain();
  }

  else
  {
    v7 = type metadata accessor for IconModelApplicationDataSourceAdapter();
    v8 = objc_allocWithZone(v7);
    swift_unknownObjectWeakInit();
    v9 = OBJC_IVAR____TtC15SpringBoardHome37IconModelApplicationDataSourceAdapter_observers;
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    *&v8[v9] = [v10 weakObjectsHashTable];
    swift_unknownObjectWeakAssign();
    *&v8[OBJC_IVAR____TtC15SpringBoardHome37IconModelApplicationDataSourceAdapter_applicationDataSource] = a2;
    v14.receiver = v8;
    v14.super_class = v7;
    swift_unknownObjectRetain();
    v6 = objc_msgSendSuper2(&v14, sel_init);
    if (a2)
    {
      if ([a2 respondsToSelector_])
      {
        [a2 addIconModelApplicationDataSourceObserver_];
      }

      swift_unknownObjectRelease();
    }
  }

  v11 = [objc_allocWithZone(SBHIconRepository) initWithApplicationInfoProvider_];
  v12 = [v2 initWithStore:a1 iconRepository:v11];
  type metadata accessor for IconModelApplicationDataSourceAdapter();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectWeakAssign();
  }

  sub_1BEB1FF98();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id sub_1BEB43550(void *a1)
{
  v3 = OBJC_IVAR___SBHIconRepository_storedIcons;
  *&v1[v3] = sub_1BEB4368C(MEMORY[0x1E69E7CC0], &qword_1EBDC7548);
  v1[OBJC_IVAR___SBHIconRepository_isLoadingIcons] = 0;
  v1[OBJC_IVAR___SBHIconRepository_hasLoadedIcons] = 0;
  v4 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___SBHIconRepository__visibleIconTags] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___SBHIconRepository__hiddenIconTags] = v4;
  *&v1[OBJC_IVAR___SBHIconRepository_hiddenTagsThatAffectBookmarkIcons] = v4;
  v5 = OBJC_IVAR___SBHIconRepository_observers;
  *&v1[v5] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___SBHIconRepository_applicationInfoProvider] = a1;
  v8.receiver = v1;
  v8.super_class = SBHIconRepository;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  if (a1)
  {
    if ([a1 respondsToSelector_])
    {
      [a1 addApplicationInfoProviderObserver_];
    }

    swift_unknownObjectRelease();
  }

  return v6;
}

unint64_t sub_1BEB4368C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1BEE476AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1BEB1DAFC(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

char *sub_1BEB437E8(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___SBHIconModel__isRestoring] = 0;
  v6 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByBundleIdentifier;
  v7 = MEMORY[0x1E69E7CC0];
  *&v3[v6] = sub_1BEB43CCC(MEMORY[0x1E69E7CC0]);
  v8 = OBJC_IVAR___SBHIconModel_additionalApplicationIconsByUniqueIdentifier;
  *&v3[v8] = sub_1BEB43CB8(v7);
  v9 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
  *&v3[v9] = sub_1BEB43CA4(v7);
  v10 = OBJC_IVAR___SBHIconModel_fileStackIconsByIdentifier;
  *&v3[v10] = sub_1BEB43C90(v7);
  v3[OBJC_IVAR___SBHIconModel_automaticallyAddsWebClips] = 1;
  v3[OBJC_IVAR___SBHIconModel_postsDidAddIconNotification] = 1;
  *&v3[OBJC_IVAR___SBHIconModel__cachedDesiredRootFolder] = 0;
  *&v3[OBJC_IVAR___SBHIconModel__cachedDefaultRootFolder] = 0;
  *&v3[OBJC_IVAR___SBHIconModel_discardCachedOtherRootFoldersRunLoopObserver] = 0;
  *&v3[OBJC_IVAR___SBHIconModel__desiredIconState] = 0;
  *&v3[OBJC_IVAR___SBHIconModel_desiredIconStateFlattened] = 0;
  v11 = OBJC_IVAR___SBHIconModel_additionalDesiredIconRelativePaths;
  *&v3[v11] = sub_1BEB43C7C(v7);
  v3[OBJC_IVAR___SBHIconModel_isIconStateReallyDirty] = 0;
  v12 = OBJC_IVAR___SBHIconModel_autosaveDisableAssertions;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E696AC70]) init];
  *&v3[OBJC_IVAR___SBHIconModel_autosaveTimer] = 0;
  v3[OBJC_IVAR___SBHIconModel_ignoresIconsNotInIconState] = 0;
  v3[OBJC_IVAR___SBHIconModel_isCheckingModelConsistency] = 0;
  v13 = OBJC_IVAR___SBHIconModel_store;
  *&v3[OBJC_IVAR___SBHIconModel_store] = 0;
  *&v3[OBJC_IVAR___SBHIconModel_todayListsStore] = 0;
  v3[OBJC_IVAR___SBHIconModel__isLayingOut] = 0;
  *&v3[OBJC_IVAR___SBHIconModel__rootFolder] = 0;
  *&v3[OBJC_IVAR___SBHIconModel__lastLayoutStatus] = 0;
  *&v3[OBJC_IVAR___SBHIconModel__lastLayoutUnarchivedIdentifiers] = 0;
  v3[OBJC_IVAR___SBHIconModel_needsToCallLoadIcons] = 1;
  v14 = OBJC_IVAR___SBHIconModel_folders;
  *&v3[v14] = [objc_opt_self() weakObjectsHashTable];
  v15 = OBJC_IVAR___SBHIconModel_rootFolderAllowedGridSizeClasses;
  *&v3[v15] = [objc_opt_self() gridSizeClassSetForDefaultGridSizeClass];
  if (v7 >> 62 && sub_1BEE474CC())
  {
    sub_1BEDF8FE0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  *&v3[OBJC_IVAR___SBHIconModel_removedIcons] = v16;
  *&v3[OBJC_IVAR___SBHIconModel_iconRunLoopObserver] = 0;
  *&v3[OBJC_IVAR___SBHIconModel_homeScreenService] = 0;
  *&v3[OBJC_IVAR___SBHIconModel_installedWebClipsObservation] = 0;
  *&v3[v13] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = [objc_allocWithZone(SBHIconRepository) initWithApplicationInfoProvider_];
  }

  *&v3[OBJC_IVAR___SBHIconModel_iconRepository] = v17;
  v31.receiver = v3;
  v31.super_class = SBHIconModel;
  v18 = a2;
  v19 = objc_msgSendSuper2(&v31, sel_init);
  if ((SBHIsRunningInSpringBoard([*&v19[OBJC_IVAR___SBHIconModel_iconRepository] addObserver_]) & 1) == 0)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69D4240]) init];
    v21 = [v20 addInstalledWebClipsObserver_];
    *&v19[OBJC_IVAR___SBHIconModel_installedWebClipsObservation] = v21;
    swift_unknownObjectRelease();
    v22 = *&v19[OBJC_IVAR___SBHIconModel_homeScreenService];
    *&v19[OBJC_IVAR___SBHIconModel_homeScreenService] = v20;
  }

  sub_1BEB20D28(0, &qword_1EBDBFFC0);
  v23 = [swift_getObjCClassFromMetadata() defaultCenter];
  v24 = v19;
  v25 = sub_1BEE4705C();
  [v23 addObserver:v24 selector:sel_noteApplicationIconImageChanged_ name:v25 object:0];

  v26 = [objc_opt_self() defaultCenter];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v24;
  v29 = [ObjCClassFromMetadata currentLocaleDidChangeNotificationName];
  [v26 addObserver:v28 selector:sel_localeChanged name:v29 object:0];

  return v28;
}

unint64_t sub_1BEB43CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7550);
    v3 = sub_1BEE476AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BEB1DAFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t __SBLogSelectedApplicationDataSource_block_invoke()
{
  SBLogSelectedApplicationDataSource___logObj = os_log_create(*MEMORY[0x1E69D4388], "SelectedApplicationDataSource");

  return MEMORY[0x1EEE66BB8]();
}

Class __getDMFApplicationPolicyMonitorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DeviceManagementLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DeviceManagementLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E808AAA8;
    v6 = 0;
    DeviceManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (DeviceManagementLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("DMFApplicationPolicyMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDMFApplicationPolicyMonitorClass_block_invoke_cold_1();
  }

  getDMFApplicationPolicyMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SBLogIcon_block_invoke()
{
  SBLogIcon___logObj = os_log_create(*MEMORY[0x1E69D4388], "Icon");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BEB4452C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_1BEE4769C();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1BEE4777C();
      sub_1BEE470CC();
      result = sub_1BEE477CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void sub_1BEB44840(void *a1)
{
  if ([v1 postsDidAddIconNotification])
  {
    v3 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8298);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AE40;
    sub_1BEE4754C();
    *(inited + 96) = sub_1BEB20D28(0, &qword_1EBDBFFE0);
    *(inited + 72) = a1;
    v5 = a1;
    sub_1BEB449C8(inited);
    swift_setDeallocating();
    sub_1BEB4992C(inited + 32, &unk_1EBDC82A0);
    v6 = sub_1BEE4700C();

    [v3 postNotificationName:@"SBIconModelDidAddIconNotification" object:v1 userInfo:v6];
  }
}

unint64_t sub_1BEB449C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7520);
    v3 = sub_1BEE476AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BEB44B04(v4, v13, &unk_1EBDC82A0);
      result = sub_1BEB45D00(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1BEB45FE0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BEB44B04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BEB44B6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BEDFBC74(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB4EA00](v9, a1);
      sub_1BEDFA2B0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

__CFString *SBStringForRootFolderPageState(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E808B5C0[a1 + 1];
  }
}

id SBLogSelectedApplicationDataSource()
{
  if (SBLogSelectedApplicationDataSource_onceToken != -1)
  {
    SBLogSelectedApplicationDataSource_cold_1();
  }

  v1 = SBLogSelectedApplicationDataSource___logObj;

  return v1;
}

uint64_t sub_1BEB45428(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v9 = sub_1BEE471AC();
  swift_unknownObjectRetain();
  v10 = a1;
  a7(v9);
  swift_unknownObjectRelease();
}

unint64_t sub_1BEB454BC(unint64_t result)
{
  v2 = result;
  if (result >> 62)
  {
    result = sub_1BEE474CC();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v16 = 0x80000001BEEA26B0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB4EA90](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      v6 = [v5 bundleIdentifier];
      if (!v6)
      {
        sub_1BEE4708C();
        v6 = sub_1BEE4705C();
      }

      v7 = [v1 iconFor_];

      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          [v8 replaceApplicationDataSourcesWithApplication_];
          goto LABEL_6;
        }
      }

      v9 = [v5 bundleIdentifier];
      v10 = sub_1BEE4708C();
      v12 = v11;

      if (v10 == 0xD000000000000015 && 0x80000001BEEA2690 == v12 || (sub_1BEE4770C() & 1) != 0)
      {

        v13 = &unk_1EBDBFFC8;
      }

      else
      {
        if (v10 == 0xD000000000000013 && v16 == v12)
        {
        }

        else
        {
          v15 = sub_1BEE4770C();

          if ((v15 & 1) == 0)
          {
            [swift_getObjCClassFromObject() applicationIconClass];
            swift_getObjCClassMetadata();
            sub_1BEB20D28(0, &unk_1EBDBFFD0);
            swift_dynamicCastMetatype();
            goto LABEL_21;
          }
        }

        v13 = &unk_1EBDBFEC0;
      }

      sub_1BEB20D28(0, v13);
LABEL_21:
      v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithApplication_];
      if (!v14)
      {
        goto LABEL_7;
      }

      v7 = v14;
      _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v14);
LABEL_6:

LABEL_7:
      ++v4;
      result = swift_unknownObjectRelease();
      if (v3 == v4)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

void _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(void *a1)
{
  v2 = v1;
  v4 = [a1 uniqueIdentifier];
  if (!v4)
  {
    sub_1BEE4708C();
    v4 = sub_1BEE4705C();
  }

  v5 = sub_1BEE4708C();
  v7 = v6;
  v16 = [v2 iconFor_];

  if (!v16)
  {
LABEL_9:
    v8 = OBJC_IVAR___SBHIconRepository_storedIcons;
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *&v2[v8];
    *&v2[v8] = 0x8000000000000000;
    sub_1BEB431AC(v9, v5, v7, isUniquelyReferenced_nonNull_native);

    *&v2[v8] = v17;
    swift_endAccess();
    if (v2[OBJC_IVAR___SBHIconRepository_isLoadingIcons])
    {
      return;
    }

    v11 = [*&v2[OBJC_IVAR___SBHIconRepository_observers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
    v12 = sub_1BEE471AC();

    if (v12 >> 62)
    {
      v13 = sub_1BEE474CC();
      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_12:
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v13; ++i)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB4EA90](i, v12);
          }

          else
          {
            v15 = *(v12 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v15 respondsToSelector_])
          {
            [v15 iconRepository:v2 didAddIcon:v9];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    return;
  }

  sub_1BEB20D28(0, &qword_1EBDBFE90);
  if ((sub_1BEE473CC() & 1) == 0)
  {
    _sSo17SBHIconRepositoryC15SpringBoardHomeE10removeIconyySo06SBLeafG0CF_0(v16);

    goto LABEL_9;
  }
}

uint64_t sub_1BEB45B64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1BEB1DAFC(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1BEB4452C(v18, a4 & 1, a5);
      v13 = sub_1BEB1DAFC(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1BEE4775C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v21 = v13;
      sub_1BEE326C4(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

unint64_t sub_1BEB45D00(uint64_t a1)
{
  v2 = sub_1BEE4752C();

  return sub_1BEB44B6C(a1, v2);
}

_OWORD *sub_1BEB45FE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SBFolderRelativeListIndex(void *a1)
{
  if (a1)
  {
    return [a1 sbListIndex];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

id sub_1BEB46C1C()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 gridSizeClassDomainForIconModel_];
      swift_unknownObjectRelease();
      if (v3)
      {
        return v3;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v5 = [objc_opt_self() globalDomain];

  return v5;
}

id SBHGetIconGridSizeClassInfoValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  v6 = [v5 infoValueForGridSizeClass:v4 forKey:v3];

  return v6;
}

id SBHIconGridSizeClassForCHSWidgetFamily(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __SBHIconGridSizeClassForCHSWidgetFamily_block_invoke;
  v3[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
  v3[4] = a1;
  v1 = SBHGetIconGridSizeClassPassingTest(v3);

  return v1;
}

id SBHGetIconGridSizeClassPassingTest(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = [v2 iconGridSizeClassPassingTest:v1];

  return v3;
}

BOOL __SBHIconGridSizeClassForCHSWidgetFamily_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"SBHIconGridSizeClassRegistrationInfoKeyCHSWidgetFamily"];
  v4 = [v3 integerValue] == *(a1 + 32);

  return v4;
}

id SBHWidgetMetricsForFamilyWithLayoutProviderAndScreenType(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 layoutForIconLocation:@"SBIconLocationRoot"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_31;
  }

  v6 = SBHIconGridSizeClassForCHSWidgetFamily(a1);
  [v5 iconImageInfoForGridSizeClass:v6];
  v8 = v7;
  v43 = v10;
  v44 = v9;
  if (v6 != @"SBHIconGridSizeClassSmall")
  {
    v11 = [(__CFString *)v6 isEqualToString:@"SBHIconGridSizeClassSmall"];
    v7 = v8;
    if ((v11 & 1) == 0)
    {
      [v5 iconImageInfoForGridSizeClass:{@"SBHIconGridSizeClassSmall", v8}];
    }
  }

  if (a3 <= 0x1D)
  {
    if (((1 << a3) & 0x22228A8C) != 0)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_15;
    }

    if (((1 << a3) & 0x8882020) != 0)
    {
LABEL_14:
      v12 = 1;
      goto LABEL_15;
    }
  }

  v12 = 2;
  v13 = a3 - 103;
  if (a3 - 103 <= 0xF)
  {
    if (((1 << v13) & 0x5AF9) == 0)
    {
      if (((1 << v13) & 0xA502) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_15:
  v41 = v7;
  v45 = v8;
  v15 = *MEMORY[0x1E69DDCE0];
  v16 = *(MEMORY[0x1E69DDCE0] + 8);
  v17 = *(MEMORY[0x1E69DDCE0] + 16);
  v18 = *(MEMORY[0x1E69DDCE0] + 24);
  if (objc_opt_respondsToSelector())
  {
    [v5 widgetContentMargins];
  }

  CHSEdgeInsetsMake();
  v42 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if (objc_opt_respondsToSelector())
  {
    [v5 widgetContentMarginsWithBackgroundRemoved];
  }

  CHSEdgeInsetsMake();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v5;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v34 widgetScaleFactor], v36 = v35, BSFloatIsZero()))
  {
    v36 = 1.0;
    if (!SBHScreenTypeIsPhone(a3))
    {
      v36 = v41 / _SBHDefaultSmallWidgetCanvasDimension(a3);
    }
  }

  if ((BSFloatIsOne() & 1) == 0)
  {
    v44 = v44 / v36;
    v45 = v45 / v36;
    v42 = v42 / v36;
    v43 = v43 / v36;
    v21 = v21 / v36;
    v23 = v23 / v36;
    v25 = v25 / v36;
    v27 = v27 / v36;
    v29 = v29 / v36;
    v31 = v31 / v36;
    v33 = v33 / v36;
  }

  if (objc_opt_respondsToSelector())
  {
    if ([v34 widgetsSupportDynamicText])
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_alloc(MEMORY[0x1E69943E8]);
  v39 = [v38 initWithSafeAreaInsets:*MEMORY[0x1E69941E0] layoutInsets:*(MEMORY[0x1E69941E0] + 8) contentMargins:*(MEMORY[0x1E69941E0] + 16) backgroundRemovedContentMargins:{*(MEMORY[0x1E69941E0] + 24), *MEMORY[0x1E69941E0], *(MEMORY[0x1E69941E0] + 8), *(MEMORY[0x1E69941E0] + 16), *(MEMORY[0x1E69941E0] + 24), *&v42, *&v21, *&v23, *&v25, *&v27, *&v29, *&v31, *&v33}];
  v14 = [objc_alloc(MEMORY[0x1E69943F0]) initWithSize:v12 cornerRadius:v39 scaleFactor:v37 fontStyle:v45 margins:v44 supportsDynamicText:{v43, v36}];

LABEL_31:

  return v14;
}

id SBLogWidgetMultiplexing()
{
  if (SBLogWidgetMultiplexing_onceToken != -1)
  {
    SBLogWidgetMultiplexing_cold_1();
  }

  v1 = SBLogWidgetMultiplexing___logObj;

  return v1;
}

id SBHContainerBundleIdentifierForDataSource(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (objc_opt_self(), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_isKindOfClass(), v4, (v5))
  {
    v6 = [v1 containerBundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t CHSWidgetFamilyForSBHIconGridSizeClass(void *a1)
{
  v1 = SBHGetIconGridSizeClassInfoValue(a1, @"SBHIconGridSizeClassRegistrationInfoKeyCHSWidgetFamily");
  v2 = [v1 integerValue];

  return v2;
}

uint64_t sub_1BEB4992C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1BEB4998C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t))
{
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v12 = a1;
  v13 = a5(v11, a4);

  (*(v9 + 8))(v11, v8);

  return v13;
}

void sub_1BEB49AC0(uint64_t a1, void *a2)
{
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = sub_1BEE4696C();
  v12 = [v11 sb_iconRelativePathComponents];

  v13 = sub_1BEE471AC();
  v14 = *(v13 + 16);
  sub_1BEB49FBC(&unk_1EBDBFE40, MEMORY[0x1E6969C28]);
  sub_1BEE472CC();
  sub_1BEE472DC();
  if (v37 == v36)
  {

    if (a2)
    {
LABEL_3:
      *a2 = sub_1BEE4696C();
    }
  }

  else
  {
    v35 = v14 - 1;
    if (v14 == 1)
    {

      v15 = v2;
      if (a2)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v14)
      {
        v31 = v8;
        v32 = v14;
        v33 = a2;
        v16 = v2;
        if (v35)
        {
          v17 = 0;
          v34 = v5 + 16;
          do
          {
            if (v17 >= *(v13 + 16))
            {
              __break(1u);
              goto LABEL_21;
            }

            (*(v5 + 16))(v10, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v4);
            v18 = sub_1BEE4696C();
            v19 = SBFolderRelativeListIndex(v18);

            v20 = sub_1BEE4696C();
            v21 = SBFolderRelativeIconIndex(v20);

            v22 = [v16 listAtIndex_];
            v23 = [v22 iconAtIndex_];
            objc_opt_self();
            v24 = [swift_dynamicCastObjCClassUnconditional() folder];
            if (!v24)
            {
              goto LABEL_23;
            }

            v25 = v24;
            ++v17;
            (*(v5 + 8))(v10, v4);

            v16 = v25;
          }

          while (v35 != v17);
          v26 = v33;
          if (!v33)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v26 = v33;
          if (!v33)
          {
LABEL_19:

            return;
          }
        }

        if (v32 <= *(v13 + 16))
        {
          v27 = v31;
          (*(v5 + 16))(v31, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, v4);

          v28 = sub_1BEE4696C();
          (*(v5 + 8))(v27, v4);
          v29 = v28;
          *v26 = v28;
          return;
        }
      }

      else
      {
LABEL_21:
        __break(1u);
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }
  }
}

uint64_t sub_1BEB49FBC(unint64_t *a1, void (*a2)(uint64_t))
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

id SBHUniqueIdentifierOfDataSource(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 uniqueIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1BEB4A694(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

BOOL SBHHardwareSupportsSearchAffordancePresentationAnimation()
{
  if (__sb__runningInSpringBoard())
  {
    v0 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v1 = [MEMORY[0x1E69DC938] currentDevice];
    v0 = [v1 userInterfaceIdiom] == 1;
  }

  return !v0;
}

uint64_t __SBLogClock_block_invoke()
{
  SBLogClock___logObj = os_log_create(*MEMORY[0x1E69D4388], "Clock");

  return MEMORY[0x1EEE66BB8]();
}

id SBHConfigurationIdentifierFromDataSource(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 configurationStorageIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SBHStringForIconGridSizeClass(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = [v2 descriptionForGridSizeClass:v1];

  if (!v3)
  {
    v3 = v1;
  }

  return v3;
}

uint64_t SBHIconGridSizeClassToStackLayoutSize(void *a1)
{
  v1 = SBHGetIconGridSizeClassInfoValue(a1, @"SBHIconGridSizeClassRegistrationInfoKeyATXStackLayoutSize");
  v2 = [v1 integerValue];

  return v2;
}

id SBLogWidgetIntent()
{
  if (SBLogWidgetIntent_onceToken != -1)
  {
    SBLogWidgetIntent_cold_1();
  }

  v1 = SBLogWidgetIntent___logObj;

  return v1;
}

uint64_t __SBLogWidgetMultiplexing_block_invoke()
{
  SBLogWidgetMultiplexing___logObj = os_log_create(*MEMORY[0x1E69D4388], "WidgetMultiplexing");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *SBHStringFromUIInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E808B930[a1 - 1];
  }
}

void sub_1BEB4BC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1BEB4E5F0()
{

  v0 = sub_1BEE4705C();

  return v0;
}

uint64_t sub_1BEB4EB0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = a4();

  return v7 & 1;
}

BOOL sub_1BEB4EBC4(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-v6 - 8];
  sub_1BEE4735C();
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7DF0);
    v8 = a3(0);
    v9 = swift_dynamicCast();
    (*(*(v8 - 8) + 56))(v7, v9 ^ 1u, 1, v8);
  }

  else
  {
    sub_1BEB4992C(v13, &qword_1EBDC7DE8);
    v8 = a3(0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  a3(0);
  v10 = (*(*(v8 - 8) + 48))(v7, 1, v8) == 0;
  sub_1BEB4992C(v7, a1);
  return v10;
}

double SBHNormalizedRectFromSubRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v20 = MinX / CGRectGetWidth(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetHeight(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetWidth(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetWidth(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetHeight(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetHeight(v28);
  return v20;
}

void sub_1BEB4F128(uint64_t a1)
{
  v2 = OBJC_IVAR___SBFolder_coalesceChangesTransaction;
  v3 = *&v1[OBJC_IVAR___SBFolder_coalesceChangesTransaction];
  if (!v3)
  {
    return;
  }

  v4 = v1;
  [*(v3 + 48) removeObject_];
  v5 = *&v1[v2];
  if (!v5)
  {
    return;
  }

  v6 = v5[6];

  if ([v6 count] > 0)
  {

    return;
  }

  swift_beginAccess();
  v7 = v5[2];
  swift_beginAccess();
  v8 = v5[3];
  if ((v7 & 0xC000000000000001) != 0)
  {

    if (sub_1BEE474CC())
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = *(v7 + 16);

  if (!v15)
  {
LABEL_9:

    v7 = 0;
  }

LABEL_10:
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (sub_1BEE474CC())
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!*(v8 + 16))
  {
LABEL_12:

    v8 = 0;
  }

LABEL_13:
  v43 = v5;
  if (v8 | v7)
  {
    v9 = [v4 icon];
    if (!v9)
    {
LABEL_25:
      v16 = [*&v4[OBJC_IVAR___SBFolder_folderObservers] allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
      v17 = sub_1BEE471AC();

      if (v17 >> 62)
      {
        v18 = sub_1BEE474CC();
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
LABEL_27:
          if (v18 < 1)
          {
            goto LABEL_78;
          }

          v19 = 0;
          v20 = v17 & 0xC000000000000001;
          v44 = v17;
          v46 = v18;
          while (1)
          {
            if (v20)
            {
              v21 = MEMORY[0x1BFB4EA90](v19, v17);
            }

            else
            {
              v21 = *(v17 + 8 * v19 + 32);
              swift_unknownObjectRetain();
            }

            if ([v21 respondsToSelector_])
            {
              break;
            }

            swift_unknownObjectRelease();
LABEL_30:
            if (v18 == ++v19)
            {

              v5 = v43;
              goto LABEL_44;
            }
          }

          if (v7)
          {
            sub_1BEB20D28(0, &qword_1EBDBFEA0);
            sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
            swift_unknownObjectRetain();
            v22 = sub_1BEE4724C();
            if (v8)
            {
LABEL_37:
              sub_1BEB20D28(0, &qword_1EBDBFEA0);
              sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
              v23 = sub_1BEE4724C();
LABEL_40:
              [v21 &selRef:v4 tapGestureDidChange:{v22, v23}];
              swift_unknownObjectRelease_n();

              v17 = v44;
              v18 = v46;
              goto LABEL_30;
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v22 = 0;
            if (v8)
            {
              goto LABEL_37;
            }
          }

          v23 = 0;
          goto LABEL_40;
        }
      }

LABEL_44:

      goto LABEL_45;
    }

    v10 = v9;
    if (v7)
    {

      sub_1BEE09F04(v11);

      v12 = sub_1BEE4724C();

      if (v8)
      {
LABEL_17:

        sub_1BEE09F04(v13);

        v14 = sub_1BEE4724C();

LABEL_24:
        [v10 noteContainedIconsAdded:v12 removed:v14];

        goto LABEL_25;
      }
    }

    else
    {
      v12 = 0;
      if (v8)
      {
        goto LABEL_17;
      }
    }

    v14 = 0;
    goto LABEL_24;
  }

LABEL_45:
  swift_beginAccess();
  v24 = v5[4];
  if ((v24 & 0xC000000000000001) != 0)
  {

    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    sub_1BEE472AC();
    v24 = v50;
    v25 = v51;
    v26 = v52;
    v27 = v53;
    v28 = v54;
  }

  else
  {
    v29 = -1 << *(v24 + 32);
    v25 = v24 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v24 + 56);

    v27 = 0;
  }

  v32 = (v26 + 64) >> 6;
  v45 = v25;
  v47 = v24;
  while (v24 < 0)
  {
    if (!sub_1BEE474FC() || (sub_1BEB20D28(0, &qword_1EBDBFEA0), swift_dynamicCast(), v37 = v49, v35 = v27, v36 = v28, !v49))
    {
LABEL_74:
      sub_1BEB2AAE8();

      *&v4[v2] = 0;

      return;
    }

LABEL_62:
    v48 = v36;
    v38 = [*&v4[OBJC_IVAR___SBFolder_folderObservers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
    v39 = sub_1BEE471AC();

    if (v39 >> 62)
    {
      v40 = sub_1BEE474CC();
      if (!v40)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_52;
      }
    }

    if (v40 < 1)
    {
      goto LABEL_77;
    }

    for (i = 0; i != v40; ++i)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1BFB4EA90](i, v39);
      }

      else
      {
        v42 = *(v39 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v42 respondsToSelector_])
      {
        [v42 folder:v4 didMoveIcon:v37];
      }

      swift_unknownObjectRelease();
    }

LABEL_52:

    v27 = v35;
    v24 = v47;
    v28 = v48;
    v25 = v45;
  }

  v33 = v27;
  v34 = v28;
  v35 = v27;
  if (v28)
  {
LABEL_58:
    v36 = (v34 - 1) & v34;
    v37 = *(*(v24 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
    if (!v37)
    {
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_74;
    }

    v34 = *(v25 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_1BEB4F8C0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1BEE474CC();
LABEL_9:
  result = sub_1BEE475DC();
  *v1 = result;
  return result;
}

uint64_t sub_1BEB4FB84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = [a1 icon];
  if (v8)
  {
    v9 = v8;
    v10 = [v2 indexPathForIcon_];
    if (v10)
    {
      v11 = v10;
      sub_1BEE4697C();

      v12 = sub_1BEE469DC();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {

      v16 = sub_1BEE469DC();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_1BEB31BF4(v7, a2);
  }

  else
  {
    v13 = sub_1BEE469DC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

void *sub_1BEB5018C()
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1BEE474CC())
    {
      sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
    }

    else
    {
      v3 = MEMORY[0x1E69E7CD0];
    }

    v0[2] = v3;
    if (sub_1BEE474CC())
    {
      sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }

    v0[3] = v4;
    if (sub_1BEE474CC())
    {
      sub_1BEDF90B4(MEMORY[0x1E69E7CC0], &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
    }

    else
    {
      v1 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
    v0[2] = MEMORY[0x1E69E7CD0];
    v0[3] = v1;
  }

  v0[4] = v1;
  v0[5] = sub_1BEB539C8(MEMORY[0x1E69E7CC0]);
  v0[6] = [objc_opt_self() weakObjectsHashTable];
  return v0;
}

unint64_t sub_1BEB502DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  *(swift_allocObject() + 16) = a2;
  if (a1 >> 62)
  {
LABEL_18:
    v6 = sub_1BEE474CC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      v12 = 0;
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB4EA90](v7, a1);
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    v10 = a5(a4);

    if (v10)
    {
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_17;
    }
  }

  v12 = v7;
LABEL_15:

  return v12;
}

id sub_1BEB50634()
{
  if ((v0[OBJC_IVAR____TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion_isInvalidated] & 1) == 0)
  {
    v0[OBJC_IVAR____TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion_isInvalidated] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1BEB4F128(v0);
    }
  }

  v4.receiver = v0;
  v4.super_class = _s26FolderTransactionAssertionCMa();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BEB50DA8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BEE4695C();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v7 = sub_1BEB49FBC(&unk_1EBDBFFB0, MEMORY[0x1E6969B50]);
  v8 = &unk_1BEE8B0A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A00);
  sub_1BEB53980(&qword_1EBDBFF80, &qword_1EBDC7A00);
  v54 = v6;
  v9 = a1;
  v50 = v4;
  sub_1BEE4743C();
  if (a1 >> 62)
  {
    v10 = sub_1BEE474CC();
    v56 = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_15:
    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v11 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB4EA90](v11, a1);
    }

    else
    {
      v12 = *(a1 + 8 * v11 + 32);
    }

    v8 = v12;
    v13 = [v2 lists];
    sub_1BEB20D28(0, &qword_1EBDBFF10);
    v14 = sub_1BEE471AC();

    sub_1BEB31AEC(v8, v14, &qword_1EBDBFF10);
    v16 = v15;

    if (v16)
    {
    }

    else
    {
      sub_1BEE4691C();
      v8 = v8;
      MEMORY[0x1BFB4E650]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BEE471BC();
      }

      sub_1BEE471DC();

      v55 = v59;
    }

    ++v11;
  }

  while (v56 != v11);
LABEL_16:
  if (v55 >> 62)
  {
    v17 = sub_1BEE474CC();
  }

  else
  {
    v17 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v56;
  v53 = a1;
  if (v17)
  {
    v19 = [*&v2[OBJC_IVAR___SBFolder_folderObservers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
    v7 = sub_1BEE471AC();

    if (!(v7 >> 62))
    {
      v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_21:
        if (v20 < 1)
        {
          __break(1u);
          goto LABEL_70;
        }

        v21 = 0;
        v8 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1BFB4EA90](v21, v7);
          }

          else
          {
            v24 = *(v7 + 8 * v21 + 32);
            swift_unknownObjectRetain();
          }

          if ([v24 respondsToSelector_])
          {
            sub_1BEB20D28(0, &qword_1EBDBFF10);
            swift_unknownObjectRetain();
            v22 = sub_1BEE4719C();
            v23 = sub_1BEE468FC();
            [v24 folder:v2 willRemoveLists:v22 atIndexes:v23];
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v21;
        }

        while (v20 != v21);
      }

LABEL_33:

      v9 = v53;
      v18 = v56;
      goto LABEL_34;
    }

LABEL_32:
    v20 = sub_1BEE474CC();
    if (v20)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_34:
  if (v18)
  {
    v25 = 0;
    v26 = v9 & 0xC000000000000001;
    v51 = v9 & 0xFFFFFFFFFFFFFF8;
    v52 = v58;
    while (1)
    {
      if (v26)
      {
        v17 = MEMORY[0x1BFB4EA90](v25, v9);
      }

      else
      {
        if (v25 >= *(v51 + 16))
        {
          goto LABEL_62;
        }

        v17 = *(v9 + 8 * v25 + 32);
      }

      v28 = v17;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v30 = [v2 lists];
      sub_1BEB20D28(0, &qword_1EBDBFF10);
      v31 = sub_1BEE471AC();

      sub_1BEB31AEC(v28, v31, &qword_1EBDBFF10);
      v8 = v32;

      if (v8)
      {
      }

      else
      {
        [v28 setDelegate_];
        [v28 removeListObserver_];
        SBTreeNodeSetParent(v28, 0);
        v8 = swift_allocObject();
        *(v8 + 16) = v2;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1BEDFB49C;
        *(v33 + 24) = v8;
        v58[2] = sub_1BEDCAB28;
        v58[3] = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v58[0] = sub_1BEB5E290;
        v58[1] = &block_descriptor_190;
        v34 = _Block_copy(aBlock);
        v35 = v2;

        v18 = v56;

        [v28 enumerateFolderIconsUsingBlock_];

        _Block_release(v34);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_46;
        }
      }

      ++v25;
      v27 = v29 == v18;
      v9 = v53;
      if (v27)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v47 = v17;
    v39 = sub_1BEE474CC();
    v17 = v47;
    if (v39 < v47)
    {
      goto LABEL_64;
    }

    goto LABEL_48;
  }

LABEL_46:
  v37 = OBJC_IVAR___SBFolder__lists;
  swift_beginAccess();
  v8 = v55;
  swift_bridgeObjectRetain_n();
  v17 = sub_1BEB52A10(&v2[v37], v8);
  v38 = *&v2[v37];
  if (v38 >> 62)
  {
    goto LABEL_63;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39 < v17)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    if (!sub_1BEE474CC())
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

LABEL_48:
  sub_1BEB529E8(v17, v39);
  swift_endAccess();

  if (v8 >> 62)
  {
    goto LABEL_65;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_66:
    (*(v49 + 8))(v54, v50);
  }

LABEL_50:
  v40 = [*&v2[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v41 = sub_1BEE471AC();

  if (!(v41 >> 62))
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_52;
    }

LABEL_68:

    [v2 markIconStateDirty];
    return (*(v49 + 8))(v54, v50);
  }

  v42 = sub_1BEE474CC();
  if (!v42)
  {
    goto LABEL_68;
  }

LABEL_52:
  if (v42 >= 1)
  {
    for (i = 0; i != v42; ++i)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1BFB4EA90](i, v41);
      }

      else
      {
        v46 = *(v41 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v46 respondsToSelector_])
      {
        sub_1BEB20D28(0, &qword_1EBDBFF10);
        swift_unknownObjectRetain();
        v44 = sub_1BEE4719C();
        v45 = sub_1BEE468FC();
        [v46 folder:v2 didRemoveLists:v44 atIndexes:v45];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_68;
  }

LABEL_70:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1BEB5172C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1BEB51780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___SBFolder_coalesceChangesTransaction;
  if (!*(v2 + OBJC_IVAR___SBFolder_coalesceChangesTransaction))
  {
    _s17FolderTransactionCMa();
    swift_allocObject();
    *(v2 + v6) = sub_1BEB5018C();
  }

  v7 = _s26FolderTransactionAssertionCMa();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion_isInvalidated] = 0;
  swift_unknownObjectWeakAssign();
  v9 = &v8[OBJC_IVAR____TtCE15SpringBoardHomeCSo8SBFolderP33_32AF87134CCDD853A8EC04404E04D5EB26FolderTransactionAssertion_reason];
  *v9 = a1;
  v9[1] = a2;
  v13.receiver = v8;
  v13.super_class = v7;

  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = *(v3 + v6);
  if (v11)
  {
    [*(v11 + 48) addObject_];
  }

  return v10;
}

void sub_1BEB51898(void *a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v52) = a5;
  v9 = [a1 folder];
  if (!v9)
  {
    return;
  }

  v45 = v9;
  type metadata accessor for SBFolder(v9);
  if ((sub_1BEE473CC() & 1) == 0)
  {
    sub_1BEB51898(a1, a2 & 1, a3, a4, 0);

    return;
  }

  v10 = sub_1BEE4705C();
  v11 = [v6 startCoalescingContentChangesForReason_];

  v12 = [v6 indexOfList_];
  v55 = MEMORY[0x1E69E7CC0];
  v13 = [v6 nextVisibleListIndexAfterIndex_];
  if (([v6 isValidListIndex_] & 1) == 0)
  {
    v53 = a1;
    v14 = 0;
LABEL_41:
    v16 = 0;
    v46 = MEMORY[0x1E69E7CC0];
    if ((a2 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_42;
  }

  v14 = [v6 listAtIndex_];
  v49 = OBJC_IVAR___SBFolder_folderObservers;
  v53 = a1;
  v15 = v14;
  if (!v14)
  {
    goto LABEL_41;
  }

  v43 = v11;
  v51 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  do
  {
    v16 = v15;
    if ([v15 overflowSlotCount] < 1)
    {

      goto LABEL_57;
    }

    v44 = v13;
    v17 = [v16 overflowSlotCount];
    v18 = v16;
    v50 = v16;
    while (1)
    {
      if (v52)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = a3;
        *(v19 + 24) = a4;
        sub_1BEB326F8(v51);
        v20 = swift_allocObject();
        v51 = sub_1BEDFB440;
        *(v20 + 16) = sub_1BEDFB440;
        *(v20 + 24) = v19;
        aBlock[4] = sub_1BEDFB470;
        aBlock[5] = v20;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BEE3516C;
        aBlock[3] = &block_descriptor_181;
        v21 = _Block_copy(aBlock);

        v22 = [v18 directlyContainedIconPassingTest_];
        _Block_release(v21);
        LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

        if (v21)
        {
          goto LABEL_60;
        }

        if (!v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v22 = [v18 firstIcon];
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      v23 = v22;
      if (![v53 allowsAddingIcon:v23 ignoringPlaceholders:0])
      {
        break;
      }

      v24 = [v23 gridSizeClass];
      v25 = [v18 gridSizeForGridSizeClass_];

      Area = SBHIconGridSizeGetArea(v25);
      v27 = &v17[-Area];
      if (v17 < Area)
      {
        break;
      }

      v28 = [*&v6[v49] allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
      v29 = sub_1BEE471AC();

      if (v29 >> 62)
      {
        v30 = sub_1BEE474CC();
        if (!v30)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v30)
        {
          goto LABEL_8;
        }
      }

      if (v30 < 1)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      for (i = 0; i != v30; ++i)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1BFB4EA90](i, v29);
        }

        else
        {
          v32 = *(v29 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v32 respondsToSelector_])
        {
          [v32 folder:v6 willRestoreOverflowIcon:v23 toList:v53];
        }

        swift_unknownObjectRelease();
      }

LABEL_8:

      v18 = v50;
      [v50 removeIcon:v23 options:0x100000];

      v17 = v27;
    }

LABEL_29:
    [v18 setOverflowSlotCount_];
    if ([v18 isEmpty])
    {
      v33 = v18;
      MEMORY[0x1BFB4E650]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BEE471BC();
        v18 = v50;
      }

      sub_1BEE471DC();

      v46 = v55;
    }

    else
    {
    }

    v13 = [v6 nextVisibleListIndexAfterIndex_];
    if (![v6 isValidListIndex_])
    {

      break;
    }

    v34 = [v6 listAtIndex_];

    v15 = v34;
    v53 = v18;
  }

  while (v34);
  v16 = 0;
  v53 = v18;
LABEL_57:
  v11 = v43;
  v14 = v51;
  if ((a2 & 1) == 0)
  {
LABEL_58:

    v42 = v53;
    goto LABEL_65;
  }

LABEL_42:
  v43 = v11;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v18 = v46;
  v51 = v14;
  v52 = v16;
  if (v46 >> 62)
  {
    goto LABEL_63;
  }

  v35 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = v46; v35; j = v18)
  {
    v37 = 0;
    v38 = j & 0xC000000000000001;
    v39 = j & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v38)
      {
        v40 = MEMORY[0x1BFB4EA90](v37, j);
      }

      else
      {
        if (v37 >= *(v39 + 16))
        {
          goto LABEL_62;
        }

        v40 = j[v37 + 4];
      }

      v41 = v40;
      v18 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if ([v40 isEmpty])
      {
        sub_1BEE475FC();
        sub_1BEE4761C();
        sub_1BEE4762C();
        sub_1BEE4760C();
        j = v46;
      }

      else
      {
      }

      ++v37;
      if (v18 == v35)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v35 = sub_1BEE474CC();
  }

LABEL_64:

  sub_1BEB50DA8(aBlock[0]);

  v11 = v43;
  v14 = v51;
  v42 = v52;
LABEL_65:

  [v11 invalidate];
  swift_unknownObjectRelease();
  sub_1BEB326F8(v14);
}

uint64_t sub_1BEB520B4()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB4EA90](v3, v2);
LABEL_11:
        v6 = v5;
        if (([v5 isHidden] & 1) == 0)
        {
          sub_1BEB51898(v6, 0, sub_1BEDDE0A4, 0, 0);
        }

        if (!v3)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v5 = *(v2 + 32 + 8 * v3);
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        v3 = sub_1BEE474CC();
        if (!v3)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
}

uint64_t sub_1BEB5227C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFB4EA90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BEE474CC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1BEB527E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1BEB20D28(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BEE474CC();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1BEE474CC();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}