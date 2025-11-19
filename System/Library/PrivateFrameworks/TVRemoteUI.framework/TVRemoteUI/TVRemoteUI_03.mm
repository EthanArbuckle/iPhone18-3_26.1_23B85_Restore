uint64_t lazy protocol witness table accessor for type [SKNode] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of FMPFSKLabelNodeStyle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10TVRemoteUI20FMPFSKLabelNodeStyleVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall FMPFSKPeripheralDotNode.updateWithDeltaTime(_:)(Swift::Double a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius] == 1)
  {
    v4 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadiusSpring;
    v5 = *&v1[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
    if (!FMPFFluidSpring.isStable.getter())
    {
      FLSpring.step(_:)(a1);
      *(v5 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v6 = *&v2[v4];
      v7 = (v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      if (vabdd_f64(v8, *v7 + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v8 = *v7 + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      }

      v9 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
      *v9 = v8;
      *(v9 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
    }
  }

  if (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyDotScale] == 1)
  {
    v10 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScaleSpring;
    v11 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotScaleSpring];
    if (!FMPFFluidSpring.isStable.getter())
    {
      FLSpring.step(_:)(a1);
      *(v11 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v12 = *&v2[v10];
      v13 = (v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v14 = *v13 + *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      if (vabdd_f64(v13[35] + *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v14) <= *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v14 = v13[35] + *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      v15 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedDotScale];
      *v15 = v14;
      *(v15 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode] setScale_];
    }
  }

  if (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyAngle] == 1)
  {
    v16 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angleSpring;
    v17 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_angleSpring];
    if (!FMPFFluidSpring.isStable.getter() && v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interactiveAngleFactor + 8] == 1)
    {
      FLSpring.step(_:)(a1);
      *(v17 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v18 = *&v2[v16];
      v19 = (v18 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v20 = *v19 + *(v18 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      if (vabdd_f64(v19[35] + *(v18 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v20) <= *(v18 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v20 = v19[35] + *(v18 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      v21 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAngle];
      *v21 = v20;
      *(v21 + 8) = 0;
      if (!*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
      {
        [*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_gimbalNode] setZRotation_];
      }
    }
  }

  if (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyOpacity] == 1)
  {
    v22 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacitySpring;
    v23 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_opacitySpring];
    if (!FMPFFluidSpring.isStable.getter())
    {
      FLSpring.step(_:)(a1);
      *(v23 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v24 = *&v2[v22];
      v25 = (v24 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v25[35] + *(v24 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v25 + *(v24 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v24 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v26 = *v25 + *(v24 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      }

      else
      {
        v26 = v25[35] + *(v24 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      v27 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOpacity];
      *v27 = v26;
      *(v27 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
      [*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
    }
  }

  if (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyBrightness] == 1)
  {
    v28 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_brightnessSpring;
    v29 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_brightnessSpring];
    if (!FMPFFluidSpring.isStable.getter())
    {
      FLSpring.step(_:)(a1);
      *(v29 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v30 = *&v2[v28];
      v31 = (v30 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v31[35] + *(v30 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v31 + *(v30 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v30 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v32 = *v31 + *(v30 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      }

      else
      {
        v32 = v31[35] + *(v30 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      v33 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedBrightness];
      *v33 = v32;
      *(v33 + 8) = 0;
      v34 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_renderingColor];
      v35 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_dotCGPathNode];
      v36 = v34;
      FMPFSKSpriteNode.setBrightness(_:with:)(v36, v32);
    }
  }

  if (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyOffset] == 1)
  {
    v37 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_xOffsetSpring;
    v38 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_xOffsetSpring];
    if (!FMPFFluidSpring.isStable.getter() || !FMPFFluidSpring.isStable.getter())
    {
      FLSpring.step(_:)(a1);
      *(v38 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v39 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_yOffsetSpring;
      v40 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_yOffsetSpring];
      FLSpring.step(_:)(a1);
      *(v40 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v41 = *&v2[v37];
      v42 = (v41 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v42[35] + *(v41 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), *v42 + *(v41 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v41 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v43 = *v42 + *(v41 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      }

      else
      {
        v43 = v42[35] + *(v41 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      v44 = *&v2[v39];
      v45 = (v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v46 = v45[35] + *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      if (vabdd_f64(v46, *v45 + *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v46 = *v45 + *(v44 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      }

      v47 = &v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedOffset];
      *v47 = v43;
      v47[1] = v46;
      *(v47 + 16) = 0;
      [v2 setPosition_];
    }
  }

  if (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] == 1)
  {
    v48 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_radiusFactorSpring;
    v49 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_radiusFactorSpring];
    if (!FMPFFluidSpring.isStable.getter() && (v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_radiusFactor + 8] & 1) == 0)
    {
      FLSpring.step(_:)(a1);
      *(v49 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v50 = *&v2[v48];
      v51 = (v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v52 = *v51 + *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      if (vabdd_f64(v51[35] + *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v52) <= *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v52 = v51[35] + *(v50 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      FMPFSKPeripheralDotNode.applyRadiusFactor(_:)(v52);
    }
  }

  v53 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_headingSpring;
  v54 = *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_headingSpring];
  if (!FMPFFluidSpring.isStable.getter() && *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    FLSpring.step(_:)(a1);
    *(v54 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    v55 = *&v2[v53];
    v56 = (v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    swift_beginAccess();
    v57 = *v56 + *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    if (vabdd_f64(v56[35] + *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v57) <= *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v57 = v56[35] + *(v55 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    *&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] = v57;
    [v2 setZRotation_];
  }

  v58 = *(*&v2[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode] + OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDiskNode);
  v59 = *(v58 + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_sizeSpring);
  FLSpring.step(_:)(a1);
  *(v59 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  v60 = *(v58 + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_opacitySpring);
  FLSpring.step(_:)(a1);
  *(v60 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  FMPFSKBTRangeDiskNode.render()();
  FMPFSKBTRangeDotNode.update(delta:)(a1);
  v61.is_nil = LOBYTE(a1);
  FMPFSKBTLevelsNode.update(delta:)(v61);
}

void FMPFSKPeripheralDotNode.applyRadiusFactor(_:)(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
  *v3 = a1;
  *(v3 + 8) = 0;
  v4 = v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style;
  v5 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_style + 72);
  v6 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_pixelsPerInch);
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = (1.0 - a1) * *(v4 + 48) + *(v4 + 40) * a1;
  v11 = OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
  v12 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode);
  if (v12)
  {
    [v12 setScale_];
  }

  v13 = [*(v4 + 56) colorWithAlphaComponent_];
  v14 = *(v1 + v11);
  if (v14)
  {
    v16 = v13;
    v15 = v14;
    [v15 setColor_];

    v13 = v16;
  }
}

id TVRUITipManager.popoverPresentationConductor.getter()
{
  v1 = OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor;
  v2 = *(v0 + OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor);
  }

  else
  {
    v4 = type metadata accessor for TipPopoverPresentationConductor();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t TVRUITipManager.init(tipSourceViewProvider:tipType:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___TVRUITipManager_tipObservation] = 0;
  *&v2[OBJC_IVAR___TVRUITipManager_presentingViewController] = 0;
  *&v2[OBJC_IVAR___TVRUITipManager_tipsViewController] = 0;
  *&v2[OBJC_IVAR___TVRUITipManager_popoverPresentationController] = 0;
  *&v2[OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor] = 0;
  if (a2 == 1)
  {
    v4 = OBJC_IVAR___TVRUITipManager_tip;
    *&v2[OBJC_IVAR___TVRUITipManager_tip + 24] = &type metadata for SiriTip;
    v5 = lazy protocol witness table accessor for type SiriTip and conformance SiriTip();
LABEL_5:
    *&v2[v4 + 32] = v5;
    v8.receiver = v2;
    v8.super_class = TVRUITipManager;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    TVRUITipManager.commonInit(tipSourceViewProvider:)(a1);

    return v6;
  }

  if (!a2)
  {
    v4 = OBJC_IVAR___TVRUITipManager_tip;
    *&v2[OBJC_IVAR___TVRUITipManager_tip + 24] = &type metadata for InfoTip;
    v5 = lazy protocol witness table accessor for type InfoTip and conformance InfoTip();
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id TVRUITipManager.commonInit(tipSourceViewProvider:)(void *a1)
{
  v20 = a1;
  v1 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x28223BE20]();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v15 = *(v4 - 8);
  v16 = v4;
  MEMORY[0x28223BE20]();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO19ConfigurationOptionVGMd);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_26D0D3E20;
  static Tips.ConfigurationOption.DisplayFrequency.immediate.getter();
  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v8 + 8))(v10, v7);
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v15 + 8))(v6, v16);
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v17 + 8))(v3, v18);
  static Tips.configure(_:)();

  v11 = *(v19 + OBJC_IVAR___TVRUITipManager_presentingViewController);
  *(v19 + OBJC_IVAR___TVRUITipManager_presentingViewController) = v20;

  v12 = v20;

  return v12;
}

uint64_t TVRUITipManager.setupTipsObserver()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  result = MEMORY[0x28223BE20]();
  v4 = v20 - v3;
  v5 = OBJC_IVAR___TVRUITipManager_tipObservation;
  if (!*&v0[OBJC_IVAR___TVRUITipManager_tipObservation])
  {
    if (one-time initialization token for tip != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.tip);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      outlined init with copy of Tip(&v7[OBJC_IVAR___TVRUITipManager_tip], v20);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v20);
      v12 = _typeName(_:qualified:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26CFEB000, v8, v9, "Setting up tip observation for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x26D6B2710](v11, -1, -1);
      MEMORY[0x26D6B2710](v10, -1, -1);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    type metadata accessor for MainActor();
    v16 = v7;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    *&v1[v5] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in TVRUITipManager.setupTipsObserver(), v18);
  }

  return result;
}

uint64_t closure #1 in TVRUITipManager.setupTipsObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v4[12] = swift_task_alloc();
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v8;
  v4[24] = v9;

  return MEMORY[0x2822009F8](closure #1 in TVRUITipManager.setupTipsObserver(), v8);
}

uint64_t closure #1 in TVRUITipManager.setupTipsObserver()()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = (v0[6] + OBJC_IVAR___TVRUITipManager_tip);
  v5 = v4[3];
  v6 = __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v5 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v5);
  Tip.shouldDisplayUpdates.getter();
  (*(v7 + 8))(v8, v5);
  MEMORY[0x26D6B1710](v3);
  lazy protocol witness table accessor for type AsyncStream<Tips.Status> and conformance AsyncStream<A>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();

  v9 = static MainActor.shared.getter();
  v0[25] = v9;
  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v0[26] = v10;
  v0[27] = v12;

  return MEMORY[0x2822009F8](closure #1 in TVRUITipManager.setupTipsObserver(), v10);
}

{
  v1 = v0[25];
  v0[28] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type AsyncStream<Tips.Status> and conformance AsyncStream<A>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = closure #1 in TVRUITipManager.setupTipsObserver();
  v3 = v0[7];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = closure #1 in TVRUITipManager.setupTipsObserver();
  }

  else
  {
    (*(v2 + 224))();
    v3 = *(v2 + 208);
    v4 = closure #1 in TVRUITipManager.setupTipsObserver();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v3, &_s6TipKit4TipsO6StatusOSgMd);
    v4 = v0[23];

    return MEMORY[0x2822009F8](closure #1 in TVRUITipManager.setupTipsObserver(), v4);
  }

  else
  {
    (*(v2 + 32))(v0[10], v3, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[30] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = closure #1 in TVRUITipManager.setupTipsObserver();
    v8 = v0[10];

    return (v10)(v0 + 32, v8);
  }
}

{
  return (*(v0 + 224))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);
  *(v1 + 257) = *(v1 + 256);
  v5 = *(v1 + 208);

  return MEMORY[0x2822009F8](closure #1 in TVRUITipManager.setupTipsObserver(), v5);
}

{

  v1 = *(v0 + 184);

  return MEMORY[0x2822009F8](closure #1 in TVRUITipManager.setupTipsObserver(), v1);
}

{
  if (*(v0 + 257))
  {
    TVRUITipManager.showTip()();
  }

  else
  {
    specialized TVRUITipManager.hideTip(animated:completion:)(0, 0);
  }

  v1 = static MainActor.shared.getter();
  *(v0 + 200) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  *(v0 + 208) = v2;
  *(v0 + 216) = v4;

  return MEMORY[0x2822009F8](closure #1 in TVRUITipManager.setupTipsObserver(), v2);
}

{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void TVRUITipManager.showTip()()
{
  if (one-time initialization token for tip != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.tip);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    outlined init with copy of Tip(&v2[OBJC_IVAR___TVRUITipManager_tip], v31);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v31);
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v33);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_26CFEB000, v3, v4, "Show: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D6B2710](v6, -1, -1);
    MEMORY[0x26D6B2710](v5, -1, -1);
  }

  v10 = *&v2[OBJC_IVAR___TVRUITipManager_presentingViewController];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v11 tipSourceView];
  if (!v12 || (v12, ![v11 canPresentTip]))
  {
LABEL_10:

LABEL_11:
    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      outlined init with copy of Tip(&v15[OBJC_IVAR___TVRUITipManager_tip], v31);
      __swift_project_boxed_opaque_existential_1(v31, v32);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v31);
      v20 = _typeName(_:qualified:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v33);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_26CFEB000, v16, v17, "Not showing: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26D6B2710](v19, -1, -1);
      MEMORY[0x26D6B2710](v18, -1, -1);
    }

    return;
  }

  v13 = [v2 tipsViewController];
  if (v13)
  {
    v14 = v13;

    v11 = v14;
    goto LABEL_10;
  }

  outlined init with copy of Tip(&v2[OBJC_IVAR___TVRUITipManager_tip], v31);
  if (![v11 tipSourceView])
  {
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for TipUIPopoverViewController();
  v23 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
  v24 = [v23 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = [objc_opt_self() whiteColor];
  [v25 setTintColor_];

  [v23 setOverrideUserInterfaceStyle_];
  v27 = TipUIPopoverViewController.popoverPresentationController.getter();
  if (v27)
  {
    v28 = v27;
    [v27 setPermittedArrowDirections_];
  }

  v29 = [v2 popoverPresentationConductor];
  TipUIPopoverViewController.presentationDelegate.setter();
  v30 = TipUIPopoverViewController.popoverPresentationController.getter();
  [v2 setPopoverPresentationController_];

  [v11 presentViewController:v23 animated:1 completion:0];
  [v2 setTipsViewController_];
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v10, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(a3, &_sScPSgMd);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (FMFindingDistance?, FMFindingDistance?)(a3, &_sScPSgMd);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

Swift::Void __swiftcall TVRUITipManager.activate()()
{
  if (one-time initialization token for tip != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.tip);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    outlined init with copy of Tip(v2 + OBJC_IVAR___TVRUITipManager_tip, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v10);
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_26CFEB000, v3, v4, "Activating %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x26D6B2710](v6, -1, -1);
    MEMORY[0x26D6B2710](v5, -1, -1);
  }

  TVRUITipManager.setupTipsObserver()();
}

void closure #1 in TVRUITipManager.invalidate(_:didPerformAction:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, char a4)
{
  v7 = type metadata accessor for Tips.InvalidationReason();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (one-time initialization token for tip != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.tip);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v28[1] = a3;
      v20 = v19;
      v30 = v19;
      *v18 = 136315138;
      outlined init with copy of Tip(&v14[OBJC_IVAR___TVRUITipManager_tip], v31);
      v28[0] = v7;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v31);
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v30);
      v7 = v28[0];

      *(v18 + 4) = v23;
      _os_log_impl(&dword_26CFEB000, v15, v16, "Resetting TipsViewController: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26D6B2710](v20, -1, -1);
      v24 = v18;
      a2 = v29;
      MEMORY[0x26D6B2710](v24, -1, -1);
    }

    if (a4)
    {
      outlined init with copy of Tip(&v14[OBJC_IVAR___TVRUITipManager_tip], v31);
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v8 + 104))(v10, *MEMORY[0x277CE1A08], v7);
      Tip.invalidate(reason:)();
      (*(v8 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    [v14 setTipsViewController_];
    v25 = OBJC_IVAR___TVRUITipManager_tipObservation;
    if (*&v14[OBJC_IVAR___TVRUITipManager_tipObservation])
    {

      MEMORY[0x26D6B13F0](v26, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }

    *&v14[v25] = 0;

    if (a2)
    {
      (a2)(v27);
    }
  }

  else if (a2)
  {
    a2();
  }
}

void closure #1 in TVRUITipManager.hideTip(animated:completion:)(void *a1, void (*a2)(void))
{
  if (one-time initialization token for tip != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.tip);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    outlined init with copy of Tip(v5 + OBJC_IVAR___TVRUITipManager_tip, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26CFEB000, v6, v7, "Dismissed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D6B2710](v9, -1, -1);
    MEMORY[0x26D6B2710](v8, -1, -1);
  }

  if (a2)
  {
    a2();
  }
}

void __swiftcall TVRUITipManager.init()(TVRUITipManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for TVRUITipManager()
{
  result = lazy cache variable for type metadata for TVRUITipManager;
  if (!lazy cache variable for type metadata for TVRUITipManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TVRUITipManager);
  }

  return result;
}

id TipPopoverPresentationConductor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipPopoverPresentationConductor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for tip()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.tip);
  __swift_project_value_buffer(v0, static Logger.tip);
  return Logger.init(subsystem:category:)();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void specialized TVRUITipManager.hideTip(animated:completion:)(void (*a1)(void), uint64_t a2)
{
  if ([v2 isPresentingTip])
  {
    if (one-time initialization token for tip != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.tip);
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      outlined init with copy of Tip(v6 + OBJC_IVAR___TVRUITipManager_tip, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v22);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v11 = _typeName(_:qualified:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_26CFEB000, v7, v8, "Hide tip: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D6B2710](v10, -1, -1);
      MEMORY[0x26D6B2710](v9, -1, -1);
    }

    v14 = [v6 popoverPresentationController];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 presentedViewController];

      v17 = swift_allocObject();
      v17[2] = v6;
      v17[3] = a1;
      v17[4] = a2;
      v23 = partial apply for closure #1 in TVRUITipManager.hideTip(animated:completion:);
      v24 = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      v22 = &block_descriptor_9;
      v18 = _Block_copy(aBlock);
      v19 = v6;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(a1);

      [v16 dismissViewControllerWithTransition:6 completion:v18];
      _Block_release(v18);
    }
  }

  else if (a1)
  {
    a1();
  }
}

uint64_t specialized TVRUITipManager.invalidate(_:didPerformAction:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for tip != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.tip);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    outlined init with copy of Tip(v8 + OBJC_IVAR___TVRUITipManager_tip, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26CFEB000, v9, v10, "Hiding %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D6B2710](v12, -1, -1);
    MEMORY[0x26D6B2710](v11, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a1 & 1;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(a2);
  specialized TVRUITipManager.hideTip(animated:completion:)(partial apply for closure #1 in TVRUITipManager.invalidate(_:didPerformAction:completion:), v17);
}

void specialized TipPopoverPresentationConductor.presentationControllerDidDismiss(_:)()
{
  if (one-time initialization token for tip != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.tip);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26CFEB000, v1, v2, "User dismissed popover", v3, 2u);
    MEMORY[0x26D6B2710](v3, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong invalidate:1 didPerformAction:0 completion:0];
  }
}

uint64_t outlined init with copy of Tip(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in TVRUITipManager.setupTipsObserver()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TVRUITipManager.setupTipsObserver();

  return closure #1 in TVRUITipManager.setupTipsObserver()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in TVRUITipManager.setupTipsObserver()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TVRUITipManager.setupTipsObserver();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t lazy protocol witness table accessor for type AsyncStream<Tips.Status> and conformance AsyncStream<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:)(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  v76 = a5;
  v79 = a4;
  v77 = a3;
  v74 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v75 = *a1;
  v21 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_style];
  __asm { FMOV            V0.2D, #0.5 }

  *v21 = _Q0;
  *(v21 + 2) = 0;
  v78 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_ringView;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_ringView] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_axisesNode] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode] = 0;
  v27 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_previousHeading];
  *v27 = 0;
  v27[8] = 1;
  v28 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_motionManager;
  *&v7[v28] = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *&v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_dotCountObservation] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_debugModeObservation] = 0;
  v29 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_lastRenderTime];
  *v29 = 0;
  v29[8] = 1;
  v30 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isolationQueue;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85260], v74);
  *&v7[v30] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches] = 0;
  v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_shouldApplyOpacity] = 1;
  v33 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacity];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_presentedOpacity];
  *v34 = 0;
  v34[8] = 1;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isInteractivelyDebugging] = 0;
  v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_experienceType] = v75;
  v35 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config];
  v36 = *(a2 + 144);
  *(v35 + 8) = *(a2 + 128);
  *(v35 + 9) = v36;
  *(v35 + 10) = *(a2 + 160);
  v35[176] = *(a2 + 176);
  v37 = *(a2 + 80);
  *(v35 + 4) = *(a2 + 64);
  *(v35 + 5) = v37;
  v38 = *(a2 + 112);
  *(v35 + 6) = *(a2 + 96);
  *(v35 + 7) = v38;
  v39 = *(a2 + 16);
  *v35 = *a2;
  *(v35 + 1) = v39;
  v40 = *(a2 + 48);
  *(v35 + 2) = *(a2 + 32);
  *(v35 + 3) = v40;
  v41 = &v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_sceneSize];
  *v41 = a6;
  v41[1] = a7;
  v42 = *&v7[v78];
  v43 = v77;
  *&v8[v78] = v77;
  v78 = a2;
  outlined init with copy of FMPFSKPatternNodeConfig(a2, aBlock);
  v77 = v43;

  *&v8[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacitySpring] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 1, 0x3F847AE147AE147BLL, 0, 0, 1);
  v44 = type metadata accessor for FMPFSKScene();
  v80.receiver = v8;
  v80.super_class = v44;
  v45 = objc_msgSendSuper2(&v80, sel_initWithSize_, a6, a7);
  *&v45[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate + 8] = v76;
  swift_unknownObjectWeakAssign();
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 clearColor];
  [v47 setBackgroundColor_];

  [v47 setAnchorPoint_];
  [v47 setScaleMode_];
  FMPFSKScene.setupScene()();
  v49 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_motionManager;
  [*&v47[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_motionManager] setDeviceMotionUpdateInterval_];
  v50 = *&v47[v49];
  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 mainQueue];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:);
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMDeviceMotion?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_10;
  v55 = _Block_copy(aBlock);

  [v52 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v53 withHandler:v55];
  _Block_release(v55);

  v56 = objc_opt_self();
  v57 = [v56 standardUserDefaults];
  aBlock[0] = v57;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v59 = *&v47[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_dotCountObservation];
  *&v47[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_dotCountObservation] = v58;

  v60 = [v56 standardUserDefaults];
  aBlock[0] = v60;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v62 = *&v47[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_debugModeObservation];
  *&v47[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_debugModeObservation] = v61;

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.default);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v66 = 138412546;
    *(v66 + 4) = v47;
    *v67 = v47;
    *(v66 + 12) = 2080;
    v69 = v47;
    v70 = CGSize.debugDescription.getter();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, aBlock);

    *(v66 + 14) = v72;
    _os_log_impl(&dword_26CFEB000, v64, v65, "🧭 FMPFSKScene%@: init with size={%s}", v66, 0x16u);
    outlined destroy of NSObject?(v67);
    MEMORY[0x26D6B2710](v67, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x26D6B2710](v68, -1, -1);
    MEMORY[0x26D6B2710](v66, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  outlined destroy of FMPFSKPatternNodeConfig(v78);

  return v47;
}

