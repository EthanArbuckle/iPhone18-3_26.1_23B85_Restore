void *sub_273FBB4D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_273FBB4EC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_273FBB520()
{
  v1 = type metadata accessor for NetworkListRowView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);

  v7 = *(v0 + v3 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 32))
  {
    v9 = *(v6 + 5);
  }

  if (*(v6 + 7))
  {
    v10 = *(v6 + 8);
  }

  v11 = *(v6 + 10);

  v12 = v1[10];
  v13 = sub_274051948();
  v14 = *(*(v13 - 8) + 8);
  v14(&v6[v12], v13);
  v14(&v6[v1[11]], v13);
  v14(&v6[v1[12]], v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_273FBB690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_273FBB6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_274051948();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273FBB7A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_274051948();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273FBB854()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBB8C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2740510F8();
  *a1 = result;
  return result;
}

uint64_t sub_273FBB8F0(uint64_t *a1)
{
  v1 = *a1;

  return sub_274051108();
}

uint64_t sub_273FBB958()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBB990()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBB9D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274051098();
  *a1 = result;
  return result;
}

uint64_t sub_273FBBA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353A8, &qword_27405A0D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273FBBA98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2740510D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_273FBBB0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_273FBBB84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBBBC4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBBC04()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_273FBBEA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_273FBBEFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_274025A24(v4);
}

uint64_t sub_273FBBF58()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_273FBC024()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC05C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBC094()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC0CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC104()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_273FBC25C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_273FBC294()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBC5DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBC6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_273FBC728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273FBC790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274051058();
  *a1 = result;
  return result;
}

uint64_t sub_273FBC7BC(uint64_t *a1)
{
  v1 = *a1;

  return sub_274051068();
}

uint64_t sub_273FBC7E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2740510B8();
  *a1 = result;
  return result;
}

uint64_t sub_273FBC814(uint64_t *a1)
{
  v1 = *a1;

  return sub_2740510C8();
}

uint64_t sub_273FBC8CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBC904@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_273FBC95C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_273FBCA00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_273FBCA38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_273FBCA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_274051948();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_273FBCB38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_274051948();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_273FBCC28()
{
  v1 = sub_274050FE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for NetworkList() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[8];
  v12 = sub_274051948();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  v13 = *(v0 + v8 + v6[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

id sub_273FBCE04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hash];
  *a2 = result;
  return result;
}

uint64_t sub_273FBCE38()
{
  v1 = type metadata accessor for NetworkListRowView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for NetworkList();
  v6 = *(*(v5 - 8) + 80);
  v20 = *(*(v5 - 8) + 64);

  v7 = (v0 + v3);
  v8 = *(v0 + v3 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 32))
  {
    v10 = *(v7 + 5);
  }

  if (*(v7 + 7))
  {
    v11 = *(v7 + 8);
  }

  v12 = v2 | v6;
  v13 = (v3 + v4 + v6) & ~v6;
  v14 = *(v7 + 10);

  v15 = v1[10];
  v16 = sub_274051948();
  v17 = *(*(v16 - 8) + 8);
  v17(&v7[v15], v16);
  v17(&v7[v1[11]], v16);
  v17(&v7[v1[12]], v16);

  v17((v0 + v13 + *(v5 + 24)), v16);
  v18 = *(v0 + v13 + *(v5 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + v20, v12 | 7);
}

uint64_t sub_273FBD094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A30, &qword_27405B828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273FBD150()
{
  v1 = (type metadata accessor for NetworkList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_274051948();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_273FBD2BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Class WFManagedConfigurationUIClassFromString(void *a1)
{
  v1 = a1;
  v2 = NSClassFromString(v1);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PreferenceBundles/ManagedConfigurationUI.bundle"];
    [v3 load];
    v2 = NSClassFromString(v1);
  }

  v4 = v2;

  return v2;
}

__CFString *WFStringFromDeviceCapability(uint64_t a1)
{
  v1 = @"WFDeviceCapabilityNone";
  if (a1 == 3)
  {
    v1 = @"WFDeviceCapabilityChinaGreenTea";
  }

  if (a1 == 2)
  {
    return @"WFDeviceCapabilityChinaWiFiOnly";
  }

  else
  {
    return v1;
  }
}

uint64_t WFSignalBarsFromScaledRSSI(float a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 0;
  }

  v3 = vcvtps_u32_f32(a1 * 3.0);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t __WFScanRecordAlphaSortCompartor_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 title];
  if (v6)
  {
  }

  else
  {
    v7 = [v5 title];

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [v4 title];

  if (v8)
  {
    v9 = [v5 title];

    if (v9)
    {
      v10 = [v4 title];
      v11 = [v5 title];
      v7 = [v10 caseInsensitiveCompare:v11];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

LABEL_9:

  return v7;
}

uint64_t __WFScanRecordDefaultSortCompartor_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isInstantHotspot] && !objc_msgSend(v5, "isInstantHotspot"))
  {
    goto LABEL_11;
  }

  if ([v4 isInstantHotspot] & 1) == 0 && (objc_msgSend(v5, "isInstantHotspot"))
  {
    goto LABEL_12;
  }

  v6 = [v4 title];
  if (v6)
  {

    goto LABEL_8;
  }

  v7 = [v5 title];

  if (v7)
  {
LABEL_8:
    v8 = [v4 title];

    if (v8)
    {
      v9 = [v5 title];

      if (v9)
      {
        v10 = [v4 title];
        v11 = [v5 title];
        v7 = [v10 localizedCaseInsensitiveCompare:v11];

        goto LABEL_13;
      }

LABEL_12:
      v7 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v7 = -1;
  }

LABEL_13:

  return v7;
}

uint64_t WFCurrentDeviceCapability()
{
  if (WFIsGreenTeaDevice___greenTeaCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_1();
  }

  if (WFIsGreenTeaDevice___greenTea)
  {
    return 3;
  }

  if (WFHasWAPICapability___wapiEnabledCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_2();
  }

  if (WFHasWAPICapability___wapiCapability != 1)
  {
    return 1;
  }

  if (WFIsWAPINotAvailable___wapiDisabledToken != -1)
  {
    WFCurrentDeviceCapability_cold_3();
  }

  if (WFIsWAPINotAvailable___wapiDisabled)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t WFIsGreenTeaDevice()
{
  if (WFIsGreenTeaDevice___greenTeaCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_1();
  }

  return WFIsGreenTeaDevice___greenTea;
}

uint64_t WFHasWAPICapability()
{
  if (WFHasWAPICapability___wapiEnabledCapabilityToken != -1)
  {
    WFCurrentDeviceCapability_cold_2();
  }

  return WFHasWAPICapability___wapiCapability;
}

uint64_t WFIsWAPINotAvailable()
{
  if (WFIsWAPINotAvailable___wapiDisabledToken != -1)
  {
    WFCurrentDeviceCapability_cold_3();
  }

  return WFIsWAPINotAvailable___wapiDisabled;
}

void __WFIsWAPINotAvailable_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = MGGetProductType();
  v1 = MGGetStringAnswer();
  v2 = MGGetBoolAnswer();
  if (v0 <= 2516717267)
  {
    if (v0 > 2023824666)
    {
      if (v0 > 2262113698)
      {
        if (v0 == 2262113699)
        {
          goto LABEL_26;
        }

        v3 = 2458172802;
      }

      else
      {
        if (v0 == 2023824667)
        {
          goto LABEL_26;
        }

        v3 = 2158787296;
      }
    }

    else if (v0 > 1353145732)
    {
      if (v0 == 1353145733)
      {
        goto LABEL_26;
      }

      v3 = 1868379043;
    }

    else
    {
      if (v0 == 746003606)
      {
        goto LABEL_26;
      }

      v3 = 1119807502;
    }

    goto LABEL_25;
  }

  if (v0 <= 3054476160)
  {
    if (v0 > 2628394913)
    {
      if (v0 == 2628394914)
      {
        goto LABEL_26;
      }

      v3 = 2903084588;
    }

    else
    {
      if (v0 == 2516717268)
      {
        goto LABEL_26;
      }

      v3 = 2614323575;
    }

    goto LABEL_25;
  }

  if (v0 <= 3397214290)
  {
    if (v0 == 3054476161)
    {
      goto LABEL_26;
    }

    v3 = 3101941570;
LABEL_25:
    if (v0 != v3)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v0 != 3397214291 && v0 != 3707345671)
  {
    v3 = 3645319985;
    goto LABEL_25;
  }

LABEL_26:
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v9 = 136315138;
    v10 = "WFIsWAPINotAvailable_block_invoke";
    _os_log_impl(&dword_273FB9000, v4, v5, "%s: wapi capability is disabled for device", &v9, 0xCu);
  }

  WFIsWAPINotAvailable___wapiDisabled = 1;
LABEL_31:
  if ((v2 & 1) == 0 && [v1 intValue] >= 4377)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      v9 = 136315138;
      v10 = "WFIsWAPINotAvailable_block_invoke";
      _os_log_impl(&dword_273FB9000, v6, v7, "%s: wapi capability is disabled for WiFi-only product", &v9, 0xCu);
    }

    WFIsWAPINotAvailable___wapiDisabled = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __WFIsGreenTeaDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  WFIsGreenTeaDevice___greenTea = result;
  return result;
}

uint64_t __WFHasWAPICapability_block_invoke()
{
  result = MGGetBoolAnswer();
  WFHasWAPICapability___wapiCapability = result;
  return result;
}

id WFWiFiTitleString()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Wfairportviewc.isa)];
  v1 = WFCurrentDeviceCapability();
  if ((v1 & 6) == 2 || v1 == 4)
  {
    v3 = @"kWFLocWiFiPowerTitleCH";
  }

  else
  {
    v3 = @"kWFLocWiFiPowerTitle";
  }

  v4 = [v0 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v4;
}

uint64_t WFPowerStateToggleToString(unint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      v6 = 136315394;
      v7 = "WFPowerStateToggleToString";
      v8 = 2048;
      v9 = a1;
      _os_log_impl(&dword_273FB9000, v3, v4, "%s: %lu is invalid WFPowerState", &v6, 0x16u);
    }

    result = 0;
  }

  else
  {
    result = *(&off_279EC5328 + a1);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id WFWiFiSecurityModeLocalizedStringFromOtherSecurityMode(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.WiFiKitUI"];
  v3 = v2;
  if ((a1 - 1) > 9)
  {
    v4 = @"kWFLocSecurityNoneTitle";
  }

  else
  {
    v4 = *(&off_279EC5348 + a1 - 1);
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

uint64_t _WFIsSupportedContentSizeCategoryForInsetTableView(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D76820]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D76818]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D767F0]))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D767E8]] ^ 1;
  }

  return v2;
}

__CFString *WFCurrentDeviceType()
{
  v0 = MGCopyAnswer();
  if ([(__CFString *)v0 isEqualToString:@"Unknown"])
  {

    v0 = @"iPhone";
  }

  return v0;
}

CFStringRef WFCopyProcessIdentifier()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
  {
    v2 = Identifier;
    CFRetain(Identifier);
    return v2;
  }

  else
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = getprogname();
    v6 = getpid();
    return CFStringCreateWithFormat(v4, 0, @"%s (%d)", v5, v6);
  }
}

uint64_t WFValidPasswordForSecurityMode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  v6 = [v5 invertedSet];

  v7 = [v3 rangeOfCharacterFromSet:v6];
  if ((a1 - 4) <= 0x3C && ((1 << (a1 - 4)) & 0x1000000000000011) != 0 || a1 == 520 || a1 == 512)
  {
    v9 = v4 == 64 && v7 == 0x7FFFFFFFFFFFFFFFLL;
    v10 = (v4 - 8) < 0x38 || v9;
  }

  else
  {
    v10 = v4 != 0;
  }

  return v10;
}

uint64_t WFSecurityModeRequiresPasswordOnly(unint64_t a1)
{
  v1 = (a1 >> 3) & 1;
  if (a1 == 64 || a1 == 512)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 256)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 4)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t WFSecurityModeIsEnterprise(uint64_t a1)
{
  v1 = a1 == 1024;
  if (a1 == 32)
  {
    v1 = 1;
  }

  return a1 == 16 || v1;
}

