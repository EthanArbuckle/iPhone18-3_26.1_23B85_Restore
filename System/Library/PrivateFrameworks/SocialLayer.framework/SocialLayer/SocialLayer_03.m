double protocol witness for HighlightPillMetricVariant.labelHorizontalMargins.getter in conformance iOSPillMetric()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = [*v0 preferredContentSizeCategory];
  if ((v3 - 7) < 2)
  {
    if (v2 <= 280.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v3 - 10) < 2)
  {
    if (v2 < 343.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v3 != 9 || v2 > 260.0)
  {
LABEL_12:
    v5 = [v1 preferredContentSizeCategory];
    if (v5 <= 0xB)
    {
      v6 = qword_23183F5C8[v5];
      v7 = qword_23183F628[v5];
    }
  }

  return 0.0;
}

double protocol witness for HighlightPillMetricVariant.avatarDiameter.getter in conformance iOSPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  result = 16.0;
  if (v1 <= 0xB)
  {
    return dbl_23183F688[v1];
  }

  return result;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance iOSPillMetric()
{
  v1 = *v0;
  v2 = [*v0 preferredContentSizeCategory];
  v3 = 12.0;
  if (v2 <= 0xB)
  {
    v3 = dbl_23183F6E8[v2];
  }

  v4 = [v1 displayScale];

  return SLRoundToScale(v3, v4);
}

double protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance iOSPillMetric()
{
  v1 = *(v0 + 16);
  specialized HighlightPillMetricVariant.avatarContainerWidth.getter(*v0, *(v0 + 8), *(v0 + 24));
  return result;
}

double protocol witness for HighlightPillMetricVariant.avatarOverlapKnockoutWidth.getter in conformance VisionPillMetric()
{
  v1 = *(v0 + 24);
  v2 = [*v0 preferredContentSizeCategory];
  v3 = 3;
  if ((v2 - 9) < 3)
  {
    v3 = 1;
  }

  if (v1 < v3)
  {
    v3 = v1;
  }

  result = 0.0;
  if (v3 > 1)
  {
    return 1.0;
  }

  return result;
}

BOOL protocol witness for HighlightPillMetricVariant.useDoubleLineLabel.getter in conformance iOSPillMetric()
{
  v1 = *(v0 + 16);
  v2 = [*v0 preferredContentSizeCategory];
  v3 = v1 <= 260.0;
  if (v2 != 9)
  {
    v3 = 0;
  }

  if ((v2 - 10) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 < 343.0;
  }

  if ((v2 - 7) >= 2)
  {
    return v4;
  }

  else
  {
    return v1 <= 280.0;
  }
}

double TVPillMetrics.avatarOverlapKnockoutWidth.getter(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (a2 > 1)
  {
    return 2.0;
  }

  return result;
}

uint64_t protocol witness for HighlightPillMetricVariant.finalImageCount.getter in conformance TVPillMetrics()
{
  if (*(v0 + 16) >= 3)
  {
    return 3;
  }

  else
  {
    return *(v0 + 16);
  }
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance TVPillMetrics()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(24.0, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance TVPillMetrics()
{
  v1 = *(v0 + 16);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = SLRoundToScale(24.0, [*v0 displayScale]) * v3 + 32.0;
  }
}

double protocol witness for HighlightPillMetricVariant.avatarOverlapKnockoutWidth.getter in conformance TVPillMetrics()
{
  result = 0.0;
  if (*(v0 + 16) > 1)
  {
    return 2.0;
  }

  return result;
}

CTFontRef protocol witness for HighlightPillMetricVariant.baseFont.getter in conformance TVPillMetrics()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return specialized HighlightPillMetricVariant.baseFont.getter(*v0);
}

CTFontRef protocol witness for HighlightPillMetricVariant.senderFont.getter in conformance TVPillMetrics()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return specialized HighlightPillMetricVariant.senderFont.getter(*v0);
}

uint64_t protocol witness for HighlightPillMetricVariant.chevronFontDescriptor.getter in conformance TVPillMetrics()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return specialized HighlightPillMetricVariant.chevronFontDescriptor.getter(*v0);
}

uint64_t MacPillMetric.maxNameCount.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

double MacPillMetric.avatarOverlapKnockoutWidth.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    return 0.0;
  }

  v5 = [a1 displayScale];

  return SLRoundToScale(0.75, v5);
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance MacPillMetric()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(9.0, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance MacPillMetric()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = SLRoundToScale(9.0, [*v0 displayScale]) * v3 + 12.0;
  }
}

double protocol witness for HighlightPillMetricVariant.avatarOverlapKnockoutWidth.getter in conformance MacPillMetric()
{
  if (*(v0 + 24) < 2)
  {
    return 0.0;
  }

  v1 = [*v0 displayScale];

  return SLRoundToScale(0.75, v1);
}

double MacSafariBannerPillMetrics.avatarOverlapKnockoutWidth.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  if (a3 > 1)
  {
    return 1.0;
  }

  return result;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance MacSafariBannerPillMetrics()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(12.0, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance MacSafariBannerPillMetrics()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = SLRoundToScale(12.0, [*v0 displayScale]) * v3 + 16.0;
  }
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance iOSSafariBannerPillMetrics()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(26.25, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance iOSSafariBannerPillMetrics()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = SLRoundToScale(26.25, [*v0 displayScale]) * v3 + 35.0;
  }
}

id PillMetrics.__allocating_init(slotStyle:tag:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSlotStyle:a1 tag:a2 variant:{objc_msgSend(a2, sel_variant)}];

  return v5;
}

id PillMetrics.init(slotStyle:tag:)(void *a1, id a2)
{
  v5 = [v2 initWithSlotStyle:a1 tag:a2 variant:{objc_msgSend(a2, sel_variant)}];

  return v5;
}