void closure #1 in FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:)(objc_class *a1)
{
  swift_beginAccess();
  v2.value.super.super.isa = swift_unknownObjectWeakLoadStrong();
  if (v2.value.super.super.isa)
  {
    isa = v2.value.super.super.isa;
    v2.value.super.super.isa = a1;
    FMPFSKScene.handleDeviceMotionUpdate(_:)(v2);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CMDeviceMotion?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t closure #2 in FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = static DispatchWorkItemFlags.barrier.getter();
    MEMORY[0x28223BE20](v7, v8);
    *&v9[-16] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
    OS_dispatch_queue.sync<A>(flags:execute:)();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void closure #1 in closure #2 in FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:)(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType];
    if (v4 == 2)
    {
      goto LABEL_5;
    }

    if (v4 == 1)
    {
      v6 = v3;
      FMPFSKPatternNode.setupTapeChildNodes(conformationFactor:)(0, 1);
      goto LABEL_7;
    }

    if (!v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType])
    {
LABEL_5:
      v5 = v3;
      FMPFSKPatternNode.setupArrowChildNodes(conformationFactor:)(0, 1);
LABEL_7:
    }
  }

  *a2 = v3 == 0;
}

uint64_t closure #3 in FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = [v7 fmpfDebugMode];

    v9 = static DispatchWorkItemFlags.barrier.getter();
    MEMORY[0x28223BE20](v9, v10);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = v8;
    OS_dispatch_queue.sync<A>(flags:execute:)();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void closure #1 in closure #3 in FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:)(uint64_t a1, char a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_axisesNode);
  if (v4)
  {
    [v4 setHidden_];
  }

  v5 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v5)
  {
    v6 = v5;
    FMPFSKPatternNode.applyDebugMode(_:)(a2 & 1);
  }
}

id FMPFSKScene.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_debugModeObservation];
  if (v2)
  {
    v3 = v2;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  [*&v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_motionManager] stopDeviceMotionUpdates];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.default);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26CFEB000, v6, v7, "🧭 FMPFSKScene%s: deinit", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D6B2710](v9, -1, -1);
    MEMORY[0x26D6B2710](v8, -1, -1);
  }

  v15 = type metadata accessor for FMPFSKScene();
  v18.receiver = v5;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t FMPFSKScene.setupScene()()
{
  v1 = type metadata accessor for DispatchQoS();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_sceneSize];
  v10 = *&v0[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_sceneSize + 8];
  v11 = *&v0[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_ringView];
  v12 = v11;
  static DispatchWorkItemFlags.barrier.getter();
  v13 = swift_allocObject();
  v13[2] = v0;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  aBlock[4] = partial apply for closure #1 in FMPFSKScene.setupScene();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_138;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  v16 = v0;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x26D6B1500](0, v4, v8, v14);
  _Block_release(v14);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

void closure #1 in FMPFSKScene.setupScene()(char *a1, void *a2, double a3, double a4)
{
  v7 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_axisesNode;
  [*&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_axisesNode] removeFromParent];
  v8 = *&a1[v7];
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 standardUserDefaults];
    v12 = [v11 fmpfDebugMode];

    [v10 setHidden_];
  }

  v13 = [objc_allocWithZone(type metadata accessor for FMPFSKNode()) init];
  [v13 setZPosition_];
  [a1 addChild_];
  v14 = *&a1[v7];
  *&a1[v7] = v13;

  [a1 size];
  v16 = v15 * -0.5;
  [a1 size];
  v18 = v17 * 0.5;
  v19 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v19 moveToPoint_];
  [v19 addLineToPoint_];
  [v19 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v57 = v19;
  v20 = [v19 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v23 = v22;
  [v23 setPosition_];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 whiteColor];
  [v25 setStrokeColor_];

  [v25 setAlpha_];
  [v13 addChild_];
  [a1 size];
  v28 = v27 * 0.5;
  [a1 size];
  v30 = v29 * -0.5;
  v31 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v31 moveToPoint_];
  [v31 addLineToPoint_];
  [v31 closePath];
  v32 = [v31 CGPath];
  v33 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v34 = v33;
  v35 = [v24 whiteColor];
  [v34 setStrokeColor_];

  [v34 setAlpha_];
  [v13 addChild_];
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UIBezierPath);
  [a1 size];
  v37 = v36;
  [a1 size];
  v56.super.isa = UIBezierPath.init(fmpfRectangleCentered:size:)(0, __PAIR128__(v38, v37)).super.isa;
  v39 = [(objc_class *)v56.super.isa CGPath];
  v40 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v41 = v40;
  v42 = [v24 whiteColor];
  [v41 setStrokeColor_];

  [v41 setAlpha_];
  [v13 addChild_];
  v43 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode;
  v44 = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode];
  if (v44)
  {
    v45 = *&v44[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor];
    v46 = v44[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor + 8];
    [v44 removeFromParent];
  }

  else
  {
    v45 = 0;
    v46 = 1;
  }

  v60 = a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_experienceType];
  v47 = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 144];
  v61[8] = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 128];
  v61[9] = v47;
  v61[10] = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 160];
  v62 = a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 176];
  v48 = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 80];
  v61[4] = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 64];
  v61[5] = v48;
  v49 = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 112];
  v61[6] = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 96];
  v61[7] = v49;
  v50 = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 16];
  v61[0] = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config];
  v61[1] = v50;
  v51 = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 48];
  v61[2] = *&a1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_config + 32];
  v61[3] = v51;
  v52 = objc_allocWithZone(type metadata accessor for FMPFSKPatternNode());
  outlined init with copy of FMPFSKPatternNodeConfig(v61, v59);
  v53 = a2;
  v54 = FMPFSKPatternNode.init(experienceType:config:size:withRingView:conformedToExplodedFactor:conformationFactor:)(&v60, v61, a2, 0, 1, v45, v46, a3, a4);
  [v54 setPosition_];
  [v54 setAlpha_];

  *&v54[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_delegate + 8] = &protocol witness table for FMPFSKScene;
  swift_unknownObjectWeakAssign();
  [a1 addChild_];

  v55 = *&a1[v43];
  *&a1[v43] = v54;
}

Swift::Void __swiftcall FMPFSKScene.update(_:)(Swift::Double a1)
{
  v2 = &v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_lastRenderTime];
  v3 = *&v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_lastRenderTime];
  if (v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_lastRenderTime + 8])
  {
    v3 = a1;
  }

  v4 = a1 - v3;
  *v2 = a1;
  *(v2 + 8) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = objc_opt_self();
  v7 = v1;
  if ([v6 isMainThread])
  {
    v8 = *&v7[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isolationQueue];
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in FMPFSKScene.update(_:);
    *(v9 + 24) = v5;
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #2 in FMPFRingView.setOpacity(_:sprung:);
    *(v10 + 24) = v9;
    v13[4] = partial apply for closure #2 in FMPFRingView.setOpacity(_:sprung:);
    v13[5] = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed () -> ();
    v13[3] = &block_descriptor_150;
    v11 = _Block_copy(v13);

    dispatch_sync(v8, v11);

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    closure #1 in FMPFSKScene.update(_:)(v7, v4);
  }
}

uint64_t closure #1 in FMPFSKScene.update(_:)(uint64_t a1, Swift::Double a2)
{
  v4 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode;
  v5 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v5)
  {
    v6 = v5;
    v17.is_nil = LOBYTE(a2);
    FMPFSKPatternNode.updateWithDeltaTime(_:)(v17);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    FMPFView.updateWithDeltaTime(_:)(a2);
    result = swift_unknownObjectRelease();
  }

  if ((*(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacity + 8) & 1) != 0 || *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacity) >= 0.5)
  {
    *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_shouldApplyOpacity) = 1;
LABEL_11:
    v10 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacitySpring;
    v11 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacitySpring);
    result = FMPFFluidSpring.isStable.getter();
    if ((result & 1) == 0)
    {
      FLSpring.step(_:)(a2);
      *(v11 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
      v12 = *(a1 + v10);
      v13 = (v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v14 = *v13 + *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      if (vabdd_f64(v13[35] + *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v14) <= *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
      {
        v14 = v13[35] + *(v12 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
      }

      v15 = a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_presentedOpacity;
      *v15 = v14;
      *(v15 + 8) = 0;
      result = *(a1 + v4);
      if (result)
      {
        return [result setAlpha_];
      }
    }

    return result;
  }

  v8 = *(a1 + v4);
  if (!v8 || (v9 = v8 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformationFactor, (*(v9 + 8) & 1) != 0))
  {
    *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_shouldApplyOpacity) = 0;
    return result;
  }

  v16 = *v9 > 0.0;
  *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_shouldApplyOpacity) = *v9 <= 0.0;
  if (!v16)
  {
    goto LABEL_11;
  }

  return result;
}

Swift::Void __swiftcall FMPFSKScene.handleDeviceMotionUpdate(_:)(CMDeviceMotion_optional a1)
{
  isa = a1.value.super.super.isa;
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_experienceType] != 2 || !UIAccessibilityIsReduceMotionEnabled()) && isa)
  {
    v13 = isa;
    [(objc_class *)v13 heading];
    v15 = v14;
    v16 = &v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_previousHeading];
    if (v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_previousHeading + 8])
    {
    }

    else
    {
      v17 = v14 - *v16;
      v18 = v17 + -360.0;
      if (v17 <= 180.0)
      {
        v18 = v15 - *v16;
      }

      if (v17 >= -180.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17 + 360.0;
      }

      v23[1] = *&v1[OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isolationQueue];
      static DispatchWorkItemFlags.barrier.getter();
      v20 = swift_allocObject();
      *(v20 + 16) = v1;
      *(v20 + 24) = v19;
      aBlock[4] = partial apply for specialized closure #1 in FMPFSKScene.handleDeviceMotionUpdate(_:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_132;
      v21 = _Block_copy(aBlock);
      v22 = v1;
      static DispatchQoS.unspecified.getter();
      MEMORY[0x26D6B1500](0, v7, v12, v21);

      _Block_release(v21);
      (*(v4 + 8))(v7, v3);
      (*(v9 + 8))(v12, v8);
    }

    *v16 = v15;
    *(v16 + 8) = 0;
  }
}

void specialized closure #1 in FMPFSKScene.handleDeviceMotionUpdate(_:)(uint64_t a1, Swift::Double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v5 = *&v2[v4];
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D6B1780](v18))
    {
      v19 = v2;

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26D6B1680](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v2 = *&v10[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_headingSpring];
        v13 = &v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s];
        swift_beginAccess();
        v14 = &v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o];
        v15 = v13[35] + *&v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40];
        v16 = v15 + a2;
        if (v15 == 1.79769313e308)
        {
          FLSpring.resetImmediately(toValue:)(v15 + a2);
          v17 = v2;

          v17[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 0;
        }

        else
        {
          v8 = v2;
        }

        v9 = v16 - v14[5];
        v13[35] = v9;
        v13[30] = v9;
        v13[31] = 0.0;

        ++v7;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      if (v5 < 0)
      {
        v18 = v5;
      }

      else
      {
        v18 = v5 & 0xFFFFFFFFFFFFFF8;
      }
    }

LABEL_15:

    if (*&v19[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode])
    {
      FMPFSKPeripheralDotNode.addSprungRelativeHeading(_:)(a2);
    }
  }
}

id FMPFSKScene.size.setter(double a1, double a2)
{
  result = [v2 size];
  if (v7 != a1 || v6 != a2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.default);
    v10 = v2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2080;
      v16 = v10;
      v17 = CGSize.debugDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_26CFEB000, v11, v12, "🧭 FMPFSKScene%@: set size={%s}", v13, 0x16u);
      outlined destroy of NSObject?(v14);
      MEMORY[0x26D6B2710](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26D6B2710](v15, -1, -1);
      MEMORY[0x26D6B2710](v13, -1, -1);
    }

    v20 = type metadata accessor for FMPFSKScene();
    v22.receiver = v10;
    v22.super_class = v20;
    objc_msgSendSuper2(&v22, sel_setSize_, a1, a2);
    return FMPFSKScene.setupScene()();
  }

  return result;
}