CFTypeRef WFCreateSecTrustFromCertificateChain(void *a1)
{
  v1 = a1;
  v2 = WFCreateSecTrustFromCertificateChain___eapLibraryPointer;
  if (!WFCreateSecTrustFromCertificateChain___eapLibraryPointer)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/EAP8021X.framework/EAP8021X", 1);
    WFCreateSecTrustFromCertificateChain___eapLibraryPointer = v2;
  }

  if (v2)
  {
    v3 = WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy = dlsym(v2, "EAPSecPolicyCopy");
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v1 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      v10 = SecCertificateCreateWithData(v9, [v1 objectAtIndex:v8]);
      if (v10)
      {
        v11 = v10;
        [v4 addObject:v10];
        CFRelease(v11);
      }

      cf = 0;
      if (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)
      {
        (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)(&cf);
        if (cf)
        {
          [v5 addObject:?];
          CFRelease(cf);
        }
      }

      ++v8;
    }

    while (v7 != v8);
  }

  if ([v4 count])
  {
    cf = 0;
    if (SecTrustCreateWithCertificates(v4, v5, &cf))
    {
      v12 = 0;
    }

    else
    {
      v12 = cf;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t WFWiFiSecurityModeFromOtherSecurityMode(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_274059148[a1 - 1];
  }
}

id WFWiFiLocalizedStringFromSecurityMode(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.WiFiKitUI"];
  v3 = v2;
  v4 = @"kWFLocSecurityWEPTitle";
  if (a1 <= 63)
  {
    if (a1 <= 7)
    {
      if (a1 == 1)
      {
        goto LABEL_30;
      }

      if (a1 != 2)
      {
        if (a1 == 4)
        {
          v4 = @"kWFLocSecurityWPAPersonalTitle";
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      v4 = @"kWFLocSecurityDynamicWEPTitle";
      goto LABEL_30;
    }

    switch(a1)
    {
      case 8:
        v4 = @"kWFLocSecurityWPA2PersonalTitle";
        goto LABEL_30;
      case 16:
        v4 = @"kWFLocSecurityWPAEnterpriseTitle";
        goto LABEL_30;
      case 32:
LABEL_22:
        v4 = @"kWFLocSecurityWPA2EnterpriseTitle";
        goto LABEL_30;
    }

LABEL_19:
    v4 = @"kWFLocSecurityNoneTitle";
    goto LABEL_30;
  }

  if (a1 <= 511)
  {
    switch(a1)
    {
      case 64:
        v4 = @"kWFLocSecurityWAPITitle";
        break;
      case 128:
        v4 = @"kWFLocSecurityWAPIEnterpriseTitle";
        break;
      case 256:
        goto LABEL_30;
      default:
        goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (a1 > 1023)
  {
    if (a1 == 1024)
    {
      v4 = @"kWFLocSecurityWPA3EnterpriseTitle";
      goto LABEL_30;
    }

    if (a1 == 1075)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (a1 != 512)
  {
    if (a1 == 520)
    {
      v4 = @"kWFLocSecurityWPA2WPA3PersonalTitle";
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v4 = @"kWFLocSecurityWPA3PersonalTitle";
LABEL_30:
  v5 = [v2 localizedStringForKey:v4 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

__CFString *WFStringFromWFSecurityMode(uint64_t a1)
{
  if (a1 <= 63)
  {
    v1 = @"WPA Enterprise";
    v10 = @"WPA2 Enterprise";
    if (a1 != 32)
    {
      v10 = 0;
    }

    if (a1 != 16)
    {
      v1 = v10;
    }

    v11 = @"WPA Personal";
    v12 = @"WPA2 Personal";
    if (a1 != 8)
    {
      v12 = 0;
    }

    if (a1 != 4)
    {
      v11 = v12;
    }

    if (a1 <= 15)
    {
      v1 = v11;
    }

    v5 = @"Open";
    v13 = @"WEP";
    v14 = @"LEAP";
    if (a1 != 2)
    {
      v14 = 0;
    }

    if (a1 != 1)
    {
      v13 = v14;
    }

    if (a1)
    {
      v5 = v13;
    }

    v9 = a1 <= 3;
  }

  else
  {
    v1 = @"Any EAP Encryption";
    v2 = @"OWE";
    if (a1 != 2048)
    {
      v2 = 0;
    }

    if (a1 != 1075)
    {
      v1 = v2;
    }

    v3 = @"WPA3 Transition";
    v4 = @"WPA3 Enterprise";
    if (a1 != 1024)
    {
      v4 = 0;
    }

    if (a1 != 520)
    {
      v3 = v4;
    }

    if (a1 <= 1074)
    {
      v1 = v3;
    }

    v5 = @"WEP 40_128";
    v6 = @"WPA3 Personal";
    if (a1 != 512)
    {
      v6 = 0;
    }

    if (a1 != 256)
    {
      v5 = v6;
    }

    v7 = @"WAPI Personal";
    v8 = @"WAPI Enterprise";
    if (a1 != 128)
    {
      v8 = 0;
    }

    if (a1 != 64)
    {
      v7 = v8;
    }

    if (a1 <= 255)
    {
      v5 = v7;
    }

    v9 = a1 <= 519;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

__CFString *WFStringFromWFSecurityModeExt(uint64_t a1)
{
  v1 = a1;
  if (a1 > 127)
  {
    if (a1 > 1074)
    {
      if (a1 == 1075)
      {
        v2 = @"Any EAP Encryption";
        goto LABEL_27;
      }

      if (a1 == 2048)
      {
        v2 = @"OWE";
        goto LABEL_27;
      }
    }

    else
    {
      if (a1 == 128)
      {
        v2 = @"WAPI Enterprise";
        goto LABEL_27;
      }

      if (a1 == 256)
      {
        v2 = @"WEP 40_128";
        goto LABEL_27;
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = @"LEAP";
      goto LABEL_27;
    }

    if (a1 == 64)
    {
      v2 = @"WAPI Personal";
      goto LABEL_27;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = @"Open";
      goto LABEL_27;
    }

    if (a1 == 1)
    {
      v2 = @"WEP";
      goto LABEL_27;
    }
  }

  v3 = [MEMORY[0x277CCAB68] string];
  v2 = v3;
  if ((v1 & 0x400) != 0)
  {
    [(__CFString *)v3 appendString:@"'WPA3 Enterprise'"];
    if ((v1 & 0x20) == 0)
    {
LABEL_22:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else if ((v1 & 0x20) == 0)
  {
    goto LABEL_22;
  }

  [(__CFString *)v2 appendString:@"'WPA2 Enterprise'"];
  if ((v1 & 0x10) == 0)
  {
LABEL_23:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_32:
  [(__CFString *)v2 appendString:@"'WPA Enterprise'"];
  if ((v1 & 0x200) == 0)
  {
LABEL_24:
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  [(__CFString *)v2 appendString:@"'WPA3 Personal'"];
  if ((v1 & 8) == 0)
  {
LABEL_25:
    if ((v1 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_34:
  [(__CFString *)v2 appendString:@"'WPA2 Personal'"];
  if ((v1 & 4) != 0)
  {
LABEL_26:
    [(__CFString *)v2 appendString:@"'WPA Personal'"];
  }

LABEL_27:

  return v2;
}

uint64_t WFSSIDIsValid(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 isEqualToString:@" "] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFAllIdentities(OSStatus *a1)
{
  keys[5] = *MEMORY[0x277D85DE8];
  result = 0;
  v2 = *MEMORY[0x277CDC568];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v2;
  v3 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v3;
  keys[4] = *MEMORY[0x277CDC5D0];
  v4 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC240];
  values[1] = v4;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = @"com.apple.identities";
  values[4] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &result);
  CFRelease(v5);
  if (v6 == -25300)
  {
LABEL_6:
    v7 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6)
  {
    NSLog(&cfstr_SStatusLd.isa, "WFAllIdentities", a1);
    goto LABEL_6;
  }

  v7 = result;
  if (a1)
  {
LABEL_7:
    *a1 = v6;
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t WFWAPIRootCertificateListCreate(CFTypeRef *a1)
{
  keys[4] = *MEMORY[0x277D85DE8];
  result = 0;
  v2 = *MEMORY[0x277CDC568];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v2;
  v3 = *MEMORY[0x277CDC5D0];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v3;
  v4 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC230];
  values[1] = v4;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &result);
  CFRelease(v5);
  if (v6 != -25300)
  {
    if (v6)
    {
      NSLog(&cfstr_SStatusLd.isa, "WFWAPIRootCertificateListCreate", v6);
    }

    else
    {
      *a1 = result;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t WFWAPIIdentityListCreate(__CFArray **a1, __CFArray **a2)
{
  keys[5] = *MEMORY[0x277D85DE8];
  result = 0;
  v4 = *MEMORY[0x277CDC120];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v4;
  v5 = *MEMORY[0x277CDC428];
  keys[2] = *MEMORY[0x277CDC558];
  keys[3] = v5;
  keys[4] = *MEMORY[0x277CDC5D0];
  values[0] = *MEMORY[0x277CDC238];
  values[1] = @"com.apple.managedconfiguration.wapi-identity";
  v6 = *MEMORY[0x277CDC430];
  v32 = *MEMORY[0x277CBED28];
  v33 = v6;
  v34 = v32;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = SecItemCopyMatching(v8, &result);
  CFRelease(v8);
  if (v9 || !result)
  {
    if (v9 == -25300)
    {
      goto LABEL_25;
    }

LABEL_24:
    NSLog(&cfstr_SStatusLd.isa, "WFWAPIIdentityListCreate", v9);
    goto LABEL_25;
  }

  v10 = CFGetTypeID(result);
  if (v10 != CFArrayGetTypeID() || !CFArrayGetCount(result))
  {
    goto LABEL_24;
  }

  if (CFArrayGetCount(result) >= 1)
  {
    v11 = 0;
    Mutable = 0;
    v13 = 0;
    do
    {
      error = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(result, v11);
      if (ValueAtIndex)
      {
        format = kCFPropertyListXMLFormat_v1_0;
        v15 = CFPropertyListCreateWithData(v7, ValueAtIndex, 0, &format, &error);
        if (v15)
        {
          v16 = v15;
          Value = CFDictionaryGetValue(v15, @"certData");
          if (Value)
          {
            v18 = Value;
            v19 = SecCertificateCreateWithData(v7, Value);
            if (v19)
            {
              v20 = v19;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
              }

              CFArrayAppendValue(Mutable, v20);
              if (!v13)
              {
                v13 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
              }

              *v29 = xmmword_279EC53C0;
              v30 = @"certData";
              v21 = CFDictionaryGetValue(v16, @"pemData");
              v28[0] = v20;
              v28[1] = v21;
              v28[2] = v18;
              v22 = CFDictionaryCreate(v7, v29, v28, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFArrayAppendValue(v13, v22);
              CFRelease(v22);
              CFRelease(v20);
            }
          }

          CFRelease(v16);
        }

        else
        {
          NSLog(&cfstr_SCfpropertylis.isa, "WFWAPIIdentityListCreate", error);
        }
      }

      ++v11;
    }

    while (CFArrayGetCount(result) > v11);
    if (!a1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = 0;
  Mutable = 0;
  if (a1)
  {
LABEL_20:
    *a1 = Mutable;
  }

LABEL_21:
  if (a2)
  {
    *a2 = v13;
  }

LABEL_25:
  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

id WFBase64Encode(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v4 = v2 % 3;
  v3 = 4 * (v2 / 3);
  v5 = v3 + 4 * (v2 % 3 != 0);
  if (v5 < v2)
  {
    NSLog(&cfstr_SDataIsTooLarg.isa, "NSString *WFBase64Encode(NSData *__strong)");
LABEL_17:
    v16 = 0;
    goto LABEL_21;
  }

  v6 = v2;
  v7 = malloc_type_malloc(v3 + 4 * (v2 % 3 != 0), 0x100004077774924uLL);
  if (!v7)
  {
    NSLog(&cfstr_SUnableToAlloc.isa, "NSString *WFBase64Encode(NSData *__strong)", v5);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v1 bytes];
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v11 % 3 == 2)
      {
        v13 = &v8[v10];
        *v13 = WFBase64Encode_DataEncodeTable[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F];
        v10 += 2;
        v13[1] = WFBase64Encode_DataEncodeTable[*v9 & 0x3F];
      }

      else
      {
        if (v11 % 3 == 1)
        {
          v12 = ((*v9 | (*(v9 - 1) << 8)) >> 4) & 0x3F;
        }

        else
        {
          v12 = *v9 >> 2;
        }

        v8[v10++] = WFBase64Encode_DataEncodeTable[v12];
      }

      ++v11;
      ++v9;
      --v6;
    }

    while (v6);
    if (v4 == 2)
    {
      v17 = &v8[v10];
      *v17 = WFBase64Encode_DataEncodeTable[4 * (*(v9 - 1) & 0xF)];
      v15 = v17 + 1;
      goto LABEL_19;
    }

    if (v4 == 1)
    {
      v14 = &v8[v10];
      *v14 = WFBase64Encode_DataEncodeTable[16 * (*(v9 - 1) & 3)];
      v14[1] = 61;
      v15 = v14 + 2;
LABEL_19:
      *v15 = 61;
    }
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v8 length:v5 encoding:1 freeWhenDone:1];
LABEL_21:

  return v16;
}

id WFWAPICertificateBlobString(SecCertificateRef a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    certificateRef = 0;
    v6 = CFGetTypeID(a1);
    if (v6 == SecIdentityGetTypeID())
    {
      v7 = SecIdentityCopyCertificate(a1, &certificateRef) != 0;
      a1 = certificateRef;
      if (!certificateRef)
      {
LABEL_14:
        if (a1)
        {
          CFRelease(a1);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v8 = CFGetTypeID(a1);
      if (v8 != SecCertificateGetTypeID())
      {
LABEL_16:
        v5 = 0;
        goto LABEL_17;
      }

      v7 = 0;
      certificateRef = a1;
    }

    if (v7)
    {
      goto LABEL_14;
    }

    v9 = SecCertificateCopyData(a1);
    v10 = WFBase64Encode(v9);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    v12 = [v10 mutableCopy];
    v13 = [v10 length];
    if (v13 >= 0x41)
    {
      v14 = v13 + 1;
      v15 = 64;
      do
      {
        [v12 insertString:@"\n" atIndex:v15];
        v15 += 65;
      }

      while (v15 < v14++);
    }

    [v12 appendString:@"\n"];
    [v12 insertString:@"-----BEGIN ASU CERTIFICATE-----\n" atIndex:0];
    [v12 appendString:@"-----END ASU CERTIFICATE-----\n"];
    [v12 appendString:v11];
    v17 = [v12 rangeOfString:@"-----BEGIN CERTIFICATE-----" options:2];
    [v12 replaceCharactersInRange:v17 withString:{v18, @"-----BEGIN USER CERTIFICATE-----"}];
    v19 = [v12 rangeOfString:@"-----END CERTIFICATE-----" options:2];
    [v12 replaceCharactersInRange:v19 withString:{v20, @"-----END USER CERTIFICATE-----"}];
    v5 = v12;
  }

LABEL_17:

  return v5;
}

uint64_t WFSecurityModeIsWPAPersonal(unint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return (a1 >> 3) & 1;
  }
}

uint64_t WFSecurityModeIsWPAEnterprise(uint64_t a1)
{
  v1 = a1 == 1024;
  if (a1 == 32)
  {
    v1 = 1;
  }

  return a1 == 16 || v1;
}

uint64_t WFSecurityModeIsEquivalentWPA(uint64_t a1, uint64_t a2)
{
  if ((a1 == 4 || (a1 & 8) != 0) && (a2 == 4 || (a2 & 8) != 0) || (a1 == 16 || a1 == 1024 || a1 == 32) && (a2 == 16 || a2 == 32 || a2 == 1024))
  {
    return 1;
  }

  else
  {
    return WFSecurityModeIsEquivalentEAPEncryption(a1, a2);
  }
}

uint64_t WFSecurityModeIsEquivalentEAPEncryption(uint64_t a1, uint64_t a2)
{
  if (a1 == 1075)
  {
    result = 1;
    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        return result;
      }
    }

    else if (a2 == 16 || a2 == 32)
    {
      return result;
    }

    return 0;
  }

  if (a2 != 1075)
  {
    return 0;
  }

  result = 1;
  if (a1 != 16 && a1 != 32 && a1 != 1024)
  {
    return 0;
  }

  return result;
}

float WFScaleRSSI(uint64_t a1)
{
  v1 = a1 + 77.5;
  v2 = fabsf(sqrtf((v1 * v1) + 450.0));
  return (v1 / (v2 + v2)) + 0.5;
}

uint64_t WFScanRecordDeleteEnterprisePath()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" stringByDeletingLastPathComponent];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 fileExistsAtPath:v0];

  if (v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v4 = [v3 removeItemAtPath:@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" error:&v10];
    v5 = v10;

    if (v4)
    {
      v2 = 1;
    }

    else
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_273FB9000, v6, v7, "Removing LastNetworkEnterprise failed with error: %@", buf, 0xCu);
      }

      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

__CFString *WFSettingsURLPathForType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279EC53D8[a1];
  }
}

uint64_t _WFOpenSettingsPathWithPathType(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_279EC53D8[a1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=WIFI&path=%@", v1];
}

void WFOpenSettingsURLWithType(unint64_t a1)
{
  v3 = _WFOpenSettingsPathWithPathType(a1);
  v1 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:v1 withOptions:0];
}

uint64_t WFCompareSecurityModeExt(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1 & 0x430;
  if ((v3 != 0) != ((a2 & 0x430) != 0))
  {
    goto LABEL_4;
  }

  if ((a1 & 0x430) != 0)
  {
    if ((a1 & 0x20) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    if ((a1 & 0x20) == (a2 & 0x20))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    if ((a1 & 0x400) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if ((a1 & 0x400) == (a2 & 0x400))
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = a1 & 0x20C;
    if ((v3 != 0) != ((a2 & 0x20C) != 0))
    {
LABEL_4:
      if (v3)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    v7 = a1 & 0x200;
    if ((a1 & 0x200 & a2) == 0)
    {
      goto LABEL_36;
    }

    if ((a1 & 0xFFFFFFFFFFFFF9CFLL) == 0)
    {
      return 1;
    }

    if ((a2 & 0xFFFFFFFFFFFFFDFFLL) == 0)
    {
      return -1;
    }

    else
    {
LABEL_36:
      if (v7 == (a2 & 0x200))
      {
        v7 = a1 & 8;
        if (v7 == (a2 & 8))
        {
          if ((a1 & 8) != 0)
          {
            return 0;
          }

          v7 = a1 & 4;
          if (v7 == (a2 & 4))
          {
            v7 = a1 & 1;
            if (v7 == (a2 & 1))
            {
              return 0;
            }
          }
        }
      }

      if (v7)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }
  }
}

uint64_t WFIsSecurityModeMatch(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & a1) != 0;
  if (a2 == 512)
  {
    v2 = 0;
  }

  if (a1 == 512)
  {
    v2 = 0;
  }

  return a1 == a2 || v2;
}

uint64_t _WFNetworkUsesSecurityCiphers(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:a2];
  v11 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v12 = [v7 containsObject:v10];
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v12 = [v13 intersectsSet:v14];
  }

LABEL_7:

  return v12;
}

uint64_t WFDetermineNetworkCipherTypeObsolete(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"WPA_IE"];
  v3 = [v1 objectForKey:@"RSN_IE"];

  if (v2 && (_WFNetworkUsesSecurityCiphers(v2, @"IE_KEY_WPA_MCIPHER", @"IE_KEY_WPA_UCIPHERS", &unk_288322A68) & 1) != 0 || v3 && (_WFNetworkUsesSecurityCiphers(v3, @"IE_KEY_RSN_MCIPHER", @"IE_KEY_RSN_UCIPHERS", &unk_288322A80) & 1) != 0)
  {
    v4 = 1;
  }

  else if (v2 && (_WFNetworkUsesSecurityCiphers(v2, @"IE_KEY_WPA_MCIPHER", @"IE_KEY_WPA_UCIPHERS", &unk_288322A98) & 1) != 0 || v3 && _WFNetworkUsesSecurityCiphers(v3, @"IE_KEY_RSN_MCIPHER", @"IE_KEY_RSN_UCIPHERS", &unk_288322AB0))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *WFConvertEthernetNetworkAddressToString(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%x:%x:%x:%x:%x:%x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5]);

  return v2;
}

void WFErrorLogCurrentCallStackThread(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v16 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_288308678;
  }

  [MEMORY[0x277CCACC8] callStackSymbols];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    v10 = a2 - 1;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
      {
        *buf = 138412546;
        v22 = v4;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_273FB9000, v13, v14, "%@%@", buf, 0x16u);
      }

      if (v10 == v8)
      {
        break;
      }

      ++v11;
      ++v8;
      if (v7 == v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_273FC1BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FC270C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273FC3658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273FC3DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, v10, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return OSLogForWFLogLevel(1uLL);
}

BOOL OUTLINED_FUNCTION_2()
{

  return os_log_type_enabled(v0, v1);
}

void sub_273FC4554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FCA5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273FCB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_273FD3D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FD43E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_273FD5150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, v10, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return OSLogForWFLogLevel(4uLL);
}

uint64_t __WFHasWAPICapability_block_invoke_0()
{
  result = MGGetBoolAnswer();
  WFHasWAPICapability___wapiCapability_0 = result;
  return result;
}

void sub_273FD7A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FE0794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273FE6338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FE8134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, v12, a4, &buf, 0xCu);
}

void sub_273FE9EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_273FEA410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

void sub_273FEEC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF1450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_273FF249C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

__CFString *WFDescriptionFromIdentity(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = CFGetTypeID(v1);
  if (v3 != SecIdentityGetTypeID())
  {
    v5 = CFGetTypeID(v2);
    if (v5 == SecCertificateGetTypeID())
    {
      v4 = SecCertificateCopySubjectSummary(v2);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  certificateRef = 0;
  v4 = 0;
  if (!SecIdentityCopyCertificate(v2, &certificateRef) && certificateRef)
  {
    v4 = SecCertificateCopySubjectSummary(certificateRef);
    CFRelease(certificateRef);
  }

LABEL_9:

  return v4;
}

void sub_273FF55EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v26 - 104));
  _Unwind_Resume(a1);
}

void sub_273FF5B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_273FF5F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF6518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

void sub_273FF695C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF88A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF8CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF90F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF9544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FF9908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FFCA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FFCD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273FFCFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274000C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_2740038B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *stringForIpv6LinkLocalAddress(void *a1)
{
  v1 = a1;
  if ([v1 length] == 16)
  {
    if ([v1 length] >= 2)
    {
      v3 = 0;
      v4 = 0;
      v5 = &stru_288308678;
      do
      {
        v6 = [v1 subdataWithRange:{v3, 2}];
        v7 = [v6 bytes];
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x", *v7, v7[1]];
        if ([(__CFString *)v8 isEqualToString:@"0000"])
        {

          v8 = @"0";
        }

        if (v4 == ([v1 length] >> 1) - 1)
        {
          v9 = @"%@%@";
        }

        else
        {
          v9 = @"%@%@:";
        }

        v2 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v5, v8];

        ++v4;
        v3 += 2;
        v5 = v2;
      }

      while (v4 < [v1 length] >> 1);
    }

    else
    {
      v2 = &stru_288308678;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t OSLogForWFLogLevel(unint64_t a1)
{
  v1 = 0x201011000uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t WFCurrentLogLevel()
{
  if (WFIsInternalInstall___internalInstallOnceToken != -1)
  {
    WFCurrentLogLevel_cold_1();
  }

  if ((WFIsInternalInstall___internalInstall & 1) != 0 || __extraLoggingEnabled == 1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

id WFLogForCategory(unint64_t a1)
{
  if (WFLogForCategory_onceToken != -1)
  {
    WFLogForCategory_cold_1();
  }

  v2 = MEMORY[0x277D86220];
  v3 = MEMORY[0x277D86220];
  if (a1 <= 8)
  {
    v2 = *off_279EC6180[a1];
  }

  return v2;
}

uint64_t __WFLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.wifikit", "general");
  v1 = _WFLogGeneral;
  _WFLogGeneral = v0;

  v2 = os_log_create("com.apple.wifikit", "alertprovider");
  v3 = _WFLogAlertProvider;
  _WFLogAlertProvider = v2;

  v4 = os_log_create("com.apple.wifikit", "captive");
  v5 = _WFLogCaptive;
  _WFLogCaptive = v4;

  v6 = os_log_create("com.apple.wifikit", "picker");
  v7 = _WFLogPicker;
  _WFLogPicker = v6;

  v8 = os_log_create("com.apple.wifikit", "personalhotspot");
  v9 = _WFLogPersonalHotspot;
  _WFLogPersonalHotspot = v8;

  v10 = os_log_create("com.apple.wifikit", "association");
  v11 = _WFLogAssociation;
  _WFLogAssociation = v10;

  v12 = os_log_create("com.apple.wifikit", "scanning");
  v13 = _WFLogScanning;
  _WFLogScanning = v12;

  v14 = os_log_create("com.apple.wifikit", "controlcenter");
  v15 = _WFLogControlCenter;
  _WFLogControlCenter = v14;

  v16 = os_log_create("com.apple.wifikit", "private-address");
  v17 = _WFLogPrivateAddress;
  _WFLogPrivateAddress = v16;

  return MEMORY[0x2821F96F8](v16, v17);
}

uint64_t __WFIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  WFIsInternalInstall___internalInstall = result;
  return result;
}

void sub_274012CF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2740155DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_274016074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v56 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_274016BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiPlacardView.body.getter()
{
  type metadata accessor for PlacardCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = MobileGestalt_get_current_device();
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v3;
  MobileGestalt_get_wapiCapability();

  v10 = sub_2740517C8();

  v11 = sub_2740517C8();
  v12 = [v2 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_2740517D8();
  v15 = v14;

  v16 = [v1 bundleForClass_];
  v3 = MobileGestalt_get_current_device();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2821AD748](v3, v4, v5, v6, v7, v8);
  }

  v17 = v3;
  MobileGestalt_get_wapiCapability();

  v18 = sub_2740517C8();

  v19 = sub_2740517C8();
  v20 = [v16 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_2740517D8();
  v23 = v22;

  v8 = 0x8000000274066090;
  v3 = v13;
  v4 = v15;
  v5 = v21;
  v6 = v23;
  v7 = 0xD00000000000001BLL;

  return MEMORY[0x2821AD748](v3, v4, v5, v6, v7, v8);
}

id PlacardCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id PlacardCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlacardCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlacardCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_27401977C(void *a1, uint64_t *a2)
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

id sub_2740197E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2740517C8();
  }

  else
  {
    v3 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for PlacardCell();
  v4 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, 0, v3);

  v5 = v4;
  [v5 setSelectionStyle_];
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934E40, &unk_274059560);
  v7[4] = sub_274019AF0();
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_274019C00();
  sub_2740512D8();
  MEMORY[0x2743E36F0](v7);

  return v5;
}

uint64_t getEnumTagSinglePayload for WiFiPlacardView(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WiFiPlacardView(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2740199D8()
{
  result = qword_280934E08;
  if (!qword_280934E08)
  {
    sub_274051748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934E08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_274019AF0()
{
  result = qword_280934E48;
  if (!qword_280934E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280934E40, &unk_274059560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934E48);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
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

unint64_t sub_274019C00()
{
  result = qword_280934E50;
  if (!qword_280934E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934E50);
  }

  return result;
}

void sub_274019C68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double WFBatteryView.body.getter@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = 1;
  *(a1 + 16) = 257;
  return result;
}

double sub_274019D08@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = 1;
  *(a1 + 16) = 257;
  return result;
}

uint64_t getEnumTagSinglePayload for WFBatteryView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WFBatteryView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_274019D88()
{
  result = qword_280934F20;
  if (!qword_280934F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280934F28, &qword_274059668);
    sub_274019E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934F20);
  }

  return result;
}

unint64_t sub_274019E14()
{
  result = qword_280934F30;
  if (!qword_280934F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280934F30);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WFBatteryViewWrapper(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WFBatteryViewWrapper(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

id sub_274019ED0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75E10]) init];
  [v0 setSizeCategory_];
  [v0 setShowsInlineChargingIndicator_];
  return v0;
}

id sub_274019F30(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  [a1 setChargePercent_];

  return [a1 setChargingState_];
}

uint64_t sub_274019FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27401A0D8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27401A04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27401A0D8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27401A0B0()
{
  sub_27401A0D8();
  sub_274051288();
  __break(1u);
}

unint64_t sub_27401A0D8()
{
  result = qword_280934F38[0];
  if (!qword_280934F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280934F38);
  }

  return result;
}

id UseAutoLayout.wrappedValue.setter(void *a1)
{
  *v1 = a1;

  return [a1 setTranslatesAutoresizingMaskIntoConstraints_];
}

id **sub_27401A1D4(id **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [**result setTranslatesAutoresizingMaskIntoConstraints_];
  }

  return result;
}

uint64_t sub_27401A208()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27401A250(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_27401A298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27401A324()
{
  sub_274051B38();
  MEMORY[0x2743E3950](0);
  return sub_274051B68();
}

uint64_t sub_27401A390()
{
  sub_274051B38();
  MEMORY[0x2743E3950](0);
  return sub_274051B68();
}

void NetworkListRowView.init(config:network:infoButtonHandler:deleteButtonHandler:)(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274051568();
  sub_274051568();
  *(a6 + 72) = v28;
  *(a6 + 80) = *(&v28 + 1);
  v8 = type metadata accessor for NetworkListRowView();
  v9 = v8[10];
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  v12 = qword_280937200;
  sub_274051938();
  v13 = v8[11];
  v14 = [v10 defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v15 = qword_280937208;
  sub_274051938();
  v16 = v8[12];
  v17 = [v10 defaultCenter];
  if (qword_280934D90 != -1)
  {
    swift_once();
  }

  v18 = qword_280937210;
  sub_274051938();
  type metadata accessor for WFNetworkRowConfigModel();
  sub_274020F08(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel);
  v19 = a1;
  *a6 = sub_274050F88();
  *(a6 + 8) = v20;
  sub_274051568();
  swift_unknownObjectRelease();

  *(a6 + 16) = v28;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3;
  v21 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  v22 = *&v19[v21];

  v23 = -4.0;
  if (!v22)
  {
    v23 = 0.0;
  }

  *(a6 + 48) = v23;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
}

uint64_t type metadata accessor for NetworkListRowView()
{
  result = qword_280935028;
  if (!qword_280935028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkListRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkListRowView();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FD0, &qword_274059810);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v76 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FD8, &qword_274059818);
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v13 = &v76 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FE0, &qword_274059820);
  v14 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v76 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FE8, &qword_274059828);
  v16 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v76 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FF0, &qword_274059830);
  v18 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v87 = &v76 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280934FF8, &unk_274059838);
  v89 = *(v90 - 8);
  v20 = *(v89 + 64);
  v21 = MEMORY[0x28223BE20](v90);
  v86 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v85 = &v76 - v23;
  v24 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v25 = v92;
  v26 = 1;
  if (v92)
  {
    v91 = v4;
    *v10 = sub_274051118();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935000, &qword_274059890) + 44)];
    v76 = v25;
    sub_27401AFD8(v2, v25, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935008, &qword_274059898);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2740597E0;
    v29 = sub_274051328();
    *(inited + 32) = v29;
    v30 = sub_274051338();
    *(inited + 33) = v30;
    v31 = sub_274051358();
    sub_274051358();
    if (sub_274051358() != v29)
    {
      v31 = sub_274051358();
    }

    sub_274051358();
    v32 = sub_274051358();
    v77 = a1;
    v88 = v5;
    if (v32 != v30)
    {
      v31 = sub_274051358();
    }

    v33 = *(v2 + 48);
    sub_274050E98();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_274020F50(v10, v13, &qword_280934FD0, &qword_274059810);
    v42 = &v13[*(v78 + 36)];
    *v42 = v31;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    sub_274051638();
    sub_274050FF8();
    v43 = v80;
    sub_274020F50(v13, v80, &qword_280934FD8, &qword_274059818);
    v44 = &v43[*(v79 + 36)];
    v45 = v97;
    *(v44 + 4) = v96;
    *(v44 + 5) = v45;
    *(v44 + 6) = v98;
    v46 = v93;
    *v44 = v92;
    *(v44 + 1) = v46;
    v47 = v95;
    *(v44 + 2) = v94;
    *(v44 + 3) = v47;
    v48 = v2;
    v49 = v91[10];
    sub_274020058(v2, v6);
    v50 = *(v84 + 80);
    v84 = (v50 + 16) & ~v50;
    v51 = swift_allocObject();
    sub_2740200BC(v6, v51 + ((v50 + 16) & ~v50));
    v52 = v43;
    v53 = v82;
    sub_274020F50(v52, v82, &qword_280934FE0, &qword_274059820);
    v54 = v81;
    v55 = *(v81 + 52);
    v56 = sub_274051948();
    v57 = *(v56 - 8);
    v58 = *(v57 + 16);
    v59 = v57 + 16;
    v60 = v53 + v55;
    v61 = v56;
    v58(v60, v48 + v49);
    v79 = v59;
    v80 = v58;
    v62 = (v53 + *(v54 + 56));
    *v62 = sub_274020120;
    v62[1] = v51;
    v81 = v91[11];
    sub_274020058(v48, v6);
    v63 = swift_allocObject();
    *(v63 + 16) = v76;
    sub_2740200BC(v6, v63 + ((v50 + 24) & ~v50));
    v64 = v87;
    sub_274020F50(v53, v87, &qword_280934FE8, &qword_274059828);
    v65 = v83;
    (v58)(v64 + *(v83 + 52), v48 + v81, v61);
    v66 = (v64 + *(v65 + 56));
    *v66 = sub_274020138;
    v66[1] = v63;
    v67 = v91[12];
    sub_274020058(v48, v6);
    v68 = v84;
    v69 = swift_allocObject();
    sub_2740200BC(v6, v69 + v68);
    v70 = v86;
    sub_274020F50(v64, v86, &qword_280934FF0, &qword_274059830);
    v71 = v90;
    (v80)(v70 + *(v90 + 52), v48 + v67, v61);
    v72 = (v70 + *(v71 + 56));
    *v72 = sub_2740201AC;
    v72[1] = v69;
    v73 = v85;
    sub_274020F50(v70, v85, &qword_280934FF8, &unk_274059838);
    v74 = v73;
    a1 = v77;
    sub_274020F50(v74, v77, &qword_280934FF8, &unk_274059838);
    v26 = 0;
  }

  else
  {
    v71 = v90;
  }

  return (*(v89 + 56))(a1, v26, 1, v71);
}

uint64_t sub_27401AFD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v93 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350C0, &qword_274059A58);
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v80 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350C8, &qword_274059A60);
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v81 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350D0, &qword_274059A68);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v97 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v80 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350D8, &qword_274059A70);
  v15 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v17 = (&v80 - v16);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350E0, &qword_274059A78);
  v18 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350E8, &qword_274059A80);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v96 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v80 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350F0, &qword_274059A88);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v80 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350F8, &qword_274059A90);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v100 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v80 - v35;
  *(&v119 + 1) = &type metadata for SwiftListFeatureFlags;
  v86 = sub_274020A34();
  *&v120 = v86;
  v37 = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(&v118);
  if ((v37 & 1) != 0 && (v38 = *(a1 + 8), v39 = OBJC_IVAR___WFNetworkRowConfig_isEditable, swift_beginAccess(), *(v38 + v39) == 1))
  {
    sub_27401BB4C(v30);
    sub_274020F50(v30, v36, &qword_2809350F0, &qword_274059A88);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  (*(v27 + 56))(v36, v40, 1, v26);
  v41 = *(a1 + 8);
  v42 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  if (*(v41 + v42))
  {
    v90 = 0u;
    v91 = xmmword_2740597F0;
    v88 = 0u;
    v89 = 0u;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v43 = vdupq_n_s64(1uLL);
    v43.i64[0] = v118;
    v91 = v43;
    sub_274051638();
    sub_274050F38();
    v90 = *(&v124[3] + 8);
    v88 = *(&v124[5] + 8);
    v89 = *(&v124[4] + 8);
  }

  v44 = v87;
  v99 = v36;
  v45 = [v87 isInstantHotspot];
  v82 = a1;
  if (v45)
  {
    v46 = sub_274051118();
    LOBYTE(v109[0]) = 1;
    sub_27401E340(v44, &v111);
    v47 = v111;
    v48 = v112;
    v49 = BYTE8(v112);
    v50 = v113;

    sub_274020AD4(*(&v47 + 1), v48, v49);

    sub_27402029C(*(&v47 + 1), v48, v49);

    LOBYTE(v111) = v49;
    v51 = v109[0];
    *v20 = v46;
    *(v20 + 1) = 0;
    v20[16] = v51;
    *(v20 + 24) = v47;
    *(v20 + 5) = v48;
    v20[48] = v49;
    *(v20 + 56) = v50;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935108, &qword_274059A98);
    sub_27402179C(&qword_280935110, &qword_280935108, &qword_274059A98);
    sub_27402179C(&qword_280935118, &qword_2809350D8, &qword_274059A70);
    sub_2740512B8();
  }

  else
  {
    sub_27401C46C(v44, v17);
    sub_274021180(v17, v20, &qword_2809350D8, &qword_274059A70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935108, &qword_274059A98);
    sub_27402179C(&qword_280935110, &qword_280935108, &qword_274059A98);
    sub_27402179C(&qword_280935118, &qword_2809350D8, &qword_274059A70);
    sub_2740512B8();
    sub_2740211E8(v17, &qword_2809350D8, &qword_274059A70);
  }

  *(&v112 + 1) = &type metadata for SwiftListFeatureFlags;
  *&v113 = v86;
  v52 = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(&v111);
  v53 = 1;
  v54 = v99;
  if (v52)
  {
    v55 = *(v82 + 80);
    LOBYTE(v111) = *(v82 + 72);
    *(&v111 + 1) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B8, &qword_274059A50);
    sub_274051578();
    if (LOBYTE(v109[0]) == 1 && (v56 = OBJC_IVAR___WFNetworkRowConfig_isEditable, swift_beginAccess(), *(v41 + v56) == 1))
    {
      v57 = v80;
      sub_27401D30C(v80);
      v58 = v81;
      sub_274020F50(v57, v81, &qword_2809350C0, &qword_274059A58);
      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v81;
    }

    (*(v83 + 56))(v58, v59, 1, v84);
    sub_274020F50(v58, v98, &qword_2809350C8, &qword_274059A60);
    v53 = 0;
  }

  v60 = v98;
  (*(v94 + 56))(v98, v53, 1, v95);
  v61 = v100;
  sub_274021180(v54, v100, &qword_2809350F8, &qword_274059A90);
  v106 = v122;
  v107 = v123;
  v108[0] = v124[0];
  *(v108 + 10) = *(v124 + 10);
  v102 = v118;
  v103 = v119;
  v104 = v120;
  v105 = v121;
  v62 = v96;
  sub_274021180(v101, v96, &qword_2809350E8, &qword_274059A80);
  v63 = v97;
  sub_274021180(v60, v97, &qword_2809350D0, &qword_274059A68);
  v64 = v61;
  v65 = v93;
  sub_274021180(v64, v93, &qword_2809350F8, &qword_274059A90);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935120, &qword_274059AA0);
  v67 = (v65 + v66[12]);
  v68 = v90;
  *v67 = v91;
  v67[1] = v68;
  v69 = v88;
  v67[2] = v89;
  v67[3] = v69;
  v70 = v66[16];
  v71 = v102;
  v72 = v103;
  v109[0] = v102;
  v109[1] = v103;
  v73 = v104;
  v74 = v105;
  v109[2] = v104;
  v109[3] = v105;
  v75 = v107;
  v109[4] = v106;
  v109[5] = v107;
  v76 = v108[0];
  v110[0] = v108[0];
  *(v110 + 10) = *(v108 + 10);
  v77 = (v65 + v70);
  v77[4] = v106;
  v77[5] = v75;
  v77[6] = v76;
  *(v77 + 106) = *(v108 + 10);
  *v77 = v71;
  v77[1] = v72;
  v77[2] = v73;
  v77[3] = v74;
  v78 = v65 + v66[20];
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_274021180(v62, v65 + v66[24], &qword_2809350E8, &qword_274059A80);
  sub_274021180(v63, v65 + v66[28], &qword_2809350D0, &qword_274059A68);
  sub_274021180(v109, &v111, &qword_280935128, &qword_274059AA8);
  sub_2740211E8(v60, &qword_2809350D0, &qword_274059A68);
  sub_2740211E8(v101, &qword_2809350E8, &qword_274059A80);
  sub_2740211E8(v99, &qword_2809350F8, &qword_274059A90);
  sub_2740211E8(v63, &qword_2809350D0, &qword_274059A68);
  sub_2740211E8(v62, &qword_2809350E8, &qword_274059A80);
  v115 = v106;
  v116 = v107;
  v117[0] = v108[0];
  *(v117 + 10) = *(v108 + 10);
  v111 = v102;
  v112 = v103;
  v113 = v104;
  v114 = v105;
  sub_2740211E8(&v111, &qword_280935128, &qword_274059AA8);
  return sub_2740211E8(v100, &qword_2809350F8, &qword_274059A90);
}