uint64_t PillMetrics.init(slotStyle:tag:variant:)(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics];
  _s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOi0_(v38);
  v8 = v38[5];
  *(v7 + 4) = v38[4];
  *(v7 + 5) = v8;
  v9 = v38[7];
  *(v7 + 6) = v38[6];
  *(v7 + 7) = v9;
  v10 = v38[1];
  *v7 = v38[0];
  *(v7 + 1) = v10;
  v11 = v38[3];
  *(v7 + 2) = v38[2];
  *(v7 + 3) = v11;
  switch(a3)
  {
    case 0:
      v12 = a1;
      [a2 maxWidth];
      v14 = v13;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for iOSPillMetric;
      v16[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      v19 = a1;
      [a2 maxWidth];
      v14 = v26;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for iOSPillMetric;
      v21[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      v12 = a1;
      [a2 maxWidth];
      v14 = v23;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for MacPillMetric;
      v16[4] = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      v19 = a1;
      [a2 maxWidth];
      v14 = v24;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for MacPillMetric;
      v21[4] = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      v12 = a1;
      [a2 maxWidth];
      v14 = v18;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for MacSafariBannerPillMetrics;
      v16[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      v19 = a1;
      [a2 maxWidth];
      v14 = v27;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for MacSafariBannerPillMetrics;
      v21[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      v12 = a1;
      [a2 maxWidth];
      v14 = v28;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for iOSSafariBannerPillMetrics;
      v16[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      v19 = a1;
      [a2 maxWidth];
      v14 = v25;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for iOSSafariBannerPillMetrics;
      v21[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      v32 = a1;
      [a2 maxWidth];
      v34 = v33;
      v35 = [a2 maxPossibleImageCount];
      v36 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      *v36 = v32;
      *(v36 + 1) = v34;
      *(v36 + 3) = &type metadata for TVPillMetrics;
      *(v36 + 4) = &protocol witness table for TVPillMetrics;
      *(v36 + 2) = v35;
      goto LABEL_17;
    case 9:
      v12 = a1;
      [a2 maxWidth];
      v14 = v22;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for VisionPillMetric;
      v16[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      v19 = a1;
      [a2 maxWidth];
      v14 = v30;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for VisionPillMetric;
      v21[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      v12 = a1;
      [a2 maxWidth];
      v14 = v17;
      v15 = [a2 maxPossibleImageCount];
      v16 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v16[3] = &type metadata for VisionSafariBannerPillMetric;
      v16[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v29 = swift_allocObject();
      *v16 = v29;
      *(v29 + 16) = v12;
      *(v29 + 24) = 0;
      goto LABEL_16;
    case 12:
      v19 = a1;
      [a2 maxWidth];
      v14 = v20;
      v15 = [a2 maxPossibleImageCount];
      v21 = &v3[OBJC_IVAR___SLHighlightPillMetrics_metrics];
      v21[3] = &type metadata for VisionSafariBannerPillMetric;
      v21[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v29 = swift_allocObject();
      *v21 = v29;
      *(v29 + 16) = v19;
      *(v29 + 24) = 1;
LABEL_16:
      *(v29 + 32) = v14;
      *(v29 + 40) = v15;
LABEL_17:
      *&v3[OBJC_IVAR___SLHighlightPillMetrics_style] = a1;
      *&v3[OBJC_IVAR___SLHighlightPillMetrics_tag] = a2;
      *&v3[OBJC_IVAR___SLHighlightPillMetrics_variant] = a3;
      v37.receiver = v3;
      v37.super_class = type metadata accessor for PillMetrics();
      result = objc_msgSendSuper2(&v37, sel_init);
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t static PillMetrics.truncatedLine(from:maxWidth:)(const __CFAttributedString *a1)
{
  v1 = CTLineCreateWithAttributedString(a1);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

  return TruncatedLineWithTokenHandler;
}

__n128 PillMetrics.pillMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics];
  v4 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 80];
  v42 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 64];
  v43 = v4;
  v5 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 112];
  v44 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 96];
  v45 = v5;
  v6 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 16];
  v39[0] = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics];
  v39[1] = v6;
  v7 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 48];
  v40 = *&v1[OBJC_IVAR___SLHighlightPillMetrics____lazy_storage___pillMetrics + 32];
  v41 = v7;
  *&v46[32] = v40;
  *&v46[48] = v7;
  *v46 = v39[0];
  *&v46[16] = v6;
  *&v46[96] = v44;
  *&v46[112] = v5;
  *&v46[64] = v42;
  *&v46[80] = v4;
  if (_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOg(v46) == 1)
  {
    closure #1 in PillMetrics.pillMetrics.getter(v1, v38);
    v33 = *&v38[64];
    v34 = *&v38[80];
    v35 = *&v38[96];
    v36 = *&v38[112];
    v29 = *v38;
    v30 = *&v38[16];
    v31 = *&v38[32];
    v32 = *&v38[48];
    destructiveProjectEnumData for SecKeyRef.SecKeyConversionErrors(&v29);
    v8 = *(v3 + 5);
    v37[4] = *(v3 + 4);
    v37[5] = v8;
    v9 = *(v3 + 7);
    v37[6] = *(v3 + 6);
    v37[7] = v9;
    v10 = *(v3 + 1);
    v37[0] = *v3;
    v37[1] = v10;
    v11 = *(v3 + 3);
    v37[2] = *(v3 + 2);
    v37[3] = v11;
    v12 = v29;
    v13 = v30;
    v14 = v32;
    *(v3 + 2) = v31;
    *(v3 + 3) = v14;
    *v3 = v12;
    *(v3 + 1) = v13;
    v15 = v33;
    v16 = v34;
    v17 = v36;
    *(v3 + 6) = v35;
    *(v3 + 7) = v17;
    *(v3 + 4) = v15;
    *(v3 + 5) = v16;
    outlined init with copy of SLDHighlightPillMetrics(v38, v28);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v37, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMd, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMR);
    v18 = *&v38[120];
    v26 = *&v38[104];
    v27 = *&v38[88];
    v24 = *&v38[56];
    v25 = *&v38[72];
    v22 = *&v38[8];
    v23 = *&v38[40];
    v21 = *&v38[24];
    v19 = v38[0];
  }

  else
  {
    v18 = *&v46[120];
    v26 = *&v46[104];
    v27 = *&v46[88];
    v24 = *&v46[56];
    v25 = *&v46[72];
    v22 = *&v46[8];
    v23 = *&v46[40];
    v21 = *&v46[24];
    v19 = v46[0];
  }

  outlined init with copy of (NSAttributedStringKey, Any)(v39, v37, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMd, &_s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgMR);
  *a1 = v19;
  *(a1 + 8) = v22;
  *(a1 + 24) = v21;
  *(a1 + 40) = v23;
  *(a1 + 56) = v24;
  *(a1 + 72) = v25;
  result = v26;
  *(a1 + 88) = v27;
  *(a1 + 104) = v26;
  *(a1 + 120) = v18;
  return result;
}

void closure #1 in PillMetrics.pillMetrics.getter(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OBJC_IVAR___SLHighlightPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(&a1[OBJC_IVAR___SLHighlightPillMetrics_metrics], &v201);
  v7 = v204;
  v8 = v205;
  __swift_project_boxed_opaque_existential_1(&v201, v204);
  v193 = (*(*&v8 + 168))(v7, COERCE_DOUBLE(*&v8));
  v194 = v9;
  v192 = v10;
  v184 = v11;
  v12 = OBJC_IVAR___SLHighlightPillMetrics_tag;
  [*&a1[OBJC_IVAR___SLHighlightPillMetrics_tag] maxWidth];
  v189 = v13;
  [a1 avatarKnockoutWidth];
  v181 = v14;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, v198);
  v15 = v199;
  v16 = v200;
  __swift_project_boxed_opaque_existential_1(v198, v199);
  v17 = (*(v16 + 88))(v15, v16);
  v19 = v18;
  v195 = v20;
  v22 = v21;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, v217);
  v23 = v218;
  v24 = v219;
  __swift_project_boxed_opaque_existential_1(v217, v218);
  v25 = (*(v24 + 192))(v23, v24);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_0(v217);
  __swift_destroy_boxed_opaque_existential_0(v198);
  __swift_destroy_boxed_opaque_existential_0(&v201);
  [a1 specMaxWidth];
  v29 = v28;
  [*&a1[v12] maxWidth];
  v31 = v30;
  [a1 avatarContainerWidth];
  v33 = v32;
  [*&a1[v12] maxWidth];
  v180 = v34;
  v182 = v25;
  v183 = v27;
  if (v34 <= 0.0)
  {
    LOBYTE(v201) = 0;
    v202 = v193;
    v203 = v194;
    v74 = v184;
    v204 = v192;
    v205 = v184;
    v206 = v189;
    v208 = 0;
    v209 = 0;
    v207 = 0.0;
    v210 = v181;
    v211 = v17;
    v212 = v19;
    v213 = v195;
    v214 = v22;
    v215 = v25;
    v216 = v27;
    outlined init with copy of SLDHighlightPillMetrics(&v201, v198);
    v75 = 0;
    TruncatedLineWithTokenHandler = 0;
    v73 = 0;
    v179 = 0.0;
    v76 = v181;
    v77 = v17;
    v78 = v19;
    v79 = v195;
    v80 = v25;
LABEL_57:
    v186 = v22;
    v188 = v78;
    v197 = v79;
    LOBYTE(v201) = v75;
    *(&v201 + 1) = v217[0];
    HIDWORD(v201) = *(v217 + 3);
    v202 = v193;
    v203 = v194;
    v204 = v192;
    v205 = v74;
    v206 = v189;
    v207 = v179;
    v208 = TruncatedLineWithTokenHandler;
    v209 = v73;
    v210 = v76;
    v211 = v77;
    v212 = v78;
    v213 = v79;
    v214 = v22;
    v215 = v80;
    v216 = v27;
    v169 = v74;
    v170 = v77;
    v171 = v76;
    outlined destroy of SLDHighlightPillMetrics(&v201);
    *a2 = v180 > 0.0;
    *(a2 + 8) = v193;
    *(a2 + 16) = v194;
    *(a2 + 24) = v192;
    *(a2 + 32) = v169;
    *(a2 + 40) = v189;
    *(a2 + 48) = v179;
    *(a2 + 56) = TruncatedLineWithTokenHandler;
    *(a2 + 64) = v73;
    *(a2 + 72) = v171;
    *(a2 + 80) = v170;
    *(a2 + 88) = v188;
    *(a2 + 96) = v197;
    *(a2 + 104) = v186;
    *(a2 + 112) = v182;
    *(a2 + 120) = v183;
    return;
  }

  v35 = v184;
  v190 = v17;
  v36 = v184 + v25 + v22 + v19 + v194 + v33;
  if (v31 >= v29)
  {
    v37 = v29;
  }

  else
  {
    v37 = v31;
  }

  v38 = v37 - v36;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
  v39 = v204;
  v40 = v205;
  __swift_project_boxed_opaque_existential_1(&v201, v204);
  (*(*&v40 + 128))(v39, COERCE_DOUBLE(*&v40));
  __swift_destroy_boxed_opaque_existential_0(&v201);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
  v41 = v204;
  v42 = v205;
  __swift_project_boxed_opaque_existential_1(&v201, v204);
  v43 = (*(*&v42 + 128))(v41, COERCE_DOUBLE(*&v42));
  __swift_destroy_boxed_opaque_existential_0(&v201);
  v178 = v36;
  if ((v43 & 1) == 0)
  {
    v81 = v19;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
    v82 = v204;
    v83 = v205;
    __swift_project_boxed_opaque_existential_1(&v201, v204);
    v84 = (*(*&v83 + 144))(v82, COERCE_DOUBLE(*&v83));
    __swift_destroy_boxed_opaque_existential_0(&v201);
    v85 = *&a1[v12];
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
    if (v84)
    {
      v86 = v85;
      v87 = specialized static PillMetrics.localizedSenderOrNumContactsString(for:metrics:)(v86, &v201);
      v89 = v88;

      __swift_destroy_boxed_opaque_existential_0(&v201);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
      v90 = specialized static PillMetrics.senderNameAttributedString(for:metrics:)(v87, v89, &v201);
    }

    else
    {
      v110 = v204;
      v111 = v205;
      __swift_project_boxed_opaque_existential_1(&v201, v204);
      v112 = v6;
      v113 = *(*&v111 + 16);
      v114 = v85;
      LOBYTE(v110) = v113(v110, *&v111);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(v112 + a1, v198);
      v115 = v199;
      v116 = v200;
      __swift_project_boxed_opaque_existential_1(v198, v199);
      (*(v116 + 40))(v115, v116);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(v112 + a1, v217);
      v117 = v218;
      v118 = v219;
      __swift_project_boxed_opaque_existential_1(v217, v218);
      v119 = (*(v118 + 24))(v117, v118);
      v120 = [v119 localization];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = specialized static PillMetrics.localizedFromSenderAttributedString(for:prefix:multiline:maxSenderNames:localization:)(v114, v110 & 1);
      v123 = v122;
      v125 = v124;
      v6 = v112;

      __swift_destroy_boxed_opaque_existential_0(v217);
      __swift_destroy_boxed_opaque_existential_0(v198);
      __swift_destroy_boxed_opaque_existential_0(&v201);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(v112 + a1, &v201);
      v126 = v121;

      specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v126, v123, v125, &v201);
      v90 = v127;

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    __swift_destroy_boxed_opaque_existential_0(&v201);
    v128 = v182;
    v185 = v22;
    v187 = v81;
    v129 = v90;
    v130 = CTLineCreateWithAttributedString(v129);
    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

    if (TruncatedLineWithTokenHandler)
    {
      BoundsWithOptions = CTLineGetBoundsWithOptions(TruncatedLineWithTokenHandler, 0);
      width = BoundsWithOptions.size.width;
      height = BoundsWithOptions.size.height;
    }

    else
    {
      width = 0.0;
      height = 0.0;
    }

    v17 = v194;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
    v133 = v204;
    v134 = v205;
    __swift_project_boxed_opaque_existential_1(&v201, v204);
    v135 = height + (*(*&v134 + 168))(v133, COERCE_DOUBLE(*&v134));
    __swift_destroy_boxed_opaque_existential_0(&v201);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
    v136 = v204;
    v137 = v205;
    __swift_project_boxed_opaque_existential_1(&v201, v204);
    (*(*&v137 + 168))(v136, COERCE_DOUBLE(*&v137));
    v139 = v138;

    v140 = v135 + v139;
    __swift_destroy_boxed_opaque_existential_0(&v201);
    v73 = 0;
    v55 = v181;
    v67 = v190;
    v141 = v195;
    v35 = v183;
    v142 = v184;
    goto LABEL_56;
  }

  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
  v44 = v204;
  v45 = v205;
  __swift_project_boxed_opaque_existential_1(&v201, v204);
  v46 = (*(*&v45 + 88))(v44, COERCE_DOUBLE(*&v45));
  v187 = v47;
  v191 = v46;
  v196 = v48;
  v50 = v49;
  __swift_destroy_boxed_opaque_existential_0(&v201);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
  v51 = v204;
  v52 = v205;
  __swift_project_boxed_opaque_existential_1(&v201, v204);
  v53 = (*(*&v52 + 144))(v51, COERCE_DOUBLE(*&v52));
  __swift_destroy_boxed_opaque_existential_0(&v201);
  v54 = *&a1[v12];
  v55 = v181;
  v185 = v50;
  v56 = v6 + a1;
  if ((v53 & 1) == 0)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v56, &v201);
    v91 = v204;
    v92 = v205;
    __swift_project_boxed_opaque_existential_1(&v201, v204);
    v177 = v6;
    v93 = *(*&v92 + 16);
    v94 = v54;
    LOBYTE(v91) = v93(v91, *&v92);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, v198);
    v95 = v199;
    v96 = v200;
    __swift_project_boxed_opaque_existential_1(v198, v199);
    (*(v96 + 40))(v95, v96);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v177 + a1, v217);
    v97 = v218;
    v98 = v219;
    __swift_project_boxed_opaque_existential_1(v217, v218);
    v99 = (*(v98 + 24))(v97, v98);
    v100 = [v99 localization];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = specialized static PillMetrics.localizedFromSenderAttributedString(for:prefix:multiline:maxSenderNames:localization:)(v94, v91 & 1);
    v61 = v102;
    v104 = v103;

    __swift_destroy_boxed_opaque_existential_0(v217);
    __swift_destroy_boxed_opaque_existential_0(v198);
    __swift_destroy_boxed_opaque_existential_0(&v201);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v177 + a1, &v201);
    v6 = v101;

    specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v6, v61, v104, &v201);
    v106 = v105;

    __swift_destroy_boxed_opaque_existential_0(&v201);
    v174 = v106;
    attributedStringSplitByLineBreak(inString:)(v106);
    v108 = v107;
    if (v107 >> 62)
    {
      v65 = __CocoaSet.count.getter();
    }

    else
    {
      v65 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v175 = v6;
    if (v65 < 1)
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
      AttributedString.init(stringLiteral:)();
      v176 = NSAttributedString.init(_:)();
    }

    else if ((v108 & 0xC000000000000001) != 0)
    {
      v176 = MEMORY[0x231934AB0](0, v108);
      if (v65 != 1)
      {
        v109 = MEMORY[0x231934AB0](1, v108);
        goto LABEL_37;
      }
    }

    else
    {
      if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_62;
      }

      v176 = *(v108 + 32);
      if (v65 != 1)
      {
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v109 = *(v108 + 40);
LABEL_37:
        v144 = v109;
        v145 = CTLineCreateWithAttributedString(v176);
        TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

        v146 = TruncatedLineWithTokenHandler;
        v147 = CTLineCreateWithAttributedString(v144);
        v73 = CTLineCreateTruncatedLineWithTokenHandler();

        v148 = v73;
        v149 = 0.0;
        x = 0.0;
        y = 0.0;
        width = 0.0;
        v152 = 0.0;
        if (TruncatedLineWithTokenHandler)
        {

          v221 = CTLineGetBoundsWithOptions(v146, 0);
          x = v221.origin.x;
          y = v221.origin.y;
          width = v221.size.width;
          v152 = v221.size.height;
        }

        v153 = 0.0;
        v154 = 0.0;
        v155 = 0.0;
        if (v73)
        {

          v222 = CTLineGetBoundsWithOptions(v148, 0);
          v149 = v222.origin.x;
          v153 = v222.origin.y;
          v154 = v222.size.width;
          v155 = v222.size.height;
        }

        v223.origin.x = x;
        v223.origin.y = y;
        v223.size.width = width;
        v223.size.height = v152;
        v156 = CGRectGetHeight(v223);
        v224.origin.x = v149;
        v224.origin.y = v153;
        v224.size.width = v154;
        v224.size.height = v155;
        v157 = CGRectGetHeight(v224);

        v158 = v156 + v157;
        v17 = v194;
        v55 = v181;
        v67 = v191;
        v35 = v183;
        v6 = v177;
        goto LABEL_53;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v109 = NSAttributedString.init(_:)();
    goto LABEL_37;
  }

  outlined init with copy of HighlightDisambiguationPillMetricVariant(v56, &v201);
  v57 = v54;
  v58 = specialized static PillMetrics.localizedSenderOrNumContactsString(for:metrics:)(v57, &v201);
  v60 = v59;

  __swift_destroy_boxed_opaque_existential_0(&v201);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
  v61 = specialized static PillMetrics.senderNameAttributedString(for:metrics:)(v58, v60, &v201);
  __swift_destroy_boxed_opaque_existential_0(&v201);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
  v62 = v204;
  v63 = v205;
  __swift_project_boxed_opaque_existential_1(&v201, v204);
  LOBYTE(v57) = (*(*&v63 + 136))(v62, COERCE_DOUBLE(*&v63));
  __swift_destroy_boxed_opaque_existential_0(&v201);
  v35 = v183;
  v17 = v194;
  if ((v57 & 1) == 0)
  {
    v143 = CTLineCreateWithAttributedString(v61);
    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

    if (!TruncatedLineWithTokenHandler)
    {

      v73 = 0;
      v154 = 0.0;
      width = 0.0;
      v67 = v191;
LABEL_52:
      outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
      specialized static PillMetrics.doubleLineFontHeight(for:)(&v201);
      v158 = v160;

      __swift_destroy_boxed_opaque_existential_0(&v201);
LABEL_53:
      if (width <= v154)
      {
        width = v154;
      }

      outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
      v161 = v204;
      v162 = v205;
      __swift_project_boxed_opaque_existential_1(&v201, v204);
      v163 = v158 + (*(*&v162 + 168))(v161, COERCE_DOUBLE(*&v162));
      __swift_destroy_boxed_opaque_existential_0(&v201);
      outlined init with copy of HighlightDisambiguationPillMetricVariant(v6 + a1, &v201);
      v164 = v204;
      v165 = v205;
      __swift_project_boxed_opaque_existential_1(&v201, v204);
      (*(*&v165 + 168))(v164, COERCE_DOUBLE(*&v165));
      v140 = v163 + v166;
      __swift_destroy_boxed_opaque_existential_0(&v201);
      v142 = v184;
      v128 = v182;
      v141 = v196;
LABEL_56:
      v75 = 1;
      LOBYTE(v201) = 1;
      *(&v201 + 1) = v217[0];
      HIDWORD(v201) = *(v217 + 3);
      v202 = v193;
      v203 = v17;
      v204 = v192;
      v205 = v142;
      v189 = v178 + width;
      v206 = v178 + width;
      v207 = v140;
      v179 = v140;
      v208 = TruncatedLineWithTokenHandler;
      v209 = v73;
      v210 = v55;
      v211 = v67;
      v22 = v185;
      v212 = v187;
      v213 = v141;
      v214 = v185;
      v215 = v128;
      v216 = v35;
      v74 = v142;
      v167 = v35;
      v168 = v141;
      outlined init with copy of SLDHighlightPillMetrics(&v201, v198);
      v76 = v55;
      v77 = v67;
      v78 = v187;
      v79 = v168;
      v27 = v167;
      v80 = v128;
      goto LABEL_57;
    }

    v73 = 0;
    v67 = v191;
    goto LABEL_46;
  }

  v64 = *&a1[OBJC_IVAR___SLHighlightPillMetrics_style];
  v65 = specialized static PillMetrics.senderLabelMultilineWithLineWrap(fullString:maxLineWidth:style:)(v61, v64, v38);

  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_62:
  v66 = __CocoaSet.count.getter();