void closure #1 in FMPFSKScene.setPatternConformedToExplodedFactor(_:sprung:)(uint64_t a1, char a2, Swift::Double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v5 = &v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactor];
    *v5 = a3;
    *(v5 + 8) = 0;
    if ((a2 & 1) != 0 && (v6 = *&v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactorSpring], v7 = v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) != 1.79769313e308))
    {
      v18 = v6 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
      *v18 = a3;
      *(v18 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
    }

    else
    {
      v8 = *&v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactorSpring];
      FLSpring.resetImmediately(toValue:)(a3);
      *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      v9 = &v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_presentedConformedToExplodedFactor];
      *v9 = a3;
      *(v9 + 8) = 0;
      v10 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
      swift_beginAccess();
      v11 = *&v3[v10];
      if (v11 >> 62)
      {
        goto LABEL_20;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v3 = v3;

      if (v12)
      {
        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x26D6B1680](v13, v11);
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_15:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              if (v11 < 0)
              {
                v19 = v11;
              }

              else
              {
                v19 = v11 & 0xFFFFFFFFFFFFFF8;
              }

              v12 = MEMORY[0x26D6B1780](v19);
              goto LABEL_6;
            }

            v14 = *(v11 + 8 * v13 + 32);
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_15;
            }
          }

          v16 = *(v5 + 8);
          v17 = &v14[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor];
          *v17 = *v5;
          v17[8] = v16;

          ++v13;
        }

        while (v15 != v12);
      }
    }
  }
}

void closure #1 in FMPFSKScene.setPatternConformationFactor(_:sprung:)(uint64_t a1, char a2, void (*a3)(void, double), double a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v8 = v4;
    a3(a2 & 1, a4);
  }
}

Swift::Void __swiftcall FMPFSKScene.pulseBTNode(duration:)(Swift::Double duration)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = duration;
  aBlock[4] = partial apply for closure #1 in FMPFSKScene.pulseBTNode(duration:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_108;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x26D6B1500](0, v7, v12, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void closure #1 in FMPFSKScene.pulseBTNode(duration:)(uint64_t a1, Swift::Double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode];
    if (v3)
    {
      v6 = v2;
      v5 = v3;
      FMPFSKBTRangeDotNode.pulse(duration:)(a2);
    }
  }
}

void closure #1 in FMPFSKScene.setBTRangeNodeSize(_:sprung:)(uint64_t a1, char a2, Swift::Double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v9 = v3;
      v7 = v4;
      v8 = a2 & 1;
      if (a3 <= 0.0)
      {
        FMPFSKBTLevelsNode.hide(sprung:)(v8);
      }

      else
      {
        FMPFSKBTLevelsNode.show(sprung:)(v8);
      }

      FMPFSKBTRangeDotNode.setDotNodeSizeFactor(_:sprung:)(a2 & 1, a3);
    }
  }
}

void closure #1 in FMPFSKScene.setBTDiskNodeSize(_:sprung:)(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v7 = *&v4[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode];
      v11 = v3;
      v8 = v4;
      FMPFSKBTLevelsNode.update(diskSize:sprung:)(a2 & 1, a3);
      v9 = *(*(v7 + OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDiskNode) + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_sizeSpring);
      if (a2)
      {
        v10 = v9 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
        *v10 = a3;
        *(v10 + 8) = 0;
        FMPFFluidSpring.ftarget.didset();
      }

      else
      {
        FLSpring.resetImmediately(toValue:)(a3);
        *(v9 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
        FMPFSKBTRangeDiskNode.render()();
      }
    }
  }
}

uint64_t FMPFSKScene.setPatternConformedToExplodedFactor(_:sprung:)(char a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = a2;
  *(v18 + 32) = a1;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = v5;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x26D6B1500](0, v12, v17, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

void closure #1 in FMPFSKScene.setBTDiskNodeOpacity(_:sprung:)(uint64_t a1, char a2, Swift::Double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v5 = *(*(*&v4[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode] + OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDiskNode) + OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_opacitySpring);
      if (a2)
      {
        v6 = v5 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
        *v6 = a3;
        *(v6 + 8) = 0;
        FMPFFluidSpring.ftarget.didset();
      }

      else
      {
        FLSpring.resetImmediately(toValue:)(a3);
        *(v5 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
        v8 = v3;
        v7 = v4;
        FMPFSKBTRangeDiskNode.render()();
      }
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPFSKSceneStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMPFSKSceneStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void specialized FMPFSKScene.init(coder:)()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20]();
  type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20]();
  v6 = v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_style;
  __asm { FMOV            V0.2D, #0.5 }

  *v6 = _Q0;
  *(v6 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_ringView) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_axisesNode) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode) = 0;
  v12 = v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_previousHeading;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_motionManager;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_dotCountObservation) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_debugModeObservation) = 0;
  v14 = v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_lastRenderTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isolationQueue;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v2);
  *(v1 + v15) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialBearing;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_initialTouchDownLocation;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_usingDebuggingTouches) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_shouldApplyOpacity) = 1;
  v18 = v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacity;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_presentedOpacity;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_altDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_isInteractivelyDebugging) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized FMPFSKScene.setOpacity(_:sprung:swap:)(char a1, Swift::Double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacity;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacitySpring), v7 = v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v11 = v6 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
    *v11 = a2;
    *(v11 + 8) = 0;
    FMPFFluidSpring.ftarget.didset();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_opacitySpring);
    FLSpring.resetImmediately(toValue:)(a2);
    *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_presentedOpacity;
    *v9 = a2;
    *(v9 + 8) = 0;
    v10 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI11FMPFSKScene_patternNode);
    if (v10)
    {
      [v10 setAlpha_];
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void one-time initialization function for default()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74418];
  v2 = MEMORY[0x26D6B1210](0xD00000000000001BLL, 0x800000026D0DD7B0);
  v3 = [v0 systemFontOfSize:v2 weight:68.0 design:v1];

  if (v3)
  {
    v4 = MEMORY[0x26D6B1210](0xD00000000000001BLL, 0x800000026D0DD7B0);
    v5 = [v0 systemFontOfSize:v4 weight:20.0 design:v1];

    if (v5)
    {
      v6 = [objc_opt_self() labelColor];
      *&static FMBTDistanceViewStyle.default = v3;
      *(&static FMBTDistanceViewStyle.default + 1) = v5;
      qword_2804DD370 = v6;
      unk_2804DD378 = xmmword_26D0D46B0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id FMBTDistanceView.init()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_distanceLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_bottomRowStackView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v3 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_hintLabel;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_connectingActivityViewContainer;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_connectingActivityView;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v6 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_style;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = &v0[v6];
  v8 = static FMBTDistanceViewStyle.default;
  v9 = qword_2804DD370;
  v10 = unk_2804DD378;
  *v7 = static FMBTDistanceViewStyle.default;
  *(v7 + 2) = v9;
  *(v7 + 24) = v10;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FMBTDistanceView();
  v11 = v8;
  v12 = *(&v8 + 1);
  v13 = v9;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  FMBTDistanceView.setup()();

  return v14;
}

id FMBTDistanceView.setup()()
{
  [v0 setOverrideUserInterfaceStyle_];
  [v0 setAxis_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D0D2880;
  v2 = *&v0[OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_distanceLabel];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_hintLabel];
  *(inited + 40) = v3;
  v4 = (inited & 0xC000000000000001);
  v5 = (inited & 0xFFFFFFFFFFFFFF8);
  v35 = v2;
  v6 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v35; ; i = MEMORY[0x26D6B1680](0, inited))
  {
    v8 = i;
    [i setNumberOfLines_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v4)
    {
      v9 = MEMORY[0x26D6B1680](1, inited);
    }

    else
    {
      if (v5[2] < 2)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v9 = *(inited + 40);
    }

    v10 = v9;
    [v9 setNumberOfLines_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    swift_setDeallocating();
    swift_arrayDestroy();
    v11 = *&v0[OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_bottomRowStackView];
    [v11 setAxis_];
    [v11 setAlignment_];
    v4 = &v0[OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_style];
    [v11 setSpacing_];
    v12 = *&v0[OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_connectingActivityView];
    v13 = [objc_opt_self() whiteColor];
    [v12 setColor_];

    [v12 startAnimating];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    inited = *&v0[OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_connectingActivityViewContainer];
    [inited addSubview_];
    [inited setTranslatesAutoresizingMaskIntoConstraints_];
    [inited setHidden_];
    v5 = &selRef__teardownNotificationHandlers;
    [v11 addArrangedSubview_];
    v34 = v6;
    [v11 addArrangedSubview_];
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_26D0D2880;
    *(v14 + 32) = v35;
    *(v14 + 40) = v11;
    v6 = (v14 & 0xFFFFFFFFFFFFFF8);
    v15 = v11;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D6B1680](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v16 = v35;
    }

    v17 = v16;
    [v0 addArrangedSubview_];

    if ((v14 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v18 = *(v14 + 40);
      goto LABEL_13;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v18 = MEMORY[0x26D6B1680](1, v14);
LABEL_13:
  v19 = v18;
  [v0 addArrangedSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v35 setFont_];
  [v35 setTextColor_];
  [v34 setFont_];
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26D0D46C0;
  v22 = [inited centerXAnchor];
  v23 = [v12 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [inited centerYAnchor];
  v26 = [v12 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v21 + 40) = v27;
  v28 = [inited widthAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v21 + 48) = v29;
  v30 = [inited heightAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v21 + 56) = v31;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints_];

  return [v0 setSpacing_];
}

void FMBTDistanceView.update(with:nextBeacon:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = *&v3[OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_style + 32];
  v9 = swift_allocObject();
  v10 = *(a1 + 32);
  *(v9 + 72) = *(a1 + 48);
  v11 = *(a1 + 80);
  *(v9 + 88) = *(a1 + 64);
  *(v9 + 104) = v11;
  v12 = *(a1 + 16);
  *(v9 + 24) = *a1;
  *(v9 + 40) = v12;
  *(v9 + 16) = v3;
  *(v9 + 120) = *(a1 + 96);
  *(v9 + 56) = v10;
  *(v9 + 128) = a2;
  *(v9 + 136) = a3;
  aBlock[4] = partial apply for closure #1 in FMBTDistanceView.update(with:nextBeacon:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_11;
  v13 = _Block_copy(aBlock);
  v14 = v3;
  outlined init with copy of FMFindingState(a1, v16);

  v16[4] = destructiveProjectEnumData for FMFindingState;
  v16[5] = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v16[3] = &block_descriptor_3;
  v15 = _Block_copy(v16);
  [v7 transitionWithView:v14 duration:5242880 options:v13 animations:v15 completion:v8];
  _Block_release(v15);
  _Block_release(v13);
}

id closure #1 in FMBTDistanceView.update(with:nextBeacon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_distanceLabel);
  if ((*(a2 + 16) - 6) >= 4)
  {
    v10 = FMFindingMeasurement.name.getter();
    v9 = MEMORY[0x26D6B1210](v10);
  }

  else
  {
    v9 = 0;
  }

  [v8 setText_];

  v11 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_hintLabel);
  v12 = FMFindingState.hintLabelColor.getter();
  [v11 setTextColor_];

  if (a4)
  {
    type metadata accessor for FMBTDistanceView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();

    v15 = [v14 bundleForClass_];
    v49._object = 0x800000026D0DD710;
    v16._object = 0x800000026D0DD6F0;
    v49._countAndFlagsBits = 0xD00000000000002FLL;
    v16._countAndFlagsBits = 0xD000000000000016;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26D0D2E90;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    v19 = String.init(format:_:)();
    v21 = v20;
  }

  else
  {
    if ((*(a2 + 16) - 6) < 4)
    {
      v22 = 0;
      goto LABEL_10;
    }

    v19 = FMFindingMeasurement.hint(for:)(*(a2 + 97));
    v21 = v23;
  }

  v22 = MEMORY[0x26D6B1210](v19, v21);

LABEL_10:
  [v11 setText_];

  v24 = [v8 text];
  v25 = &selRef_mediaInfo;
  if (!v24)
  {
    if ([v8 isHidden])
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v26 = v24;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  v25 = &selRef_mediaInfo;
  if ([v8 isHidden] != (v30 == 0))
  {
    if (v30)
    {
      v31 = 0;
      v32 = 1.0;
LABEL_19:
      [v8 setAlpha_];
      [v8 v25[490]];
      goto LABEL_20;
    }

LABEL_18:
    v32 = 0.0;
    v31 = 1;
    goto LABEL_19;
  }

LABEL_20:
  v33 = [v11 text];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v38 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_bottomRowStackView);
  if (v39 != [v40 isHidden])
  {
    v41 = 1.0;
    if (v39)
    {
      v41 = 0.0;
    }

    [v40 setAlpha_];
    [v40 v25[490]];
  }

  v42 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_connectingActivityViewContainer);
  result = [v42 isHidden];
  if ((a4 == 0) != result)
  {
    v44 = a4 == 0;
    v45 = a4 == 0;
    v46 = 1.0;
    if (v44)
    {
      v46 = 0.0;
    }

    [v42 setAlpha_];
    v47 = v25[490];

    return [v42 v47];
  }

  return result;
}

id FMFindingState.hintLabelColor.getter()
{
  v1 = *(v0 + 16) - 2;
  if (v1 > 3)
  {
    v2 = &selRef_clearColor;
  }

  else
  {
    v2 = off_279D89388[v1];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

id FMBTDistanceView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBTDistanceView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FMBTDistanceViewStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for FMBTDistanceViewStyle(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t FMFindingMeasurement.name.getter()
{
  _StringGuts.grow(_:)(22);

  strcpy(&v9, "BT_DIRECTION_");
  HIWORD(v9._object) = -4864;
  v1 = *(v0 + 16);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 0xE400000000000000;
      v3 = 1163019592;
      goto LABEL_11;
    }

    if (v1 == 5)
    {
      v2 = 0xE500000000000000;
      v3 = 0x444E554F46;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE700000000000000;
    v3 = 0x4E574F4E4B4E55;
    goto LABEL_11;
  }

  if (v1 == 2)
  {
    v2 = 0xE300000000000000;
    v3 = 5390662;
    goto LABEL_11;
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  v2 = 0xE400000000000000;
  v3 = 1380009294;
LABEL_11:
  MEMORY[0x26D6B12B0](v3, v2);

  MEMORY[0x26D6B12B0](0x315F544E49485FLL, 0xE700000000000000);
  type metadata accessor for FMBTDistanceView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  _StringGuts.grow(_:)(27);

  MEMORY[0x26D6B12B0](v9._countAndFlagsBits, v9._object);
  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x800000026D0DD740;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v5, v6, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t FMFindingMeasurement.hint(for:)(char a1)
{
  v2 = 0x4953414552434544;
  if (a1 == 1)
  {
    v3 = v1;
    v2 = 0x4953414552434E49;
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = v1;
LABEL_5:

    MEMORY[0x26D6B12B0](v2, 0xEA0000000000474ELL);
    swift_bridgeObjectRelease_n();
    v5 = 95;
    v4 = 0xE100000000000000;
    v1 = v3;
    goto LABEL_7;
  }

  v5 = 0;
  v4 = 0xE000000000000000;
LABEL_7:
  if (*(v1 + 16) == 3)
  {
    v16 = FMFindingMeasurement.hintKey.getter();
    v17 = v6;
    MEMORY[0x26D6B12B0](v5, v4);

    v8 = v16;
    v7 = v17;
  }

  else
  {

    v8 = FMFindingMeasurement.hintKey.getter();
    v7 = v9;
  }

  type metadata accessor for FMBTDistanceView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  _StringGuts.grow(_:)(27);

  MEMORY[0x26D6B12B0](v8, v7);
  v18._countAndFlagsBits = 0xD000000000000019;
  v18._object = 0x800000026D0DD740;
  v12._countAndFlagsBits = v8;
  v12._object = v7;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v18)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t FMFindingMeasurement.hintKey.getter()
{
  _StringGuts.grow(_:)(22);

  strcpy(v5, "BT_DIRECTION_");
  HIWORD(v5[1]) = -4864;
  v1 = *(v0 + 16);
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 0xE400000000000000;
      v3 = 1163019592;
      goto LABEL_11;
    }

    if (v1 == 5)
    {
      v2 = 0xE500000000000000;
      v3 = 0x444E554F46;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE700000000000000;
    v3 = 0x4E574F4E4B4E55;
    goto LABEL_11;
  }

  if (v1 == 2)
  {
    v2 = 0xE300000000000000;
    v3 = 5390662;
    goto LABEL_11;
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  v2 = 0xE400000000000000;
  v3 = 1380009294;
LABEL_11:
  MEMORY[0x26D6B12B0](v3, v2);

  MEMORY[0x26D6B12B0](0x325F544E49485FLL, 0xE700000000000000);
  return v5[0];
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

void specialized FMBTDistanceView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_distanceLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_bottomRowStackView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v3 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_hintLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_connectingActivityViewContainer;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_connectingActivityView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v6 = OBJC_IVAR____TtC10TVRemoteUI16FMBTDistanceView_style;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = v0 + v6;
  v8 = qword_2804DD370;
  v9 = unk_2804DD378;
  *v7 = static FMBTDistanceViewStyle.default;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for FMPFSKPatternFragmentNodeStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 289))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMPFSKPatternFragmentNodeStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
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

  *(result + 289) = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FMPFSKPatternFragmentNodeTravelingStyle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE900000000000065;
  v4 = 0x7261656E696CLL;
  if (v2 == 1)
  {
    v4 = 0x7672754364617571;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7672754364617571;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF637241646E4165;
  }

  v7 = 0xE900000000000065;
  v8 = 0x7261656E696CLL;
  if (*a2 == 1)
  {
    v8 = 0x7672754364617571;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7672754364617571;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF637241646E4165;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FMPFSKPatternFragmentNodeTravelingStyle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FMPFSKPatternFragmentNodeTravelingStyle()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FMPFSKPatternFragmentNodeTravelingStyle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FMPFSKPatternFragmentNodeTravelingStyle@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FMPFSKPatternFragmentNodeTravelingStyle.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FMPFSKPatternFragmentNodeTravelingStyle(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF637241646E4165;
  v4 = 0xE900000000000065;
  v5 = 0x7672754364617571;
  if (v2 != 1)
  {
    v5 = 0x7261656E696CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7672754364617571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t lazy protocol witness table accessor for type FMPFSKPatternFragmentNodeTravelingStyle and conformance FMPFSKPatternFragmentNodeTravelingStyle()
{
  result = lazy protocol witness table cache variable for type FMPFSKPatternFragmentNodeTravelingStyle and conformance FMPFSKPatternFragmentNodeTravelingStyle;
  if (!lazy protocol witness table cache variable for type FMPFSKPatternFragmentNodeTravelingStyle and conformance FMPFSKPatternFragmentNodeTravelingStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FMPFSKPatternFragmentNodeTravelingStyle and conformance FMPFSKPatternFragmentNodeTravelingStyle);
  }

  return result;
}

unint64_t specialized FMPFSKPatternFragmentNodeTravelingStyle.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FMPFSKPatternFragmentNodeTravelingStyle.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id FMPFView.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ecoModeObservation];
  if (v2)
  {
    v3 = v2;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FMPFView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void FMPFView.setupConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26D0D46C0;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints_];
}

void FMPFView.setUpSKScene()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_experienceType;
  if (v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_experienceType] == 1)
  {
    if (one-time initialization token for r1NoAR != -1)
    {
      swift_once();
    }

    v6 = &xmmword_2804DD2B8;
  }

  else
  {
    if (one-time initialization token for r1OrBT != -1)
    {
      swift_once();
    }

    v6 = &xmmword_2804DD1E8;
  }

  v7 = *v6;
  [v0 bounds];
  v9 = v8;
  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for FMPFRingView());
  v13 = FMPFRingView.init(sceneSize:diskRadiusScale:verticalOffset:)(0, 0, v9, v11, v7);
  v14 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 144];
  v15 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 112];
  v44 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 128];
  v45 = v14;
  v16 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 144];
  v46 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 160];
  v17 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 80];
  v18 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 48];
  v40 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 64];
  v41 = v17;
  v19 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 80];
  v20 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 112];
  v42 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 96];
  v43 = v20;
  v21 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 16];
  v37[0] = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config];
  v37[1] = v21;
  v22 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 48];
  v24 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config];
  v23 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 16];
  v38 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 32];
  v39 = v22;
  v56 = v44;
  v57 = v16;
  v58 = *&v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 160];
  v52 = v40;
  v53 = v19;
  v54 = v42;
  v55 = v15;
  v48 = v24;
  v49 = v23;
  v36 = v0[v5];
  v47 = v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 176];
  v59 = v0[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config + 176];
  v50 = v38;
  v51 = v18;
  if (_s10TVRemoteUI23FMPFSKPatternNodeConfigVSgWOg(&v48) == 1)
  {
    __break(1u);
  }

  else
  {
    v60[8] = v56;
    v60[9] = v57;
    v60[10] = v58;
    v61 = v59;
    v60[4] = v52;
    v60[5] = v53;
    v60[6] = v54;
    v60[7] = v55;
    v60[0] = v48;
    v60[1] = v49;
    v60[2] = v50;
    v60[3] = v51;
    v25 = objc_allocWithZone(type metadata accessor for FMPFSKScene());
    v26 = v13;
    outlined init with copy of FMPFSKPatternNodeConfig?(v37, v35);
    v27 = v0;
    v28 = FMPFSKScene.init(experienceType:config:size:ringView:altDelegate:)(&v36, v60, v13, v0, &protocol witness table for FMPFView, v2, v4);
    v29 = v26;
    [v29 setFrame_];
    FMPFRingView.setOpacity(_:sprung:)(0, 0, 1);
    v30 = *&v27[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ringView];
    *&v27[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ringView] = v13;

    [v29 setUserInteractionEnabled_];
    [v27 addSubview_];
    v31 = *&v27[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView];
    [v31 presentScene_];
    [v31 setAsynchronous_];
    v32 = *&v27[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
    *&v27[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene] = v28;
    v33 = v28;

    if (*&v27[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_lastThermalState] == 3)
    {
      v34 = 30;
    }

    else
    {
      v34 = 60;
    }

    [v31 setPreferredFramesPerSecond_];
  }
}