uint64_t sub_27401BB4C@<X0>(uint64_t a1@<X8>)
{
  v22 = *(type metadata accessor for NetworkListRowView() - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20]();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935130, &qword_274059AB0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935138, &qword_274059AB8);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v21 - v11;
  v24[3] = &type metadata for SwiftListFeatureFlags;
  v24[4] = sub_274020A34();
  v13 = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v13)
  {
    v21 = a1;
    v14 = *(v23 + 8);
    v15 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
    swift_beginAccess();
    if (*(v14 + v15) == 1)
    {
      sub_274020058(v23, &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v17 = swift_allocObject();
      sub_2740200BC(&v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935140, &unk_274059AC0);
      sub_274020AFC();
      sub_2740515B8();
      (*(v4 + 32))(v12, v7, v3);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    (*(v4 + 56))(v12, v18, 1, v3);
    a1 = v21;
    sub_274020F50(v12, v21, &qword_280935138, &qword_274059AB8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v9 + 56))(a1, v19, 1, v8);
}

double sub_27401BE98@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v65 && (v5 = [v65 title], swift_unknownObjectRelease(), v5) || (v65 = *(v2 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350A8, &qword_2740599E8), sub_274051578(), v58) && (v5 = objc_msgSend(v58, sel_title), swift_unknownObjectRelease(), v5))
  {
    v6 = sub_2740517D8();
    v8 = v7;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v9 = *(&v65 + 1);
    v48 = v2;
    if (*(&v65 + 1))
    {
      v10 = v65;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (!v65 || (v24 = [v65 subtitle], swift_unknownObjectRelease(), !v24))
      {
        *&v65 = v6;
        *(&v65 + 1) = v8;
        sub_274020248();
        v26 = sub_274051468();
        v28 = v27;
        v30 = v29;
        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935008, &qword_274059898);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_2740597E0;
        v34 = sub_274051328();
        *(v33 + 32) = v34;
        v35 = sub_274051338();
        *(v33 + 33) = v35;
        v36 = sub_274051358();
        sub_274051358();
        if (sub_274051358() != v34)
        {
          v36 = sub_274051358();
        }

        sub_274051358();
        if (sub_274051358() != v35)
        {
          v36 = sub_274051358();
        }

        v37 = *(v48 + 48);
        sub_274050E98();
        v57 = v30 & 1;
        v56 = 0;
        *&v65 = v26;
        *(&v65 + 1) = v28;
        v66[0] = v30 & 1;
        *&v66[8] = v32;
        v66[16] = v36;
        *&v66[24] = v38;
        *v67 = v39;
        *&v67[8] = v40;
        *&v67[16] = v41;
        v67[24] = 0;
        sub_274021440(&v65);
        goto LABEL_21;
      }

      v10 = sub_2740517D8();
      v9 = v25;
    }

    v47 = sub_2740511D8();
    v56 = 1;
    sub_27401E214(v6, v10, v9, v2, &v65);
    v11 = v65;
    v12 = v66[0];
    v13 = *&v66[8];
    v14 = *&v66[16];
    v46 = v67[0];
    sub_274020AD4(v65, *(&v65 + 1), v66[0]);

    sub_27402029C(v11, *(&v11 + 1), v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935008, &qword_274059898);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2740597E0;
    v16 = sub_274051328();
    *(v15 + 32) = v16;
    v17 = sub_274051338();
    *(v15 + 33) = v17;
    v18 = sub_274051358();
    sub_274051358();
    if (sub_274051358() != v16)
    {
      v18 = sub_274051358();
    }

    sub_274051358();
    if (sub_274051358() != v17)
    {
      v18 = sub_274051358();
    }

    v19 = *(v2 + 48);
    sub_274050E98();
    v57 = 0;
    v65 = v47;
    v66[0] = 1;
    *&v66[8] = v11;
    v66[24] = v12;
    *v67 = v13;
    *&v67[8] = v14;
    v67[24] = v46;
    LOBYTE(v68) = v18;
    *(&v68 + 1) = v20;
    *v69 = v21;
    *&v69[8] = v22;
    *&v69[16] = v23;
    v69[24] = 0;
    sub_274021588(&v65);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935278, &qword_274059D80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935280, &qword_274059D88);
    sub_27402144C();
    sub_274021504();
    sub_2740512B8();
    v53 = v62;
    v54 = v63;
    v55[0] = v64[0];
    *(v55 + 10) = *(v64 + 10);
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    nullsub_1(&v49);
    *&v67[16] = v53;
    v68 = v54;
    *v69 = v55[0];
    *&v69[10] = *(v55 + 10);
    v65 = v49;
    *v66 = v50;
    *&v66[16] = v51;
    *v67 = v52;
    goto LABEL_22;
  }

  sub_27402141C(&v65);