LABEL_10:
  v67 = v191;
  if (v66 < 1)
  {
    TruncatedLineWithTokenHandler = 0;
    goto LABEL_43;
  }

  if ((v65 & 0xC000000000000001) != 0)
  {
    v172 = MEMORY[0x231934AB0](0, v65);
    TruncatedLineWithTokenHandler = v172;
    if (v66 != 1)
    {
      v173 = v172;
      v72 = MEMORY[0x231934AB0](1, v65);
      goto LABEL_16;
    }

LABEL_43:
    v159 = TruncatedLineWithTokenHandler;

    v73 = 0;
    goto LABEL_44;
  }

  if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_66;
  }

  TruncatedLineWithTokenHandler = *(v65 + 32);
  v69 = TruncatedLineWithTokenHandler;
  if (v66 == 1)
  {
    goto LABEL_43;
  }

  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v70 = *(v65 + 40);
    v71 = v69;
    v72 = v70;
LABEL_16:
    v73 = v72;

LABEL_44:
    if (!TruncatedLineWithTokenHandler)
    {
      width = 0.0;
LABEL_49:

      if (v73)
      {
        v226 = CTLineGetBoundsWithOptions(v73, 0);
        v154 = v226.size.width;
      }

      else
      {
        v154 = 0.0;
      }

      goto LABEL_52;
    }

LABEL_46:
    v225 = CTLineGetBoundsWithOptions(TruncatedLineWithTokenHandler, 0);
    width = v225.size.width;
    goto LABEL_49;
  }

LABEL_67:
  __break(1u);
}

id PillMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PillMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PillMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double PillMetrics.margins.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[1];
}

double PillMetrics.pillSize.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[5];
}

uint64_t PillMetrics.hasValidMetricsForDrawing.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return v1[0];
}

id PillMetrics.firstLine.getter()
{
  PillMetrics.pillMetrics.getter(v3);
  v0 = v4;
  v1 = v4;
  outlined destroy of SLDHighlightPillMetrics(v3);
  return v0;
}

id PillMetrics.secondLine.getter()
{
  PillMetrics.pillMetrics.getter(v3);
  v0 = v4;
  v1 = v4;
  outlined destroy of SLDHighlightPillMetrics(v3);
  return v0;
}

double PillMetrics.overlappedAvatarKnockoutBorderWidth.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[9];
}