void FMPFView.updateConvergingBackdropColor(sprung:)(char a1)
{
  v2 = v1;
  toValue[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for fmpfBlackColor != -1)
  {
    swift_once();
  }

  v4 = static UIColor.fmpfBlackColor;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 standardUserDefaults];
  [v7 fmpfBlackBackdropSigma];
  v9 = v8;

  v10 = [v5 standardUserDefaults];
  [v10 fmpfBlackBackdropAlpha];
  v12 = v11;

  if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_isConvergingBackdropShown) == 1 && (*(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSpringsIntensity + 8) & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSpringsIntensity);
    v14 = [v5 standardUserDefaults];
    [v14 fmpfGreenBackdropHue];
    v16 = v15;
    [v14 fmpfGreenBackdropSaturation];
    v18 = v17;
    [v14 fmpfGreenBackdropValue];
    v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v16 saturation:v18 brightness:v19 alpha:1.0];

    v4 = UIColor.fmpfBlendWithColor(_:factor:)(v20, v13);
  }

  if (*(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_useGreenBackdropBlurAndOpacity) == 1)
  {
    v21 = [v5 standardUserDefaults];
    [v21 fmpfGreenBackdropSigma];
    v9 = v22;

    v23 = [v5 standardUserDefaults];
    [v23 fmpfGreenBackdropAlpha];
    v12 = v24;
  }

  if (v4)
  {
    v39 = 0.5;
    toValue[0] = 0.5;
    v37 = 0x3FE0000000000000;
    v38 = 0.5;
    [v4 getRed:toValue green:&v39 blue:&v38 alpha:&v37];
    v25 = v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSprings;
    v26 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSprings);
    if (a1)
    {
      v27 = v26 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
      *v27 = toValue[0];
      *(v27 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
      v28 = *(v25 + 8) + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
      *v28 = v39;
      *(v28 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
      v29 = *(v25 + 16) + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
      *v29 = v38;
      *(v29 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
      v30 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropSigmaSpring) + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
      *v30 = v9;
      *(v30 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
      v31 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropAlphaSpring) + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget;
      *v31 = v12;
      *(v31 + 8) = 0;
      FMPFFluidSpring.ftarget.didset();
    }

    else
    {
      FLSpring.resetImmediately(toValue:)(toValue[0]);
      *(v26 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      v32 = *(v25 + 8);
      FLSpring.resetImmediately(toValue:)(v39);
      *(v32 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      v33 = *(v25 + 16);
      FLSpring.resetImmediately(toValue:)(v38);
      *(v33 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      v34 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropSigmaSpring);
      FLSpring.resetImmediately(toValue:)(v9);
      *(v34 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      v35 = *(v2 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropAlphaSpring);
      FLSpring.resetImmediately(toValue:)(v12);
      v36 = v35;

      v36[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 0;
      v4 = v36;
    }
  }
}

Swift::Void __swiftcall FMPFView.thermalStateDidChange(notification:)(NSNotification notification)
{
  if ([(objc_class *)notification.super.isa object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for NSProcessInfo);
    if (swift_dynamicCast())
    {
      v2 = [v4 thermalState];
      *(v1 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_lastThermalState) = v2;
      if (v2 == 3)
      {
        v3 = 30;
      }

      else
      {
        v3 = 60;
      }

      [*(v1 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView) setPreferredFramesPerSecond_];
    }
  }

  else
  {
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v7, &_sypSgMd);
  }
}

Swift::Void __swiftcall FMPFView.setup()()
{
  [v0 bounds];
  if (v2 == 0.0 && v1 == 0.0)
  {
    _StringGuts.grow(_:)(42);

    v3 = [v0 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    MEMORY[0x26D6B12B0](v4, v6);

    MEMORY[0x26D6B12B0](0xD00000000000001BLL, 0x800000026D0DD9B0);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    FMPFView.setUpSKScene()();
  }
}

Swift::Void __swiftcall FMPFView.tearDown()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene;
  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene))
  {
    [*(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView) presentScene_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ringView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x2821FBFB0]();
}

char *specialized FMPFView.init(experienceType:config:distance:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v87 = *(a2 + 128);
  v88 = v4;
  v89 = *(a2 + 160);
  v90 = *(a2 + 176);
  v5 = *(a2 + 80);
  v83 = *(a2 + 64);
  v84 = v5;
  v6 = *(a2 + 112);
  v85 = *(a2 + 96);
  v86 = v6;
  v7 = *(a2 + 16);
  v79 = *a2;
  v80 = v7;
  v8 = *(a2 + 48);
  v81 = *(a2 + 32);
  v82 = v8;
  v9 = *a1;
  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_style] = 0x3FE8000000000000;
  v10 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277CDCFA8]) init];
  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ringView] = 0;
  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_scnSceneView] = 0;
  v11 = &v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSpringsIntensity];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropSigmaSpring;
  *&v2[v12] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v13 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropAlphaSpring;
  *&v2[v13] = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene] = 0;
  v14 = &v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_lastAskedRadiusFactor];
  *v14 = 0;
  v14[8] = 1;
  v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_lastAskedSprungRadiusFactor] = 2;
  v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_locationManager] = 0;
  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ecoModeObservation] = 0;
  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_fmpfdelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_sceneIsRunning] = 0;
  v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_isConvergingBackdropShown] = 0;
  v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_experienceType] = v9;
  v15 = *(a2 + 144);
  v65[8] = *(a2 + 128);
  v65[9] = v15;
  v65[10] = *(a2 + 160);
  v66 = *(a2 + 176);
  v16 = *(a2 + 80);
  v65[4] = *(a2 + 64);
  v65[5] = v16;
  v17 = *(a2 + 112);
  v65[6] = *(a2 + 96);
  v65[7] = v17;
  v18 = *(a2 + 16);
  v65[0] = *a2;
  v65[1] = v18;
  v19 = *(a2 + 48);
  v65[2] = *(a2 + 32);
  v65[3] = v19;
  if (_s10TVRemoteUI23FMPFSKPatternNodeConfigVSgWOg(v65) == 1)
  {
    if (v9 == 1)
    {
      if (one-time initialization token for r1NoAR != -1)
      {
        swift_once();
      }

      v20 = &static FMPFSKPatternNodeConfig.r1NoAR;
    }

    else
    {
      if (one-time initialization token for r1OrBT != -1)
      {
        swift_once();
      }

      v20 = &static FMPFSKPatternNodeConfig.r1OrBT;
    }

    v23 = v20[9];
    v61 = v20[8];
    v62 = v23;
    v63 = v20[10];
    v64 = *(v20 + 176);
    v24 = v20[5];
    v57 = v20[4];
    v58 = v24;
    v25 = v20[7];
    v59 = v20[6];
    v60 = v25;
    v26 = v20[1];
    v53 = *v20;
    v54 = v26;
    v27 = v20[3];
    v55 = v20[2];
    v56 = v27;
    outlined init with copy of FMPFSKPatternNodeConfig(&v53, &v67);
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v78 = v64;
    v71 = v57;
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v67 = v53;
    v68 = v54;
    v21 = v55;
    v22 = v56;
  }

  else
  {
    v75 = v87;
    v76 = v88;
    v77 = v89;
    v78 = v90;
    v71 = v83;
    v72 = v84;
    v73 = v85;
    v74 = v86;
    v67 = v79;
    v68 = v80;
    v21 = v81;
    v22 = v82;
  }

  v69 = v21;
  v70 = v22;
  v61 = v75;
  v62 = v76;
  v63 = v77;
  v64 = v78;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v53 = v67;
  v54 = v68;
  v55 = v21;
  v56 = v22;
  destructiveProjectEnumData for FMFindingState(&v53);
  v28 = &v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_config];
  v29 = v62;
  *(v28 + 8) = v61;
  *(v28 + 9) = v29;
  *(v28 + 10) = v63;
  v28[176] = v64;
  v30 = v58;
  *(v28 + 4) = v57;
  *(v28 + 5) = v30;
  v31 = v60;
  *(v28 + 6) = v59;
  *(v28 + 7) = v31;
  v32 = v54;
  *v28 = v53;
  *(v28 + 1) = v32;
  v33 = v56;
  *(v28 + 2) = v55;
  *(v28 + 3) = v33;
  outlined init with copy of FMPFSKPatternNodeConfig?(a2, v52);
  v34 = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v35 = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v36 = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v37 = &v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSprings];
  *v37 = v34;
  v37[1] = v35;
  v37[2] = v36;
  v38 = [objc_opt_self() processInfo];
  v39 = [v38 thermalState];

  *&v2[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_lastThermalState] = v39;
  v51.receiver = v2;
  v51.super_class = type metadata accessor for FMPFView();
  v40 = objc_msgSendSuper2(&v51, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v41 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView;
  v42 = *&v40[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView];
  v43 = objc_opt_self();
  v44 = v40;
  v45 = [v43 clearColor];
  [v42 setBackgroundColor_];

  [*&v40[v41] setAllowsTransparency_];
  [v44 addSubview_];
  FMPFView.setupConstraints()();
  v46 = [objc_opt_self() defaultCenter];
  [v46 addObserver:v44 selector:sel_thermalStateDidChangeWithNotification_ name:*MEMORY[0x277CCA600] object:0];

  v47 = [objc_opt_self() standardUserDefaults];
  v52[0] = v47;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  outlined destroy of (FMFindingDistance?, FMFindingDistance?)(a2, &_s10TVRemoteUI23FMPFSKPatternNodeConfigVSgMd);

  v49 = *&v44[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ecoModeObservation];
  *&v44[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ecoModeObservation] = v48;

  return v44;
}

uint64_t _s10TVRemoteUI23FMPFSKPatternNodeConfigVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t outlined init with copy of FMPFSKPatternNodeConfig?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10TVRemoteUI23FMPFSKPatternNodeConfigVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized FMPFView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_style) = 0x3FE8000000000000;
  v1 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skSceneView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CDCFA8]) init];
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ringView) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_scnSceneView) = 0;
  v2 = v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSpringsIntensity;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropSigmaSpring;
  *(v0 + v3) = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v4 = OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropAlphaSpring;
  *(v0 + v4) = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene) = 0;
  v5 = v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_lastAskedRadiusFactor;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_lastAskedSprungRadiusFactor) = 2;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_useGreenBackdropBlurAndOpacity) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_locationManager) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ecoModeObservation) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_fmpfdelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_sceneIsRunning) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_isConvergingBackdropShown) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id UIAccessibilityCustomAction.__allocating_init(name:target:selector:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = MEMORY[0x26D6B1210]();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8, v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v12 selector:a4];

  swift_unknownObjectRelease();
  return v13;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *FindingViewController.findingView.getter()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView;
  v2 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView);
  }

  else
  {
    v4 = v0;
    v10 = 2;
    _s10TVRemoteUI23FMPFSKPatternNodeConfigVSgWOi0_(v11);
    v13[8] = v11[8];
    v13[9] = v11[9];
    v13[10] = v11[10];
    v14 = v12;
    v13[4] = v11[4];
    v13[5] = v11[5];
    v13[6] = v11[6];
    v13[7] = v11[7];
    v13[0] = v11[0];
    v13[1] = v11[1];
    v13[2] = v11[2];
    v13[3] = v11[3];
    v5 = objc_allocWithZone(type metadata accessor for FMPFView());
    v6 = specialized FMPFView.init(experienceType:config:distance:)(&v10, v13);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id FindingViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = FindingViewController.findingView.getter();
  FMPFView.tearDown()();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for FindingViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall FindingViewController.viewDidLoad()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = FindingViewController.findingView.getter();
  [v5 addSubview_];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];

    FindingViewController.setupLabels()();
    FindingViewController.setupInstructionsView()();
    FindingViewController.setupConstraints()();
    v9.receiver = v0;
    v9.super_class = type metadata accessor for FindingViewController();
    objc_msgSendSuper2(&v9, sel_viewDidLoad);
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall FindingViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for FindingViewController();
  objc_msgSendSuper2(&v23, sel_viewIsAppearing_, a1);
  FMFindingSleepPreventer.disableSleepingForAWhileWhileFinding()();
  v4 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_isFirstAppear;
  if (v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_isFirstAppear] == 1)
  {
    v5 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer;
    [*&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer] invalidate];
    v6 = *&v2[v5];
    *&v2[v5] = 0;

    FindingViewController.startNISession()();
    v7 = FindingViewController.findingView.getter();
    v8 = [v2 view];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [v7 setFrame_];
      v18 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView];
      FMPFView.setup()();

      v19 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_hapticsController];
      FMR1HapticsController.setUpHaptics()();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = (v19 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler);
      v22 = *(v19 + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler);
      *v21 = partial apply for closure #1 in FindingViewController.viewIsAppearing(_:);
      v21[1] = v20;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v22);

      FindingViewController.updateHaptics()();
      v2[v4] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in FindingViewController.viewIsAppearing(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    outlined init with copy of Any?(a2, v10, &_sypSgMd);
    if (v11)
    {
      if (swift_dynamicCast())
      {
        v5 = v9;
        v6 = FindingViewController.findingView.getter();
        v7 = *&v6[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
        if (!v7)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v10, &_sypSgMd);
    }

    v6 = FindingViewController.findingView.getter();
    v7 = *&v6[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
    if (!v7)
    {
LABEL_10:

      return;
    }

    v5 = 0.5;
LABEL_9:
    v8 = v7;
    FMPFSKScene.pulseBTNode(duration:)(v5);

    goto LABEL_10;
  }
}

Swift::Void __swiftcall FindingViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_hapticsController] + OBJC_IVAR____TtC10TVRemoteUI21FMR1HapticsController_playedHapticPatternHandler);
  v10 = *v9;
  *v9 = 0;
  v9[1] = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v10);
  FMR1HapticsController.stopHaptics()();
  FMR1HapticsController.tearDownHaptics()();
  [*&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_niSession] invalidate];
  v11 = FindingViewController.findingView.getter();
  FMPFView.tearDown()();

  v12 = &v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_dismissedHandler];
  v13 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_dismissedHandler];
  if (v13)
  {

    v13(v14);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v13);
    v15 = *v12;
  }

  else
  {
    v15 = 0;
  }

  *v12 = 0;
  v12[1] = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v15);
  FMFindingSleepPreventer.reset()();
  v16 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData;
  v17 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v17 setSessionEndTime_];

  [*&v2[v16] setEndingProximityMeasurement_];
  v19 = [objc_allocWithZone(MEMORY[0x277D6C4B8]) init];
  [v19 logFindingSessionStatistics_];

  v20 = type metadata accessor for FindingViewController();
  v21.receiver = v2;
  v21.super_class = v20;
  objc_msgSendSuper2(&v21, sel_viewDidDisappear_, a1);
}