LABEL_22:
  v42 = v68;
  a1[4] = *&v67[16];
  a1[5] = v42;
  a1[6] = *v69;
  *(a1 + 106) = *&v69[10];
  v43 = *v66;
  *a1 = v65;
  a1[1] = v43;
  result = *&v66[16];
  v45 = *v67;
  a1[2] = *&v66[16];
  a1[3] = v45;
  return result;
}

uint64_t sub_27401C46C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v106 = a2;
  v92 = sub_2740511B8();
  v91 = *(v92 - 8);
  v3 = *(v91 + 64);
  (MEMORY[0x28223BE20])();
  v90 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(type metadata accessor for NetworkListRowView() - 8);
  v5 = *(v84 + 64);
  (MEMORY[0x28223BE20])();
  v85 = v6;
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935130, &qword_274059AB0);
  v88 = *(v89 - 8);
  v7 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v87 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351C8, &qword_274059B90);
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v93 = &v79 - v11;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351D0, &qword_274059B98) - 8) + 64);
  v13 = (MEMORY[0x28223BE20])();
  v105 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = &v79 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351D8, &qword_274059BA0);
  v16 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  v18 = (&v79 - v17);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351E0, &qword_274059BA8);
  v82 = *(v83 - 8);
  v19 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v81 = &v79 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351E8, &qword_274059BB0);
  v21 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v23 = &v79 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F0, &qword_274059BB8);
  v24 = (*(*(v96 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96);
  v26 = &v79 - v25;
  v27 = sub_274051198();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F8, &qword_274059BC0);
  v32 = (*(*(v94 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v34 = &v79 - v33;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935200, &qword_274059BC8);
  v35 = (*(*(v95 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v37 = &v79 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935208, qword_274059BD0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v100 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v107 = &v79 - v42;
  if ([a1 isSecure] && (objc_msgSend(a1, sel_isInstantHotspot) & 1) == 0)
  {
    v43 = sub_274051558();
    v98 = (sub_2740512C8() << 32) | 0x101;
    v99 = v43;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  if ([a1 iOSHotspot])
  {
    v109 = sub_274051558();
    sub_274051168();
    sub_2740514C8();

    sub_274051188();
    sub_274050FC8();
    (*(v28 + 8))(v31, v27);
    sub_2740211E8(v34, &qword_2809351F8, &qword_274059BC0);
    v44 = sub_274051388();
    KeyPath = swift_getKeyPath();
    v46 = &v37[*(v95 + 36)];
    *v46 = KeyPath;
    v46[1] = v44;
    sub_274021180(v37, v26, &qword_280935200, &qword_274059BC8);
    swift_storeEnumTagMultiPayload();
    sub_274020FB8();
    sub_274021070();
    sub_2740512B8();
    sub_2740211E8(v37, &qword_280935200, &qword_274059BC8);
    v47 = v101;
    v48 = *(v101 + 8);
  }

  else
  {
    v47 = v101;
    v48 = *(v101 + 8);
    v49 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
    swift_beginAccess();
    if (*(v48 + v49))
    {
      v50 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v108 == 1)
      {
        sub_27401E604(3, v34);
        sub_274021180(v34, v18, &qword_2809351F8, &qword_274059BC0);
        swift_storeEnumTagMultiPayload();
        sub_274020E4C();
        v51 = v81;
        sub_2740512B8();
        sub_2740211E8(v34, &qword_2809351F8, &qword_274059BC0);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        sub_27401FB0C(v108, v34);
        sub_274020E4C();
        v52 = sub_27401E958(v94);
        sub_2740211E8(v34, &qword_2809351F8, &qword_274059BC0);
        *v18 = v52;
        swift_storeEnumTagMultiPayload();
        v51 = v81;
        sub_2740512B8();
      }

      sub_274020F50(v51, v23, &qword_2809351E0, &qword_274059BA8);
      v50 = 0;
    }

    (*(v82 + 56))(v23, v50, 1, v83);
    sub_274021180(v23, v26, &qword_2809351E8, &qword_274059BB0);
    swift_storeEnumTagMultiPayload();
    sub_274020FB8();
    sub_274021070();
    sub_2740512B8();
    sub_2740211E8(v23, &qword_2809351E8, &qword_274059BB0);
  }

  v53 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  v54 = v104;
  if (*(v48 + v53) == 1)
  {
    v55 = v86;
    sub_274020058(v47, v86);
    v56 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v57 = swift_allocObject();
    sub_2740200BC(v55, v57 + v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935140, &unk_274059AC0);
    sub_274020AFC();
    v58 = v87;
    sub_2740515B8();
    v59 = v90;
    sub_2740511A8();
    sub_27402179C(&qword_280935250, &qword_280935130, &qword_274059AB0);
    sub_274020F08(&qword_2809351B8, MEMORY[0x277CDDEE0]);
    v60 = v93;
    v61 = v89;
    v62 = v92;
    sub_2740514A8();
    (*(v91 + 8))(v59, v62);
    (*(v88 + 8))(v58, v61);
    *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935258, &qword_274059CA8) + 36)) = 256;
    v63 = sub_2740512C8();
    *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935260, &qword_274059CB0) + 36)) = v63;
    v64 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935268, &qword_274059CB8) + 36));
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935270, &qword_274059CC0) + 28);
    v66 = *MEMORY[0x277CDF418];
    v67 = sub_274050ED8();
    (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
    *v64 = swift_getKeyPath();
    v68 = v103;
    v69 = (v60 + *(v103 + 36));
    v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935178, &qword_274059B10) + 28);
    sub_274051018();
    *v69 = swift_getKeyPath();
    sub_274020F50(v60, v54, &qword_2809351C8, &qword_274059B90);
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v68 = v103;
  }

  (*(v102 + 56))(v54, v71, 1, v68);
  v72 = v107;
  v73 = v100;
  sub_274021180(v107, v100, &qword_280935208, qword_274059BD0);
  v74 = v105;
  sub_274021180(v54, v105, &qword_2809351D0, &qword_274059B98);
  v75 = v106;
  v76 = v98;
  *v106 = v99;
  v75[1] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935248, &qword_274059CA0);
  sub_274021180(v73, v75 + *(v77 + 48), &qword_280935208, qword_274059BD0);
  sub_274021180(v74, v75 + *(v77 + 64), &qword_2809351D0, &qword_274059B98);
  sub_2740211E8(v54, &qword_2809351D0, &qword_274059B98);
  sub_2740211E8(v72, &qword_280935208, qword_274059BD0);
  sub_2740211E8(v74, &qword_2809351D0, &qword_274059B98);
  sub_2740211E8(v73, &qword_280935208, qword_274059BD0);
}

uint64_t sub_27401D30C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2740511B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NetworkListRowView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935160, &qword_274059B00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v43 - v14;
  sub_274020058(v2, v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  sub_2740200BC(v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_2740515B8();
  sub_274050F58();
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v44.origin.x = v20;
  v44.origin.y = v22;
  v44.size.width = v24;
  v44.size.height = v26;
  *&v43[1] = CGRectGetWidth(v44) / 3.0;
  v43[0] = 0;
  sub_274020C5C();
  sub_274050F68();
  v27 = sub_274050F48();

  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935170, &qword_274059B08) + 36)] = v27;
  v28 = &v15[*(v12 + 36)];
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935178, &qword_274059B10) + 28);
  sub_274051008();
  *v28 = swift_getKeyPath();
  sub_2740511A8();
  sub_274020CB0();
  sub_274020F08(&qword_2809351B8, MEMORY[0x277CDDEE0]);
  sub_2740514A8();
  (*(v5 + 8))(v8, v4);
  sub_2740211E8(v15, &qword_280935160, &qword_274059B00);
  v30 = sub_2740514F8();
  KeyPath = swift_getKeyPath();
  v32 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351C0, &qword_274059B88) + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  LOBYTE(v30) = sub_274051318();
  sub_274050E98();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350C0, &qword_274059A58);
  v42 = a1 + *(result + 36);
  *v42 = v30;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  return result;
}

uint64_t sub_27401D744(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  v4 = *(a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B8, &qword_274059A50);
  return sub_274051588();
}