double PillMetrics.labelHorizontalMargins.getter()
{
  PillMetrics.pillMetrics.getter(v1);
  outlined destroy of SLDHighlightPillMetrics(v1);
  return *&v1[10];
}

double PillMetrics.specMaxWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.minimumLabelHorizontalMargines.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.avatarDiameter.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 96))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.avatarContainerWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 112))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.avatarKnockoutWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 120))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

double PillMetrics.overlappedAvatarVisibleWidth.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 104))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t PillMetrics.useDoubleLinedLabel.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

double PillMetrics.chevronSize.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 192))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

id static PillMetrics.metricsPlaceholder(for:variant:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  switch(a2)
  {
    case 0:
      a3[3] = &type metadata for iOSPillMetric;
      a3[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      a3[3] = &type metadata for iOSPillMetric;
      a3[4] = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      a3[3] = &type metadata for MacPillMetric;
      a3[4] = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      a3[3] = &type metadata for MacPillMetric;
      a3[4] = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      a3[3] = &type metadata for MacSafariBannerPillMetrics;
      a3[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      a3[3] = &type metadata for MacSafariBannerPillMetrics;
      a3[4] = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      a3[3] = &type metadata for iOSSafariBannerPillMetrics;
      a3[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      a3[3] = &type metadata for iOSSafariBannerPillMetrics;
      a3[4] = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      a3[3] = &type metadata for TVPillMetrics;
      a3[4] = &protocol witness table for TVPillMetrics;
      *a3 = a1;
      a3[1] = 0x4059000000000000;
      v6 = a3 + 2;
      goto LABEL_17;
    case 9:
      a3[3] = &type metadata for VisionPillMetric;
      a3[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      a3[3] = &type metadata for VisionPillMetric;
      a3[4] = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      a3[3] = &type metadata for VisionSafariBannerPillMetric;
      a3[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v5 = swift_allocObject();
      v3 = a1;
      *a3 = v5;
      *(v5 + 16) = a1;
      *(v5 + 24) = 0;
      goto LABEL_16;
    case 12:
      a3[3] = &type metadata for VisionSafariBannerPillMetric;
      a3[4] = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v5 = swift_allocObject();
      v3 = a1;
      *a3 = v5;
      *(v5 + 16) = a1;
      *(v5 + 24) = 1;
LABEL_16:
      *(v5 + 32) = 0x4059000000000000;
      v6 = (v5 + 40);
LABEL_17:
      *v6 = 1;

      result = v3;
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t static PillMetrics.maxSendersToDisplay(style:variant:)(void *a1, uint64_t a2)
{
  static PillMetrics.metricsPlaceholder(for:variant:)(a1, a2, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = (*(v3 + 40))(v2, v3);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 48))(v5, v6);
  if (v7 > v4)
  {
    v4 = v7;
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v4;
}

uint64_t static PillMetrics.chevronFontDescriptor(style:variant:)(void *a1, uint64_t a2)
{
  static PillMetrics.metricsPlaceholder(for:variant:)(a1, a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 184))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

double static PillMetrics.chevronSize(style:variant:)(void *a1, uint64_t a2)
{
  static PillMetrics.metricsPlaceholder(for:variant:)(a1, a2, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 192))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t PillMetrics.imageCount.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 64))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t PillMetrics.shouldDisplayPin.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 72))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

uint64_t PillMetrics.chevronFontDescriptor.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 184))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t PillMetrics.baseFont.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 152))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double _s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

void specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (![v7 length])
  {

    return;
  }

  v8 = [v7 length];
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v9 = v8;
  v75 = a3;
  v81 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  v14 = *(v13 + 152);
  v79 = v11;
  v15 = v14(v12, v13);
  type metadata accessor for CTFontRef(0);
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  v80 = v18;
  *(inited + 64) = v18;
  *(inited + 72) = v17;
  v19 = a4[3];
  v20 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v19);
  v21 = *(v20 + 24);
  v22 = v17;
  v23 = v21(v19, v20);
  v24 = [v23 userInterfaceStyle];

  v77 = v22;
  if (v24)
  {
    v25 = 1.0;
    v26 = 1.0;
    v27 = 1.0;
  }

  else
  {
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
  }

  GenericRGB = CGColorCreateGenericRGB(v25, v26, v27, 1.0);
  type metadata accessor for CGColorRef(0);
  v29 = MEMORY[0x277CCA318];
  *(inited + 80) = GenericRGB;
  v30 = *v29;
  v78 = v31;
  *(inited + 104) = v31;
  *(inited + 112) = v30;
  v32 = a4[3];
  v33 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v32);
  v34 = *(v33 + 24);
  v76 = v30;
  v35 = v34(v32, v33);
  v36 = [v35 localization];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = MEMORY[0x277D837D0];
  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = v37;
  *(inited + 128) = v39;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_23183D7F0;
  *(v41 + 32) = v79;
  v43 = a4[3];
  v42 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v43);
  *(v41 + 40) = (*(v42 + 160))(v43, v42);
  *(v41 + 64) = v80;
  *(v41 + 72) = v77;
  v44 = a4[3];
  v45 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v44);
  v46 = (*(v45 + 24))(v44, v45);
  v47 = [v46 userInterfaceStyle];

  if (v47)
  {
    v48 = 1.0;
    v49 = 1.0;
    v50 = 1.0;
  }

  else
  {
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
  }

  *(v41 + 80) = CGColorCreateGenericRGB(v48, v49, v50, 1.0);
  *(v41 + 104) = v78;
  *(v41 + 112) = v76;
  v51 = a4[3];
  v52 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v51);
  v53 = (*(v52 + 24))(v51, v52);
  v54 = [v53 localization];

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  *(v41 + 144) = v40;
  *(v41 + 120) = v55;
  *(v41 + 128) = v57;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  v58 = *(a2 + 16);
  if (!v58)
  {
LABEL_26:

    v67 = *(v75 + 16);
    if (!v67)
    {
LABEL_42:

      return;
    }

    v68 = (v75 + 40);
    while (1)
    {
      v69 = *(v68 - 1);
      v70 = *v68;
      v71 = v69 + *v68;
      if (__OFADD__(v69, *v68))
      {
        goto LABEL_44;
      }

      if (v9 >= v71)
      {
        v72 = v69 + *v68;
      }

      else
      {
        v72 = v9;
      }

      if (v69 <= 0 && v71 > 0)
      {
        goto LABEL_40;
      }

      if (v69 < v9)
      {
        break;
      }

LABEL_28:
      v68 += 2;
      if (!--v67)
      {
        goto LABEL_42;
      }
    }

    v65 = __OFSUB__(v72, v69);
    v72 -= v69;
    if (v65)
    {
      goto LABEL_46;
    }

LABEL_40:
    if (v72 >= 1)
    {
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v81 setAttributes:isa range:{v69, v70}];
    }

    goto LABEL_28;
  }

  v59 = (a2 + 40);
  while (1)
  {
    v60 = *(v59 - 1);
    v61 = *v59;
    v62 = v60 + *v59;
    if (__OFADD__(v60, *v59))
    {
      break;
    }

    if (v9 >= v62)
    {
      v63 = v60 + *v59;
    }

    else
    {
      v63 = v9;
    }

    if (v60 <= 0 && v62 > 0)
    {
      goto LABEL_24;
    }

    if (v60 < v9)
    {
      v65 = __OFSUB__(v63, v60);
      v63 -= v60;
      if (v65)
      {
        goto LABEL_45;
      }

LABEL_24:
      if (v63 >= 1)
      {
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
        v66 = Dictionary._bridgeToObjectiveC()().super.isa;
        [v81 setAttributes:v66 range:{v60, v61}];
      }
    }

    v59 += 2;
    if (!--v58)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void specialized static PillMetrics.doubleLineFontHeight(for:)(void *a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  LOBYTE(v4) = (*(v5 + 16))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = [v8 localization];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = 0x6C6F686563616C50;
  v13._object = 0xEB00000000726564;
  v14.value._countAndFlagsBits = v10;
  v14.value._object = v12;
  v29 = NameAttributionLocAttributedString(prefix:name:multiline:localization:)((v4 & 1), v13, 1, v14);
  isa = v29.localizedString.super.super.isa;
  rawValue = v29.baseFontTargetRanges._rawValue;
  v17 = v29.senderFontTargetRanges._rawValue;

  v18 = isa;

  specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v18, rawValue, v17, a1);
  v20 = v19;

  attributedStringSplitByLineBreak(inString:)(v20);
  v22 = v21;
  if (!(v21 >> 62))
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23 >= 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v24 = NSAttributedString.init(_:)();
    goto LABEL_11;
  }

  v23 = __CocoaSet.count.getter();
  if (v23 < 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x231934AB0](0, v22);
    if (v23 != 1)
    {
      v25 = MEMORY[0x231934AB0](1, v22);
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = *(v22 + 32);
  if (v23 == 1)
  {
LABEL_11:

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v26 = NSAttributedString.init(_:)();
    goto LABEL_12;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v25 = *(v22 + 40);
LABEL_8:
    v26 = v25;

LABEL_12:
    v27 = CTLineCreateWithAttributedString(v24);
    CTLineGetBoundsWithOptions(v27, 0);
    v28 = CTLineCreateWithAttributedString(v26);
    CTLineGetBoundsWithOptions(v28, 0);

    return;
  }

LABEL_16:
  __break(1u);
}