void FindingViewController.startNISession()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v7 setSessionStartTime_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
  v10 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_niSession;
  v11 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_niSession);
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_niSession) = v9;
  v12 = v9;

  if (v12)
  {
    [v12 setDelegate_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26D0D4110;
  v14 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v15 = MEMORY[0x26D6B1210](1701995880, 0xE400000000000000);
  v16 = [v14 initWithName:v15 devicePresencePreset:1];

  *(v13 + 32) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v18 = MEMORY[0x26D6B1210](1918985582, 0xE400000000000000);
  v19 = [v17 initWithName:v18 devicePresencePreset:4];

  *(v13 + 40) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277CD8A60]);
  v21 = MEMORY[0x26D6B1210](7496038, 0xE300000000000000);
  v22 = [v20 initWithName:v21 devicePresencePreset:5];

  *(v13 + 48) = v22;
  v23 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_discoveryToken);
  objc_allocWithZone(MEMORY[0x277CD8A28]);
  v24 = v23;
  v25 = specialized @nonobjc NIDevicePresenceConfiguration.init(discoveryToken:regions:preferredUpdateRate:)(v24, v13, 2);

  v26 = *(v1 + v10);
  if (v26)
  {
    v27 = v26;
    [v27 runWithConfiguration_];
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t closure #1 in FindingViewController.session(_:object:didUpdateRegion:previousRegion:)(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v3 = *(a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 80);
  v26 = *(a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 64);
  v27 = v3;
  v28 = *(a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 96);
  v4 = *(a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 16);
  v22 = *(a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v23 = v4;
  v5 = *(a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 48);
  v24 = *(a2 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 32);
  v25 = v5;
  if ((v23 - 6) >= 4 && (*(v2 + 2) - 6) >= 4)
  {
    v6 = v2[1];
    v15 = *v2;
    v18 = *(v2 + 40);
    v19 = *(v2 + 56);
    *v20 = *(v2 + 72);
    *&v20[9] = *(v2 + 81);
    v17 = *(v2 + 24);
    v16 = v23;
    v21 = 3;
    v13[0] = v15;
    v13[1] = v6;
    v7 = v2[2];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[5];
    v14 = *(v2 + 48);
    v13[4] = v9;
    v13[5] = v10;
    v13[2] = v7;
    v13[3] = v8;
    outlined init with copy of Any?(v13, v12, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
    FindingViewController.updateState(to:)(&v15);
    return outlined destroy of FMFindingState(&v22);
  }

  return result;
}

uint64_t FindingViewController.restartSessionOnError()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v1 - 8);
  v56 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for DispatchTime();
  v50 = *(v57 - 8);
  v13 = MEMORY[0x28223BE20](v57, v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v49 = &v47 - v17;
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.findingExperience);
  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v7;
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(v19 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayMilliseconds);

    _os_log_impl(&dword_26CFEB000, v20, v21, "NISession to restart after a delay of (%ld) ms", v23, 0xCu);
    v24 = v23;
    v7 = v22;
    MEMORY[0x26D6B2710](v24, -1, -1);
  }

  else
  {

    v20 = v19;
  }

  [*(&v19->isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimer) invalidate];
  v25 = v19 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state;
  v27 = *(&v19[2].isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v26 = *(&v19[4].isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v66 = *(&v19->isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v67 = v27;
  v68 = v26;
  v29 = *(&v19[8].isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v28 = *(&v19[10].isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v30 = *(&v19[6].isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v72 = *(&v19[12].isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v70 = v29;
  v71 = v28;
  v69 = v30;
  if ((v67 - 6) >= 4 && (*(v25 + 2) - 6) >= 4)
  {
    v73 = *v25;
    v76 = *(v25 + 40);
    v77 = *(v25 + 56);
    *v78 = *(v25 + 72);
    *&v78[9] = *(v25 + 81);
    v75 = *(v25 + 24);
    v74 = v67;
    v79 = 3;
    v31 = *(v25 + 3);
    v32 = *(v25 + 48);
    v33 = *(v25 + 5);
    v63 = *(v25 + 4);
    v64 = v33;
    v65 = v32;
    v62 = v31;
    v34 = *(v25 + 1);
    v61 = *(v25 + 2);
    v59 = v73;
    v60 = v34;
    outlined init with copy of Any?(&v59, &v58, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
    FindingViewController.updateState(to:)(&v73);
    outlined destroy of FMFindingState(&v66);
  }

  v35 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer;
  [*(&v19->isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer) invalidate];
  v36 = *(&v19->isa + v35);
  *(&v19->isa + v35) = 0;

  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v47 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v48 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayMilliseconds;
  *v11 = *(&v19->isa + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayMilliseconds);
  (*(v8 + 104))(v11, *MEMORY[0x277D85178], v7);
  v37 = v49;
  MEMORY[0x26D6B11C0](v15, v11);
  (*(v8 + 8))(v11, v7);
  v50 = *(v50 + 8);
  (v50)(v15, v57);
  v38 = swift_allocObject();
  *(v38 + 16) = v19;
  *&v61 = partial apply for closure #1 in FindingViewController.restartSessionOnError();
  *(&v61 + 1) = v38;
  *&v59 = MEMORY[0x277D85DD0];
  *(&v59 + 1) = 1107296256;
  *&v60 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v60 + 1) = &block_descriptor_95;
  v39 = _Block_copy(&v59);
  v40 = v19;

  v41 = v51;
  static DispatchQoS.unspecified.getter();
  *&v59 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v42 = v52;
  v43 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = v47;
  MEMORY[0x26D6B14C0](v37, v41, v42, v39);
  _Block_release(v39);

  (*(v55 + 8))(v42, v43);
  (*(v53 + 8))(v41, v54);
  result = (v50)(v37, v57);
  v46 = *(&v19->isa + v48);
  if (v46 <= 9999)
  {
    *(&v19->isa + v48) = (v46 + 10);
  }

  return result;
}

void FindingViewController.setupConstraints()()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = FindingViewController.findingView.getter();
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26D0D46C0;
  v6 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView;
  v7 = [*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView] topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v11;
  v12 = [*&v0[v6] bottomAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  v15 = [v13 bottomAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v5 + 40) = v16;
  v17 = [*&v0[v6] leadingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v5 + 48) = v21;
  v22 = [*&v0[v6] trailingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 trailingAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v5 + 56) = v27;
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v124 = v25;
  [v25 activateConstraints_];

  v29 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_titleLabel;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26D0D4110;
  v31 = [*&v0[v29] topAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_style];
  v36 = [v31 constraintEqualToAnchor:v34 constant:*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_style + 40]];

  *(v30 + 32) = v36;
  v37 = [*&v0[v29] leadingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = v38;
  v40 = [v38 safeAreaLayoutGuide];

  v41 = [v40 leadingAnchor];
  v42 = v35[7];
  v43 = [v37 constraintEqualToAnchor:v41 constant:v42];

  *(v30 + 40) = v43;
  v44 = [*&v0[v29] trailingAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v46 = v45;
  v47 = [v45 safeAreaLayoutGuide];

  v48 = [v47 trailingAnchor];
  v49 = [v44 constraintEqualToAnchor:v48 constant:-v42];

  *(v30 + 48) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints_];

  v51 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_nameLabel;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_nameLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26D0D4110;
  v53 = [*&v0[v51] topAnchor];
  v54 = [*&v0[v29] bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:v35[6]];

  *(v52 + 32) = v55;
  v56 = [*&v0[v51] leadingAnchor];
  v57 = [v0 view];
  if (!v57)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v58 = v57;
  v59 = [v57 safeAreaLayoutGuide];

  v60 = [v59 leadingAnchor];
  v61 = [v56 constraintEqualToAnchor:v60 constant:v42];

  *(v52 + 40) = v61;
  v62 = [*&v0[v51] trailingAnchor];
  v63 = [v0 view];
  if (!v63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v64 = v63;
  v65 = [v63 safeAreaLayoutGuide];

  v66 = [v65 trailingAnchor];
  v67 = [v62 constraintEqualToAnchor:v66 constant:-v42];

  *(v52 + 48) = v67;
  v68 = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints_];

  v69 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_distanceLabel];
  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_26D0D4110;
  v71 = [v69 bottomAnchor];
  v72 = [v0 view];
  if (!v72)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v73 = v72;
  v74 = [v72 safeAreaLayoutGuide];

  v75 = [v74 bottomAnchor];
  v76 = [v71 constraintEqualToAnchor:v75 constant:-v35[10]];

  *(v70 + 32) = v76;
  v77 = [v69 leadingAnchor];
  v78 = [v0 view];
  if (!v78)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v79 = v78;
  v80 = [v78 safeAreaLayoutGuide];

  v81 = [v80 leadingAnchor];
  v82 = [v77 constraintEqualToAnchor:v81 constant:v42];

  *(v70 + 40) = v82;
  v83 = [v69 trailingAnchor];
  v84 = [v0 view];
  if (!v84)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v85 = v84;
  v86 = [v84 safeAreaLayoutGuide];

  v87 = [v86 trailingAnchor];
  v88 = [v83 constraintEqualToAnchor:v87 constant:-v42];

  *(v70 + 48) = v88;
  v89 = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints_];

  v90 = 16;
  if (v3 < 414.0)
  {
    v90 = 17;
  }

  v91 = 14;
  if (v3 < 414.0)
  {
    v91 = 15;
  }

  v92 = v35[v91];
  v93 = v35[v90];
  v94 = *&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_closeButton];
  [v94 setTranslatesAutoresizingMaskIntoConstraints_];
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_26D0D2880;
  v96 = [v94 topAnchor];
  v97 = [v0 view];
  if (!v97)
  {
    goto LABEL_36;
  }

  v98 = v97;
  v99 = [v97 bottomAnchor];

  v100 = [v96 constraintEqualToAnchor:v99 constant:-v93];
  *(v95 + 32) = v100;
  v101 = [v94 leadingAnchor];
  v102 = [v0 view];
  if (!v102)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v103 = v102;
  v104 = [v102 leadingAnchor];

  v105 = [v101 constraintEqualToAnchor:v104 constant:v92];
  *(v95 + 40) = v105;
  v106 = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints_];

  v107 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabelsStackView;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabelsStackView] setTranslatesAutoresizingMaskIntoConstraints_];
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_26D0D46C0;
  v109 = [*&v0[v107] centerYAnchor];
  v110 = [v0 view];
  if (!v110)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v111 = v110;
  v112 = [v110 centerYAnchor];

  v113 = [v109 constraintEqualToAnchor:v112 constant:v35[13]];
  *(v108 + 32) = v113;
  v114 = [*&v0[v107] centerXAnchor];
  v115 = [v0 view];
  if (!v115)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v116 = v115;
  v117 = [v115 centerXAnchor];

  v118 = [v114 constraintEqualToAnchor_];
  *(v108 + 40) = v118;
  v119 = [*&v0[v107] widthAnchor];
  v120 = v35[12];
  v121 = [v119 constraintEqualToConstant_];

  *(v108 + 48) = v121;
  v122 = [*&v0[v107] heightAnchor];
  v123 = [v122 constraintLessThanOrEqualToConstant_];

  *(v108 + 56) = v123;
  v125 = Array._bridgeToObjectiveC()().super.isa;

  [v124 activateConstraints_];
}

id FindingViewController.setupLabels()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_titleLabel;
  v3 = &v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_style];
  [*&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_titleLabel] setFont_];
  [*&v1[v2] setAdjustsFontForContentSizeCategory_];
  [*&v1[v2] setNumberOfLines_];
  [*&v1[v2] setTextAlignment_];
  v4 = *&v1[v2];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 whiteColor];
  v8 = [v7 colorWithAlphaComponent_];

  [v6 setTextColor_];
  v9 = *&v1[v2];
  type metadata accessor for FMBTDistanceView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v9;
  v13 = ObjCClassFromMetadata;
  v14 = v11;
  v15 = v12;
  v16 = [v14 bundleForClass_];
  v95._object = 0x800000026D0DDEC0;
  v17._countAndFlagsBits = 0x474E49444E4946;
  v95._countAndFlagsBits = 0xD000000000000020;
  v17._object = 0xE700000000000000;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v95);

  v20 = MEMORY[0x26D6B1210](v19._countAndFlagsBits, v19._object);

  [v15 setText_];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v22 = result;
  [result addSubview_];

  v23 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_nameLabel;
  [*&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_nameLabel] setFont_];
  [*&v1[v23] setAdjustsFontForContentSizeCategory_];
  [*&v1[v23] setNumberOfLines_];
  [*&v1[v23] setTextAlignment_];
  v24 = *&v1[v23];
  v89 = v5;
  v25 = [v5 whiteColor];
  [v24 setTextColor_];

  v26 = [*&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_remoteInfo] tvName];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = *&v1[v23];
    v32 = [v14 bundleForClass_];
    v96._object = 0x800000026D0DDF60;
    v33._countAndFlagsBits = 0x4E5F45544F4D4552;
    v33._object = 0xEB00000000454D41;
    v96._countAndFlagsBits = 0xD000000000000024;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26D0D2E90;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 32) = v28;
    *(v35 + 40) = v30;
    countAndFlagsBits = String.init(format:_:)();
    object = v37;
  }

  else
  {
    v31 = *&v1[v23];
    v39 = [v14 bundleForClass_];
    v97._object = 0x800000026D0DDEF0;
    v40._countAndFlagsBits = 0x45544F4D4552;
    v97._countAndFlagsBits = 0xD00000000000001FLL;
    v40._object = 0xE600000000000000;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v97);
    countAndFlagsBits = v42._countAndFlagsBits;
    object = v42._object;
  }

  v43 = MEMORY[0x26D6B1210](countAndFlagsBits, object);

  [v31 setText_];

  result = [v1 view];
  if (!result)
  {
    goto LABEL_14;
  }

  v44 = result;
  [result addSubview_];

  v45 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_closeButton];
  v87 = v13;
  v88 = v14;
  v46 = [v14 bundleForClass_];
  v98._object = 0x800000026D0DDF30;
  v47._object = 0x800000026D0DDF10;
  v98._countAndFlagsBits = 0xD00000000000002FLL;
  v47._countAndFlagsBits = 0xD000000000000016;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v98);

  *&v45[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_legend] = v49;

  v50 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label;
  v51 = *&v45[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label];

  v52 = v51;
  v53 = MEMORY[0x26D6B1210](v49._countAndFlagsBits, v49._object);

  [v52 setText_];

  v54 = [objc_opt_self() isSolariumEnabled];
  v55 = 0;
  if ((v54 & 1) == 0)
  {
    v56 = [v89 whiteColor];
    v55 = [v56 colorWithAlphaComponent_];
  }

  v57 = [v89 whiteColor];
  v58._countAndFlagsBits = 0x6B72616D78;
  v58._object = 0xE500000000000000;
  v93.value.super.isa = v57;
  v93.is_nil = v55;
  v94.value.super.isa = v54;
  FMR1GlyphButton.set(named:tintColor:backgroundColor:usesGlassBackground:)(v58, v93, v94, v59);

  result = [v1 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v60 = result;
  v61 = v55;
  [result addSubview_];

  v92[3] = type metadata accessor for FindingViewController();
  v92[0] = v1;
  v62 = v1;
  v63 = [v88 bundleForClass_];
  v99._object = 0x800000026D0DDF30;
  v64._object = 0x800000026D0DDF10;
  v99._countAndFlagsBits = 0xD00000000000002FLL;
  v64._countAndFlagsBits = 0xD000000000000016;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v63, v65, v99);

  v67 = [v45 layer];
  [v67 removeAllAnimations];

  v68 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  v69 = [*&v45[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button] layer];
  [v69 removeAllAnimations];

  v70 = [*&v45[v50] layer];
  [v70 removeAllAnimations];

  v71 = *&v45[v68];
  outlined init with copy of Any?(v92, v90, &_sypSgMd);
  v72 = v91;
  if (v91)
  {
    v73 = __swift_project_boxed_opaque_existential_1(v90, v91);
    v89 = &v86;
    v74 = v61;
    v75 = *(v72 - 8);
    MEMORY[0x28223BE20](v73, v73);
    v77 = &v86 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v77);
    v78 = v71;
    v79 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v75 + 8))(v77, v72);
    v61 = v74;
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
    v80 = v71;
    v79 = 0;
  }

  [v71 addTarget:v79 action:sel_closeActionWithSender_ forControlEvents:64];

  swift_unknownObjectRelease();

  v81 = MEMORY[0x26D6B1210](v66._countAndFlagsBits, v66._object);
  [v45 setAccessibilityLabel_];

  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  outlined init with copy of Any?(v92, v90, &_sypSgMd);
  v82 = UIAccessibilityCustomAction.__allocating_init(name:target:selector:)(v66._countAndFlagsBits, v66._object, v90, sel_closeActionWithSender_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_26D0D2860;
  *(v83 + 32) = v82;
  v84 = v82;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 setAccessibilityCustomActions_];

  return outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v92, &_sypSgMd);
}