uint64_t sub_27401D7A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_274050D58();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  *&v21 = 0x4E6B726F7774656ELL;
  *(&v21 + 1) = 0xEB00000000656D61;
  sub_2740519B8();
  if (!*(v6 + 16) || (v7 = sub_2740317FC(v20), (v8 & 1) == 0))
  {

    sub_274020984(v20);
LABEL_12:
    v21 = 0u;
    v22 = 0u;
    goto LABEL_13;
  }

  sub_2740209D8(*(v6 + 56) + 32 * v7, &v21);
  sub_274020984(v20);

  if (!*(&v22 + 1))
  {
LABEL_13:
    sub_2740211E8(&v21, &qword_2809350B0, qword_2740599F0);
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v20[0];
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v20[1];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v12 = [a2 ssid];
  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v13 = v12;
  v14 = sub_2740517D8();
  v16 = v15;

  if (!v11)
  {
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  if (!v16)
  {
  }

  if (v10 == v14 && v11 == v16)
  {
  }

  else
  {
    v18 = sub_274051B08();

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

LABEL_25:
  v19 = *(a3 + 8);
  sub_27403EB84(1);
  swift_getKeyPath();
  swift_getKeyPath();
  v20[0] = 1;
  return sub_274050E78();
}

uint64_t sub_27401D9CC(uint64_t a1, void *a2)
{
  v3 = a2[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (!v34)
  {
    goto LABEL_27;
  }

  v4 = [v34 isInstantHotspot];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = sub_274050D58();
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v36[0] = 0x4E6B726F7774656ELL;
  v36[1] = 0xEB00000000656D61;
  sub_2740519B8();
  if (!*(v6 + 16) || (v7 = sub_2740317FC(&v34), (v8 & 1) == 0))
  {

    sub_274020984(&v34);
LABEL_14:
    *v36 = 0u;
    v37 = 0u;
    goto LABEL_15;
  }

  sub_2740209D8(*(v6 + 56) + 32 * v7, v36);
  sub_274020984(&v34);

  if (!*(&v37 + 1))
  {
LABEL_15:
    sub_2740211E8(v36, &qword_2809350B0, qword_2740599F0);
    v10 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v34;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v35;
  }

  else
  {
    v11 = 0;
  }

LABEL_16:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v12 = v34;
  if (v34)
  {
    v13 = [v34 ssid];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = sub_2740517D8();
      v12 = v15;

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_25:
      if (!v12)
      {
LABEL_58:
        v33 = v3;
        sub_27403EB84(0);
        swift_getKeyPath();
        swift_getKeyPath();
        v34 = 0;
        return sub_274050E78();
      }

      goto LABEL_26;
    }

    v14 = 0;
    v12 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

LABEL_19:
  if (!v12)
  {
LABEL_26:

    goto LABEL_27;
  }

  if (v10 == v14 && v11 == v12)
  {
LABEL_48:

    goto LABEL_58;
  }

  v16 = sub_274051B08();

  if (v16)
  {
    goto LABEL_58;
  }

LABEL_27:
  v17 = a2[2];
  v18 = a2[3];
  v34 = v17;
  v35 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350A8, &qword_2740599E8);
  result = sub_274051578();
  if (v36[0])
  {
    v20 = [v36[0] isInstantHotspot];
    result = swift_unknownObjectRelease();
    if (v20)
    {
      v21 = sub_274050D58();
      if (v21)
      {
        v22 = v21;
        v36[0] = 0x4E6B726F7774656ELL;
        v36[1] = 0xEB00000000656D61;
        sub_2740519B8();
        if (*(v22 + 16))
        {
          v23 = sub_2740317FC(&v34);
          if (v24)
          {
            sub_2740209D8(*(v22 + 56) + 32 * v23, v36);
            sub_274020984(&v34);

            if (*(&v37 + 1))
            {
              v25 = swift_dynamicCast();
              if (v25)
              {
                v26 = v34;
              }

              else
              {
                v26 = 0;
              }

              if (v25)
              {
                v27 = v35;
              }

              else
              {
                v27 = 0;
              }

LABEL_42:
              v34 = v17;
              v35 = v18;
              sub_274051578();
              v28 = v36[0];
              if (v36[0])
              {
                v29 = [v36[0] ssid];
                swift_unknownObjectRelease();
                if (v29)
                {
                  v30 = sub_2740517D8();
                  v28 = v31;

                  if (v27)
                  {
                    goto LABEL_45;
                  }

LABEL_50:
                  if (!v28)
                  {
                    goto LABEL_58;
                  }
                }

                v30 = 0;
                v28 = 0;
                if (!v27)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v30 = 0;
                if (!v27)
                {
                  goto LABEL_50;
                }
              }

LABEL_45:
              if (v28)
              {
                if (v26 != v30 || v27 != v28)
                {
                  v32 = sub_274051B08();

                  if ((v32 & 1) == 0)
                  {
                    return result;
                  }

                  goto LABEL_58;
                }

                goto LABEL_48;
              }
            }

LABEL_41:
            sub_2740211E8(v36, &qword_2809350B0, qword_2740599F0);
            v26 = 0;
            v27 = 0;
            goto LABEL_42;
          }
        }

        sub_274020984(&v34);
      }

      *v36 = 0u;
      v37 = 0u;
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t sub_27401DEF0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v2();
  }

  v5 = *(a1 + 72);
  v6 = *(a1 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B8, &qword_274059A50);
  sub_274051578();
  sub_274051588();
}

uint64_t sub_27401DFA0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WFNetworkListViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_274050D68();

  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_27401E09C()
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27401E108(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B8, &qword_274059A50);
  sub_274051578();
  sub_274051588();
}

uint64_t sub_27401E1B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_274051558();
  v3 = sub_2740514F8();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_27401E214@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_274020248();

  v9 = sub_274051468();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_274050E68();

  *a5 = v9;
  *(a5 + 8) = v11;
  *(a5 + 16) = v13 & 1;
  *(a5 + 24) = v15;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a1;
  sub_274020AD4(v9, v11, v13 & 1);

  sub_27402029C(v9, v11, v13 & 1);
}

void sub_27401E340(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedImageCache];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_2740517C8();
  v7 = [a1 hotspotSignalStrength];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 doubleValue];
  v10 = v9;

  v11 = [v5 imageNamed:v6 variableValue:{fmin(v10 * 0.25, 1.0)}];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v35 = sub_274051538();
  v12 = [a1 hotspotCellularProtocol];
  v36 = a1;
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  sub_2740517D8();

  sub_274020248();
  v14 = sub_274051468();
  v16 = v15;
  v18 = v17;
  sub_274051388();
  v19 = sub_274051448();
  v21 = v20;
  v23 = v22;

  sub_27402029C(v14, v16, v18 & 1);

  sub_274051518();
  v24 = sub_274051428();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_27402029C(v19, v21, v23 & 1);

  v31 = [v36 hotspotBatteryLife];
  if (v31)
  {
    v32 = v31;
    [v31 doubleValue];
    v34 = v33;

    *a2 = v35;
    *(a2 + 8) = v24;
    *(a2 + 16) = v26;
    *(a2 + 24) = v28 & 1;
    *(a2 + 32) = v30;
    *(a2 + 40) = v34 / 100.0;

    sub_274020AD4(v24, v26, v28 & 1);

    sub_27402029C(v24, v26, v28 & 1);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_27401E604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_274051198();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_274050DB8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_2740517B8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = *(*(sub_274051798() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F8, &qword_274059BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v16 - v12;
  v19 = sub_274051548();
  sub_274051788();
  sub_274051778();
  v17 = a1;
  sub_274051768();
  sub_274051778();
  sub_2740517A8();
  sub_274050D78();
  v17 = sub_2740517E8();
  v18 = v14;
  sub_274020248();
  sub_2740514D8();

  sub_274051188();
  sub_274050FC8();
  (*(v4 + 8))(v7, v3);
  return sub_2740211E8(v13, &qword_2809351F8, &qword_274059BC0);
}

uint64_t sub_27401E958(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_2740515D8();
}

uint64_t sub_27401EA20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_274051558();
  v3 = sub_274051518();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

double NetworkSubtitleView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v34 = *v1;
  if (*(v1 + 16) == 1)
  {
    sub_274020248();

    v3 = sub_274051468();
    v5 = v4;
    v7 = v6;
    sub_2740513C8();
    v8 = sub_274051448();
    v10 = v9;
    v12 = v11;

    sub_27402029C(v3, v5, v7 & 1);

    sub_2740513A8();
    v13 = sub_274051418();
    v15 = v14;
    v17 = v16;
    sub_27402029C(v8, v10, v12 & 1);

    *&v34 = sub_274051508();
    sub_274051438();
    sub_27402029C(v13, v15, v17 & 1);
  }

  else
  {
    sub_274020248();

    v18 = sub_274051468();
    v20 = v19;
    v22 = v21;
    sub_2740513C8();
    v23 = sub_274051448();
    v25 = v24;
    v27 = v26;

    sub_27402029C(v18, v20, v22 & 1);

    sub_2740513B8();
    v28 = sub_274051418();
    v30 = v29;
    v32 = v31;
    sub_27402029C(v23, v25, v27 & 1);

    LODWORD(v34) = sub_2740512C8();
    sub_274051438();
    sub_27402029C(v28, v30, v32 & 1);
  }

  sub_2740512B8();
  result = *&v34;
  *a1 = v34;
  *(a1 + 16) = v35;
  *(a1 + 32) = v36;
  return result;
}

uint64_t sub_27401ED88()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NetworkListRow();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  return MEMORY[0x2743E36F0](v2);
}

void *sub_27401EE84()
{
  v1 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27401EF54(void *a1)
{
  v3 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    sub_27401F4EC(v5);
  }
}

void sub_27401EFC4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  if (v2)
  {
    sub_27401F4EC(v6);
  }
}

void (*sub_27401F03C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___WFNetworkListRow_config;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_27401F0C4;
}

void sub_27401F0C4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      sub_27401F4EC(v5);
    }
  }

  free(v3);
}

id NetworkListRow.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id NetworkListRow.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___WFNetworkListRow_config] = 0;
  if (a3)
  {
    v4 = sub_2740517C8();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v3;
  v7.super_class = type metadata accessor for NetworkListRow();
  v5 = objc_msgSendSuper2(&v7, sel_initWithStyle_reuseIdentifier_, 0, v4);

  return v5;
}

id NetworkListRow.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void NetworkListRow.init(coder:)()
{
  *(v0 + OBJC_IVAR___WFNetworkListRow_config) = 0;
  sub_274051A88();
  __break(1u);
}

void sub_27401F3E4(void *a1)
{
  v3 = OBJC_IVAR___WFNetworkListRow_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_27401F4EC(v5);
  sub_27401F4EC(v5);
}

void sub_27401F4EC(void *a1)
{
  type metadata accessor for WFNetworkRowConfigModel();
  v2 = static WFNetworkRowConfigModel.modelFrom(rowConfig:)(a1);
  if (v2)
  {
    v3 = MEMORY[0x28223BE20](v2);
    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935090, &qword_2740599E0);
    v11[4] = sub_27402179C(&qword_280935098, &qword_280935090, &qword_2740599E0);
    __swift_allocate_boxed_opaque_existential_1(v11);
    type metadata accessor for NetworkListRowView();
    sub_274020F08(&qword_2809350A0, type metadata accessor for NetworkListRowView);
    sub_2740512D8();
    MEMORY[0x2743E36F0](v11);
  }

  else
  {
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v4 = sub_274050E28();
    __swift_project_value_buffer(v4, qword_280937140);
    v5 = a1;
    v10 = sub_274050E08();
    v6 = sub_2740518D8();

    if (os_log_type_enabled(v10, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&dword_273FB9000, v10, v6, "Fail to construct WFNetworkRowConfigModel from config: %@", v7, 0xCu);
      sub_2740211E8(v8, &qword_280935088, &qword_2740599D8);
      MEMORY[0x2743E44F0](v8, -1, -1);
      MEMORY[0x2743E44F0](v7, -1, -1);
    }
  }
}

uint64_t sub_27401F774@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  [a1 network];
  v5 = [a1 infoButtonHandler];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v24 = sub_2740208B4;
  }

  else
  {
    v24 = 0;
    v7 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274051568();
  sub_274051568();
  *(a3 + 72) = v26;
  *(a3 + 80) = *(&v26 + 1);
  v8 = type metadata accessor for NetworkListRowView();
  v9 = v8[10];
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  v12 = qword_280937200;
  sub_274051938();
  v13 = v8[11];
  v14 = [v10 defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v15 = qword_280937208;
  sub_274051938();
  v16 = v8[12];
  v17 = [v10 defaultCenter];
  if (qword_280934D90 != -1)
  {
    swift_once();
  }

  v18 = qword_280937210;
  sub_274051938();
  type metadata accessor for WFNetworkRowConfigModel();
  sub_274020F08(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel);
  v19 = a2;
  *a3 = sub_274050F88();
  *(a3 + 8) = v20;
  sub_274051568();
  swift_unknownObjectRelease();

  *(a3 + 16) = v26;
  *(a3 + 32) = v24;
  *(a3 + 40) = v7;
  v21 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  v23 = -4.0;
  if (!*&v19[v21])
  {
    v23 = 0.0;
  }

  *(a3 + 48) = v23;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

id NetworkListRow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkListRow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27401FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_274051198();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_274050DB8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_2740517B8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = *(*(sub_274051798() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809351F8, &qword_274059BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v16 - v12;
  v19 = sub_274051548();
  sub_274051788();
  sub_274051778();
  v17 = a1;
  sub_274051768();
  sub_274051778();
  sub_2740517A8();
  sub_274050D78();
  v17 = sub_2740517E8();
  v18 = v14;
  sub_274020248();
  sub_2740514D8();

  sub_274051188();
  sub_274050FC8();
  (*(v4 + 8))(v7, v3);
  return sub_2740211E8(v13, &qword_2809351F8, &qword_274059BC0);
}

uint64_t sub_27401FE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809352B0, &qword_274059EC0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809352B8, &qword_274059EC8) + 36));
  *v7 = v5;
  v7[1] = 0;
  v8 = sub_274051678();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809352C0, &qword_274059ED0);
  v10 = (a2 + *(result + 36));
  *v10 = v8;
  v10[1] = v5;
  return result;
}

uint64_t sub_27401FF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v5;
  return result;
}

uint64_t sub_27401FFD8(id *a1, void **a2)
{
  v2 = *a2;
  sub_27403DF48(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_274020058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkListRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2740200BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkListRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274020138(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkListRowView() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_27401D7A0(a1, v4, v5);
}

uint64_t sub_2740201C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NetworkListRowView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_274020248()
{
  result = qword_280935010;
  if (!qword_280935010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935010);
  }

  return result;
}

uint64_t sub_27402029C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_274020330()
{
  sub_27402046C();
  if (v0 <= 0x3F)
  {
    sub_274020500(319, &qword_280935040, &unk_280934FC0, &qword_27405A4A0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_274020500(319, &qword_280935048, &qword_280935050, &qword_274059968, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_274020564();
        if (v3 <= 0x3F)
        {
          sub_274051948();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27402046C()
{
  if (!qword_280935038)
  {
    type metadata accessor for WFNetworkRowConfigModel();
    sub_274020F08(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel);
    v0 = sub_274050FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280935038);
    }
  }
}

void sub_274020500(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_274020564()
{
  if (!qword_280935058)
  {
    v0 = sub_2740515A8();
    if (!v1)
    {
      atomic_store(v0, &qword_280935058);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2740205C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_274020610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274020748()
{
  result = qword_280935060;
  if (!qword_280935060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935068, &qword_2740599C8);
    sub_27402179C(&qword_280935070, &qword_280934FF8, &unk_274059838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935060);
  }

  return result;
}

unint64_t sub_2740207F8()
{
  result = qword_280935078;
  if (!qword_280935078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935080, &qword_2740599D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935078);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2740208BC(uint64_t a1)
{
  v2 = sub_274051028();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_274051088();
}

uint64_t sub_2740209D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_274020A34()
{
  result = qword_280935100;
  if (!qword_280935100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935100);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_274020AD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_274020AFC()
{
  result = qword_280935A10;
  if (!qword_280935A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935140, &unk_274059AC0);
    sub_27402179C(&qword_280935150, &qword_280935158, &unk_27405AD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935A10);
  }

  return result;
}

uint64_t sub_274020BE8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NetworkListRowView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_274020C5C()
{
  result = qword_280935168;
  if (!qword_280935168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935168);
  }

  return result;
}

unint64_t sub_274020CB0()
{
  result = qword_280935180;
  if (!qword_280935180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935160, &qword_274059B00);
    sub_274020D68();
    sub_27402179C(&qword_2809351B0, &qword_280935178, &qword_274059B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935180);
  }

  return result;
}

unint64_t sub_274020D68()
{
  result = qword_280935188;
  if (!qword_280935188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935170, &qword_274059B08);
    sub_27402179C(&qword_280935190, &qword_280935198, &qword_274059B48);
    sub_27402179C(&qword_2809351A0, &qword_2809351A8, &qword_274059B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935188);
  }

  return result;
}

unint64_t sub_274020E4C()
{
  result = qword_280935210;
  if (!qword_280935210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809351F8, &qword_274059BC0);
    sub_274020F08(&qword_280935218, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935210);
  }

  return result;
}

uint64_t sub_274020F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274020F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_274020FB8()
{
  result = qword_280935220;
  if (!qword_280935220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935200, &qword_274059BC8);
    sub_274020E4C();
    sub_27402179C(&unk_280935A20, &qword_280935230, &qword_274059C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935220);
  }

  return result;
}

unint64_t sub_274021070()
{
  result = qword_280935238;
  if (!qword_280935238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809351E8, &qword_274059BB0);
    sub_2740210F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935238);
  }

  return result;
}

unint64_t sub_2740210F4()
{
  result = qword_280935240;
  if (!qword_280935240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809351E0, &qword_274059BA8);
    sub_274020E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935240);
  }

  return result;
}

uint64_t sub_274021180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2740211E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for NetworkListRowView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 32))
  {
    v8 = *(v5 + 5);
  }

  if (*(v5 + 7))
  {
    v9 = *(v5 + 8);
  }

  v10 = *(v5 + 10);

  v11 = v1[10];
  v12 = sub_274051948();
  v13 = *(*(v12 - 8) + 8);
  v13(&v5[v11], v12);
  v13(&v5[v1[11]], v12);
  v13(&v5[v1[12]], v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2740213B0()
{
  v1 = type metadata accessor for NetworkListRowView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = *(v4 + 40);
    return v5();
  }

  return result;
}

double sub_27402141C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

unint64_t sub_27402144C()
{
  result = qword_280935288;
  if (!qword_280935288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935278, &qword_274059D80);
    sub_27402179C(&qword_280935290, &qword_280935298, &qword_274059D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935288);
  }

  return result;
}

unint64_t sub_274021504()
{
  result = qword_2809352A0;
  if (!qword_2809352A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935280, &qword_274059D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352A0);
  }

  return result;
}

unint64_t sub_2740215BC()
{
  result = qword_2809352A8;
  if (!qword_2809352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352A8);
  }

  return result;
}

unint64_t sub_27402162C()
{
  result = qword_2809352C8;
  if (!qword_2809352C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809352C0, &qword_274059ED0);
    sub_2740216E4();
    sub_27402179C(&qword_2809352E0, &qword_2809352E8, &qword_274059ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352C8);
  }

  return result;
}

unint64_t sub_2740216E4()
{
  result = qword_2809352D0;
  if (!qword_2809352D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809352B8, &qword_274059EC8);
    sub_27402179C(&qword_2809352D8, &qword_2809352B0, &qword_274059EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809352D0);
  }

  return result;
}