id specialized static PillMetrics.localizedSenderOrNumContactsString(for:metrics:)(id a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v73[0] = *(v6 - 8);
  v7 = *(v73[0] + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v73 - v11;
  v13 = [a1 groupName];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = 0;
    v17 = 0xE000000000000000;
  }

  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18;
  }

  if (!v19)
  {
    v23 = [a1 sendersToDisplay];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLPerson, off_278924EF0);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 != 1 || [a1 allSendersCount] != 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v39 = a2[3];
      v40 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v39);
      v41 = (*(v40 + 24))(v39, v40);
      v42 = [v41 localization];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v73[0];
      (*(v73[0] + 16))(v10, v12, v6);
      v44 = SLFrameworkBundle();
      static Locale.current.getter();
      String.init(localized:table:bundle:localization:locale:comment:)();
      (*(v43 + 8))(v12, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_23183D7E0;
      v46 = [a1 allSendersCount];
      v47 = MEMORY[0x277D83C10];
      *(v45 + 56) = MEMORY[0x277D83B88];
      *(v45 + 64) = v47;
      *(v45 + 32) = v46;
LABEL_21:
      v22 = static String.localizedStringWithFormat(_:_:)();

      return v22;
    }

    v26 = [a1 sendersToDisplay];
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    if (v27 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_15:

        if ((v28 & 0xC000000000000001) == 0)
        {
          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_52;
          }

          v29 = *(v28 + 32);
LABEL_18:
          v30 = v29;

          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
          v31 = [a1 meSender];
          v32 = static NSObject.== infix(_:_:)();

          if (v32)
          {
            String.LocalizationValue.init(stringLiteral:)();
            v33 = a2[3];
            v34 = a2[4];
            __swift_project_boxed_opaque_existential_1(a2, v33);
            v35 = (*(v34 + 24))(v33, v34);
            v36 = [v35 localization];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v73[0];
            (*(v73[0] + 16))(v10, v12, v6);
            v38 = SLFrameworkBundle();
            static Locale.current.getter();
            v22 = String.init(localized:table:bundle:localization:locale:comment:)();
            (*(v37 + 8))(v12, v6);
            return v22;
          }

          v26 = [a1 sendersToDisplay];
          v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v48;
          if (!(v48 >> 62))
          {
            if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            goto LABEL_53;
          }

LABEL_52:
          if (__CocoaSet.count.getter())
          {
LABEL_26:

            if ((v28 & 0xC000000000000001) == 0)
            {
              if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_56;
              }

              v49 = *(v28 + 32);
LABEL_29:
              v50 = v49;

              v51 = [v50 shortDisplayName];

              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v53;

              if ((v54 & 0x2000000000000000) != 0)
              {
                v55 = HIBYTE(v54) & 0xF;
              }

              else
              {
                v55 = v52 & 0xFFFFFFFFFFFFLL;
              }

              a1 = [a1 sendersToDisplay];
              v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v56;
              if (!v55)
              {

                if (!(v28 >> 62))
                {
                  result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!result)
                  {
LABEL_61:

LABEL_62:
                    String.LocalizationValue.init(stringLiteral:)();
                    v65 = a2[3];
                    v66 = a2[4];
                    __swift_project_boxed_opaque_existential_1(a2, v65);
                    v67 = (*(v66 + 24))(v65, v66);
                    v68 = [v67 localization];

                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v69 = v73[0];
                    (*(v73[0] + 16))(v10, v12, v6);
                    v70 = SLFrameworkBundle();
                    static Locale.current.getter();
                    String.init(localized:table:bundle:localization:locale:comment:)();
                    (*(v69 + 8))(v12, v6);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                    v71 = swift_allocObject();
                    *(v71 + 16) = xmmword_23183D7E0;
                    v72 = MEMORY[0x277D83C10];
                    *(v71 + 56) = MEMORY[0x277D83B88];
                    *(v71 + 64) = v72;
                    *(v71 + 32) = 1;
                    goto LABEL_21;
                  }

LABEL_41:
                  if ((v28 & 0xC000000000000001) != 0)
                  {
                    v61 = MEMORY[0x231934AB0](0, v28);
                  }

                  else
                  {
                    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_65;
                    }

                    v61 = *(v28 + 32);
                  }

                  v62 = v61;

                  v63 = SLFormattedDisplayNameForPerson(v62);
                  if (v63)
                  {
                    v64 = v63;
                    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

                    return v22;
                  }

                  goto LABEL_62;
                }

LABEL_60:
                result = __CocoaSet.count.getter();
                if (!result)
                {
                  goto LABEL_61;
                }

                goto LABEL_41;
              }

              if (!(v56 >> 62))
              {
                if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_35;
                }

                goto LABEL_57;
              }

LABEL_56:
              if (__CocoaSet.count.getter())
              {
LABEL_35:

                if ((v28 & 0xC000000000000001) == 0)
                {
                  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v57 = *(v28 + 32);
LABEL_38:
                    v58 = v57;

                    v59 = [v58 shortDisplayName];

                    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    return v60;
                  }

                  __break(1u);
                  goto LABEL_60;
                }

LABEL_58:
                v57 = MEMORY[0x231934AB0](0, v28);
                goto LABEL_38;
              }

LABEL_57:

              __break(1u);
              goto LABEL_58;
            }

LABEL_54:
            v49 = MEMORY[0x231934AB0](0, v28);
            goto LABEL_29;
          }

LABEL_53:

          __break(1u);
          goto LABEL_54;
        }

LABEL_50:
        v29 = MEMORY[0x231934AB0](0, v28);
        goto LABEL_18;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_50;
  }

  result = [a1 groupName];
  if (!result)
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v22;
}

id specialized static PillMetrics.senderNameAttributedString(for:metrics:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (String.count.getter() < 1)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
    AttributedString.init(stringLiteral:)();
    v10 = NSAttributedString.init(_:)();
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v9 = MEMORY[0x231934530](a1, a2);
    v10 = [v8 initWithString_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = *(v14 + 160);
  v16 = v12;
  v17 = v15(v13, v14);
  type metadata accessor for CTFontRef(0);
  v18 = MEMORY[0x277D740C0];
  *(inited + 40) = v17;
  v19 = *v18;
  *(inited + 64) = v20;
  *(inited + 72) = v19;
  v21 = a3[3];
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v21);
  v23 = *(v22 + 24);
  v24 = v19;
  v25 = v23(v21, v22);
  v26 = [v25 userInterfaceStyle];

  if (v26)
  {
    v27 = 1.0;
    v28 = 1.0;
    v29 = 1.0;
  }

  else
  {
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
  }

  GenericRGB = CGColorCreateGenericRGB(v27, v28, v29, 1.0);
  type metadata accessor for CGColorRef(0);
  v31 = MEMORY[0x277CCA318];
  *(inited + 80) = GenericRGB;
  v32 = *v31;
  *(inited + 104) = v33;
  *(inited + 112) = v32;
  v34 = a3[3];
  v35 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v34);
  v36 = *(v35 + 24);
  v37 = v32;
  v38 = v36(v34, v35);
  v39 = [v38 localization];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = v40;
  *(inited + 128) = v42;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v44 = v10;
  [v44 setAttributes:isa range:{0, objc_msgSend(v44, sel_length)}];

  return v44;
}

uint64_t specialized static PillMetrics.senderLabelMultilineWithLineWrap(fullString:maxLineWidth:style:)(const __CFAttributedString *a1, void *a2, CGFloat a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CTLineCreateWithAttributedString(a1);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  BoundsWithOptions = CTLineGetBoundsWithOptions(result, 0);
  if (CGRectGetWidth(BoundsWithOptions) <= a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_23183DF50;
    *(result + 32) = v10;
    return result;
  }

  v11 = CTLineCreateWithAttributedString(a1);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

  v13 = [a2 localization];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x231934530](v14);
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier_];

  v16 = [(__CFAttributedString *)a1 length];
  v17 = [(__CFAttributedString *)a1 length];
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_27;
  }

  v36 = TruncatedLineWithTokenHandler;
  TruncatedLineWithTokenHandler = &selRef_numberWithFloat_;
  while (1)
  {
    v19 = [(__CFAttributedString *)a1 string];
    if (!v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = MEMORY[0x231934530](v20);
    }

    v40.location = 0;
    v40.length = v16;
    v21 = SLDGetHyphenationPosition(v19, v18, v40, v15);

    if (v21 == -1 || v21 >= v18)
    {
      TruncatedLineWithTokenHandler = 0;
      HyphenatedLineWithOffset = v36;
      goto LABEL_25;
    }

    v23 = v10;
    v24 = MEMORY[0x231934530](45, 0xE100000000000000);
    HyphenatedLineWithOffset = CTLineCreateHyphenatedLineWithOffset();

    v43 = CTLineGetBoundsWithOptions(HyphenatedLineWithOffset, 0);
    if (CGRectGetWidth(v43) <= a3)
    {
      break;
    }

LABEL_7:

    v18 = v21;
  }

  v25 = [(__CFAttributedString *)a1 length];
  v26 = v25 - v21;
  if (__OFSUB__(v25, v21))
  {
    __break(1u);
    goto LABEL_34;
  }

  v39.location = 0;
  v39.length = v16;
  v41.location = v21;
  v41.length = v26;
  v27 = NSUnionRange(v39, v41);
  if (v27.location || v27.length != v16)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
    AttributedString.init(stringLiteral:)();
    v28 = NSAttributedString.init(_:)();
  }

  else
  {
    v28 = [(__CFAttributedString *)a1 attributedSubstringFromRange:v21, v26];
  }

  v29 = v28;
  if ([v28 length] < 1)
  {

    goto LABEL_7;
  }

  v31 = CTLineCreateWithAttributedString(v29);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

LABEL_25:
  v38 = MEMORY[0x277D84F90];
  if (!HyphenatedLineWithOffset)
  {

    return MEMORY[0x277D84F90];
  }

  a1 = HyphenatedLineWithOffset;
  MEMORY[0x2319346D0]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

LABEL_27:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (TruncatedLineWithTokenHandler)
  {
    v32 = TruncatedLineWithTokenHandler;
    MEMORY[0x2319346D0]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v38;
  }

  else
  {
    v33 = v38;

    return v33;
  }
}