void FindingViewController.setupInstructionsView()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel;
  v2 = &v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_style];
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel] setFont_];
  [*&v0[v1] setAdjustsFontForContentSizeCategory_];
  [*&v0[v1] setAdjustsFontSizeToFitWidth_];
  [*&v0[v1] setNumberOfLines_];
  v3 = *&v0[v1];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 whiteColor];
  [v5 setTextColor_];

  [*&v0[v1] setTextAlignment_];
  [*&v0[v1] setAlpha_];
  v7 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabelsStackView;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabelsStackView] addArrangedSubview_];
  v8 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel;
  [*&v0[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel] setFont_];
  [*&v0[v8] setAdjustsFontForContentSizeCategory_];
  [*&v0[v8] setAdjustsFontSizeToFitWidth_];
  [*&v0[v8] setNumberOfLines_];
  v9 = *&v0[v8];
  v10 = [v4 whiteColor];
  [v9 setTextColor_];

  [*&v0[v8] setTextAlignment_];
  [*&v0[v8] setAlpha_];
  [*&v0[v7] addArrangedSubview_];
  [*&v0[v7] setAxis_];
  [*&v0[v7] setAlignment_];
  [*&v0[v7] setDistribution_];
  [*&v0[v7] setSpacing_];
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    [v11 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

void FindingViewController.updateState(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state];
  v5 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 80];
  v58[4] = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 64];
  v58[5] = v5;
  v59 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 96];
  v6 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 16];
  v58[0] = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state];
  v58[1] = v6;
  v7 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 48];
  v58[2] = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 32];
  v58[3] = v7;
  v8 = &v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState];
  v9 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 16];
  v60[0] = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState];
  v60[1] = v9;
  v10 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 32];
  v11 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 48];
  v12 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 64];
  v13 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 80];
  v61 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 96];
  v60[4] = v12;
  v60[5] = v13;
  v60[2] = v10;
  v60[3] = v11;
  memmove(&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState], &v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state], 0x62uLL);
  outlined init with copy of FMFindingState(v58, v62);
  outlined destroy of FMFindingState(v60);
  v14 = *(v4 + 5);
  v62[4] = *(v4 + 4);
  v62[5] = v14;
  v63 = *(v4 + 48);
  v15 = *(v4 + 1);
  v62[0] = *v4;
  v62[1] = v15;
  v16 = *(v4 + 3);
  v62[2] = *(v4 + 2);
  v62[3] = v16;
  v17 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v17;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  *(v4 + 48) = *(a1 + 96);
  *(v4 + 4) = v20;
  *(v4 + 5) = v21;
  *(v4 + 2) = v18;
  *(v4 + 3) = v19;
  outlined destroy of FMFindingState(v62);
  v22 = *(v8 + 5);
  v56[4] = *(v8 + 4);
  v56[5] = v22;
  v57 = *(v8 + 48);
  v23 = *(v8 + 1);
  v56[0] = *v8;
  v56[1] = v23;
  v24 = *(v8 + 3);
  v56[2] = *(v8 + 2);
  v56[3] = v24;
  outlined init with copy of FMFindingState(a1, v54);
  outlined init with copy of FMFindingState(v56, v54);
  v25 = specialized static FMFindingState.== infix(_:_:)(v56, a1);
  outlined destroy of FMFindingState(v56);
  if ((v25 & 1) == 0)
  {
    if (one-time initialization token for findingExperience != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.findingExperience);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49[0] = v48;
      *v30 = 136315394;
      v31 = *(v8 + 5);
      v54[4] = *(v8 + 4);
      v54[5] = v31;
      v55 = *(v8 + 48);
      v32 = *(v8 + 1);
      v54[0] = *v8;
      v54[1] = v32;
      v33 = *(v8 + 3);
      v54[2] = *(v8 + 2);
      v54[3] = v33;
      outlined init with copy of FMFindingState(v54, v52);
      v34 = FMFindingState.description.getter();
      v36 = v35;
      outlined destroy of FMFindingState(v54);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v49);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      v38 = *(v4 + 5);
      v52[4] = *(v4 + 4);
      v52[5] = v38;
      v53 = *(v4 + 48);
      v39 = *(v4 + 1);
      v52[0] = *v4;
      v52[1] = v39;
      v40 = *(v4 + 3);
      v52[2] = *(v4 + 2);
      v52[3] = v40;
      outlined init with copy of FMFindingState(v52, v50);
      v41 = FMFindingState.description.getter();
      v43 = v42;
      outlined destroy of FMFindingState(v52);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v49);

      *(v30 + 14) = v44;
      _os_log_impl(&dword_26CFEB000, v28, v29, "Updated state: %s → %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6B2710](v48, -1, -1);
      MEMORY[0x26D6B2710](v30, -1, -1);
    }

    FindingViewController.updateInstructionsView()();
  }

  FindingViewController.updateFindingView(sprung:state:)(1, a1);
  v45 = *(v4 + 5);
  v50[4] = *(v4 + 4);
  v50[5] = v45;
  v51 = *(v4 + 48);
  v46 = *(v4 + 1);
  v50[0] = *v4;
  v50[1] = v46;
  v47 = *(v4 + 3);
  v50[2] = *(v4 + 2);
  v50[3] = v47;
  outlined init with copy of FMFindingState(v50, v49);
  FMBTDistanceView.update(with:nextBeacon:)(v50, 0, 0);
  outlined destroy of FMFindingState(v50);
  FindingViewController.updateHaptics()();
}

void FindingViewController.updateFindingView(sprung:state:)(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = FindingViewController.findingView.getter();
  v7 = *&v6[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v7)
  {
    v8 = v7;
    specialized FMPFSKScene.setOpacity(_:sprung:swap:)(1, 1.0);
  }

  v9 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView;
  v10 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView);
  v11 = *&v10[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v11 && (v12 = v10, v13 = v11, FMPFSKScene.setPatternConformedToExplodedFactor(_:sprung:)(0, 1.0), v13, v12, v10 = *(v3 + v9), (v14 = *&v10[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene]) != 0))
  {
    v15 = v10;
    v16 = v14;
    FMPFSKScene.setPatternConformationFactor(_:sprung:)(a1 & 1, 1.0);
  }

  else
  {
    v15 = v10;
  }

  v15[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_useGreenBackdropBlurAndOpacity] = 1;
  FMPFView.updateConvergingBackdropColor(sprung:)(1);

  v17 = *(v3 + v9);
  v18 = *&v17[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    FMPFSKScene.setPatternCenterFactor(_:sprung:)(a1 & 1, 1.0);

    v17 = *(v3 + v9);
  }

  v21 = v17;
  FMFindingState.defaultConfiguration.getter(v109);
  v22 = *&v21[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v22)
  {
    v23 = v110;
    v24 = v22;
    FMPFSKScene.setBTDiskNodeOpacity(_:sprung:)(a1 & 1, v23);
  }

  v25 = objc_opt_self();
  v26 = MEMORY[0x26D6B1210](0xD000000000000011, 0x800000026D0DAE90);
  v27 = MGGetSInt32Answer();

  v28 = [v25 mainScreen];
  [v28 nativeScale];
  v30 = v29;

  v31 = v27 * 1.252 / v30;
  v32 = [v25 mainScreen];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v116.origin.x = v34;
  v116.origin.y = v36;
  v116.size.width = v38;
  v116.size.height = v40;
  Width = CGRectGetWidth(v116);
  v42 = [v25 mainScreen];
  [v42 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v117.origin.x = v44;
  v117.origin.y = v46;
  v117.size.width = v48;
  v117.size.height = v50;
  v51 = CGRectGetWidth(v117);
  v52 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement);
  v53 = *(v3 + v9);
  v54 = *&v53[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    FMPFSKScene.setPatternCenterFactor(_:sprung:)(0, 1.0);
  }

  v57 = *(a2 + 16);
  v58 = v31 / v51;
  if (v57 > 9)
  {
    goto LABEL_29;
  }

  if (((1 << v57) & 0x340) == 0)
  {
    if (((1 << v57) & 0x30) != 0)
    {
      v70 = *(v3 + v9);
      v71 = *&v70[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v71)
      {
        return;
      }

      v72 = v70;
      v73 = v71;
      FMPFSKScene.setBTRangeNodeSize(_:sprung:)(1, v58);

      v74 = *(v3 + v9);
      v75 = *&v74[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v75)
      {
        return;
      }

      v108 = v74;
      v69 = v75;
      v76 = 1.11;
      v77 = 1;
      goto LABEL_43;
    }

    if (v57 == 7)
    {
      v78 = *(v3 + v9);
      v79 = *&v78[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (v79 && (v80 = v78, v81 = v79, FMPFSKScene.setPatternCenterFactor(_:sprung:)(0, 0.0), v81, v80, v78 = *(v3 + v9), (v82 = *&v78[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene]) != 0))
      {
        v83 = v78;
        v84 = v82;
        FMPFSKScene.setPatternConformationFactor(_:sprung:)(1, 0.0);
      }

      else
      {
        v83 = v78;
      }

      v83[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
      FMPFView.updateConvergingBackdropColor(sprung:)(1);

      v98 = *(v3 + v9);
      FMFindingState.defaultConfiguration.getter(v112);
      v99 = *&v98[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (v99)
      {
        v100 = v114;
        v101 = v99;
        FMPFSKScene.setBTDiskNodeOpacity(_:sprung:)(0, v100);
      }

      v102 = *(v3 + v9);
      v103 = *&v102[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v103)
      {
        return;
      }

      v104 = v102;
      v105 = v103;
      FMPFSKScene.setBTRangeNodeSize(_:sprung:)(0, 0.0);

      v106 = *(v3 + v9);
      v107 = *&v106[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v107)
      {
        return;
      }

      v108 = v106;
      v69 = v107;
      v76 = 0.0;
      v77 = 0;
      goto LABEL_43;
    }

LABEL_29:
    v85 = (32.0 / Width + v58) * 0.5;
    if (v57 == 3)
    {
      v86 = *(v3 + v9);
      v87 = *&v86[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v87)
      {
        return;
      }

      v88 = v86;
      v89 = v87;
      FMPFSKScene.setBTRangeNodeSize(_:sprung:)(1, v85);

      v90 = *(v3 + v9);
      v91 = *&v90[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v91)
      {
        return;
      }

      v108 = v90;
      v69 = v91;
      v76 = (v52 + -0.5 + v52 + -0.5) * 0.98 + 0.13;
      v77 = 1;
    }

    else
    {
      if (v57 != 2)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v92 = *(v3 + v9);
      v93 = *&v92[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v93)
      {
        return;
      }

      v94 = v92;
      v95 = v93;
      FMPFSKScene.setBTRangeNodeSize(_:sprung:)(1, (v52 + v52) * v85 + 0.0);

      v96 = *(v3 + v9);
      v97 = *&v96[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
      if (!v97)
      {
        return;
      }

      v108 = v96;
      v69 = v97;
      v76 = 0.0;
      v77 = 1;
    }

LABEL_43:
    FMPFSKScene.setBTDiskNodeSize(_:sprung:)(v77, v76);
    goto LABEL_44;
  }

  v59 = *(v3 + v9);
  FMFindingState.defaultConfiguration.getter(v111);
  v60 = *&v59[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v60)
  {
    v61 = v111[0];
    v62 = v60;
    FMPFSKScene.setBTRangeNodeSize(_:sprung:)(1, v61);
  }

  v63 = *(v3 + v9);
  FMFindingState.defaultConfiguration.getter(v112);
  v64 = *&v63[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v64)
  {
    v65 = v113;
    v66 = v64;
    FMPFSKScene.setBTDiskNodeSize(_:sprung:)(1, v65);
  }

  v67 = *(v3 + v9);
  v68 = *&v67[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_skScene];
  if (v68)
  {
    v108 = v67;
    v69 = v68;
    FMPFSKScene.setPatternCenterFactor(_:sprung:)(0, 0.0);
LABEL_44:
  }
}

void FMFindingState.defaultConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();

  v4 = MEMORY[0x26D6B1210](0xD000000000000011, 0x800000026D0DAE90);
  v5 = MGGetSInt32Answer();

  v6 = [v3 mainScreen];
  [v6 nativeScale];
  v8 = v7;

  v9 = [v3 mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v15;
  v39.size.height = v17;
  Width = CGRectGetWidth(v39);
  v19 = [v3 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v40.origin.x = v21;
  v40.origin.y = v23;
  v40.size.width = v25;
  v40.size.height = v27;
  v28 = CGRectGetWidth(v40);
  v29 = *(v1 + 16);
  _Q3 = 0uLL;
  v31 = 0.0;
  v32 = 0.0;
  if ((v29 - 6) >= 4)
  {
    v34 = v5 * 1.252 / v8 / v28;
    v33 = 1.0;
    if (v29 > 3)
    {
      if (v29 == 4)
      {
        __asm { FMOV            V3.2D, #4.5 }

        *&_Q3 = v34;
        v32 = INFINITY;
        v31 = 0.8;
        goto LABEL_3;
      }

      if (v29 == 5)
      {
        __asm { FMOV            V3.2D, #4.5 }

        *&_Q3 = v34;
        goto LABEL_3;
      }
    }

    else
    {
      if (v29 == 2)
      {
        *(&_Q3 + 1) = 0;
        *&_Q3 = 32.0 / Width;
        v31 = 0.2;
        v32 = 1.0;
        goto LABEL_3;
      }

      if (v29 == 3)
      {
        v32 = 0.5;
        __asm { FMOV            V3.2D, #0.5 }

        *&_Q3 = (32.0 / Width + v34) * 0.5;
        v31 = 0.5;
        goto LABEL_3;
      }
    }

    _Q3 = 0uLL;
  }

  v33 = 0.0;
LABEL_3:
  *a1 = _Q3;
  *(a1 + 16) = v33;
  *(a1 + 24) = v31;
  *(a1 + 32) = v32;
}

void FindingViewController.showInstructionsLabel(_:animated:completion:)(char a1, char a2, void (*a3)(id), uint64_t a4)
{
  v9 = [*&v4[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel] alpha];
  if (a1)
  {
    if (v10 != 1.0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!a3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v10 == 0.0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a2)
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = a1 & 1;
    v26 = partial apply for closure #1 in FindingViewController.showInstructionsLabel(_:animated:completion:);
    v27 = v12;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed () -> ();
    v25 = &block_descriptor_83;
    v13 = _Block_copy(&v22);
    v14 = v4;

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v26 = partial apply for closure #2 in FindingViewController.showInstructionsLabel(_:animated:completion:);
    v27 = v15;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v25 = &block_descriptor_89;
    v16 = _Block_copy(&v22);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(a3);

    [v11 animateWithDuration:v13 animations:v16 completion:0.5];
    _Block_release(v16);
    _Block_release(v13);
    return;
  }

  v17 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel;
  v18 = 0.0;
  if (a1)
  {
    v18 = 1.0;
  }

  [*&v4[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel] setAlpha_];
  v19 = *&v4[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel];
  v20 = *&v4[v17];
  v21 = v19;
  [v20 alpha];
  [v21 setAlpha_];

  if (a3)
  {
LABEL_7:
    a3(v9);
  }
}

void closure #1 in FindingViewController.showInstructionsLabel(_:animated:completion:)(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel;
  v4 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel);
  v5 = 0.0;
  if (a2)
  {
    v5 = 1.0;
  }

  [v4 setAlpha_];
  v6 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel);
  v7 = *(a1 + v3);
  v8 = v6;
  [v7 alpha];
  [v8 setAlpha_];
}

void FindingViewController.updateInstructionsView()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWallTime();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v24 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x28223BE20](v11, v12);
  if ((*(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 16) & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v13 = swift_allocObject();
    v24[0] = v2;
    v14 = v13;
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in FindingViewController.updateInstructionsView();
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_12;
    _Block_copy(aBlock);
    v24[1] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v15 = DispatchWorkItem.init(flags:block:)();

    *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_searchingDelayWorkItem) = v15;

    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v16 = static OS_dispatch_queue.main.getter();
    static DispatchWallTime.now()();
    + infix(_:_:)();
    v17 = *(v3 + 8);
    v18 = v7;
    v19 = v24[0];
    v17(v18, v24[0]);
    OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

    v17(v10, v19);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_searchingDelayWorkItem))
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    FindingViewController.showInstructionsLabel(_:animated:completion:)(0, 1, 0, 0);
    v20 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel);
    v21 = MEMORY[0x26D6B1210](0, 0xE000000000000000);
    [v20 setText_];

    v22 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel);
    v24[0] = MEMORY[0x26D6B1210](0, 0xE000000000000000);
    [v22 setText_];

    v23 = v24[0];
  }
}

void closure #1 in FindingViewController.updateInstructionsView()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = *&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    aBlock[4] = partial apply for closure #1 in closure #1 in FindingViewController.updateInstructionsView();
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_77;
    v5 = _Block_copy(aBlock);
    v6 = v3;
    v7 = v1;

    [v2 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:1.0];
    _Block_release(v5);

    v8 = *&v7[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel];
    if (v7[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_requiresAdditionalConnectionTime] == 1)
    {
      type metadata accessor for FMBTDistanceView();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = objc_opt_self();
      v11 = v8;
      v12 = [v10 bundleForClass_];
      v22 = 0x800000026D0DDDC0;
      v13 = 0x800000026D0DDDA0;
      v14 = 0xD000000000000029;
      v15 = 0xD000000000000010;
    }

    else
    {
      type metadata accessor for FMBTDistanceView();
      v16 = swift_getObjCClassFromMetadata();
      v17 = objc_opt_self();
      v18 = v8;
      v12 = [v17 bundleForClass_];
      v22 = 0x800000026D0DDD70;
      v15 = 0x43524145535F5442;
      v13 = 0xEC000000474E4948;
      v14 = 0xD000000000000025;
    }

    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, 0, v12, v19, *&v14);

    v21 = MEMORY[0x26D6B1210](v20._countAndFlagsBits, v20._object);

    [v8 setText_];

    FindingViewController.showInstructionsLabel(_:animated:completion:)(1, 1, 0, 0);
  }
}

void closure #1 in closure #1 in FindingViewController.updateInstructionsView()(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel);
  type metadata accessor for FMBTDistanceView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 bundleForClass_];
  v11._object = 0x800000026D0DDE10;
  v6._object = 0x800000026D0DDDF0;
  v11._countAndFlagsBits = 0xD000000000000029;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v11);

  v9 = MEMORY[0x26D6B1210](v8._countAndFlagsBits, v8._object);

  [v4 setText_];
}