uint64_t sub_27402179C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WFPasswordPromptViewController.__allocating_init(networkName:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v10 = a1;
  *(v10 + 1) = a2;
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id WFPasswordPromptViewController.init(networkName:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v5 = a1;
  *(v5 + 1) = a2;
  *v7 = a3;
  *(v7 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for WFPasswordPromptViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_274021A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2740517C8();
  (*(a5 + 16))(a5, v6, v7);
}

id WFPasswordPromptViewController.__allocating_init(alertMessage:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v11 = a1;
  *(v11 + 1) = a2;
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id WFPasswordPromptViewController.init(alertMessage:joinCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___WFPasswordPromptViewController_networkName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  *v7 = a3;
  *(v7 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for WFPasswordPromptViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_274021D10()
{
  v52.receiver = v0;
  v52.super_class = type metadata accessor for WFPasswordPromptViewController();
  objc_msgSendSuper2(&v52, sel_viewDidLoad);
  if (*&v0[OBJC_IVAR___WFPasswordPromptViewController_alertMessage + 8])
  {
    v33 = *&v0[OBJC_IVAR___WFPasswordPromptViewController_alertMessage];
    v1 = *&v0[OBJC_IVAR___WFPasswordPromptViewController_alertMessage + 8];
  }

  else
  {
    v33 = 0;
    v1 = 0xE000000000000000;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;

  v5 = sub_27403D76C();
  v7 = v6;
  sub_274051568();
  v32 = v45;
  v8 = v46;
  sub_274051568();
  v9 = v45;
  v10 = v46;
  sub_274022364();
  sub_274050EC8();
  v11 = v45;
  v12 = *(&v45 + 1);
  v13 = v46;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = v5;
  *&v46 = v7;
  *(&v46 + 1) = v33;
  *v47 = v1;
  memset(&v47[8], 0, 32);
  *&v47[40] = sub_274022344;
  *&v48 = v2;
  *(&v48 + 1) = sub_27402235C;
  *v49 = v3;
  *&v49[8] = v32;
  *&v49[24] = v8;
  v50 = v9;
  *v51 = v10;
  v51[8] = v11;
  *&v51[16] = v12;
  v51[24] = v13;
  v43 = v9;
  v44[0] = *v51;
  *(v44 + 9) = *&v51[9];
  v39 = *&v47[32];
  v40 = v48;
  v41 = *v49;
  v42 = *&v49[16];
  v37 = *v47;
  v38 = *&v47[16];
  v35 = v45;
  v36 = v46;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935310, &unk_274059EF0));
  sub_2740223B8(&v45, v34);
  v15 = sub_2740511E8();
  [v4 addChildViewController_];
  v16 = [v15 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v4 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v17 setFrame_];
  v28 = [v15 view];

  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v28 setAutoresizingMask_];

  v29 = [v4 view];
  if (!v29)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v15 view];

  if (v31)
  {
    [v30 addSubview_];

    [v15 didMoveToParentViewController_];
    sub_274022414(&v45);
    return;
  }

LABEL_14:
  __break(1u);
}

id sub_2740220D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *&a5[OBJC_IVAR___WFPasswordPromptViewController_joinHandler];
  if (v6)
  {
    v11 = *&a5[OBJC_IVAR___WFPasswordPromptViewController_joinHandler + 8];

    v6(a1, a2, a3, a4);
    sub_273FBD2BC(v6);
  }

  return [a5 dismissViewControllerAnimated:1 completion:0];
}

id WFPasswordPromptViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFPasswordPromptViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFPasswordPromptViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_274022364()
{
  result = qword_280935308;
  if (!qword_280935308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935308);
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2740224F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274022538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740225D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v120 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935330, &qword_27405A040);
  v121 = *(v125 - 8);
  v3 = *(v121 + 64);
  v4 = MEMORY[0x28223BE20](v125);
  v124 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v127 = &v115 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935338, &qword_27405A048);
  v7 = *(*(v119 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v119);
  v123 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v126 = (&v115 - v10);
  v11 = a1[6];
  v122 = a1;
  if (v11)
  {
    *&v148 = a1[5];
    *(&v148 + 1) = v11;
    sub_274020248();

    v12 = sub_274051468();
    v14 = v13;
    v16 = v15;
    sub_274051378();
    v17 = sub_274051448();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_27402029C(v12, v14, v16 & 1);

    LOBYTE(v12) = sub_274051328();
    sub_274050E98();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    LOBYTE(v148) = v21 & 1;
    LOBYTE(v143) = 0;
    KeyPath = swift_getKeyPath();
    LOBYTE(v133[0]) = 0;
    *&v143 = v17;
    *(&v143 + 1) = v19;
    LOBYTE(v144) = v21 & 1;
    *(&v144 + 1) = v23;
    LOBYTE(v145) = v12;
    *(&v145 + 1) = v25;
    *&v146 = v27;
    *(&v146 + 1) = v29;
    *&v147[0] = v31;
    BYTE8(v147[0]) = 0;
    *&v147[1] = KeyPath;
    v33 = 1;
  }

  else
  {
    v34 = a1[4];
    *&v148 = a1[3];
    *(&v148 + 1) = v34;
    sub_274020248();

    v35 = sub_274051468();
    v37 = v36;
    v39 = v38;
    sub_274051378();
    v40 = sub_274051448();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    sub_27402029C(v35, v37, v39 & 1);

    LOBYTE(v35) = sub_274051328();
    sub_274050E98();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    LOBYTE(v148) = v44 & 1;
    LOBYTE(v143) = 0;
    v55 = swift_getKeyPath();
    LOBYTE(v133[0]) = 1;
    *&v143 = v40;
    *(&v143 + 1) = v42;
    LOBYTE(v144) = v44 & 1;
    *(&v144 + 1) = v46;
    LOBYTE(v145) = v35;
    *(&v145 + 1) = v48;
    *&v146 = v50;
    *(&v146 + 1) = v52;
    *&v147[0] = v54;
    BYTE8(v147[0]) = 0;
    *&v147[1] = v55;
    v33 = 257;
  }

  WORD4(v147[1]) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935340, &unk_27405A080);
  sub_274024680();
  sub_2740512B8();
  v56 = sub_274051118();
  v57 = v126;
  *v126 = v56;
  v57[1] = 0;
  *(v57 + 16) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935360, &qword_27405A098);
  v59 = v122;
  sub_274022E30(v122, v57 + *(v58 + 44));
  v60 = sub_274051318();
  v61 = sub_274050E98();
  v62 = v57 + *(v119 + 36);
  *v62 = v60;
  *(v62 + 1) = v63;
  *(v62 + 2) = v64;
  *(v62 + 3) = v65;
  *(v62 + 4) = v66;
  v62[40] = 0;
  MEMORY[0x28223BE20](v61);
  *(&v115 - 2) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935368, &qword_27405A0A0);
  sub_274024740();
  sub_2740513F8();
  v67 = *(v59 + 64);
  if (v67)
  {
    *&v143 = *(v59 + 56);
    *(&v143 + 1) = v67;
    sub_274020248();

    v68 = sub_274051468();
    v70 = v69;
    v72 = v71;
    sub_274051378();
    v73 = sub_274051448();
    v75 = v74;
    v77 = v76;

    sub_27402029C(v68, v70, v72 & 1);

    LODWORD(v143) = sub_2740512C8();
    v78 = sub_274051438();
    v118 = v79;
    v119 = v78;
    LOBYTE(v68) = v80;
    v117 = v81;
    sub_27402029C(v73, v75, v77 & 1);

    v116 = swift_getKeyPath();
    v82 = sub_274051308();
    sub_274050E98();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    LOBYTE(v143) = v68 & 1;
    LOBYTE(v133[0]) = 0;
    v122 = (v68 & 1);
    v115 = v82;
  }

  else
  {
    v118 = 0;
    v119 = 0;
    v116 = 0;
    v117 = 0;
    v115 = 0;
    v122 = 0;
    v84 = 0;
    v86 = 0;
    v88 = 0;
    v90 = 0;
  }

  v130 = v150;
  v131 = v151;
  v132[0] = v152[0];
  *(v132 + 10) = *(v152 + 10);
  v128 = v148;
  v129 = v149;
  v91 = v123;
  sub_274021180(v126, v123, &qword_280935338, &qword_27405A048);
  v92 = v121;
  v93 = *(v121 + 16);
  v94 = v124;
  v95 = v125;
  v93(v124, v127, v125);
  v96 = v131;
  v97 = v132[0];
  v133[3] = v131;
  v134[0] = v132[0];
  v98 = *(v132 + 10);
  *(v134 + 10) = *(v132 + 10);
  v99 = v128;
  v100 = v129;
  v133[0] = v128;
  v133[1] = v129;
  v133[2] = v130;
  v101 = v120;
  v120[2] = v130;
  v101[3] = v96;
  v101[4] = v97;
  *(v101 + 74) = v98;
  *v101 = v99;
  v101[1] = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935388, &qword_27405A0B0);
  sub_274021180(v91, v101 + v102[12], &qword_280935338, &qword_27405A048);
  v93(v101 + v102[16], v94, v95);
  v103 = (v101 + v102[20]);
  v105 = v118;
  v104 = v119;
  *&v135 = v119;
  *(&v135 + 1) = v118;
  v107 = v116;
  v106 = v117;
  *&v136 = v122;
  *(&v136 + 1) = v117;
  v137 = v116;
  v138 = 0;
  v108 = v115;
  *&v139 = v115;
  *(&v139 + 1) = v84;
  *&v140[0] = v86;
  *(&v140[0] + 1) = v88;
  *&v140[1] = v90;
  BYTE8(v140[1]) = 0;
  v109 = v139;
  v103[2] = v116;
  v103[3] = v109;
  v103[4] = v140[0];
  v110 = v136;
  *v103 = v135;
  v103[1] = v110;
  *(v103 + 73) = *(v140 + 9);
  v111 = v101 + v102[24];
  *v111 = 0;
  v111[8] = 1;
  sub_274021180(v133, &v143, &qword_280935390, &qword_27405A0B8);
  sub_274021180(&v135, &v143, &qword_280935398, &qword_27405A0C0);
  v112 = *(v92 + 8);
  v113 = v125;
  v112(v127, v125);
  sub_2740211E8(v126, &qword_280935338, &qword_27405A048);
  v141[0] = v104;
  v141[1] = v105;
  v141[2] = v122;
  v141[3] = v106;
  v141[4] = v107;
  v141[5] = 0;
  v141[6] = v108;
  v141[7] = v84;
  v141[8] = v86;
  v141[9] = v88;
  v141[10] = v90;
  v142 = 0;
  sub_2740211E8(v141, &qword_280935398, &qword_27405A0C0);
  v112(v124, v113);
  sub_2740211E8(v123, &qword_280935338, &qword_27405A048);
  v145 = v130;
  v146 = v131;
  v147[0] = v132[0];
  *(v147 + 10) = *(v132 + 10);
  v143 = v128;
  v144 = v129;
  return sub_2740211E8(&v143, &qword_280935390, &qword_27405A0B8);
}

uint64_t sub_274022E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935428, &qword_27405A138);
  v4 = *(v3 - 8);
  v97 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v88[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935430, &unk_27405A140);
  v8 = *(v7 - 8);
  v99 = v7 - 8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v100 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v88[-v13];
  MEMORY[0x28223BE20](v12);
  v103 = &v88[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935198, &qword_274059B48);
  v90 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v95 = &v88[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v88[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935438, &qword_27405A150);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v102 = &v88[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v88[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v88[-v30];
  v94 = &v88[-v30];
  v32 = swift_allocObject();
  v33 = *(a1 + 144);
  v32[9] = *(a1 + 128);
  v32[10] = v33;
  *(v32 + 169) = *(a1 + 153);
  v34 = *(a1 + 80);
  v32[5] = *(a1 + 64);
  v32[6] = v34;
  v35 = *(a1 + 112);
  v32[7] = *(a1 + 96);
  v32[8] = v35;
  v36 = *(a1 + 16);
  v32[1] = *a1;
  v32[2] = v36;
  v37 = *(a1 + 48);
  v32[3] = *(a1 + 32);
  v32[4] = v37;
  sub_2740223B8(a1, &v122);
  sub_2740515B8();
  sub_274051648();
  sub_274050FF8();
  v38 = *(v16 + 32);
  v38(v29, v21, v15);
  v39 = &v29[*(v23 + 44)];
  v40 = v137;
  v39[4] = v136;
  v39[5] = v40;
  v39[6] = v138;
  v41 = v133;
  *v39 = v132;
  v39[1] = v41;
  v42 = v135;
  v39[2] = v134;
  v39[3] = v42;
  sub_274020F50(v29, v31, &qword_280935438, &qword_27405A150);
  v43 = *(a1 + 16);
  *&v122 = *(a1 + 8);
  *(&v122 + 1) = v43;
  sub_274020248();

  v44 = sub_274051468();
  v46 = v45;
  LOBYTE(v23) = v47;
  sub_2740513E8();
  v48 = sub_274051448();
  v91 = v49;
  v92 = v48;
  LOBYTE(v31) = v50;
  v93 = v51;

  sub_27402029C(v44, v46, v23 & 1);

  sub_274051638();
  sub_274050FF8();
  v89 = v31 & 1;
  v121 = v31 & 1;
  v52 = swift_allocObject();
  v53 = *(a1 + 144);
  v52[9] = *(a1 + 128);
  v52[10] = v53;
  *(v52 + 169) = *(a1 + 153);
  v54 = *(a1 + 80);
  v52[5] = *(a1 + 64);
  v52[6] = v54;
  v55 = *(a1 + 112);
  v52[7] = *(a1 + 96);
  v52[8] = v55;
  v56 = *(a1 + 16);
  v52[1] = *a1;
  v52[2] = v56;
  v57 = *(a1 + 48);
  v52[3] = *(a1 + 32);
  v52[4] = v57;
  sub_2740223B8(a1, &v122);
  v58 = v95;
  sub_2740515B8();
  v122 = *(a1 + 128);
  v123 = *(a1 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051578();
  v59 = v111;

  v60 = HIBYTE(*(&v59 + 1)) & 0xFLL;
  if ((*(&v59 + 1) & 0x2000000000000000) == 0)
  {
    v60 = v59 & 0xFFFFFFFFFFFFLL;
  }

  v61 = v60 == 0;
  KeyPath = swift_getKeyPath();
  v63 = swift_allocObject();
  *(v63 + 16) = v61;
  v64 = v96;
  v38(v96, v58, v90);
  v65 = (v64 + *(v97 + 44));
  *v65 = KeyPath;
  v65[1] = sub_2740249AC;
  v65[2] = v63;
  sub_274051658();
  sub_274050FF8();
  v66 = v98;
  sub_274020F50(v64, v98, &qword_280935428, &qword_27405A138);
  v67 = &v66[*(v99 + 44)];
  v68 = v144;
  v67[4] = v143;
  v67[5] = v68;
  v67[6] = v145;
  v69 = v140;
  *v67 = v139;
  v67[1] = v69;
  v70 = v142;
  v67[2] = v141;
  v67[3] = v70;
  v71 = v103;
  sub_274020F50(v66, v103, &qword_280935430, &unk_27405A140);
  v72 = v94;
  v73 = v102;
  sub_274021180(v94, v102, &qword_280935438, &qword_27405A150);
  v74 = v71;
  v75 = v100;
  sub_274021180(v74, v100, &qword_280935430, &unk_27405A140);
  v76 = v73;
  v77 = v101;
  sub_274021180(v76, v101, &qword_280935438, &qword_27405A150);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935440, &qword_27405A188);
  v79 = (v77 + *(v78 + 48));
  v81 = v91;
  v80 = v92;
  *&v111 = v92;
  *(&v111 + 1) = v91;
  LOBYTE(v64) = v89;
  LOBYTE(v112) = v89;
  *(&v112 + 1) = *v120;
  DWORD1(v112) = *&v120[3];
  v82 = v93;
  *(&v112 + 1) = v93;
  v117 = v108;
  v118 = v109;
  v119 = v110;
  v115 = v106;
  v116 = v107;
  v113 = v104;
  v114 = v105;
  v83 = v109;
  v79[6] = v108;
  v79[7] = v83;
  v79[8] = v119;
  v84 = v114;
  v79[2] = v113;
  v79[3] = v84;
  v85 = v116;
  v79[4] = v115;
  v79[5] = v85;
  v86 = v112;
  *v79 = v111;
  v79[1] = v86;
  sub_274021180(v75, v77 + *(v78 + 64), &qword_280935430, &unk_27405A140);
  sub_274021180(&v111, &v122, &qword_280935448, &qword_27405A190);
  sub_2740211E8(v103, &qword_280935430, &unk_27405A140);
  sub_2740211E8(v72, &qword_280935438, &qword_27405A150);
  sub_2740211E8(v75, &qword_280935430, &unk_27405A140);
  *&v122 = v80;
  *(&v122 + 1) = v81;
  LOBYTE(v123) = v64;
  *(&v123 + 1) = *v120;
  HIDWORD(v123) = *&v120[3];
  v124 = v82;
  v129 = v108;
  v130 = v109;
  v131 = v110;
  v125 = v104;
  v126 = v105;
  v127 = v106;
  v128 = v107;
  sub_2740211E8(&v122, &qword_280935448, &qword_27405A190);
  return sub_2740211E8(v102, &qword_280935438, &qword_27405A150);
}

uint64_t sub_2740236D8@<X0>(uint64_t a1@<X8>)
{
  sub_27403D76C();
  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274023764(uint64_t a1)
{
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  v5 = *(a1 + 104);
  v7 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051578();
  v6 = *(a1 + 128);
  v8 = *(a1 + 144);
  sub_274051578();
  v3();
}

uint64_t sub_27402382C@<X0>(uint64_t a1@<X8>)
{
  sub_27403D76C();
  sub_274020248();
  result = sub_274051468();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2740238BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935380, &qword_27405A0A8);
  sub_27402179C(&qword_280935378, &qword_280935380, &qword_27405A0A8);
  return sub_274051618();
}

uint64_t sub_274023960@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353A0, &qword_27405A0C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353A8, &qword_27405A0D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353B0, &qword_27405A0D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  if (*a1)
  {
    *v15 = sub_274051118();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353C8, &qword_27405A0F0);
    sub_274023C7C(a1, &v15[*(v23 + 44)]);
    sub_273FBBA28(v15, v22);
    (*(v12 + 56))(v22, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(&v27 - v21, 1, 1, v11);
  }

  *v10 = sub_274051118();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353B8, &qword_27405A0E0);
  sub_2740240C0(a1, &v10[*(v24 + 44)]);
  sub_274021180(v22, v20, &qword_2809353B0, &qword_27405A0D8);
  sub_274021180(v10, v8, &qword_2809353A0, &qword_27405A0C8);
  sub_274021180(v20, a2, &qword_2809353B0, &qword_27405A0D8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353C0, &qword_27405A0E8);
  sub_274021180(v8, a2 + *(v25 + 48), &qword_2809353A0, &qword_27405A0C8);
  sub_2740211E8(v10, &qword_2809353A0, &qword_27405A0C8);
  sub_2740211E8(v22, &qword_2809353B0, &qword_27405A0D8);
  sub_2740211E8(v8, &qword_2809353A0, &qword_27405A0C8);
  return sub_2740211E8(v20, &qword_2809353B0, &qword_27405A0D8);
}