uint64_t specialized static PillMetrics.accessibilityLabel(for:)(void *a1)
{
  v2 = [a1 sendersToDisplay];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SLPerson, off_278924EF0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    goto LABEL_10;
  }

  v5 = [a1 groupName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_10:
  v12 = specialized static PillMetrics.localizedFromSenderAttributedString(for:prefix:multiline:maxSenderNames:localization:)(a1, 0);
  v13 = [v12 string];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

uint64_t specialized static PillMetrics.pillHeight(style:variant:maxWidth:)(void *a1, uint64_t a2, double a3)
{
  switch(a2)
  {
    case 0:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v36 = &type metadata for iOSPillMetric;
      v37 = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v36 = &type metadata for iOSPillMetric;
      v37 = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v36 = &type metadata for MacPillMetric;
      v37 = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v36 = &type metadata for MacPillMetric;
      v37 = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v36 = &type metadata for MacSafariBannerPillMetrics;
      v37 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v36 = &type metadata for MacSafariBannerPillMetrics;
      v37 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v36 = &type metadata for iOSSafariBannerPillMetrics;
      v37 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v36 = &type metadata for iOSSafariBannerPillMetrics;
      v37 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      v5 = &type metadata for TVPillMetrics;
      v6 = &protocol witness table for TVPillMetrics;
      v36 = &type metadata for TVPillMetrics;
      v37 = &protocol witness table for TVPillMetrics;
      v34[0] = a1;
      *&v34[1] = a3;
      v8 = &v35;
      goto LABEL_17;
    case 9:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v36 = &type metadata for VisionPillMetric;
      v37 = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v36 = &type metadata for VisionPillMetric;
      v37 = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v36 = &type metadata for VisionSafariBannerPillMetric;
      v37 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v7 = swift_allocObject();
      v34[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 0;
      goto LABEL_16;
    case 12:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v36 = &type metadata for VisionSafariBannerPillMetric;
      v37 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v7 = swift_allocObject();
      v34[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 1;
LABEL_16:
      *(v7 + 32) = a3;
      v8 = (v7 + 40);
LABEL_17:
      *v8 = 1;
      __swift_project_boxed_opaque_existential_1(v34, v5);
      v9 = v6[21];
      v10 = a1;
      v9();
      v11 = v36;
      v12 = v37;
      __swift_project_boxed_opaque_existential_1(v34, v36);
      if ((v12[16])(v11, v12))
      {
        specialized static PillMetrics.doubleLineFontHeight(for:)(v34);
      }

      else
      {
        v13 = v36;
        v14 = v37;
        __swift_project_boxed_opaque_existential_1(v34, v36);
        (v14[12])(v13, v14);
        v15 = v36;
        v16 = v37;
        __swift_project_boxed_opaque_existential_1(v34, v36);
        LOBYTE(v15) = (v16[2])(v15, v16);
        v17 = v36;
        v18 = v37;
        __swift_project_boxed_opaque_existential_1(v34, v36);
        v19 = (v18[3])(v17, v18);
        v20 = [v19 localization];

        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24._countAndFlagsBits = 0x6C6F686563616C50;
        v24._object = 0xEB00000000726564;
        v25.value._countAndFlagsBits = v21;
        v25.value._object = v23;
        v38 = NameAttributionLocAttributedString(prefix:name:multiline:localization:)((v15 & 1), v24, 0, v25);
        isa = v38.localizedString.super.super.isa;
        rawValue = v38.baseFontTargetRanges._rawValue;
        v28 = v38.senderFontTargetRanges._rawValue;

        v29 = isa;

        specialized static PillMetrics.fromSenderAttributedString(for:metrics:multiline:)(v29, rawValue, v28, v34);
        v31 = v30;

        v32 = CTLineCreateWithAttributedString(v31);

        CTLineGetBoundsWithOptions(v32, 0);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v34);
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t specialized static PillMetrics.pillMargins(style:variant:maxWidth:)(void *a1, uint64_t a2, double a3)
{
  switch(a2)
  {
    case 0:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v14 = &type metadata for iOSPillMetric;
      v15 = &protocol witness table for iOSPillMetric;
      goto LABEL_13;
    case 1:
      v5 = &type metadata for iOSPillMetric;
      v6 = &protocol witness table for iOSPillMetric;
      v14 = &type metadata for iOSPillMetric;
      v15 = &protocol witness table for iOSPillMetric;
      goto LABEL_15;
    case 2:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v14 = &type metadata for MacPillMetric;
      v15 = &protocol witness table for MacPillMetric;
      goto LABEL_13;
    case 3:
      v5 = &type metadata for MacPillMetric;
      v6 = &protocol witness table for MacPillMetric;
      v14 = &type metadata for MacPillMetric;
      v15 = &protocol witness table for MacPillMetric;
      goto LABEL_15;
    case 4:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v14 = &type metadata for MacSafariBannerPillMetrics;
      v15 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_13;
    case 5:
      v5 = &type metadata for MacSafariBannerPillMetrics;
      v6 = &protocol witness table for MacSafariBannerPillMetrics;
      v14 = &type metadata for MacSafariBannerPillMetrics;
      v15 = &protocol witness table for MacSafariBannerPillMetrics;
      goto LABEL_15;
    case 6:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v14 = &type metadata for iOSSafariBannerPillMetrics;
      v15 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_13;
    case 7:
      v5 = &type metadata for iOSSafariBannerPillMetrics;
      v6 = &protocol witness table for iOSSafariBannerPillMetrics;
      v14 = &type metadata for iOSSafariBannerPillMetrics;
      v15 = &protocol witness table for iOSSafariBannerPillMetrics;
      goto LABEL_15;
    case 8:
      v5 = &type metadata for TVPillMetrics;
      v6 = &protocol witness table for TVPillMetrics;
      v14 = &type metadata for TVPillMetrics;
      v15 = &protocol witness table for TVPillMetrics;
      v12[0] = a1;
      *&v12[1] = a3;
      v8 = &v13;
      goto LABEL_17;
    case 9:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v14 = &type metadata for VisionPillMetric;
      v15 = &protocol witness table for VisionPillMetric;
      goto LABEL_13;
    case 10:
      v5 = &type metadata for VisionPillMetric;
      v6 = &protocol witness table for VisionPillMetric;
      v14 = &type metadata for VisionPillMetric;
      v15 = &protocol witness table for VisionPillMetric;
      goto LABEL_15;
    case 11:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v14 = &type metadata for VisionSafariBannerPillMetric;
      v15 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_13:
      v7 = swift_allocObject();
      v12[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 0;
      goto LABEL_16;
    case 12:
      v5 = &type metadata for VisionSafariBannerPillMetric;
      v6 = &protocol witness table for VisionSafariBannerPillMetric;
      v14 = &type metadata for VisionSafariBannerPillMetric;
      v15 = &protocol witness table for VisionSafariBannerPillMetric;
LABEL_15:
      v7 = swift_allocObject();
      v12[0] = v7;
      *(v7 + 16) = a1;
      *(v7 + 24) = 1;
LABEL_16:
      *(v7 + 32) = a3;
      v8 = (v7 + 40);
LABEL_17:
      *v8 = 1;
      __swift_project_boxed_opaque_existential_1(v12, v5);
      v9 = v6[21];
      v10 = a1;
      v9();
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      break;
    default:
      type metadata accessor for SLHighlightPillMetricVariant(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributionTextPrefix and conformance AttributionTextPrefix()
{
  result = lazy protocol witness table cache variable for type AttributionTextPrefix and conformance AttributionTextPrefix;
  if (!lazy protocol witness table cache variable for type AttributionTextPrefix and conformance AttributionTextPrefix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionTextPrefix and conformance AttributionTextPrefix);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute()
{
  result = lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillSenderNameAttribute and conformance HighlightPillSenderNameAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute()
{
  result = lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillNumContactsAttribute and conformance HighlightPillNumContactsAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute()
{
  result = lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute;
  if (!lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightPillListOfNamesAttribute and conformance HighlightPillListOfNamesAttribute);
  }

  return result;
}

uint64_t type metadata completion function for AttributeScopes.HighlightPillAttributes()
{
  result = type metadata accessor for AttributeScopes.FoundationAttributes();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisionPillMetric(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for VisionPillMetric(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SLDHighlightPillMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SLDHighlightPillMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11SocialLayer23SLDHighlightPillMetrics33_00C2B47D0280335DFFDBB3BC8927527ALLVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 56);
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

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = swift_allocError();
    *v18 = a4;
    v19 = a4;
    v20 = v16;
    v21 = v17;
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = (*(v8 + 32))(v15, v11, v7);
    if (a3)
    {
      *&v15[*(v12 + 48)] = a3;
      v22 = *(*(v16 + 64) + 40);
      v23 = a3;
      outlined init with take of (URL, CKShare)(v15, v22);
      return swift_continuation_throwingResume();
    }

    __break(1u);
  }

  return MEMORY[0x282200958](v20, v21);
}

uint64_t one-time initialization function for fileProviderCollaborationInitiation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.fileProviderCollaborationInitiation);
  __swift_project_value_buffer(v0, static Log.fileProviderCollaborationInitiation);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.fileProviderCollaborationInitiation.unsafeMutableAddressor()
{
  if (one-time initialization token for fileProviderCollaborationInitiation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Log.fileProviderCollaborationInitiation);
}

uint64_t static Log.fileProviderCollaborationInitiation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for fileProviderCollaborationInitiation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Log.fileProviderCollaborationInitiation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FileProviderCollaborationInitiationRequest.Response.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileProviderCollaborationInitiationRequest.Response.recipients.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0) + 20));
}

id FileProviderCollaborationInitiationRequest.Response.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0) + 24));

  return v1;
}

void FileProviderCollaborationInitiationRequest.Response.recipientPayloads.getter()
{
  v1 = *(v0 + *(type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0) + 20));
  v3 = v0;
  specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], partial apply for closure #1 in FileProviderCollaborationInitiationRequest.Response.recipientPayloads.getter, &v2, v1);
}

void closure #1 in FileProviderCollaborationInitiationRequest.Response.recipientPayloads.getter(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = *a2;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 16))(v8, a3, v10);
  v11 = type metadata accessor for CollaborationInitiationResponsePayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  specialized Dictionary.subscript.setter(v8, v9);
}

uint64_t FileProviderCollaborationInitiationRequest.Response.init(shareURL:recipients:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

Swift::Int FileProviderCollaborationInitiationRequest.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](0);
  return Hasher._finalize()();
}

uint64_t key path setter for FileProviderCollaborationInitiationRequest.url : FileProviderCollaborationInitiationRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 168))(v7);
}

uint64_t FileProviderCollaborationInitiationRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FileProviderCollaborationInitiationRequest.url.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t FileProviderCollaborationInitiationRequest.__allocating_init(url:shareOptions:recipients:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 32))(v11 + v12, a1, v13);
  *(v11 + 16) = a3;
  *(v11 + 24) = a2;
  *(v11 + OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_metadata) = a4;
  return v11;
}