void FindingViewController.updateHaptics()()
{
  v1 = (v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v2 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 80);
  v94 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 64);
  v95 = v2;
  v96 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 96);
  v3 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 16);
  v90 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v91 = v3;
  v4 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 48);
  v92 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 32);
  v93 = v4;
  if ((v3 - 8) >= 2)
  {
    v5 = v0;
    if (v91 == 7)
    {
      FMR1HapticsController.stopHaptics()();
      return;
    }

    if (v91 == 6)
    {
      if (one-time initialization token for findingExperience != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.findingExperience);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_26CFEB000, v7, v8, "FMFindingViewCtrl: Requesting scatter haptic.", v9, 2u);
        MEMORY[0x26D6B2710](v9, -1, -1);
      }

      FMR1HapticsController.startDelayedScatterHapticPlayerIfNecessary()();
      goto LABEL_9;
    }

    v84 = *v1;
    v85 = v91;
    v87 = *(v1 + 40);
    v88 = *(v1 + 56);
    v89[0] = *(v1 + 72);
    *(v89 + 9) = *(v1 + 81);
    v86 = *(v1 + 24);
    if (v91 > 3)
    {
      if (v91 == 4)
      {
        v18 = v1[5];
        *&v63[16] = v1[4];
        v64 = v18;
        v65 = *(v1 + 48);
        v19 = v1[1];
        v60 = *v1;
        v61 = v19;
        v20 = v1[3];
        v62 = v1[2];
        *v63 = v20;
        outlined init with copy of Any?(&v60, &v66, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
        FMR1HapticsController.stopHaptics()();
        v21 = v1[5];
        *&v83[48] = v1[4];
        *&v83[64] = v21;
        *&v83[80] = *(v1 + 48);
        v22 = v1[1];
        v82 = *v1;
        *v83 = v22;
        v23 = v1[3];
        *&v83[16] = v1[2];
        *&v83[32] = v23;
        v24 = v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState;
        v25 = *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 16);
        v66 = *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState);
        *v67 = v25;
        v26 = *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 32);
        v27 = *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 48);
        v28 = *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 64);
        v29 = *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 80);
        *&v67[80] = *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 96);
        *&v67[48] = v28;
        *&v67[64] = v29;
        *&v67[16] = v26;
        *&v67[32] = v27;
        outlined init with copy of FMFindingState(&v82, &v54);
        outlined init with copy of FMFindingState(&v66, &v54);
        v30 = specialized static FMFindingState.== infix(_:_:)(&v82, &v66);
        outlined destroy of FMFindingState(&v66);
        outlined destroy of FMFindingState(&v82);
        if ((v30 & 1) == 0 && *(v24 + 16) != 6)
        {
          if (one-time initialization token for findingExperience != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, static Logger.findingExperience);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_26CFEB000, v32, v33, "FMFindingViewCtrl: Playing here haptic", v34, 2u);
            MEMORY[0x26D6B2710](v34, -1, -1);
          }

          FMR1HapticsController.playLevelIncreasedHaptic()();
        }

        goto LABEL_9;
      }

      if (v91 == 5)
      {
        v12 = v1[5];
        *&v67[48] = v1[4];
        *&v67[64] = v12;
        *&v67[80] = *(v1 + 48);
        v13 = v1[1];
        v66 = *v1;
        *v67 = v13;
        v14 = v1[3];
        *&v67[16] = v1[2];
        *&v67[32] = v14;
        outlined init with copy of Any?(&v66, &v82, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
        FMR1HapticsController.startDelayedNearbyHapticPlayerIfNecessary()();
LABEL_9:
        outlined destroy of FMFindingState(&v90);
        return;
      }

      goto LABEL_31;
    }

    if (v91 == 2)
    {
      v15 = v1[5];
      *&v67[48] = v1[4];
      *&v67[64] = v15;
      *&v67[80] = *(v1 + 48);
      v16 = v1[1];
      v66 = *v1;
      *v67 = v16;
      v17 = v1[3];
      *&v67[16] = v1[2];
      *&v67[32] = v17;
      outlined init with copy of Any?(&v66, &v82, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
      goto LABEL_31;
    }

    if (v91 != 3)
    {
      goto LABEL_31;
    }

    v10 = (v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState);
    v11 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 16);
    if ((v11 - 6) >= 4)
    {
      v54 = *v10;
      v35 = *(v10 + 40);
      v36 = *(v10 + 72);
      v62 = *(v10 + 56);
      *v63 = v36;
      *&v63[9] = *(v10 + 81);
      v60 = *(v10 + 24);
      v61 = v35;
      v66 = v54;
      *v67 = v11;
      *&v67[66] = *(v10 + 82);
      *&v67[56] = v36;
      *&v67[40] = v62;
      *&v67[24] = v35;
      *&v67[8] = v60;
      outlined init with copy of Any?(&v66, &v82, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
      v80 = v54;
      *(&v81[1] + 8) = v61;
      *(&v81[2] + 8) = v62;
      *(&v81[3] + 8) = *v63;
      *(&v81[4] + 1) = *&v63[9];
      *(v81 + 8) = v60;
      *&v81[0] = v11;
      v79 = v54;
      v77 = v62;
      v78[0] = *(&v81[3] + 8);
      *(v78 + 9) = *&v63[9];
      v75 = v60;
      v76 = v61;
      v56 = v60;
      *&v59[9] = *&v63[9];
      *v59 = *(&v81[3] + 8);
      v58 = v62;
      v57 = v61;
      v82 = 0uLL;
      *v83 = 2;
      memset(&v83[8], 0, 73);
      v60 = 0uLL;
      v61 = *v83;
      LOBYTE(v65) = 0;
      *&v63[16] = *&v83[48];
      v64 = *&v83[64];
      v62 = *&v83[16];
      *v63 = *&v83[32];
      v55 = v11;
      outlined init with copy of FMFindingState(&v90, &v66);
      outlined init with copy of Any?(&v80, &v66, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
      v37 = specialized static FMFindingMeasurement.== infix(_:_:)(&v54, &v60);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v82, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v80, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
      v66 = v79;
      *v67 = v11;
      *&v67[24] = v76;
      *&v67[40] = v77;
      *&v67[56] = v78[0];
      *&v67[65] = *(v78 + 9);
      *&v67[8] = v75;
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v66, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
      if (v37)
      {
        v38 = *(v10 + 2);
LABEL_30:
        if (v38 != 6)
        {
          if (one-time initialization token for findingExperience != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          __swift_project_value_buffer(v50, static Logger.findingExperience);
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_26CFEB000, v51, v52, "FMFindingViewCtrl: Playing near haptic", v53, 2u);
            MEMORY[0x26D6B2710](v53, -1, -1);
          }

          FMR1HapticsController.playFarNearHaptic()();
          goto LABEL_42;
        }

LABEL_31:
        v39 = (v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState);
        v40 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState + 16);
        if ((v40 - 6) >= 4)
        {
          v79 = *v39;
          v41 = *(v39 + 40);
          v42 = *(v39 + 72);
          v77 = *(v39 + 56);
          v78[0] = v42;
          *(v78 + 9) = *(v39 + 81);
          v75 = *(v39 + 24);
          v76 = v41;
          v66 = v79;
          *v67 = v40;
          *&v67[66] = *(v39 + 82);
          *&v67[56] = v42;
          *&v67[40] = v77;
          *&v67[24] = v41;
          *&v67[8] = v75;
          outlined init with copy of Any?(&v66, &v82, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
          v80 = v79;
          *(&v81[1] + 8) = v76;
          *(&v81[2] + 8) = v77;
          *(&v81[3] + 8) = v78[0];
          *(&v81[4] + 1) = *(v78 + 9);
          *(v81 + 8) = v75;
        }

        else
        {
          v80 = 0uLL;
          memset(v81 + 8, 0, 73);
          v40 = 6;
        }

        *&v81[0] = v40;
        *&v83[48] = v81[3];
        *&v83[64] = v81[4];
        v83[80] = v81[5];
        *&v83[16] = v81[1];
        *&v83[32] = v81[2];
        v82 = v80;
        *v83 = v81[0];
        v43 = FMFindingMeasurement.calculateTrend(from:)(&v82);
        outlined init with copy of FMFindingState(&v90, &v66);
        outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v80, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
        if (v43 == 2)
        {
        }

        else
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v44 & 1) == 0)
          {
LABEL_42:
            v49 = fmin(*(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement) * *(v5 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement) * 1.8, 0.7);
            *&v67[8] = MEMORY[0x277D85048];
            *&v66 = (v49 + -0.3) / -0.4 * 0.75 + 1.0;
            FMR1HapticsController.playInFOVModeTapHapticAt(hapticFactor:period:context:)(&v66, v49, *&v66);
            outlined destroy of FMFindingState(&v90);
            outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v66, &_sypSgMd);
            return;
          }
        }

        if (one-time initialization token for findingExperience != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, static Logger.findingExperience);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_26CFEB000, v46, v47, "FMFindingViewCtrl: Playing level decreased haptic", v48, 2u);
          MEMORY[0x26D6B2710](v48, -1, -1);
        }

        FMR1HapticsController.playLevelDecreasedHaptic()();
        goto LABEL_42;
      }
    }

    else
    {
      v80 = 0uLL;
      memset(v81 + 8, 0, 73);
      *&v81[0] = 6;
      v66 = 0uLL;
      memset(&v67[8], 0, 73);
      *v67 = 6;
      v68 = 0;
      v69 = 0;
      v70 = 2;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      memset(v74, 0, sizeof(v74));
      outlined init with copy of FMFindingState(&v90, &v82);
      outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v66, &_s10TVRemoteUI20FMFindingMeasurementOSg_ADtMd);
    }

    v38 = *(v10 + 2);
    if ((v38 - 6) >= 4)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in FindingViewController.showInstructionsLabel(_:animated:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id specialized FindingViewController.init(discoveryToken:remoteInfo:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_dismissedHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView] = 0;
  v7 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_style;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v42[6] = xmmword_2804DCF50;
  v42[7] = unk_2804DCF60;
  v42[8] = xmmword_2804DCF70;
  v43 = qword_2804DCF80;
  v42[2] = xmmword_2804DCF10;
  v42[3] = unk_2804DCF20;
  v42[4] = xmmword_2804DCF30;
  v42[5] = unk_2804DCF40;
  v42[0] = static FMFindingViewStyle.default;
  v42[1] = *&qword_2804DCF00;
  memmove(&v3[v7], &static FMFindingViewStyle.default, 0x98uLL);
  v8 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *&v3[v8] = swift_initStaticObject();
  v9 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_closeButton;
  v10 = type metadata accessor for FMR1GlyphButton();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style;
  outlined init with copy of FMFindingViewStyle(v42, v41);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = &v11[v12];
  v14 = qword_2804DCFA0;
  v15 = qword_2804DCFA8;
  v16 = qword_2804DCFC0;
  v17 = xmmword_2804DCFB0;
  *v13 = static FMR1GlyphButtonStyle.default;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  *(v13 + 2) = v17;
  *(v13 + 6) = v16;
  v18 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  v19 = objc_opt_self();
  v20 = v15;
  *&v11[v18] = [v19 buttonWithType_];
  v21 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label;
  *&v11[v21] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor] = 0;
  *&v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringDisplayLink] = 0;
  *&v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringPerimiterAnimationSpring] = 0;
  *&v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring] = 0;
  v22 = &v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_lastRenderTime];
  *v22 = 0;
  v22[8] = 1;
  v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_usesGlassBackground] = 0;
  v23 = &v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_legend];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v11[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_named];
  *v24 = 0;
  v24[1] = 0;
  v40.receiver = v11;
  v40.super_class = v10;
  v25 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  FMR1GlyphButton.setupSubviews()();
  FMR1GlyphButton.setupConstraints()();

  *&v3[v9] = v25;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_pulseTimer] = 0;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_niSession] = 0;
  v26 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_hapticsController;
  *&v3[v26] = [objc_allocWithZone(type metadata accessor for FMR1HapticsController()) init];
  v27 = &v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state];
  *v27 = 0;
  *(v27 + 1) = 0;
  *(v27 + 2) = 6;
  *(v27 + 82) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 56) = 0u;
  *(v27 + 40) = 0u;
  *(v27 + 24) = 0u;
  v28 = &v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = 6;
  *(v28 + 82) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 56) = 0u;
  *(v28 + 40) = 0u;
  *(v28 + 24) = 0u;
  v29 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_distanceLabel;
  *&v3[v29] = [objc_allocWithZone(type metadata accessor for FMBTDistanceView()) init];
  v30 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_titleLabel;
  *&v3[v30] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v31 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_nameLabel;
  *&v3[v31] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v32 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel;
  *&v3[v32] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v33 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel;
  *&v3[v33] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v34 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabelsStackView;
  *&v3[v34] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement] = 0;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimer] = 0;
  v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_isFirstAppear] = 1;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_minRestartDelayMilliseconds] = 0;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_maxRestartDelayMilliseconds] = 10000;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_restartBackOffIncrementMilliseconds] = 10;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayMilliseconds] = 0;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimerDuration] = 0x4023000000000000;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimerDurationSeconds] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer] = 0;
  v35 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData;
  *&v3[v35] = [objc_allocWithZone(MEMORY[0x277D6C4F0]) init];
  v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_firstMeasurement] = 1;
  v36 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_requiresAdditionalConnectionTime;
  v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_requiresAdditionalConnectionTime] = 0;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_searchingDelayWorkItem] = 0;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_discoveryToken] = a1;
  *&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_remoteInfo] = a2;
  v37 = a1;
  v3[v36] = [a2 connected] ^ 1;
  v39.receiver = v3;
  v39.super_class = type metadata accessor for FindingViewController();
  return objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
}

void specialized FindingViewController.init(nibName:bundle:)()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_dismissedHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView) = 0;
  v3 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_style;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v34[6] = xmmword_2804DCF50;
  v34[7] = unk_2804DCF60;
  v34[8] = xmmword_2804DCF70;
  v35 = qword_2804DCF80;
  v34[2] = xmmword_2804DCF10;
  v34[3] = unk_2804DCF20;
  v34[4] = xmmword_2804DCF30;
  v34[5] = unk_2804DCF40;
  v34[0] = static FMFindingViewStyle.default;
  v34[1] = *&qword_2804DCF00;
  memmove((v1 + v3), &static FMFindingViewStyle.default, 0x98uLL);
  v4 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *(v1 + v4) = swift_initStaticObject();
  v5 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_closeButton;
  v6 = type metadata accessor for FMR1GlyphButton();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style;
  outlined init with copy of FMFindingViewStyle(v34, v33);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = &v7[v8];
  v10 = qword_2804DCFA0;
  v11 = qword_2804DCFA8;
  v12 = qword_2804DCFC0;
  v13 = xmmword_2804DCFB0;
  *v9 = static FMR1GlyphButtonStyle.default;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v9 + 2) = v13;
  *(v9 + 6) = v12;
  v14 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  v15 = objc_opt_self();
  v16 = v11;
  *&v7[v14] = [v15 buttonWithType_];
  v17 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label;
  *&v7[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringDisplayLink] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringPerimiterAnimationSpring] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring] = 0;
  v18 = &v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_lastRenderTime];
  *v18 = 0;
  v18[8] = 1;
  v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_usesGlassBackground] = 0;
  v19 = &v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_legend];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_named];
  *v20 = 0;
  v20[1] = 0;
  v32.receiver = v7;
  v32.super_class = v6;
  v21 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  FMR1GlyphButton.setupSubviews()();
  FMR1GlyphButton.setupConstraints()();

  *(v1 + v5) = v21;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_pulseTimer) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_niSession) = 0;
  v22 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_hapticsController;
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for FMR1HapticsController()) init];
  v23 = v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 6;
  *(v23 + 82) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 24) = 0u;
  v24 = v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 6;
  *(v24 + 82) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 24) = 0u;
  v25 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_distanceLabel;
  *(v1 + v25) = [objc_allocWithZone(type metadata accessor for FMBTDistanceView()) init];
  v26 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_titleLabel;
  *(v1 + v26) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v27 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_nameLabel;
  *(v1 + v27) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v28 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel;
  *(v1 + v28) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v29 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel;
  *(v1 + v29) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v30 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabelsStackView;
  *(v1 + v30) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimer) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_isFirstAppear) = 1;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_minRestartDelayMilliseconds) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_maxRestartDelayMilliseconds) = 10000;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_restartBackOffIncrementMilliseconds) = 10;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayMilliseconds) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimerDuration) = 0x4023000000000000;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimerDurationSeconds) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer) = 0;
  v31 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData;
  *(v1 + v31) = [objc_allocWithZone(MEMORY[0x277D6C4F0]) init];
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_firstMeasurement) = 1;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_requiresAdditionalConnectionTime) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_searchingDelayWorkItem) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized FindingViewController.init(coder:)()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_dismissedHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController____lazy_storage___findingView) = 0;
  v3 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_style;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v34[6] = xmmword_2804DCF50;
  v34[7] = unk_2804DCF60;
  v34[8] = xmmword_2804DCF70;
  v35 = qword_2804DCF80;
  v34[2] = xmmword_2804DCF10;
  v34[3] = unk_2804DCF20;
  v34[4] = xmmword_2804DCF30;
  v34[5] = unk_2804DCF40;
  v34[0] = static FMFindingViewStyle.default;
  v34[1] = *&qword_2804DCF00;
  memmove((v1 + v3), &static FMFindingViewStyle.default, 0x98uLL);
  v4 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *(v1 + v4) = swift_initStaticObject();
  v5 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_closeButton;
  v6 = type metadata accessor for FMR1GlyphButton();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style;
  outlined init with copy of FMFindingViewStyle(v34, v33);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = &v7[v8];
  v10 = qword_2804DCFA0;
  v11 = qword_2804DCFA8;
  v12 = qword_2804DCFC0;
  v13 = xmmword_2804DCFB0;
  *v9 = static FMR1GlyphButtonStyle.default;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v9 + 2) = v13;
  *(v9 + 6) = v12;
  v14 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  v15 = objc_opt_self();
  v16 = v11;
  *&v7[v14] = [v15 buttonWithType_];
  v17 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label;
  *&v7[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringDisplayLink] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringPerimiterAnimationSpring] = 0;
  *&v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring] = 0;
  v18 = &v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_lastRenderTime];
  *v18 = 0;
  v18[8] = 1;
  v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_usesGlassBackground] = 0;
  v19 = &v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_legend];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v7[OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_named];
  *v20 = 0;
  v20[1] = 0;
  v32.receiver = v7;
  v32.super_class = v6;
  v21 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  FMR1GlyphButton.setupSubviews()();
  FMR1GlyphButton.setupConstraints()();

  *(v1 + v5) = v21;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_pulseTimer) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_niSession) = 0;
  v22 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_hapticsController;
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for FMR1HapticsController()) init];
  v23 = v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 6;
  *(v23 + 82) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 24) = 0u;
  v24 = v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_prevState;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 6;
  *(v24 + 82) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 24) = 0u;
  v25 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_distanceLabel;
  *(v1 + v25) = [objc_allocWithZone(type metadata accessor for FMBTDistanceView()) init];
  v26 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_titleLabel;
  *(v1 + v26) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v27 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_nameLabel;
  *(v1 + v27) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v28 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsTopLabel;
  *(v1 + v28) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v29 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabel;
  *(v1 + v29) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v30 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_instructionsLabelsStackView;
  *(v1 + v30) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimer) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_isFirstAppear) = 1;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_minRestartDelayMilliseconds) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_maxRestartDelayMilliseconds) = 10000;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_restartBackOffIncrementMilliseconds) = 10;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayMilliseconds) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimerDuration) = 0x4023000000000000;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimerDurationSeconds) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer) = 0;
  v31 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData;
  *(v1 + v31) = [objc_allocWithZone(MEMORY[0x277D6C4F0]) init];
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_firstMeasurement) = 1;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_requiresAdditionalConnectionTime) = 0;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_searchingDelayWorkItem) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized @nonobjc NIDevicePresenceConfiguration.init(discoveryToken:regions:preferredUpdateRate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for NIRegionPredicate);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11[0] = 0;
  v7 = [v3 initWithDiscoveryToken:a1 regions:isa preferredUpdateRate:a3 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

double _s10TVRemoteUI23FMPFSKPatternNodeConfigVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 161) = 0u;
  return result;
}