uint64_t sub_274023C7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353D0, &qword_27405A0F8);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353D8, &qword_27405A100);
  v33 = *(v9 - 8);
  v10 = v33;
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v32 - v14;
  *&v42 = sub_27403D76C();
  *(&v42 + 1) = v15;
  sub_274020248();
  v16 = sub_274051468();
  v35 = v17;
  v36 = v16;
  v37 = v18;
  v38 = v19;
  sub_274051168();
  v44 = *(a1 + 104);
  v45 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051598();
  sub_274051698();
  v42 = *(a1 + 152);
  LOBYTE(v43) = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935328, &qword_27405A038);
  sub_274050EB8();
  v42 = v44;
  LOBYTE(v43) = v45;
  LOBYTE(v44) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E8, &qword_27405A110);
  sub_27402179C(&qword_2809353F0, &qword_2809353D0, &qword_27405A0F8);
  sub_274024804();
  v20 = v34;
  v21 = v40;
  sub_2740514E8();

  (*(v41 + 8))(v8, v21);
  v22 = *(v10 + 16);
  v23 = v39;
  v22(v39, v20, v9);
  v24 = v36;
  v25 = a2;
  *a2 = v36;
  v26 = v35;
  v25[1] = v35;
  v27 = v37 & 1;
  *(v25 + 16) = v37 & 1;
  v25[3] = v38;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935400, &qword_27405A118);
  v22(v25 + *(v28 + 48), v23, v9);
  v29 = v26;
  sub_274020AD4(v24, v26, v27);
  v30 = *(v33 + 8);

  v30(v20, v9);
  v30(v23, v9);
  sub_27402029C(v24, v29, v27);
}

uint64_t sub_2740240C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935408, &qword_27405A120);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935410, &qword_27405A128);
  v33 = *(v9 - 8);
  v10 = v33;
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v32 - v14;
  *&v42 = sub_27403D76C();
  *(&v42 + 1) = v15;
  sub_274020248();
  v16 = sub_274051468();
  v35 = v17;
  v36 = v16;
  v37 = v18;
  v38 = v19;
  sub_274051168();
  v44 = *(a1 + 128);
  v45 = *(a1 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E0, &qword_27405A108);
  sub_274051598();
  sub_274050EE8();
  v42 = *(a1 + 152);
  LOBYTE(v43) = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935328, &qword_27405A038);
  sub_274050EB8();
  v42 = v44;
  LOBYTE(v43) = v45;
  LOBYTE(v44) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809353E8, &qword_27405A110);
  sub_27402179C(&qword_280935418, &qword_280935408, &qword_27405A120);
  sub_274024804();
  v20 = v34;
  v21 = v40;
  sub_2740514E8();

  (*(v41 + 8))(v8, v21);
  v22 = *(v10 + 16);
  v23 = v39;
  v22(v39, v20, v9);
  v24 = v36;
  v25 = a2;
  *a2 = v36;
  v26 = v35;
  v25[1] = v35;
  v27 = v37 & 1;
  *(v25 + 16) = v37 & 1;
  v25[3] = v38;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935420, &qword_27405A130);
  v22(v25 + *(v28 + 48), v23, v9);
  v29 = v26;
  sub_274020AD4(v24, v26, v27);
  v30 = *(v33 + 8);

  v30(v20, v9);
  v30(v23, v9);
  sub_27402029C(v24, v29, v27);
}

uint64_t sub_2740244F0(uint64_t a1)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 168);
  v2 = (*a1 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935328, &qword_27405A038);
  return sub_274050EA8();
}

uint64_t sub_274024558@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v26 = v1[8];
  v27[0] = v3;
  *(v27 + 9) = *(v1 + 153);
  v4 = v1[5];
  v22 = v1[4];
  v23 = v4;
  v5 = v1[7];
  v24 = v1[6];
  v25 = v5;
  v6 = v1[1];
  v18 = *v1;
  v19 = v6;
  v7 = v1[3];
  v20 = v1[2];
  v21 = v7;
  *a1 = sub_2740511C8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935318, &qword_27405A028);
  sub_2740225D0(&v18, (a1 + *(v8 + 44)));
  v9 = swift_allocObject();
  v10 = v27[0];
  v9[9] = v26;
  v9[10] = v10;
  *(v9 + 169) = *(v27 + 9);
  v11 = v23;
  v9[5] = v22;
  v9[6] = v11;
  v12 = v25;
  v9[7] = v24;
  v9[8] = v12;
  v13 = v19;
  v9[1] = v18;
  v9[2] = v13;
  v14 = v21;
  v9[3] = v20;
  v9[4] = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935320, &qword_27405A030) + 36));
  *v15 = sub_274024678;
  v15[1] = v9;
  v15[2] = 0;
  v15[3] = 0;
  return sub_2740223B8(&v18, &v17);
}

unint64_t sub_274024680()
{
  result = qword_280935348;
  if (!qword_280935348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935340, &unk_27405A080);
    sub_274021504();
    sub_27402179C(&qword_280935350, &qword_280935358, &qword_27405A090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935348);
  }

  return result;
}

unint64_t sub_274024740()
{
  result = qword_280935370;
  if (!qword_280935370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935368, &qword_27405A0A0);
    sub_27402179C(&qword_280935378, &qword_280935380, &qword_27405A0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935370);
  }

  return result;
}

unint64_t sub_274024804()
{
  result = qword_2809353F8;
  if (!qword_2809353F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809353E8, &qword_27405A110);
    sub_274022364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809353F8);
  }

  return result;
}

uint64_t sub_274024888()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return v1();
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[20];

  v11 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t sub_274024940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2740510D8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2740249C4()
{
  result = qword_280935450;
  if (!qword_280935450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935320, &qword_27405A030);
    sub_27402179C(&qword_280935458, &qword_280935460, qword_27405A198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935450);
  }

  return result;
}

uint64_t sub_274024A90()
{
  v0 = sub_274050E28();
  __swift_allocate_value_buffer(v0, qword_280935468);
  __swift_project_value_buffer(v0, qword_280935468);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_2740517D8();
  }

  return sub_274050E18();
}

uint64_t sub_274024B78(void *a1, int a2)
{
  v3 = v2;
  v38 = a2;
  v39 = a1;
  v4 = sub_274050DE8();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274051728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274050DD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = [v2 traitCollection];
  sub_274051918();

  v21 = [v3 traitCollection];
  sub_274051928();

  v22 = sub_2740516E8();
  v33 = *(v8 + 8);
  v34 = v7;
  v33(v11, v7);
  v41[3] = &type metadata for SettingsNavigationFeatureFlags;
  v41[4] = sub_2740255E0();
  LOBYTE(v21) = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(v41);
  if ((v21 & 1) != 0 && ((*(v13 + 104))(v17, *MEMORY[0x277D40278], v12), sub_274025698(&qword_280935488, MEMORY[0x277D40290]), sub_274051828(), sub_274051828(), v23 = *(v13 + 8), v23(v17, v12), ((v41[0] == v40) & v22) == 1))
  {
    v24 = v23;
    v25 = [v3 traitCollection];
    sub_274051928();

    v26 = v39;
    v27 = v35;
    sub_274050DF8();
    sub_274025698(&qword_280935490, MEMORY[0x277D402E0]);
    v28 = v37;
    sub_2740516F8();
    (*(v36 + 8))(v27, v28);
    v33(v11, v34);
    return v24(v19, v12);
  }

  else
  {
    v30 = [v3 navigationController];
    if (v30)
    {
      v31 = v30;
      [v30 pushViewController:v39 animated:v38 & 1];
    }

    return (*(v13 + 8))(v19, v12);
  }
}

void sub_274024FD4(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = a1;
  sub_274024B78(v6, a4);
}

uint64_t sub_274025044(int a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_274051728();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274050DD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = [v1 traitCollection];
  v45 = v15;
  sub_274051918();

  v17 = [v2 traitCollection];
  sub_274051928();

  v43 = sub_2740516E8();
  v18 = *(v4 + 8);
  v18(v7, v3);
  v44 = v2;
  v19 = [v2 traitCollection];
  sub_274051928();

  v20 = sub_274051718();
  v41 = v3;
  v21 = v3;
  v22 = v9;
  v23 = v18;
  v18(v7, v21);
  v47[3] = &type metadata for SettingsNavigationFeatureFlags;
  v47[4] = sub_2740255E0();
  LOBYTE(v19) = sub_274050DC8();
  __swift_destroy_boxed_opaque_existential_1(v47);
  if ((v19 & 1) != 0 && ((*(v22 + 104))(v13, *MEMORY[0x277D40278], v8), sub_274025698(&qword_280935488, MEMORY[0x277D40290]), v24 = v8, sub_274051828(), sub_274051828(), v25 = *(v22 + 8), v25(v13, v8), !((v47[0] != v46 || (v43 & 1) == 0) | v20 & 1)))
  {
    v35 = v25;
    if (qword_280934D70 != -1)
    {
      swift_once();
    }

    v36 = sub_274050E28();
    __swift_project_value_buffer(v36, qword_280935468);
    v37 = sub_274050E08();
    v38 = sub_2740518D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_273FB9000, v37, v38, "state driven pop", v39, 2u);
      MEMORY[0x2743E44F0](v39, -1, -1);
    }

    v40 = [v44 traitCollection];
    sub_274051928();

    sub_274051708();
    v23(v7, v41);
    return v35(v45, v24);
  }

  else
  {
    if (qword_280934D70 != -1)
    {
      swift_once();
    }

    v26 = sub_274050E28();
    __swift_project_value_buffer(v26, qword_280935468);
    v27 = sub_274050E08();
    v28 = sub_2740518D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v8;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_273FB9000, v27, v28, "normal pop", v30, 2u);
      v31 = v30;
      v8 = v29;
      MEMORY[0x2743E44F0](v31, -1, -1);
    }

    v32 = [v44 navigationController];
    if (v32)
    {
      v33 = v32;
    }

    return (*(v22 + 8))(v45, v8);
  }
}

void sub_27402558C(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  sub_274025044(a3);
}

unint64_t sub_2740255E0()
{
  result = qword_280935480;
  if (!qword_280935480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935480);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_274025698(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2740256F4()
{
  result = qword_280935498;
  if (!qword_280935498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935498);
  }

  return result;
}

uint64_t sub_274025770()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_2740257DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();
}

uint64_t sub_2740258F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_274025968()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_2740259DC()
{
  v1 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_274025A24(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v5 = v1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v5 + 8);
    v9 = *(v1 + v3);
    sub_273FBBB0C(v7);

    v7(v10);
    sub_273FBD2BC(v7);
  }

  return result;
}

void (*sub_274025AE0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_274025B68;
}

void sub_274025B68(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3] + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v4 + 8);
      v7 = *(v3[3] + v3[4]);
      sub_273FBBB0C(v5);

      v5(v8);
      sub_273FBD2BC(v5);
    }
  }

  free(v3);
}