uint64_t FileProviderCollaborationInitiationRequest.init(url:shareOptions:recipients:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  *(v4 + 16) = a3;
  *(v4 + 24) = a2;
  *(v4 + OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_metadata) = a4;
  return v4;
}

uint64_t FileProviderCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2[24] = a1;
  v2[25] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So7CKShareCtMd, &_s10Foundation3URLV_So7CKShareCtMR);
  v2[26] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[29] = v5;
  v6 = *(v5 - 8);
  v2[30] = v6;
  v7 = *(v6 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](FileProviderCollaborationInitiationRequest.initiateCollaboration(), 0, 0);
}

uint64_t FileProviderCollaborationInitiationRequest.initiateCollaboration()()
{
  v144 = v0;
  v143[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for fileProviderCollaborationInitiation != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v1 = *(v0 + 200);
    v2 = type metadata accessor for Logger();
    *(v0 + 264) = __swift_project_value_buffer(v2, static Log.fileProviderCollaborationInitiation);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      LODWORD(v142) = v4;
      v5 = *(v0 + 256);
      v7 = *(v0 + 232);
      v6 = *(v0 + 240);
      v8 = *(v0 + 200);
      v9 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v143[0] = v141;
      *v9 = 136315650;
      (*(*v8 + 112))();
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject();
      v10 = Set.description.getter();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v143);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      (*(*v8 + 160))(v14);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v6 + 8))(v5, v7);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v143);

      *(v9 + 14) = v18;
      *(v9 + 22) = 2080;
      v20 = (*(*v8 + 136))(v19);
      v21 = [v20 optionsGroups];

      if (!v21)
      {
        goto LABEL_98;
      }

      v23 = v8 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      v24 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWCollaborationOptionsGroup, 0x277CDC6D0);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = MEMORY[0x231934700](v25, v24);
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v143);

      *(v9 + 24) = v29;
      _os_log_impl(&dword_231772000, v3, v142, "Received request to initiate collaboration with: %s, url: %s, optionsGroup: %s", v9, 0x20u);
      v30 = v141;
      swift_arrayDestroy();
      MEMORY[0x2319361B0](v30, -1, -1);
      MEMORY[0x2319361B0](v9, -1, -1);
    }

    else
    {
      v31 = *(v0 + 200);

      v23 = v31 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    }

    v32 = *(v0 + 256);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    v35 = *(v0 + 200);
    v36 = *(*v35 + 160);
    v37 = (*v35 + 160) & 0xFFFFFFFFFFFFLL | 0xBC8000000000000;
    *(v0 + 272) = v36;
    *(v0 + 280) = v37;
    v36();
    *(v0 + 384) = URL.startAccessingSecurityScopedResource()();
    v38 = *(v33 + 8);
    *(v0 + 288) = v38;
    *(v0 + 296) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39 = v38(v32, v34);
    (v36)(v39);
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    *(v0 + 304) = v41;
    v43 = v38(v32, v34);
    v44 = *(*v35 + 112);
    v45 = *v35 + 112;
    *(v0 + 312) = v44;
    *(v0 + 320) = v45 & 0xFFFFFFFFFFFFLL | 0x970C000000000000;
    v46 = v44(v43);
    v47 = v46;
    v48 = MEMORY[0x277D84FA0];
    v139 = v42;
    v140 = v23;
    v141 = v45;
    v142 = v44;
    if ((v46 & 0xC000000000000001) != 0)
    {
      v143[0] = MEMORY[0x277D84FA0];
      __CocoaSet.makeIterator()();
      v49 = __CocoaSet.Iterator.next()();
      if (v49)
      {
        v50 = v49;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
        v51 = v50;
        v52 = MEMORY[0x277D84FA0];
        do
        {
          *(v0 + 184) = v51;
          swift_dynamicCast();
          v53 = [*(v0 + 176) type];
          v54 = *(v0 + 176);
          if (v53 == 3)
          {
            v55 = *(v52 + 16);
            if (*(v52 + 24) <= v55)
            {
              specialized _NativeSet.resize(capacity:)(v55 + 1);
              v52 = v143[0];
            }

            v56 = NSObject._rawHashValue(seed:)(*(v52 + 40));
            v57 = v52 + 56;
            v58 = -1 << *(v52 + 32);
            v59 = v56 & ~v58;
            v60 = v59 >> 6;
            if (((-1 << v59) & ~*(v52 + 56 + 8 * (v59 >> 6))) != 0)
            {
              v61 = __clz(__rbit64((-1 << v59) & ~*(v52 + 56 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v62 = 0;
              v63 = (63 - v58) >> 6;
              do
              {
                if (++v60 == v63 && (v62 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_85;
                }

                v64 = v60 == v63;
                if (v60 == v63)
                {
                  v60 = 0;
                }

                v62 |= v64;
                v65 = *(v57 + 8 * v60);
              }

              while (v65 == -1);
              v61 = __clz(__rbit64(~v65)) + (v60 << 6);
            }

            *(v57 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
            *(*(v52 + 48) + 8 * v61) = v54;
            ++*(v52 + 16);
          }

          else
          {
          }

          v51 = __CocoaSet.Iterator.next()();
        }

        while (v51);
      }

      else
      {
        v52 = v48;
      }
    }

    else
    {
      v66 = *(v46 + 32);
      v137 = ((1 << v66) + 63) >> 6;
      if ((v66 & 0x3Fu) > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v133 = swift_slowAlloc();
          v52 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v133, v137, v47, closure #1 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

          MEMORY[0x2319361B0](v133, -1, -1);
          goto LABEL_43;
        }
      }

      v136[1] = v136;
      MEMORY[0x28223BE20](v46);
      v68 = v136 - ((v67 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v68, v67);
      v138 = 0;
      v69 = 0;
      v70 = 1 << *(v47 + 32);
      v71 = -1;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      v72 = v71 & *(v47 + 56);
      v73 = (v70 + 63) >> 6;
      while (v72)
      {
        v74 = __clz(__rbit64(v72));
        v72 &= v72 - 1;
LABEL_36:
        v77 = v74 | (v69 << 6);
        if ([*(*(v47 + 48) + 8 * v77) type] == 3)
        {
          *&v68[(v77 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v77;
          v78 = __OFADD__(v138++, 1);
          if (v78)
          {
            __break(1u);
            goto LABEL_40;
          }
        }
      }

      v75 = v69;
      while (1)
      {
        v69 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_86;
        }

        if (v69 >= v73)
        {
          break;
        }

        v76 = *(v47 + 56 + 8 * v69);
        ++v75;
        if (v76)
        {
          v74 = __clz(__rbit64(v76));
          v72 = (v76 - 1) & v76;
          goto LABEL_36;
        }
      }

LABEL_40:
      v52 = specialized _NativeSet.extractSubset(using:count:)(v68, v137, v138, v47);
    }

LABEL_43:
    v79 = *(v0 + 200);
    specialized Sequence.compactMap<A>(_:)(v52);

    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 328) = isa;

    v82 = v142(v81);
    v83 = v82;
    v137 = isa;
    v138 = 0;
    if ((v82 & 0xC000000000000001) == 0)
    {
      break;
    }

    v143[0] = v48;
    __CocoaSet.makeIterator()();
    v84 = __CocoaSet.Iterator.next()();
    if (!v84)
    {
LABEL_62:

      goto LABEL_79;
    }

    v85 = v84;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    v86 = v85;
    v48 = MEMORY[0x277D84FA0];
    while (1)
    {
      *(v0 + 168) = v86;
      swift_dynamicCast();
      v87 = [*(v0 + 160) type];
      v88 = *(v0 + 160);
      if (v87 == 2)
      {
        break;
      }

LABEL_47:
      v86 = __CocoaSet.Iterator.next()();
      if (!v86)
      {
        goto LABEL_62;
      }
    }

    v89 = *(v48 + 16);
    if (*(v48 + 24) <= v89)
    {
      specialized _NativeSet.resize(capacity:)(v89 + 1);
    }

    v48 = v143[0];
    v90 = NSObject._rawHashValue(seed:)(*(v143[0] + 40));
    v91 = v48 + 56;
    v92 = -1 << *(v48 + 32);
    v93 = v90 & ~v92;
    v94 = v93 >> 6;
    if (((-1 << v93) & ~*(v48 + 56 + 8 * (v93 >> 6))) != 0)
    {
      v95 = __clz(__rbit64((-1 << v93) & ~*(v48 + 56 + 8 * (v93 >> 6)))) | v93 & 0x7FFFFFFFFFFFFFC0;
LABEL_61:
      *(v91 + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
      *(*(v48 + 48) + 8 * v95) = v88;
      ++*(v48 + 16);
      goto LABEL_47;
    }

    v96 = 0;
    v97 = (63 - v92) >> 6;
    while (++v94 != v97 || (v96 & 1) == 0)
    {
      v98 = v94 == v97;
      if (v94 == v97)
      {
        v94 = 0;
      }

      v96 |= v98;
      v99 = *(v91 + 8 * v94);
      if (v99 != -1)
      {
        v95 = __clz(__rbit64(~v99)) + (v94 << 6);
        goto LABEL_61;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v100 = *(v82 + 32);
  v101 = (((1 << v100) + 63) >> 6);
  if ((v100 & 0x3Fu) > 0xD)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_64;
    }

    v134 = swift_slowAlloc();
    v48 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v134, v101, v83, closure #3 in closure #2 in CloudKitCollaborationInitiationRequest.initiateCollaboration());

    MEMORY[0x2319361B0](v134, -1, -1);
    v138 = 0;
  }

  else
  {
LABEL_64:
    v141 = v136;
    v142 = v101;
    MEMORY[0x28223BE20](v82);
    v103 = v136 - ((v102 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v103, v102);
    v104 = 0;
    v105 = 0;
    v106 = 1 << *(v83 + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & *(v83 + 56);
    v109 = (v106 + 63) >> 6;
    while (v108)
    {
      v110 = __clz(__rbit64(v108));
      v108 &= v108 - 1;
LABEL_74:
      v113 = v110 | (v105 << 6);
      if ([*(*(v83 + 48) + 8 * v113) type] == 2)
      {
        *&v103[(v113 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v113;
        v78 = __OFADD__(v104++, 1);
        if (v78)
        {
          __break(1u);
          goto LABEL_78;
        }
      }
    }

    v111 = v105;
    while (1)
    {
      v105 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        goto LABEL_87;
      }

      if (v105 >= v109)
      {
        break;
      }

      v112 = *(v83 + 56 + 8 * v105);
      ++v111;
      if (v112)
      {
        v110 = __clz(__rbit64(v112));
        v108 = (v112 - 1) & v112;
        goto LABEL_74;
      }
    }

LABEL_78:
    v48 = specialized _NativeSet.extractSubset(using:count:)(v103, v142, v104, v83);
  }

LABEL_79:
  v114 = *(v0 + 200);
  specialized Sequence.compactMap<A>(_:)(v48);

  v115.super.isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 336) = v115;

  v117 = *(*v114 + 136);
  v118 = (v117)(v116);
  v22 = [v118 optionsGroups];
  if (!v22)
  {
    __break(1u);
    goto LABEL_96;
  }

  v119 = v22;
  v120 = *(v0 + 200);

  v121 = CKSharingAccessTypeFromOptionsGroups();
  v122 = v117();
  v22 = [v122 optionsGroups];
  if (!v22)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v123 = v22;
  v124 = *(v0 + 200);

  v125 = CKSharingPermissionTypeFromOptionsGroups();
  v126 = v117();
  v22 = [v126 optionsGroups];
  if (!v22)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return MEMORY[0x282200938](v22);
  }

  v127 = v22;
  v128 = *(v0 + 224);

  v129 = objc_opt_self();
  v130 = CKSharingAllowOthersToInviteFromOptionsGroups();

  *(v0 + 16) = v0;
  *(v0 + 56) = v128;
  *(v0 + 24) = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  v131 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMd, &_sSccy10Foundation3URLV_So7CKShareCts5Error_pGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned CKShare?, @unowned NSError?) -> () with result type (URL, CKShare);
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v131;
  [v129 shareFileOrFolderURL:v139 emailAddresses:v137 phoneNumbers:v115.super.isa accessType:v121 permissionType:v125 allowOthersToInvite:v130 completionHandler:v0 + 80];
  v132 = *MEMORY[0x277D85DE8];
  v22 = (v0 + 16);

  return MEMORY[0x282200938](v22);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v3 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  outlined init with take of (URL, CKShare)(v0[28], v7);
  v0[44] = *(v7 + *(v8 + 48));
  (*(v5 + 32))(v4, v7, v6);

  v0[45] = [objc_allocWithZone(MEMORY[0x277CDC708]) initWithMetadata_];
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[46] = v11;
  v12 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWStartCollaborationActionResponse, 0x277CDC710);
  *v11 = v0;
  v11[1] = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  v13 = v0[25];
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v0 + 19, 0, 0, 0xD000000000000017, 0x8000000231847440, partial apply for closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration(), v13, v12);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v3 = FileProviderCollaborationInitiationRequest.initiateCollaboration();
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v26 = *(v0 + 288);
  v27 = *(v0 + 296);
  v28 = *(v0 + 384);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = *(v0 + 192);
  v8 = *(v0 + 152);
  v9 = (*(*(v0 + 240) + 16))(v7, v5, v6);
  v10 = v4(v9);
  v11 = [v8 updatedMetadata];

  v26(v5, v6);
  v12 = type metadata accessor for FileProviderCollaborationInitiationRequest.Response(0);
  *(v7 + *(v12 + 20)) = v10;
  *(v7 + *(v12 + 24)) = v11;
  if (v28 == 1)
  {
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    v15 = *(v0 + 280);
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 200);
    (*(v0 + 272))();
    URL.stopAccessingSecurityScopedResource()();
    v14(v16, v17);
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);

  v23 = *(v0 + 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 304);
  v5 = *(v0 + 384);
  swift_willThrow();

  v6 = *(v0 + 344);
  if (v5)
  {
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 280);
    v10 = *(v0 + 256);
    v11 = *(v0 + 232);
    v12 = *(v0 + 200);
    (*(v0 + 272))();
    URL.stopAccessingSecurityScopedResource()();
    v8(v10, v11);
  }

  v13 = *(v0 + 264);
  v14 = *(v0 + 200);

  v15 = v6;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v39 = *(v0 + 288);
    v40 = *(v0 + 296);
    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = *(v0 + 256);
    v21 = *(v0 + 232);
    v22 = *(v0 + 200);
    v23 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v23 = 136315394;
    v18();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v39(v20, v21);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v42);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v0 + 144) = v6;
    v28 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v42);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_231772000, v16, v17, "Failed to initiate collaboration on url: %s, error: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v41, -1, -1);
    MEMORY[0x2319361B0](v23, -1, -1);
  }

  v33 = *(v0 + 248);
  v32 = *(v0 + 256);
  v35 = *(v0 + 216);
  v34 = *(v0 + 224);
  swift_willThrow();

  v36 = *(v0 + 8);
  v37 = *MEMORY[0x277D85DE8];

  return v36();
}