void specialized FindingViewController.sessionDidStartRunning(_:)()
{
  v1 = v0;
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.findingExperience);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, v4, "NISession started", v5, 2u);
    MEMORY[0x26D6B2710](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer;
  [*&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayResetTimer] invalidate];
  v7 = *&v1[v6];
  *&v1[v6] = 0;

  if (*&v1[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_sessionRestartDelayMilliseconds])
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(&v17 + 1) = partial apply for closure #1 in FindingViewController.sessionDidStartRunning(_:);
    *&v18 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    *&v17 = &block_descriptor_107;
    v10 = _Block_copy(&aBlock);
    v11 = v1;

    v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:20.0];
    _Block_release(v10);
    v13 = *&v1[v6];
    *&v1[v6] = v12;
  }

  aBlock = 0;
  v15 = 0;
  v16 = 7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  FindingViewController.updateState(to:)(&aBlock);
}

uint64_t specialized FindingViewController.session(_:didUpdate:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D6B1680](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(a1 + 32);
  }

  v10 = v9;
  [v9 boundedRegionRange];
  v12 = v11;

  v13 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement;
  *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_currentProximityMeasurement) = v12;
  v14 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_firstMeasurement;
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_firstMeasurement) == 1)
  {
    v15 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData;
    v16 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData);
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v8, v3);
    [v16 setFirstMeasurementTime_];

    [*(v1 + v15) setStartingProximityMeasurement_];
    *(v1 + v14) = 0;
  }

  v18 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 80);
  v23[4] = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 64);
  v23[5] = v18;
  v24 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 96);
  v19 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 16);
  v23[0] = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state);
  v23[1] = v19;
  v20 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 48);
  v23[2] = *(v1 + OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 32);
  v23[3] = v20;
  outlined init with copy of FMFindingState(v23, v22);
  FindingViewController.updateState(to:)(v23);
  return outlined destroy of FMFindingState(v23);
}

char *specialized FindingViewController.session(_:object:didUpdateRegion:previousRegion:)(void *a1, void *a2)
{
  v3 = v2;
  v102 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v99 = &v95 - v12;
  v13 = &v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state];
  v14 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 80];
  v147 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 64];
  v148 = v14;
  v149 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 96];
  v15 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 16];
  v143 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state];
  v144 = v15;
  v16 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 48];
  v145 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_state + 32];
  v146 = v16;
  v17 = v144;
  if ((v144 - 6) >= 4)
  {
    v24 = *(v13 + 1);
    v103 = *v13;
    v25 = *(v13 + 40);
    v26 = *(v13 + 72);
    v110 = *(v13 + 56);
    v111[0] = v26;
    *(v111 + 9) = *(v13 + 81);
    v108 = *(v13 + 24);
    v109 = v25;
    v27 = *(v13 + 5);
    v126 = *(v13 + 4);
    v127 = v27;
    v128 = *(v13 + 48);
    v122 = v103;
    v123 = v24;
    v28 = *(v13 + 3);
    v124 = *(v13 + 2);
    v125 = v28;
    outlined init with copy of Any?(&v122, &v113, &_s10TVRemoteUI20FMFindingMeasurementO11measurement_AA0C5TrendO5trendtMd);
    v141 = v103;
    *(&v142[1] + 8) = v109;
    *(&v142[2] + 8) = v110;
    *(&v142[3] + 8) = v111[0];
    *(&v142[4] + 1) = *(v111 + 9);
    *(v142 + 8) = v108;
    *&v142[0] = v17;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    outlined init with copy of FMFindingState(&v143, &v122);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v141, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
    v29 = 0;
    v100 = 0u;
    v101 = xmmword_26D0D38E0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    goto LABEL_17;
  }

  v141 = 0uLL;
  *(v142 + 8) = 0u;
  *(&v142[1] + 8) = 0u;
  *(&v142[2] + 8) = 0u;
  *(&v142[3] + 8) = 0u;
  v17 = 6;
  *(&v142[4] + 1) = 0u;
  *&v142[0] = 6;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v17 > 3)
  {
    if ((v17 - 4) < 2)
    {
      v18 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData];
      outlined init with copy of FMFindingState(&v143, &v122);
      v19 = v18;
      result = [v19 numberOfGotFartherRegionTransitions];
      if (!__OFADD__(result, 1))
      {
        [v19 setNumberOfGotFartherRegionTransitions_];

        v119 = v142[3];
        v120 = v142[4];
        v121 = v142[5];
        v115 = v141;
        v116 = v142[0];
        v22 = v142[1];
        v21 = v142[2];
        v23 = 2;
LABEL_14:
        LODWORD(v100) = v23;
        goto LABEL_15;
      }

LABEL_63:
      __break(1u);
      return result;
    }

    if (v17 == 6)
    {
LABEL_13:
      outlined init with copy of FMFindingState(&v143, &v122);
      v119 = v142[3];
      v120 = v142[4];
      v121 = v142[5];
      v115 = v141;
      v116 = v142[0];
      v22 = v142[1];
      v21 = v142[2];
      v23 = 3;
      goto LABEL_14;
    }

LABEL_11:
    outlined init with copy of FMFindingState(&v143, &v122);
    LODWORD(v100) = 0;
    v121 = v142[5];
    v119 = v142[3];
    v120 = v142[4];
    v115 = v141;
    v116 = v142[0];
    v22 = v142[1];
    v21 = v142[2];
LABEL_15:
    v117 = v22;
    v118 = v21;
    goto LABEL_19;
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  outlined init with copy of FMFindingState(&v143, &v122);
  outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v141, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
  v100 = v141;
  v101 = v142[0];
  v97 = v142[2];
  v98 = v142[1];
  v95 = v142[4];
  v96 = v142[3];
  v29 = v142[5];
LABEL_17:
  v30 = *&v2[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData];
  result = [v30 numberOfGotCloserRegionTransitions];
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_63;
  }

  [v30 setNumberOfGotCloserRegionTransitions_];

  v115 = v100;
  v116 = v101;
  v117 = v98;
  v118 = v97;
  v119 = v96;
  v120 = v95;
  LODWORD(v100) = 1;
  v121 = v29;
LABEL_19:
  *&v96 = v10;
  *&v97 = v6;
  *&v98 = v5;
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Logger.findingExperience);
  v33 = a2;
  v34 = v102;
  v35 = v102;
  *&v101 = v32;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v3;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412546;
    *(v39 + 4) = v35;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v33;
    *v40 = v102;
    v40[1] = a2;
    v41 = v35;
    v42 = v33;
    _os_log_impl(&dword_26CFEB000, v36, v37, "#nibtfinding didUpdateRegion region:%@ previousRegion:%@", v39, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x26D6B2710](v40, -1, -1);
    v43 = v39;
    v3 = v38;
    v34 = v102;
    MEMORY[0x26D6B2710](v43, -1, -1);
  }

  FMFindingSleepPreventer.disableSleepingForAWhileWhileFinding()();
  if (!v34)
  {
    goto LABEL_50;
  }

  v44 = [v35 name];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  if ((v45 != 7496038 || v47 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v45 == 1918985582 && v47 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v49 = v3;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v50, v51))
      {
        outlined destroy of FMFindingState(&v143);

        v3 = v49;
LABEL_48:
        v113 = 0uLL;
        v48 = 3;
        *v114 = 3;
        memset(&v114[8], 0, 73);
        v114[81] = v100;
        goto LABEL_54;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v122 = v53;
      *v52 = 136315138;
      if (v100 > 1)
      {
        if (v100 != 2)
        {
          v54 = 0xE600000000000000;
          v55 = 0x656C62617473;
          goto LABEL_47;
        }

        v55 = 0x6973616572636564;
      }

      else
      {
        if (!v100)
        {
          v54 = 0xE700000000000000;
          v55 = 0x6E776F6E6B6E75;
LABEL_47:
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v122);

          *(v52 + 4) = v66;
          _os_log_impl(&dword_26CFEB000, v50, v51, "new trend: %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x26D6B2710](v53, -1, -1);
          MEMORY[0x26D6B2710](v52, -1, -1);
          outlined destroy of FMFindingState(&v143);

          v3 = v49;
          goto LABEL_48;
        }

        v55 = 0x6973616572636E69;
      }

      v54 = 0xEA0000000000676ELL;
      goto LABEL_47;
    }

    if (v45 == 1701995880 && v47 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      outlined destroy of FMFindingState(&v143);
      v56 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData;
      if (([*&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_analyticsSessionData] gotToHere] & 1) == 0)
      {
        [*&v3[v56] setGotToHere_];
        v57 = *&v3[v56];
        v58 = v99;
        Date.init()();
        v59 = [*&v3[v56] sessionStartTime];
        v60 = v96;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSince(_:)();
        v62 = v61;
        v63 = *(v97 + 8);
        v64 = v60;
        v65 = v98;
        v63(v64, v98);
        v63(v58, v65);
        [v57 setTimeToHere_];
      }

      v113 = 0uLL;
      v48 = 4;
      goto LABEL_53;
    }

LABEL_50:
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_26CFEB000, v67, v68, "received nil region", v69, 2u);
      MEMORY[0x26D6B2710](v69, -1, -1);
    }

    outlined destroy of FMFindingState(&v143);

    v113 = 0uLL;
    v48 = 7;
    goto LABEL_53;
  }

  outlined destroy of FMFindingState(&v143);
  v113 = 0uLL;
  v48 = 2;
LABEL_53:
  *v114 = v48;
  memset(&v114[8], 0, 74);
LABEL_54:
  v126 = *&v114[48];
  v127 = *&v114[64];
  v128 = *&v114[80];
  v122 = v113;
  v123 = *v114;
  v124 = *&v114[16];
  v125 = *&v114[32];
  v70 = *(v13 + 1);
  v108 = *v13;
  v109 = v70;
  v71 = *(v13 + 2);
  v72 = *(v13 + 3);
  v73 = *(v13 + 4);
  v74 = *(v13 + 5);
  v112 = *(v13 + 48);
  v111[1] = v73;
  v111[2] = v74;
  v110 = v71;
  v111[0] = v72;
  if ((v109 - 6) >= 4)
  {
    v129 = *v13;
    v130 = v109;
    v132 = *(v13 + 40);
    v133 = *(v13 + 56);
    v134[0] = *(v13 + 72);
    *(v134 + 9) = *(v13 + 81);
    v131 = *(v13 + 24);
    if ((v48 - 6) >= 4)
    {
      v135 = v113;
      v136 = v48;
      v138 = *&v114[24];
      v139 = *&v114[40];
      v140[0] = *&v114[56];
      *(v140 + 9) = *&v114[65];
      v137 = *&v114[8];
      outlined init with copy of FMFindingState(&v108, &v103);
      outlined init with copy of FMFindingState(&v113, &v103);
      if (specialized static FMFindingMeasurement.== infix(_:_:)(&v129, &v135))
      {
        outlined destroy of FMFindingState(&v113);
        outlined destroy of FMFindingState(&v108);
      }

      else
      {
        outlined init with copy of FMFindingState(&v108, &v103);
        outlined init with copy of FMFindingState(&v113, &v103);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        outlined destroy of FMFindingState(&v113);
        outlined destroy of FMFindingState(&v108);
        if (os_log_type_enabled(v75, v76))
        {
          v77 = v3;
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *&v103 = v79;
          *v78 = 136315394;
          v80 = FMFindingMeasurement.description.getter();
          v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v103);

          *(v78 + 4) = v82;
          *(v78 + 12) = 2080;
          v83 = FMFindingMeasurement.description.getter();
          v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v103);

          *(v78 + 14) = v85;
          _os_log_impl(&dword_26CFEB000, v75, v76, "Measurement bucket changed to:%s from previous state:%s", v78, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6B2710](v79, -1, -1);
          v86 = v78;
          v3 = v77;
          MEMORY[0x26D6B2710](v86, -1, -1);
        }

        v87 = OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimer;
        [*&v3[OBJC_IVAR____TtC10TVRemoteUI21FindingViewController_trendTimer] invalidate];
        v88 = *&v3[v87];
        *&v3[v87] = 0;

        v89 = objc_opt_self();
        v90 = swift_allocObject();
        *(v90 + 16) = v3;
        v106 = partial apply for closure #1 in FindingViewController.session(_:object:didUpdateRegion:previousRegion:);
        v107 = v90;
        *&v103 = MEMORY[0x277D85DD0];
        *(&v103 + 1) = 1107296256;
        v104 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
        v105 = &block_descriptor_101;
        v91 = _Block_copy(&v103);
        v92 = v3;

        v93 = [v89 scheduledTimerWithTimeInterval:0 repeats:v91 block:9.5];
        outlined destroy of FMFindingState(&v108);
        outlined destroy of FMFindingState(&v113);
        _Block_release(v91);
        v94 = *&v3[v87];
        *&v3[v87] = v93;
      }
    }
  }

  FindingViewController.updateState(to:)(&v122);
  outlined destroy of (FMFindingDistance?, FMFindingDistance?)(&v115, &_s10TVRemoteUI20FMFindingMeasurementOSgMd);
  return outlined destroy of FMFindingState(&v113);
}

uint64_t specialized FindingViewController.session(_:didInvalidateWith:)(void *a1, const char *a2)
{
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.findingExperience);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26CFEB000, v6, v7, a2, v8, 0xCu);
    outlined destroy of (FMFindingDistance?, FMFindingDistance?)(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x26D6B2710](v9, -1, -1);
    MEMORY[0x26D6B2710](v8, -1, -1);
  }

  return FindingViewController.restartSessionOnError()();
}

void specialized FindingViewController.sessionWasSuspended(_:)()
{
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.findingExperience);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_26CFEB000, oslog, v1, "NISession suspended", v2, 2u);
    MEMORY[0x26D6B2710](v2, -1, -1);
  }
}

uint64_t specialized FindingViewController.sessionSuspensionEnded(_:)()
{
  if (one-time initialization token for findingExperience != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.findingExperience);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26CFEB000, v1, v2, "NISession suspension ended", v3, 2u);
    MEMORY[0x26D6B2710](v3, -1, -1);
  }

  return FindingViewController.restartSessionOnError()();
}

void outlined consume of FMFindingState(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 - 6 >= 4)
  {
    outlined consume of FMFindingMeasurement(a1, a2, a3, a4);
  }
}

void outlined consume of FMFindingMeasurement(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 - 2 >= 4)
  {
    outlined consume of FMFindingDistance?(a1, a2, a3, a4);
  }
}

void outlined consume of FMFindingDistance?(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 != 1)
  {
  }
}

UIBezierPath __swiftcall UIBezierPath.init(fmpfRectangleCentered:size:)(CGPoint fmpfRectangleCentered, CGSize size)
{
  height = size.height;
  width = size.width;
  y = fmpfRectangleCentered.y;
  x = fmpfRectangleCentered.x;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = width * 0.5;
  v8 = x - width * 0.5;
  v9 = height * 0.5;
  v10 = height * 0.5 + y;
  v11 = v7 + x;
  v12 = y - v9;
  v13 = v6;
  [v13 moveToPoint_];
  [v13 addLineToPoint_];
  [v13 addLineToPoint_];
  [v13 addLineToPoint_];
  [v13 addLineToPoint_];
  [v13 closePath];

  return v13;
}

id FMPFSKBTRangingNode.init()()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDiskNode;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangeDiskNode()) init];
  v2 = OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDotNode;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangeDotNode()) init];
  v3 = OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_levelRingsNode;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for FMPFSKBTLevelsNode()) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMPFSKBTRangingNode();
  v4 = objc_msgSendSuper2(&v6, sel_init);
  FMPFSKBTRangingNode.setupLayout()();

  return v4;
}

void FMPFSKBTRangingNode.setupLayout()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D0D4110;
  v2 = *&v0[OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDiskNode];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_levelRingsNode];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDotNode];
  *(inited + 48) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D6B1680](v8, inited);
      goto LABEL_5;
    }

    if (v8 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v9 = *(inited + 8 * v8 + 32);
LABEL_5:
    v10 = v9;
    ++v8;
    [v0 addChild_];
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26D0D2860;
    v12 = objc_opt_self();
    v13 = [objc_opt_self() rangeWithConstantValue_];
    v14 = [v12 distance:v13 toNode:v0];

    *(v11 + 32) = v14;
    type metadata accessor for SKConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setConstraints_];

    if (v8 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
}

void FMPFSKBTRangingNode.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_levelRingsNode);
}

id FMPFSKBTRangingNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFSKBTRangingNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6B1680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for SKConstraint()
{
  result = lazy cache variable for type metadata for SKConstraint;
  if (!lazy cache variable for type metadata for SKConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKConstraint);
  }

  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6B1680](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void specialized FMPFSKBTRangingNode.init(coder:)()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDiskNode;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangeDiskNode()) init];
  v2 = OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_rangeDotNode;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangeDotNode()) init];
  v3 = OBJC_IVAR____TtC10TVRemoteUI19FMPFSKBTRangingNode_levelRingsNode;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for FMPFSKBTLevelsNode()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t + infix(_:_:)()
{
  return MEMORY[0x2821FF138]();
}

{
  return MEMORY[0x2821FF140]();
}

{
  return MEMORY[0x2821FF150]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}