uint64_t sub_274025C1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v1 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x2743E3810](v1);
      }

      else
      {
        if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v2 = *(v7 + v1 + 4);
      }

      v3 = v2;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v7)
      {
        if ([v7 respondsToSelector_])
        {
          v5 = [v7 byte_279EC64F8];
          swift_unknownObjectRelease();

          if (v5)
          {
            i = 1;
            goto LABEL_17;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v1;
      if (v4 == i)
      {
        i = 0;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_17:

  return i;
}

uint64_t sub_274025DF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v1 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x2743E3810](v1);
      }

      else
      {
        if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v2 = *(v7 + v1 + 4);
      }

      v3 = v2;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v7)
      {
        if ([v7 respondsToSelector_])
        {
          v5 = [v7 byte_279EC64F8];
          swift_unknownObjectRelease();

          if ((v5 & 1) == 0)
          {
            i = 1;
            goto LABEL_17;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v1;
      if (v4 == i)
      {
        i = 0;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_17:

  return i;
}

uint64_t sub_274025FC4()
{
  if ((sub_274025C1C() & 1) == 0)
  {
    return 0;
  }

  return sub_274025DF0();
}

uint64_t sub_274025FFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v0 = v8;
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x2743E3810](v2, v0);
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v3 = *(v0 + 8 * v2 + 32);
      }

      v4 = v3;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v8 = v3;
      v6 = sub_27402614C(&v8);

      if (v6)
      {

        return 1;
      }

      ++v2;
      if (v5 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_27402614C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v2 = v13;
  if (!v13)
  {
    return v2 & 1;
  }

  if (([v13 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v3 = [v13 cellularSlicingIsEnabled];
  swift_unknownObjectRelease();
  if (!v3)
  {
LABEL_7:
    v2 = 0;
    return v2 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v4 = [v13 ssid];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = sub_2740517D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v9 = [v13 ssid];
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = sub_2740517D8();
    v12 = v11;

    if (v7)
    {
      goto LABEL_12;
    }

LABEL_17:
    if (!v12)
    {
      v2 = 1;
      return v2 & 1;
    }

    goto LABEL_18;
  }

  v10 = 0;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (!v12)
  {
LABEL_18:

    goto LABEL_7;
  }

  if (v5 == v10 && v7 == v12)
  {

    v2 = 1;
  }

  else
  {
    v2 = sub_274051B08();
  }

  return v2 & 1;
}

uint64_t sub_2740263DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_networkTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036918;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_27402647C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740368C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_networkTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_2740265E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036690;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_274026684(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_274036654;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_2740267EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_associationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036628;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_27402688C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_associationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_2740269F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740365FC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_274026A94(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_274026BFC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740365BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_274026C9C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_274026E08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_274036580;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4);
}

uint64_t sub_274026EA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_274036540;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3);
  return sub_273FBD2BC(v8);
}

uint64_t sub_274026F90(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_274027018(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_2740270DC()
{
  v2 = v0;
  v3 = sub_2740516B8();
  v105 = *(v3 - 8);
  v106 = v3;
  v4 = *(v105 + 64);
  MEMORY[0x28223BE20](v3);
  v103 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2740516D8();
  v102 = *(v104 - 8);
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = OBJC_IVAR___WFNetworkListDataSource_scanResults;
  v8 = *&v0[OBJC_IVAR___WFNetworkListDataSource_scanResults];
  aBlock[0] = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_158;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v10 = &selRef__stringForSettingsSection_;
  v108 = v2;
  if (v9)
  {
    v11 = 0;
    v109 = v8 & 0xFFFFFFFFFFFFFF8;
    v110 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v110)
      {
        v12 = MEMORY[0x2743E3810](v11, v8);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        if (v11 >= *(v109 + 16))
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          v9 = sub_274051A98();
          goto LABEL_3;
        }

        v12 = *(v8 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_33;
        }
      }

      if (([v12 isKnown] & 1) == 0 && !objc_msgSend(v12, v10[482]))
      {
        goto LABEL_5;
      }

      v14 = [v12 ssid];
      if (v14)
      {
        v15 = v14;
        v16 = sub_2740517D8();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v1 = v112;
      if (!v112)
      {
        goto LABEL_21;
      }

      v19 = [v112 ssid];
      swift_unknownObjectRelease();
      if (!v19)
      {
        break;
      }

      v1 = sub_2740517D8();
      v21 = v20;

      v10 = &selRef__stringForSettingsSection_;
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_22:
      if (!v21)
      {
        goto LABEL_26;
      }

      if (v16 == v1 && v18 == v21)
      {
        swift_unknownObjectRelease();

        v2 = v108;
        goto LABEL_6;
      }

      v23 = sub_274051B08();

      v2 = v108;
      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_5:
      swift_unknownObjectRelease();
LABEL_6:
      ++v11;
      if (v13 == v9)
      {
        goto LABEL_34;
      }
    }

    v1 = 0;
LABEL_21:
    v21 = 0;
    v10 = &selRef__stringForSettingsSection_;
    if (!v18)
    {
LABEL_18:
      if (!v21)
      {
        swift_unknownObjectRelease();
        v2 = v108;
        goto LABEL_6;
      }

LABEL_26:

      v2 = v108;
LABEL_27:
      sub_274051A38();
      v22 = *(aBlock[0] + 16);
      sub_274051A58();
      sub_274051A68();
      sub_274051A48();
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_34:

  v8 = v2;

  aBlock[0] = sub_2740333D4(v24);
  sub_2740350C8(aBlock, v8, &unk_288307940, sub_2740336B4);

  v109 = v8;
  v100 = aBlock[0];
  v25 = *&v2[v107];
  v110 = 0;
  aBlock[0] = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    v26 = sub_274051A98();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v99 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v28 = 0;
  v1 = v25 & 0xC000000000000001;
  v2 = (v25 & 0xFFFFFFFFFFFFFF8);
  while (v1)
  {
    v29 = MEMORY[0x2743E3810](v28, v25);
    v8 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_47;
    }

LABEL_43:
    if ([v29 v10[482]])
    {
      sub_274051A38();
      v30 = *(aBlock[0] + 16);
      sub_274051A58();
      v10 = &selRef__stringForSettingsSection_;
      sub_274051A68();
      sub_274051A48();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v28;
    if (v8 == v26)
    {
      goto LABEL_48;
    }
  }

  if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_153;
  }

  v29 = *(v25 + 8 * v28 + 32);
  swift_unknownObjectRetain();
  v8 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_43;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  v99 = aBlock[0];
  v2 = v108;
LABEL_50:

  v31 = *&v2[v107];
  aBlock[0] = v27;
  if (v31 >> 62)
  {
    v32 = sub_274051A98();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x277D84F90];
  v34 = &selRef__stringForSettingsSection_;
  if (!v32)
  {
    goto LABEL_70;
  }

  v35 = 0;
  v8 = v31 & 0xC000000000000001;
  v2 = (v31 & 0xFFFFFFFFFFFFFF8);
  while (2)
  {
    if (v8)
    {
      v36 = MEMORY[0x2743E3810](v35, v31);
      v1 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      goto LABEL_57;
    }

    if (v35 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_154;
    }

    v36 = *(v31 + 8 * v35 + 32);
    swift_unknownObjectRetain();
    v1 = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
LABEL_57:
      if (![v36 isPopular] || (objc_msgSend(v36, sel_isKnown) & 1) != 0 || (objc_msgSend(v36, v10[482]) & 1) != 0 || (objc_msgSend(v36, sel_isAdhoc) & 1) != 0 || objc_msgSend(v36, v34[496]))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_274051A38();
        v37 = *(aBlock[0] + 16);
        sub_274051A58();
        v10 = &selRef__stringForSettingsSection_;
        sub_274051A68();
        sub_274051A48();
        v34 = &selRef__stringForSettingsSection_;
      }

      ++v35;
      if (v1 == v32)
      {
        goto LABEL_69;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_69:
  v2 = v108;
  v33 = MEMORY[0x277D84F90];
LABEL_70:

  v38 = v109;

  aBlock[0] = sub_2740333D4(v39);
  v40 = v110;
  sub_2740350C8(aBlock, v38, &unk_288307850, sub_274034474);
  if (v40)
  {

    while (1)
    {

      __break(1u);
    }
  }

  v110 = aBlock[0];
  aBlock[0] = v33;
  v41 = *&v2[v107];
  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v97 = *&v2[v107];
    }

    v42 = sub_274051A98();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = &selRef__stringForSettingsSection_;

  if (!v42)
  {
    goto LABEL_91;
  }

  v109 = v38;
  v44 = 0;
  v8 = v41 & 0xC000000000000001;
  v2 = (v41 & 0xFFFFFFFFFFFFFF8);
  while (2)
  {
    if (v8)
    {
      v45 = MEMORY[0x2743E3810](v44, v41);
      v1 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      goto LABEL_78;
    }

    if (v44 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_155;
    }

    v45 = *(v41 + 8 * v44 + 32);
    swift_unknownObjectRetain();
    v1 = v44 + 1;
    if (!__OFADD__(v44, 1))
    {
LABEL_78:
      if (([v45 v10[482]] & 1) != 0 || (objc_msgSend(v45, sel_isAdhoc) & 1) != 0 || (objc_msgSend(v45, v43[496]) & 1) != 0 || (objc_msgSend(v45, sel_isPopular) & 1) != 0 || objc_msgSend(v45, sel_isKnown))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_274051A38();
        v46 = *(aBlock[0] + 16);
        sub_274051A58();
        v10 = &selRef__stringForSettingsSection_;
        sub_274051A68();
        sub_274051A48();
        v43 = &selRef__stringForSettingsSection_;
      }

      ++v44;
      if (v1 == v42)
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_90:
  v2 = v108;
  v38 = v109;
  v33 = MEMORY[0x277D84F90];
LABEL_91:

  v8 = v38;

  aBlock[0] = sub_2740333D4(v47);
  sub_2740350C8(aBlock, v8, &unk_288307760, sub_274034608);

  v109 = aBlock[0];
  v48 = *&v2[v107];
  aBlock[0] = v33;
  if (v48 >> 62)
  {
    v49 = sub_274051A98();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = MEMORY[0x277D84F90];
  if (!v49)
  {
    goto LABEL_106;
  }

  v98 = v8;
  v51 = 0;
  v2 = (v48 & 0xC000000000000001);
  while (2)
  {
    if (v2)
    {
      v52 = MEMORY[0x2743E3810](v51, v48);
      v8 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      goto LABEL_100;
    }

    if (v51 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_156;
    }

    v52 = *(v48 + 8 * v51 + 32);
    swift_unknownObjectRetain();
    v8 = v51 + 1;
    if (!__OFADD__(v51, 1))
    {
LABEL_100:
      if ([v52 isAdhoc])
      {
        sub_274051A38();
        v1 = *(aBlock[0] + 16);
        sub_274051A58();
        sub_274051A68();
        sub_274051A48();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v51;
      if (v8 == v49)
      {
        goto LABEL_105;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_105:
  v2 = v108;
  v8 = v98;
  v50 = MEMORY[0x277D84F90];
LABEL_106:

  v53 = v8;

  aBlock[0] = sub_2740333D4(v54);
  sub_2740350C8(aBlock, v53, &unk_288307670, sub_27403479C);

  v108 = aBlock[0];
  v55 = *&v2[v107];
  aBlock[0] = v50;
  if (v55 >> 62)
  {
    v56 = sub_274051A98();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = &selRef__stringForSettingsSection_;

  if (!v56)
  {
    goto LABEL_121;
  }

  v107 = v53;
  v1 = 0;
  v8 = v55 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if ((v55 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x2743E3810](v1, v55);
      v59 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      goto LABEL_115;
    }

    if (v1 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_157;
    }

    v58 = *(v55 + 8 * v1 + 32);
    swift_unknownObjectRetain();
    v59 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
LABEL_115:
      if ([v58 v57[496]])
      {
        sub_274051A38();
        v2 = *(aBlock[0] + 16);
        sub_274051A58();
        sub_274051A68();
        sub_274051A48();
        v57 = &selRef__stringForSettingsSection_;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v1;
      if (v59 == v56)
      {
        goto LABEL_120;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_120:
  v53 = v107;
LABEL_121:

  v60 = v53;

  aBlock[0] = sub_2740333D4(v61);
  sub_2740350C8(aBlock, v60, &unk_288307580, sub_274034930);

  v62 = aBlock[0];
  v63 = (aBlock[0] >> 62) & 1;
  if (aBlock[0] < 0)
  {
    LODWORD(v63) = 1;
  }

  LODWORD(v107) = v63;
  if (v63)
  {
    v64 = sub_274051A98();
  }

  else
  {
    v64 = *(aBlock[0] + 16);
  }

  if (v64 >= 1)
  {
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v65 = sub_274050E28();
    __swift_project_value_buffer(v65, qword_280937140);
    v66 = sub_274050E08();
    v67 = sub_2740518C8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock[0] = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_2740310C4(0x757365526E616373, 0xEB0000000073746CLL, aBlock);
      _os_log_impl(&dword_273FB9000, v66, v67, "%s:updating UnconfiguredSectionTitle because there's at least one unconfiguredNetworks", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x2743E44F0](v69, -1, -1);
      MEMORY[0x2743E44F0](v68, -1, -1);
    }

    sub_27402E498();
  }

  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v70 = sub_274050E28();
  __swift_project_value_buffer(v70, qword_280937140);
  v71 = v110;
  swift_retain_n();
  v72 = v109;
  swift_retain_n();
  v73 = v108;
  swift_retain_n();
  swift_retain_n();
  v74 = v100;

  v75 = v99;

  v76 = sub_274050E08();
  v77 = sub_2740518C8();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v78 = 136316674;
    *(v78 + 4) = sub_2740310C4(0x757365526E616373, 0xEB0000000073746CLL, aBlock);
    *(v78 + 12) = 2048;
    if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
    {
      v80 = sub_274051A98();
    }

    else
    {
      v80 = *(v74 + 16);
    }

    *(v78 + 14) = v80;

    *(v78 + 22) = 2080;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
    v82 = MEMORY[0x2743E3670](v75, v81);
    v84 = sub_2740310C4(v82, v83, aBlock);

    *(v78 + 24) = v84;
    *(v78 + 32) = 2048;
    if ((v110 & 0x8000000000000000) != 0 || (v110 & 0x4000000000000000) != 0)
    {
      v85 = sub_274051A98();
    }

    else
    {
      v85 = *(v110 + 16);
    }

    *(v78 + 34) = v85;

    *(v78 + 42) = 2048;
    if (v109 < 0 || (v109 & 0x4000000000000000) != 0)
    {
      v86 = sub_274051A98();
    }

    else
    {
      v86 = *(v109 + 16);
    }

    *(v78 + 44) = v86;

    *(v78 + 52) = 2048;
    if (v108 < 0 || (v108 & 0x4000000000000000) != 0)
    {
      v87 = sub_274051A98();
    }

    else
    {
      v87 = *(v108 + 16);
    }

    *(v78 + 54) = v87;

    *(v78 + 62) = 2048;
    if (v107)
    {
      v88 = sub_274051A98();
    }

    else
    {
      v88 = *(v62 + 16);
    }

    *(v78 + 64) = v88;

    _os_log_impl(&dword_273FB9000, v76, v77, "%s: known networks count:%ld, ph networks: %s, public networks count: %ld, infraNetworks count: %ld, adhocNetworks count: %ld, unconfiguredNetworks count: %ld", v78, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v79, -1, -1);
    MEMORY[0x2743E44F0](v78, -1, -1);

    v72 = v109;
    v71 = v110;
    v73 = v108;
  }

  else
  {
  }

  sub_274031704();
  v89 = sub_2740518F8();
  v90 = swift_allocObject();
  v90[2] = v60;
  v90[3] = v74;
  v90[4] = v75;
  v90[5] = v71;
  v90[6] = v72;
  v90[7] = v73;
  v90[8] = v62;
  aBlock[4] = sub_2740367C0;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_324;
  v91 = _Block_copy(aBlock);
  v92 = v60;

  v93 = v101;
  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0);
  v94 = v103;
  v95 = v106;
  sub_274051978();
  MEMORY[0x2743E3710](0, v93, v94, v91);
  _Block_release(v91);

  (*(v105 + 8))(v94, v95);
  return (*(v102 + 8))(v93, v104);
}

uint64_t sub_274028314()
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27402838C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v8 = a2;
  v73 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_48;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v63 = a1;
    v64 = a3;
    v12 = 0;
    a3 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743E3810](v12, v8);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v13 = *(v8 + 8 * v12 + 32);
        swift_unknownObjectRetain();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v10 = sub_274051A98();
          goto LABEL_3;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v15 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v15);
      a1 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      ++v12;
      if (v14 == v10)
      {
        a1 = v63;
        a3 = v64;
        v11 = MEMORY[0x277D84F90];
        break;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a1;
  sub_274050E78();
  v73 = v11;
  if (a3 >> 62)
  {
    v17 = sub_274051A98();
  }

  else
  {
    v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = MEMORY[0x277D84F90];
  if (v17)
  {
    v8 = 0;
    v18 = a3 & 0xC000000000000001;
    a1 = a3;
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
    do
    {
      if (v18)
      {
        MEMORY[0x2743E3810](v8, a1);
        v20 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v8 >= *(a3 + 16))
        {
          goto LABEL_45;
        }

        v19 = *(a1 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v20 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_44;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v21 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v21);
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_274051878();
      }

      sub_274051898();
      ++v8;
    }

    while (v20 != v17);
    a1 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v16;
  sub_274050E78();
  v73 = a1;
  v23 = a4;
  if (a4 >> 62)
  {
    v29 = sub_274051A98();
    v23 = a4;
    v24 = v29;
    if (v29)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v24 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_31:
      v25 = 0;
      v26 = v23 & 0xC000000000000001;
      a3 = v23 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v26)
        {
          MEMORY[0x2743E3810](v25, v23);
          v8 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v25 >= *(a3 + 16))
          {
            goto LABEL_47;
          }

          v27 = *(v23 + 8 * v25 + 32);
          swift_unknownObjectRetain();
          v8 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_46;
          }
        }

        WFNetworkListRecord.settingsModel.getter();
        v28 = swift_unknownObjectRelease();
        MEMORY[0x2743E3640](v28);
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v66 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_274051878();
        }

        sub_274051898();
        ++v25;
        v23 = a4;
      }

      while (v8 != v24);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v22;
  sub_274050E78();
  v74 = a1;
  v31 = a5;
  if (a5 >> 62)
  {
    goto LABEL_98;
  }

  v32 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = 0;
    v35 = v31 & 0xC000000000000001;
    v36 = v31 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v35)
      {
        MEMORY[0x2743E3810](v34, v31);
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v34 >= *(v36 + 16))
        {
          goto LABEL_93;
        }

        v37 = *(v31 + 8 * v34 + 32);
        swift_unknownObjectRetain();
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          v58 = sub_274051A98();
          v31 = a5;
          v32 = v58;
          goto LABEL_53;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v39 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v39);
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v71 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_274051878();
      }

      sub_274051898();
      ++v34;
      v31 = a5;
    }

    while (v38 != v32);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v30;
  sub_274050E78();
  v74 = v33;
  v41 = a6;
  if (a6 >> 62)
  {
    v59 = sub_274051A98();
    v41 = a6;
    v42 = v59;
  }

  else
  {
    v42 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v30 = 0;
    v44 = v41 & 0xC000000000000001;
    v45 = v41 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v44)
      {
        MEMORY[0x2743E3810](v30, v41);
        v47 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v30 >= *(v45 + 16))
        {
          goto LABEL_95;
        }

        v46 = *(v41 + 8 * v30 + 32);
        swift_unknownObjectRetain();
        v47 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_94;
        }
      }

      WFNetworkListRecord.settingsModel.getter();
      v48 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v48);
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v72 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_274051878();
      }

      sub_274051898();
      ++v30;
      v41 = a6;
    }

    while (v47 != v42);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v40;
  sub_274050E78();
  v74 = v43;
  v50 = a7;
  if (a7 >> 62)
  {
    v60 = sub_274051A98();
    v50 = a7;
    v51 = v60;
    if (v60)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v51 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
LABEL_81:
      v52 = 0;
      v30 = v50 & 0xC000000000000001;
      v53 = v50 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v30)
        {
          MEMORY[0x2743E3810](v52, v50);
          v55 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v52 >= *(v53 + 16))
          {
            goto LABEL_97;
          }

          v54 = *(v50 + 8 * v52 + 32);
          swift_unknownObjectRetain();
          v55 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_96;
          }
        }

        WFNetworkListRecord.settingsModel.getter();
        v56 = swift_unknownObjectRelease();
        MEMORY[0x2743E3640](v56);
        if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v57 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_274051878();
        }

        sub_274051898();
        ++v52;
        v50 = a7;
      }

      while (v55 != v51);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v49;
  return sub_274050E78();
}

void WFNetworkListRecord.settingsModel.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &unk_2809354A0);
  swift_endAccess();
  if (v2)
  {
    sub_274051968();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_27403169C(v37);
LABEL_8:
    type metadata accessor for WFNetworkRowConfigModel();
    v3 = static WFNetworkRowConfigModel.settingsNetworkRowConfig()();
    sub_27403DF48(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[0] = v1;
    v4 = v3;
    swift_unknownObjectRetain();
    sub_274050E78();
    [v1 scaledRSSI];
    sub_274041648(v5);
    v7 = v6;
    sub_27403F65C(v6);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[0] = v7;
    v8 = v4;
    sub_274050E78();
    v9 = [v1 subtitle];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2740517D8();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    sub_27403E520(v11, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[0] = v11;
    *(&v37[0] + 1) = v13;
    v14 = v8;
    sub_274050E78();
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v15 = sub_274050E28();
    __swift_project_value_buffer(v15, qword_280937140);
    swift_unknownObjectRetain_n();
    v16 = v14;
    v17 = sub_274050E08();
    v18 = sub_2740518C8();
    if (!os_log_type_enabled(v17, v18))
    {

      swift_unknownObjectRelease_n();
LABEL_34:
      swift_beginAccess();
      v34 = v16;
      objc_setAssociatedObject(v1, &unk_2809354A0, v34, 1);
      swift_endAccess();

      return;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v35 = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_2740310C4(0x73676E6974746573, 0xED00006C65646F4DLL, &v35);
    *(v19 + 12) = 2080;
    v21 = [v1 ssid];
    if (!v21)
    {
LABEL_38:
      swift_unknownObjectRelease_n();

      __break(1u);
      return;
    }

    v22 = v21;

    v23 = sub_2740517D8();
    v25 = v24;

    v26 = sub_2740310C4(v23, v25, &v35);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2048;
    [v1 scaledRSSI];
    if (v27 < 0.0)
    {
      swift_unknownObjectRelease();
      v28 = 0;
LABEL_27:
      *(v19 + 24) = v28;
      swift_unknownObjectRelease();
      *(v19 + 32) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (*(&v37[0] + 1))
      {
        v31 = *&v37[0];
      }

      else
      {
        v31 = 0;
      }

      if (*(&v37[0] + 1))
      {
        v32 = *(&v37[0] + 1);
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      v33 = sub_2740310C4(v31, v32, &v35);

      *(v19 + 34) = v33;
      _os_log_impl(&dword_273FB9000, v17, v18, "%s: network: %s, signal bar: %lu, subtitle: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2743E44F0](v20, -1, -1);
      MEMORY[0x2743E44F0](v19, -1, -1);

      goto LABEL_34;
    }

    v29 = v27;
    swift_unknownObjectRelease();
    if (v29 > 1.0)
    {
      v28 = 0;
      goto LABEL_27;
    }

    v30 = ceilf(v29 * 3.0);
    if ((LODWORD(v30) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v30 > -9.2234e18)
    {
      if (v30 < 9.2234e18)
      {
        v28 = v30;
        if (v30 >= 3)
        {
          v28 = 3;
        }

        if (v28 <= 1)
        {
          v28 = 1;
        }

        goto LABEL_27;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  type metadata accessor for WFNetworkRowConfigModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }
}