{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 384);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);

  v7 = v3(v5, v6);
  v8 = *(v0 + 376);
  if (v4)
  {
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 200);
    (*(v0 + 272))(v7);
    URL.stopAccessingSecurityScopedResource()();
    v10(v12, v13);
  }

  v15 = *(v0 + 264);
  v16 = *(v0 + 200);

  v17 = v8;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v41 = *(v0 + 288);
    v42 = *(v0 + 296);
    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);
    v23 = *(v0 + 232);
    v24 = *(v0 + 200);
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44[0] = v43;
    *v25 = 136315394;
    v20();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v41(v22, v23);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v44);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *(v0 + 144) = v8;
    v30 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v31 = String.init<A>(reflecting:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v44);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_231772000, v18, v19, "Failed to initiate collaboration on url: %s, error: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v43, -1, -1);
    MEMORY[0x2319361B0](v25, -1, -1);
  }

  v35 = *(v0 + 248);
  v34 = *(v0 + 256);
  v37 = *(v0 + 216);
  v36 = *(v0 + 224);
  swift_willThrow();

  v38 = *(v0 + 8);
  v39 = *MEMORY[0x277D85DE8];

  return v38();
}

void closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 160))(v12);
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v10 + 8))(v14, v9);
  v18 = [objc_allocWithZone(MEMORY[0x277CDC708]) initWithMetadata_];
  (*(v5 + 16))(v8, a1, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration();
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _SWActionResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_20;
  v21 = _Block_copy(aBlock);

  SWPerformActionForDocumentURL();
  _Block_release(v21);
}

uint64_t closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);
        return CheckedContinuation.resume(returning:)();
      }
    }

    lazy protocol witness table accessor for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors();
    swift_allocError();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

void thunk for @escaping @callee_guaranteed (@guaranteed _SWActionResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t FileProviderCollaborationInitiationRequest.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t FileProviderCollaborationInitiationRequest.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC11SocialLayer42FileProviderCollaborationInitiationRequest_url;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t protocol witness for CollaborationInitiationRequest.initiateCollaboration() in conformance FileProviderCollaborationInitiationRequest(uint64_t a1)
{
  v4 = *(**v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v8(a1);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss11_SetStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v38 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v39 + 72);
      outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      v26 = *v7;
      NSObject.hash(into:)();
      v27 = *(v40 + 20);
      type metadata accessor for URL();
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of CloudKitCollaborationInitiationRequest.Response.Recipient(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v8 + 32);
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    v2 = v37;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
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

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors()
{
  result = lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors;
  if (!lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors;
  if (!lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileProviderCollaborationInitiationRequest.Errors and conformance FileProviderCollaborationInitiationRequest.Errors);
  }

  return result;
}

uint64_t type metadata completion function for FileProviderCollaborationInitiationRequest()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of FileProviderCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v8(a1);
}

void type metadata completion function for FileProviderCollaborationInitiationRequest.Response()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Set<TUHandle>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for SWCollaborationMetadata, 0x277CDC698);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t partial apply for closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #5 in FileProviderCollaborationInitiationRequest.initiateCollaboration()(a1, a2);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for preview()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.preview);
  __swift_project_value_buffer(v0, static ImageResource.preview);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x231934120](0x77656976657250, 0xE700000000000000, resourceBundle.super.isa);
}

uint64_t one-time initialization function for slAttributionViewMarqueeMask()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.slAttributionViewMarqueeMask);
  __swift_project_value_buffer(v0, static ImageResource.slAttributionViewMarqueeMask);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x231934120](0xD00000000000001CLL, 0x8000000231847520, resourceBundle.super.isa);
}

uint64_t ImageResource.preview.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static ImageResource.preview.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void __SLDAssetCatalog_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Couldn't get sociallayerd's asset catalog. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void SLDCreateGroupPhotoImageWithGroupID_cold_2()
{
  dlerror();
  v0 = abort_report_np();
  SLDCreateGroupPhotoImageWithData_cold_1(v0, v1);
}

void SLDCreateGroupPhotoImageWithData_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 length];
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "SLDCreateGroupPhotoImageWithData had group photo data, but the group photo image ref was still nil. groupPhotoData.length: %li", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void SLDValidateSupplementaryData_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "#SLDCK supplementaryData is supposed to be a dictionary, not a %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void SLDValidateSupplementaryData_cold_2()
{
  OUTLINED_FUNCTION_11();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_15(v0, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK supplementaryData keys must be strings, not %@");
}

void SLDValidateSupplementaryData_cold_3()
{
  OUTLINED_FUNCTION_11();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_15(v0, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK supplementaryData values must be NSURLs, not %@");
}

void __SLDStorageDirectory_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __SLDStorageDirectory_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __SLSendPortraitFeedbackTypeAppButtonForAttribution_block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) uniqueIdentifier];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_1(&dword_231772000, v2, v3, "SLSendPortraitFeedbackTypeAppButtonForAttribution: error sending feedback for attribution: [%@] error: [%@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __SLSendPortraitFeedbackTypeDisplayedHighlight_block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_1(&dword_231772000, v2, v3, "SLSendPortraitFeedbackTypeDisplayedForHighlight: error sending feedback for highlight: [%@] error: [%@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __SLSendPortraitFeedbackTypeUserInteractedWithHighlight_block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_0_1(&dword_231772000, v2, v3, "SLSendPortraitFeedbackTypeUserInteractedWithHighlight: error sending feedback for highlight: [%@] error: [%@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}