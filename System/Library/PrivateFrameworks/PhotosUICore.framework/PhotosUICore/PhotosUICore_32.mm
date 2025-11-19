id sub_1A403C474(char *a1, void *a2)
{
  v177 = a2;
  v180 = a1;
  sub_1A3C2A224(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v173 = &v166 - v3;
  v176 = sub_1A5240E64();
  v171 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1A5241144();
  v174 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v169 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v170 = &v166 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v167 = &v166 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v168 = &v166 - v11;
  v12 = sub_1A5241284();
  v179 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v166 - v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1A524C634();
  v20 = [v18 initWithString_];

  v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v22 = sub_1A524C634();
  v23 = [v21 initWithString_];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = sub_1A524C634();
  v26 = [v24 &selRef:v25 initWithTileView:?];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v182 = 0;
  v183 = 0xE000000000000000;
  sub_1A524E404();

  v182 = 0xD000000000000013;
  v183 = 0x80000001A53C41F0;
  sub_1A5241234();
  sub_1A52411F4();
  v27 = *(v179 + 8);
  v27(v14, v12);
  v28 = v178;
  sub_1A52411E4();
  sub_1A3C29BC4(&qword_1EB130AD8, MEMORY[0x1E6969770]);
  v29 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v29);

  v178 = v12;
  v27(v28, v12);
  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v31 = sub_1A524C634();

  v32 = [v30 initWithString_];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v182 = 0;
  v183 = 0xE000000000000000;
  sub_1A524E404();

  v186 = 0xD000000000000025;
  v187 = 0x80000001A53C4210;
  v33 = sub_1A5241C44();
  v184 = v33;
  v185 = sub_1A3C29BC4(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  v34 = __swift_allocate_boxed_opaque_existential_1(&v182);
  (*(*(v33 - 8) + 104))(v34, *MEMORY[0x1E69BDD40], v33);
  v35 = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(&v182);
  if (v35)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x1A5907B60](v36, v37);

  v38 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v39 = sub_1A524C634();

  v40 = [v38 initWithString_];

  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  [v17 appendAttributedString_];
  v181 = v20;
  [v17 appendAttributedString_];
  v41 = *&v180[OBJC_IVAR___PXGenerativeStoryFeatureEligibilityState_processingStatus];
  if (v41)
  {
    v42 = objc_allocWithZone(MEMORY[0x1E69BE420]);
    v43 = v41;
    v44 = [v42 initWithFeature_];
    v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v46 = sub_1A524C634();
    v47 = [v45 initWithString_];

    [v17 appendAttributedString_];
    LOBYTE(v47) = [v43 wasComputed];
    [v17 appendAttributedString_];
    v180 = v44;
    if (v47)
    {
      [v44 fractionOfCuratedAssetsWithCaptionsThreshold];
      v49 = v48;
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      [v43 fractionOfCuratedAssetsWithCaptions];
      if (v49 <= v50)
      {
        v51 = 8756450;
      }

      else
      {
        v51 = 9215458;
      }

      MEMORY[0x1A5907B60](v51, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000002CLL, 0x80000001A53C4610);
      [v43 fractionOfCuratedAssetsWithCaptions];
      sub_1A524CEF4();
      v52 = 0xE200000000000000;
      MEMORY[0x1A5907B60](8229, 0xE200000000000000);
      [v43 fractionOfCuratedAssetsWithCaptions];
      if (v49 > v53)
      {
        v54 = 60;
      }

      else
      {
        v54 = 15678;
      }

      if (v49 > v53)
      {
        v52 = 0xE100000000000000;
      }

      MEMORY[0x1A5907B60](v54, v52);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](37, 0xE100000000000000);
      v55 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v56 = sub_1A524C634();

      v57 = [v55 &selRef:v56 initWithTileView:?];

      [v17 appendAttributedString_];
      v58 = v181;
      [v17 appendAttributedString_];
      [v44 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
      v60 = v59;
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      [v43 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      if (v60 <= v61)
      {
        v62 = 8756450;
      }

      else
      {
        v62 = 9215458;
      }

      MEMORY[0x1A5907B60](v62, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD000000000000042, 0x80000001A53C45C0);
      [v43 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](8229, 0xE200000000000000);
      [v43 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      if (v60 > v63)
      {
        v64 = 60;
      }

      else
      {
        v64 = 15678;
      }

      if (v60 > v63)
      {
        v65 = 0xE100000000000000;
      }

      else
      {
        v65 = 0xE200000000000000;
      }

      MEMORY[0x1A5907B60](v64, v65);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](37, 0xE100000000000000);
      v66 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v67 = sub_1A524C634();

      v68 = [v66 &selRef:v67 initWithTileView:?];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      [v44 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
      v70 = v69;
      [v43 fractionOfCuratedAssetsIndexedInVUClustering];
      if (v71 == *MEMORY[0x1E69BF150])
      {
        v72 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v73 = sub_1A524C634();
        v74 = [v72 &selRef:v73 initWithTileView:?];
      }

      else
      {
        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1A524E404();
        MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53C4500);
        [v43 fractionOfCuratedAssetsIndexedInVUClustering];
        sub_1A524CEF4();
        MEMORY[0x1A5907B60](8229, 0xE200000000000000);
        [v43 fractionOfCuratedAssetsIndexedInVUClustering];
        if (v70 <= v79)
        {
          v80 = 15678;
        }

        else
        {
          v80 = 60;
        }

        if (v70 <= v79)
        {
          v81 = 0xE200000000000000;
        }

        else
        {
          v81 = 0xE100000000000000;
        }

        MEMORY[0x1A5907B60](v80, v81);

        MEMORY[0x1A5907B60](32, 0xE100000000000000);
        sub_1A524CEF4();
        MEMORY[0x1A5907B60](5972005, 0xE300000000000000);
        [v43 fractionOfCuratedAssetsIndexedInVUClustering];
        if (v70 <= v82)
        {
          v83 = 8756450;
        }

        else
        {
          v83 = 9215458;
        }

        MEMORY[0x1A5907B60](v83, 0xA300000000000000);

        MEMORY[0x1A5907B60](93, 0xE100000000000000);
        v84 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v73 = sub_1A524C634();

        v74 = [v84 &selRef:v73 initWithTileView:?];
      }

      v85 = v74;

      [v17 appendAttributedString_];
      v86 = v181;
      [v17 appendAttributedString_];
      v87 = v180;
      [v180 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold];
      v89 = v88;
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      [v43 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      if (v89 <= v90)
      {
        v91 = 8756450;
      }

      else
      {
        v91 = 9215458;
      }

      MEMORY[0x1A5907B60](v91, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53C44B0);
      [v43 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](8229, 0xE200000000000000);
      [v43 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      if (v89 > v92)
      {
        v93 = 60;
      }

      else
      {
        v93 = 15678;
      }

      if (v89 > v92)
      {
        v94 = 0xE100000000000000;
      }

      else
      {
        v94 = 0xE200000000000000;
      }

      MEMORY[0x1A5907B60](v93, v94);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      sub_1A524CEF4();
      MEMORY[0x1A5907B60](37, 0xE100000000000000);
      v95 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v96 = sub_1A524C634();

      v97 = [v95 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v98 = [v87 minimumNumberOfCuratedAssets];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();

      v182 = 91;
      v183 = 0xE100000000000000;
      if ([v43 numberOfCuratedAssets] >= v98)
      {
        v99 = 8756450;
      }

      else
      {
        v99 = 9215458;
      }

      MEMORY[0x1A5907B60](v99, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000001DLL, 0x80000001A53C4490);
      v186 = [v43 numberOfCuratedAssets];
      v100 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v100);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      v101 = [v43 numberOfCuratedAssets];
      v102 = v101 < v98;
      if (v101 >= v98)
      {
        v103 = 15678;
      }

      else
      {
        v103 = 60;
      }

      if (v102)
      {
        v104 = 0xE100000000000000;
      }

      else
      {
        v104 = 0xE200000000000000;
      }

      MEMORY[0x1A5907B60](v103, v104);

      MEMORY[0x1A5907B60](32, 0xE100000000000000);
      v186 = v98;
      v105 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v105);

      v106 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v107 = sub_1A524C634();

      v108 = [v106 initWithString_];

      [v17 appendAttributedString_];
      v109 = v181;
      [v17 appendAttributedString_];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();

      v182 = 91;
      v183 = 0xE100000000000000;
      if ([v43 photosKnowledgeGraphIsReady])
      {
        v110 = 8756450;
      }

      else
      {
        v110 = 9215458;
      }

      MEMORY[0x1A5907B60](v110, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD000000000000021, 0x80000001A53C4320);
      v111 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v112 = sub_1A524C634();

      v113 = [v111 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();

      v182 = 91;
      v183 = 0xE100000000000000;
      if ([v43 vuIndexIsFullClustered])
      {
        v114 = 8756450;
      }

      else
      {
        v114 = 9215458;
      }

      MEMORY[0x1A5907B60](v114, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000001CLL, 0x80000001A53C4350);
      v115 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v116 = sub_1A524C634();

      v117 = [v115 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v182 = 0;
      v183 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](91, 0xE100000000000000);
      v166 = v43;
      if ([v43 hasConsistentMediaAnalysisImageVersion])
      {
        v118 = 8756450;
      }

      else
      {
        v118 = 9215458;
      }

      MEMORY[0x1A5907B60](v118, 0xA300000000000000);

      MEMORY[0x1A5907B60](0xD00000000000004BLL, 0x80000001A53C4370);
      v119 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v120 = sub_1A524C634();

      v121 = [v119 initWithString_];

      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      [v17 appendAttributedString_];
      v122 = objc_opt_self();
      v123 = &selRef_owner;
      v124 = [v177 photoLibraryURL];
      v125 = v175;
      sub_1A5240DE4();

      v126 = sub_1A5240D44();
      v127 = v171[1];
      v127(v125, v176);
      v128 = [v122 fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL_];

      if (v128)
      {
        v129 = v167;
        sub_1A52410F4();

        v130 = *(v174 + 32);
        v171 = v122;
        v131 = v168;
        v132 = v172;
        v130(v168, v129, v172);
        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1A524E404();

        v182 = 0xD000000000000025;
        v183 = 0x80000001A53C4460;
        v133 = v173;
        sub_1A52411E4();
        (*(v179 + 56))(v133, 0, 1, v178);
        v134 = sub_1A5241014();
        v136 = v135;
        sub_1A403E26C(v133, &qword_1EB126008, MEMORY[0x1E6969770]);
        MEMORY[0x1A5907B60](v134, v136);

        v137 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v138 = sub_1A524C634();

        v123 = &selRef_owner;
        v139 = [v137 initWithString_];

        [v17 &selRef_allowsTimelineRecombination + 3];
        v140 = v131;
        v122 = v171;
        (*(v174 + 8))(v140, v132);
      }

      else
      {
        v141 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v142 = sub_1A524C634();
        v143 = [v141 initWithString_];

        [v17 appendAttributedString_];
        v132 = v172;
      }

      [v17 appendAttributedString_];
      v144 = [v177 v123[414]];
      v145 = v175;
      sub_1A5240DE4();

      v146 = sub_1A5240D44();
      v127(v145, v176);
      v147 = [v122 fetchImagePriority1MCEnableDateWithPhotoLibraryURL_];

      if (v147)
      {
        v148 = v169;
        sub_1A52410F4();

        v149 = v174;
        v150 = v170;
        (*(v174 + 32))(v170, v148, v132);
        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1A524E404();

        v182 = 0xD00000000000001DLL;
        v183 = 0x80000001A53C4440;
        v151 = v173;
        sub_1A52411E4();
        (*(v179 + 56))(v151, 0, 1, v178);
        v152 = sub_1A5241014();
        v154 = v153;
        sub_1A403E26C(v151, &qword_1EB126008, MEMORY[0x1E6969770]);
        MEMORY[0x1A5907B60](v152, v154);

        v155 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v156 = sub_1A524C634();

        v157 = [v155 initWithString_];

        [v17 &selRef_allowsTimelineRecombination + 3];
        (*(v149 + 8))(v150, v132);
      }

      else
      {
        v158 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v159 = sub_1A524C634();
        v160 = [v158 initWithString_];

        [v17 appendAttributedString_];
      }

      v43 = v166;
      [v17 appendAttributedString_];
      v161 = *MEMORY[0x1E69DB688];
      v162 = [objc_opt_self() defaultParagraphStyle];
      v163 = v17;
      [v163 addAttribute:v161 value:v162 range:{0, objc_msgSend(v163, sel_length)}];

      v164 = *MEMORY[0x1E69DB648];
      v78 = [objc_opt_self() boldSystemFontOfSize_];
      [v163 addAttribute:v164 value:v78 range:{0, objc_msgSend(v163, sel_length)}];
    }

    else
    {
      v76 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v77 = sub_1A524C634();
      v78 = [v76 initWithString_];

      [v17 appendAttributedString_];
    }

    v75 = v180;
  }

  else
  {
    v75 = v181;
  }

  return v17;
}

uint64_t sub_1A403DE70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A4039FFC(v2, v3, v4);
}

uint64_t sub_1A403DF30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A403AAA4(v2, v3, v4);
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A403E030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A403AB8C(a1, v4, v5, v6);
}

uint64_t sub_1A403E0FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return sub_1A3C68D48(a1, v4);
}

uint64_t sub_1A403E1B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A3C68D48(a1, v4);
}

uint64_t sub_1A403E26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C2A224(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A403E2DC()
{
  if (!qword_1EB120B78)
  {
    sub_1A3C52C70(255, &qword_1EB120868);
    sub_1A3DBD9A0();
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120B78);
    }
  }
}

id LemonadeDetailsViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeDetailsViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDetailsViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeDetailsViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDetailsViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s12PhotosUICore26LemonadeDetailsViewFactoryC04makedE10Controller06photosE13ConfigurationSo06UIViewH0CSo08PXPhotoseJ0C_tFZ_0()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v2 = 2;
  v1 = 3;
  v0 = sub_1A3C6E9EC();
  PXPhotosViewConfiguration.adjustedForLemonadePhotosGrid(item:navigationType:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(v3, &v2, 0, &v1, v0, 0);
}

uint64_t sub_1A403E594(uint64_t a1)
{
  sub_1A403E5F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A403E5F0()
{
  if (!qword_1EB128C80)
  {
    sub_1A3D8F9B8();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128C80);
    }
  }
}

void *sub_1A403E648()
{
  v0 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  v1 = v0;
  return v0;
}

void sub_1A403E684()
{
  sub_1A40412DC();
  v0 = sub_1A4043D50();
  sub_1A403E6FC(v0);

  v1 = sub_1A4043D50();
  sub_1A403ED50(v1);
}

uint64_t sub_1A403E6FC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = [a1 px_localizedName];
  v6 = sub_1A524C674();
  v8 = v7;

  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (![a1 px_isHuman])
  {
    goto LABEL_11;
  }

  v10 = v1 + qword_1EB130BF8;
  v11 = *(v1 + qword_1EB130BF8 + 8);
  v75 = v4;
  if (v11)
  {
    v12 = [v11 name];
    if (v12)
    {
      v13 = v6;
      v14 = ObjectType;
      v15 = v9;
      v16 = v12;
      sub_1A524C674();

      v17 = sub_1A524C7A4();

      v18 = v17 < 1;
      v9 = v15;
      ObjectType = v14;
      v6 = v13;
      v4 = v75;
      if (!v18)
      {
LABEL_8:
        v19 = v10[16] ^ 1;
        if ((sub_1A4044B90() & 1) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        v74 = v9;
        v29 = sub_1A3C38BD4();
        v72 = v30;
        v73 = v29;
        v31 = v4;
        v32 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        v23[2] = *(v31 + 80);
        v23[3] = v32;
        v23[4] = a1;
        v23[5] = ObjectType;
        v33 = a1;
        v24 = sub_1A404A1A0;
LABEL_16:
        v34 = v24;

        v35 = sub_1A3C47918();
        v37 = v36;
        v38 = sub_1A3C47918();
        v40 = v39;
        v41 = sub_1A3D8D2BC();
        sub_1A479BE9C(v35, v37, v38, v40, v34, v23, v73, v72, &v77, v41, v42);
        v25 = sub_1A4047AC4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v44 = *(v25 + 2);
        v43 = *(v25 + 3);
        if (v44 >= v43 >> 1)
        {
          v25 = sub_1A4047AC4((v43 > 1), v44 + 1, 1, v25);
        }

        v4 = v75;

        *(v25 + 2) = v44 + 1;
        v45 = &v25[96 * v44];
        *(v45 + 4) = v79;
        *(v45 + 5) = v80;
        *(v45 + 6) = v81;
        *(v45 + 7) = v82;
        *(v45 + 2) = v77;
        *(v45 + 3) = v78;
        if (!v74)
        {
          goto LABEL_19;
        }

LABEL_12:
        sub_1A3C38BD4();
        sub_1A3C68B24(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1A52F8E10;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1A3D710E8();
        *(v26 + 32) = v6;
        *(v26 + 40) = v8;
        v27 = sub_1A524C6C4();
        goto LABEL_20;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_8;
  }

  v19 = 0;
  if (sub_1A4044B90())
  {
    goto LABEL_15;
  }

LABEL_9:
  if (v19)
  {
    v74 = v9;
    v20 = sub_1A3C38BD4();
    v72 = v21;
    v73 = v20;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = *(v4 + 80);
    v23[3] = v22;
    v24 = sub_1A404A0FC;
    goto LABEL_16;
  }

LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_19:

  v46 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  v47 = objc_opt_self();
  v48 = v46;
  v49 = sub_1A524C634();
  v50 = [v47 locKeyForPersonOrPet:v48 key:v49];

  sub_1A524C674();
  v27 = sub_1A3C38BD4();
LABEL_20:
  v51 = v27;
  v52 = v28;

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v54[2] = *(v4 + 80);
  v54[3] = v53;
  v54[4] = a1;
  v55 = a1;

  v56 = sub_1A3C47918();
  v58 = v57;
  v59 = sub_1A3C47918();
  v61 = v60;
  v62 = sub_1A3D8D2BC();
  sub_1A479BE9C(v56, v58, v59, v61, sub_1A4049F48, v54, v51, v52, &v77, v62, v63);

  sub_1A404A04C(&v77, v76);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1A4047AC4(0, *(v25 + 2) + 1, 1, v25);
  }

  v65 = *(v25 + 2);
  v64 = *(v25 + 3);
  if (v65 >= v64 >> 1)
  {
    v25 = sub_1A4047AC4((v64 > 1), v65 + 1, 1, v25);
  }

  *(v25 + 2) = v65 + 1;
  v66 = &v25[96 * v65];
  v67 = v78;
  *(v66 + 2) = v77;
  *(v66 + 3) = v67;
  v68 = v79;
  v69 = v80;
  v70 = v82;
  *(v66 + 6) = v81;
  *(v66 + 7) = v70;
  *(v66 + 4) = v68;
  *(v66 + 5) = v69;
  sub_1A4042EFC();
  return sub_1A404A0A8(&v77);
}

void sub_1A403ED50(id a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = v1 + qword_1EB130BF8;
  v5 = *(v4 + 1);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 fullName];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1A524C674();
      v11 = v10;

      goto LABEL_11;
    }
  }

  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v9 = sub_1A524C674();
    v11 = v14;

    v15 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v15 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
LABEL_11:
      v16 = v4[16];
      if (v16 == 2 || (v16 & 1) == 0)
      {
        if (v11)
        {
          v17 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v17 = v9 & 0xFFFFFFFFFFFFLL;
          }

          if (v17)
          {
LABEL_19:
            sub_1A3C489FC(0, &qword_1EB130C28, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E6F90]);
            *(swift_allocObject() + 16) = xmmword_1A52F8E10;
            v21 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v22 = swift_allocObject();
            *(v22 + 16) = *(v3 + 80);
            *(v22 + 24) = v21;

            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }
      }

      else
      {
      }

      v18 = objc_opt_self();
      v19 = sub_1A524C634();
      v20 = [v18 locKeyForPersonOrPet:a1 key:v19];

      sub_1A524C674();
      sub_1A3C38BD4();

      goto LABEL_19;
    }
  }

  v9 = 0;
  v11 = 0;
  goto LABEL_11;
}

uint64_t sub_1A403F094(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if (sub_1A4044B90())
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = *(v4 + 80);
    v6[3] = v5;
    v6[4] = a1;
    v6[5] = ObjectType;

    v7 = a1;
    sub_1A4040338(sub_1A4049BE4, v6);
  }

  else
  {

    return sub_1A4040338(0, 0);
  }
}

void sub_1A403F1C0(void *a1)
{
  if (sub_1A4044B90())
  {
    v3 = *(v1 + qword_1EB130BF8 + 8);
    if (v3 && (v4 = [v3 contact]) != 0)
    {
      v5 = v4;
      v6 = [v4 identifier];
      v7 = sub_1A524C674();
      v9 = v8;
    }

    else
    {
      v10 = [a1 personUri];
      if (!v10)
      {
        goto LABEL_12;
      }

      v6 = v10;
      v7 = sub_1A524C674();
      v9 = v11;
    }

    v12 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v12 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1A4044D38(v7, v9);
    }
  }

LABEL_12:
  sub_1A4041034(0, &qword_1EB130B30);
}

id sub_1A403F654@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  *a1 = v2;

  return v2;
}

void sub_1A403F6A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A403F6D0(v1);
}

void sub_1A403F6D0(void *a1)
{
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v2 = sub_1A524C594();
  if (v2)
  {
    sub_1A4047C1C(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A403F8D0();
  }
}

uint64_t sub_1A403F85C()
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415D4();
}

uint64_t sub_1A403F8D0()
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415C4();
}

uint64_t (*sub_1A403F97C(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  v3 = *(v1 + qword_1EB130AE8);
  *a1 = v3;
  v4 = v3;
  return sub_1A403FAA8;
}

uint64_t sub_1A403FAA8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A4047C1C(v2);

    v2 = v3;
  }

  else
  {
    sub_1A4047C1C(*a1);
  }

  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();
}

uint64_t sub_1A403FB94()
{
  v0 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (!v0)
  {
    return 0;
  }

  v1 = [v0 localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A403FC6C()
{
  v1 = qword_1EB130AF8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A403FCB0(char a1)
{
  v3 = qword_1EB130AF8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A403FDC0()
{
  v1 = qword_1EB130B08;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A403FE04(char a1)
{
  v3 = qword_1EB130B08;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A403FEB4@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB130B18;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A403FF08(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB130B18;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_1A403FFB8()
{
  sub_1A4048514(&unk_1A5313ED0, &qword_1EB130B20);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A403FFF0(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4048514(&unk_1A5313ED0, &qword_1EB130B20);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A4040084(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40401B4;
}

uint64_t sub_1A40401C0()
{
  v0 = sub_1A404816C(&unk_1A5313F08, &qword_1EB130B28);
  sub_1A3C66EE8(v0);
  return v0;
}

uint64_t sub_1A4040204@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1A404816C(&unk_1A5313F08, &qword_1EB130B28);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return sub_1A3C66EE8(v2);
}

uint64_t sub_1A40402A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A3E30F88;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A3C66EE8(v1);
  return sub_1A4040338(v4, v3);
}

uint64_t sub_1A4040338(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB130B28);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A403F8D0();
  sub_1A3C33378(a1);
}

uint64_t (*sub_1A4040534(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4040664;
}

void *sub_1A4040670()
{
  v0 = sub_1A4048514(&unk_1A5313F40, &qword_1EB130B30);
  v1 = v0;
  return v0;
}

id sub_1A40406AC@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048514(&unk_1A5313F40, &qword_1EB130B30);
  *a1 = v2;

  return v2;
}

void sub_1A40406F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4041034(v1, &qword_1EB130B30);
}

uint64_t (*sub_1A404074C(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A404087C;
}

uint64_t sub_1A4040888()
{
  v1 = qword_1EB130B38;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A40408CC(char a1)
{
  v3 = qword_1EB130B38;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A404097C()
{
  v0 = sub_1A404816C(&unk_1A5313F78, &qword_1EB130B40);

  return v0;
}

uint64_t sub_1A40409C4@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1A404816C(&unk_1A5313F78, &qword_1EB130B40);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *a1 = sub_1A3DDBE10;
  a1[1] = v5;
}

uint64_t sub_1A4040A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_1A4040ABC();
}

uint64_t sub_1A4040ABC()
{
  swift_getKeyPath();
  sub_1A403F8D0();
}

uint64_t (*sub_1A4040B70(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4040CA0;
}

uint64_t sub_1A4040D0C()
{
  swift_getKeyPath();
  sub_1A403F85C();

  v1 = (v0 + qword_1EB130B50);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1A4040DC4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A4040D0C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1A4040DF8()
{

  return sub_1A4040E48();
}

uint64_t sub_1A4040E48()
{
  swift_getKeyPath();
  sub_1A403F8D0();
}

uint64_t sub_1A4040F14()
{
  v1 = qword_1EB130B58;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1A4040F58()
{
  v0 = sub_1A4048514(&unk_1A5313FE8, &qword_1EB130B60);
  v1 = v0;
  return v0;
}

id sub_1A4040F94@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048514(&unk_1A5313FE8, &qword_1EB130B60);
  *a1 = v2;

  return v2;
}

void sub_1A4040FE0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4041034(v1, &qword_1EB130B60);
}

void sub_1A4041034(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1A3C4B7E8(0, &qword_1EB126620, &qword_1EB126630);
  sub_1A3EBA4B8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A403F8D0();
  }
}

uint64_t (*sub_1A40411A0(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40412D0;
}

void sub_1A40412DC()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  *&v3 = COERCE_DOUBLE(sub_1A40415C0());
  if ((v5 & 1) == 0)
  {
    v6 = *&v3;
    v7 = v4;
    v8 = sub_1A4043D50();
    swift_getObjectType();
    sub_1A4943D64();
    v10 = [objc_allocWithZone(PXPeopleFaceCropFetchOptions) initWithPerson:v8 targetSize:v6 displayScale:{v7, v9}];

    v11 = *(v1 + qword_1EB130BF8);
    if (v11)
    {
      v12 = v11;
      [v10 setAsset_];
      [v10 setShouldCacheResult_];
    }

    [v10 setCornerStyle_];
    [v10 setDeliveryMode_];
    v13 = [objc_opt_self() sharedManager];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = *(v2 + 80);
    *(v15 + 24) = v14;
    v17[4] = sub_1A404A544;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1A4044608;
    v17[3] = &block_descriptor_125_0;
    v16 = _Block_copy(v17);

    [v13 requestFaceCropForOptions:v10 resultHandler:v16];
    _Block_release(v16);
  }
}

void (*sub_1A4041528(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A404158C;
}

void sub_1A404158C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A40412DC();
  }
}

uint64_t sub_1A40415C0()
{
  swift_getKeyPath();
  sub_1A403F85C();

  v1 = v0 + qword_1EB130B68;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A4041654@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A40415C0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

void sub_1A40416BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = a3 & 1;
  sub_1A3C68B24(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB130B68;
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = v8;
    sub_1A40412DC();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A403F8D0();
  }
}

void (*sub_1A404189C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  swift_getKeyPath();
  sub_1A403F85C();

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4041528(v4);
  return sub_1A4041A1C;
}

void sub_1A4041A1C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A4041B00@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB130B80;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A4041B54(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB130B80;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A4041C04()
{
  v1 = qword_1EB130B88;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4041C48(char a1)
{
  v3 = qword_1EB130B88;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4041D0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4041CF8();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_1A4041D88(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4041EB8;
}

uint64_t sub_1A4041EB8()
{
  swift_endAccess();

  return sub_1A4041EF0();
}

uint64_t sub_1A4041EF0()
{
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();
}

uint64_t sub_1A4041FA8()
{
  v1 = qword_1EB130B98;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4041FEC(uint64_t a1)
{
  v3 = qword_1EB130B98;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A404209C(uint64_t a1)
{
  v3 = qword_1EB130BA0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A4042154(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v7;
  if (*(a1 + 16))
  {
    v10 = *(v3 + 16);
    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10(&v21 - v7, a1 + v11, v2, v8);
    v12 = sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);
    if (*(v12 + 16))
    {
      (v10)(v5, v12 + v11, v2);
      v13 = sub_1A523FB64();
      v15 = v14;
      v16 = *(v3 + 8);
      v16(v5, v2);
      v17 = sub_1A523FB64();
      if (v15)
      {
        if (v18)
        {
          if (v13 == v17 && v15 == v18)
          {

LABEL_17:

            v16(v9, v2);
            return;
          }

          v20 = sub_1A524EAB4();

          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_14:
        sub_1A40423D4(v13, v15);
      }
    }

    else
    {
      sub_1A523FB64();
      v13 = 0;
    }

    if (!v18)
    {
      (*(v3 + 8))(v9, v2);
      return;
    }

    v15 = 0;
    goto LABEL_14;
  }
}

void sub_1A404239C()
{
  sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40423D4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v13 = *v2;
  v12 = *MEMORY[0x1E69E7D40];
  v3 = sub_1A524BEE4();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v16 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v16);
  v4 = sub_1A524BEF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F88], v4);
  sub_1A524D4C4();
  (*(v5 + 8))(v7, v4);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = *((v12 & v13) + 0x50);
  v9[3] = v8;
  v10 = v15;
  v9[4] = v14;
  v9[5] = v10;
  aBlock[4] = sub_1A404AA9C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_193_0;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40427F0(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4042868(uint64_t a1)
{
  sub_1A3C68B24(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v3 = sub_1A524C594();
  if (v3)
  {
    v4 = *(v1 + qword_1EB130BA8);
    *(v1 + qword_1EB130BA8) = a1;
    sub_1A4042154(v4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A403F8D0();
  }
}

void sub_1A40429F8(void *a1)
{
  a1[1] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  *a1 = *(v1 + qword_1EB130BA8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4042B24(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + qword_1EB130BA8);
  *(v2 + qword_1EB130BA8) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4042154(v3);

  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();
}

uint64_t sub_1A4042C20()
{
  v1 = qword_1EB130BB8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4042C64(char a1)
{
  v3 = qword_1EB130BB8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4042D74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_1A4042E30()
{
  sub_1A4048514(&unk_1A53140C8, &qword_1EB130BD0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4042E68(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4048514(&unk_1A53140C8, &qword_1EB130BD0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4042EFC()
{
  swift_getKeyPath();
  sub_1A403F8D0();
}

uint64_t (*sub_1A4042FA4(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40430D4;
}

uint64_t sub_1A40430F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A40430E0();
  *a1 = result;
  return result;
}

uint64_t sub_1A4043148(uint64_t a1)
{
  v3 = qword_1EB130BD8;
  swift_beginAccess();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A403F8D0();
  }

  return result;
}

uint64_t (*sub_1A4043294(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40433C4;
}

uint64_t sub_1A40433E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A40433D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A4043460(char a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  swift_beginAccess();
  result = sub_1A524C594();
  if (result)
  {
    *(v3 + v5) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A403F8D0();
  }

  return result;
}

uint64_t (*sub_1A40435B0(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A40436E0;
}

uint64_t sub_1A40436EC()
{
  v1 = qword_1EB130BE8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4043730(char a1)
{
  v3 = qword_1EB130BE8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4043854(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A403F85C();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A40438E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4043840();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_1A404395C(void *a1))()
{
  a1[3] = v1;
  swift_getObjectType();
  swift_getKeyPath();
  sub_1A403F85C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4043A8C;
}

uint64_t sub_1A4043A98()
{
  swift_endAccess();
  swift_getObjectType();
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1A52415E4();
}

void sub_1A4043B58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_1A4043BD0(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = v1 + qword_1EB130BF8;
  v5 = *(v1 + qword_1EB130BF8 + 8);
  v6 = *(v1 + qword_1EB130BF8 + 16);
  v24 = *(v1 + qword_1EB130BF8);
  v25 = v5;
  v26 = v6;
  v7 = v5;
  v8 = v24;
  v9 = sub_1A4043D50();
  v10 = static LemonadeCollectionCustomizationPeopleModelUtilities.initialResultItem(for:person:)(&v24, v9);

  v11 = v25;
  v12 = *(v4 + 1);
  v14 = v4[16];
  v24 = *v4;
  v13 = v24;
  v25 = v12;
  v26 = v14;
  v15 = v12;
  v16 = v13;
  static LemonadeCollectionCustomizationPeopleModelUtilities.initialString(for:changeToBeMade:)(v10, &v24);
  v17 = v25;

  v18 = sub_1A4043D50();
  v19 = *v4;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = *((v3 & v2) + 0x50);
  *(v21 + 24) = v20;
  v22 = v19;

  LemonadePeopleNamingView.init(person:initialResultItem:keyAssetOverride:initialString:namePickerBlock:)(v18, v10, v19, sub_1A40489B0, v21, a1);
}

id sub_1A4043D50()
{
  v1 = *(v0 + qword_1EB130BF8 + 8);
  if (v1 && [v1 person])
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v3 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (v3)
  {

    return v3;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4043E74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + qword_1EB130BF8;
  v4 = *(v1 + qword_1EB130BF8);
  v5 = *(v1 + qword_1EB130BF8 + 8);
  *v3 = *a1;
  *(v3 + 16) = v2;

  v6 = v1 + qword_1EB130BF8;
  v7 = *(v1 + qword_1EB130BF8) || *(v6 + 8) || *(v6 + 16) != 2;
  v8 = sub_1A4043460(v7, &qword_1EB130BE0);

  return sub_1A403E684(v8);
}

uint64_t sub_1A4043F24()
{
  swift_getKeyPath();
  sub_1A403F85C();

  return *(v0 + qword_1EB130C20);
}

uint64_t sub_1A4043F9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4043F24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A4043FF4(char a1)
{
  v2 = qword_1EB130C20;
  v3 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A403F8D0();
  }

  return result;
}

uint64_t sub_1A4044134(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1A4048A4C(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

void sub_1A404418C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    swift_getKeyPath();
    sub_1A403F85C();

    MEMORY[0x1EEE9AC00](v2);
    swift_getKeyPath();
    type metadata accessor for LemonadeCollectionCustomizationPeopleModel();
    swift_getWitnessTable();
    sub_1A52415F4();

    v3 = qword_1EB130B90;
    swift_beginAccess();
    v1[v3] = (v1[v3] & 1) == 0;
    sub_1A4041EF0();
  }
}

void sub_1A40442FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v8);
  v11 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v11);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524D474();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = a2;
  aBlock[4] = sub_1A404A54C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_131_2;
  _Block_copy(aBlock);
  v10 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4044608(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_1A524C3E4();

  v5 = a2;
  v3(a2, v4);
}

void sub_1A40446AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A524D244();
  v7 = *sub_1A3CAA3FC();
  sub_1A5246DF4();
}

uint64_t sub_1A4044B90()
{
  v1 = *(v0 + qword_1EB130BF8 + 16);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *(v0 + qword_1EB130BF8 + 8);
  v4 = v3;
  v5 = [v4 contact];
  if (v5)
  {
  }

  else
  {
    v7 = sub_1A4043D50();
    v8 = [v7 personUri];

    if (!v8 || (sub_1A524C674(), v8, v9 = sub_1A524C7A4(), , !v9))
    {

      return 0;
    }
  }

  v6 = [v4 person];

  if (v6)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    if (v3)
    {
      v10 = [v4 name];
      if (v10)
      {

        v11 = [v4 name];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1A524C674();
          v15 = v14;

          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        else
        {

          v16 = 0;
          v15 = 0xE000000000000000;
        }

        v17 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v17 = v16;
        }

        if (v17)
        {
          return 0;
        }
      }

      else
      {
      }
    }

    return 1;
  }
}

void sub_1A4044D38(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  sub_1A3C489FC(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40451B8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A524BEE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30 = v15;
    sub_1A3C52C70(0, &qword_1EB12B180);
    v18 = a1;
    v19 = sub_1A524D474();
    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a4;
    v20[4] = v18;
    aBlock[4] = sub_1A4049AB0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_88;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4049B38(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C68B24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v17, v12, v21);
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v17, v30);
  }

  else
  {
    v24 = sub_1A524D244();
    v25 = *sub_1A3CAA3FC();
    result = os_log_type_enabled(v25, v24);
    if (result)
    {
      v26 = v25;
      v27 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v27 = 136315394;
      v28 = [a2 identifier];
      sub_1A524C674();

      sub_1A3C2EF94();
    }
  }

  return result;
}

void sub_1A404562C()
{
  v1 = v0;
  v2 = qword_1EB130C08;
  v3 = *(v0 + qword_1EB130C08);
  if (v3)
  {
    v3 = [v3 navigationController];
  }

  v16 = v3;
  v4 = [v3 topViewController];
  v5 = *(v0 + v2);
  if (v4)
  {
    v6 = v4;
    if (v5)
    {
      sub_1A3C52C70(0, &qword_1EB126B10);
      v7 = v5;
      v8 = sub_1A524DBF4();

      if (v8)
      {
        v9 = v16;
        if (!v16)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else if (!v5)
  {
    v10 = 0;
    v9 = v16;
    if (!v16)
    {
LABEL_13:
      v13 = *(v1 + v2);
      *(v1 + v2) = 0;
      goto LABEL_16;
    }

LABEL_10:
    v11 = [v9 presentingViewController];
    if (v11)
    {
      v12 = v11;
      [v11 dismissViewControllerAnimated:1 completion:0];
    }

    goto LABEL_13;
  }

  sub_1A524D244();
  v15 = *sub_1A3CAA3FC();
  sub_1A5246DF4();

  v13 = v16;
LABEL_16:
}

void sub_1A40457B8(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1A404902C();
  swift_unknownObjectRelease();
}

void sub_1A4045818(void *a1)
{
  v1 = a1;
  sub_1A404562C();
}

id sub_1A4045860(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_1A524BEE4();
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A524BF64();
  v8 = *(v30 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 objectAfterChanges];
  v13 = v12;
  v29 = v8;
  if (!v12)
  {
    v22 = 0;
LABEL_10:
    v23 = v13;
    goto LABEL_11;
  }

  v14 = v12;
  if ([v14 verifiedType] != -2)
  {

    v22 = v13;
    goto LABEL_10;
  }

  v15 = v14;
  result = [v15 photoLibrary];
  if (result)
  {
    v17 = result;
    v18 = [result librarySpecificFetchOptions];

    v19 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v19)
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      sub_1A524CA34();
      v19 = sub_1A524CA14();
    }

    [v18 setIncludedDetectionTypes_];

    result = [v15 uuid];
    if (result)
    {
      v20 = result;

      v21 = [objc_opt_self() fetchFinalMergeTargetPersonsForPersonWithUUID:v20 options:v18];
      v22 = [v21 firstObject];

LABEL_11:
      sub_1A3C52C70(0, &qword_1EB12B180);
      v24 = v22;
      v25 = sub_1A524D474();
      v26 = swift_allocObject();
      v26[2] = v28;
      v26[3] = a2;
      v26[4] = v22;
      aBlock[4] = sub_1A404A788;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_160;
      v27 = _Block_copy(aBlock);

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A4049B38(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A3C68B24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v11, v7, v27);
      _Block_release(v27);

      (*(v31 + 8))(v7, v5);
      return (*(v29 + 8))(v11, v30);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4045D08(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A524C3E4();
  }

  v6 = a3;
  v7 = a1;
  sub_1A404909C();
}

void sub_1A4045DA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A4049538();
}

void sub_1A4045E00(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1A4049674(v7);
}

uint64_t sub_1A4045EA0(uint64_t a1)
{

  sub_1A3C33378(*(a1 + qword_1EB130B28));

  sub_1A3C33378(*(a1 + qword_1EB130BC0));

  sub_1A3C33378(*(a1 + qword_1EB130BF0));
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1EB130BF8 + 8);
  v3 = qword_1EB1A1EE0;
  v4 = sub_1A5241614();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

id sub_1A4046094@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  *a1 = v2;

  return v2;
}

void (*sub_1A4046108(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A403F97C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046224(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A403FC0C();
  return sub_1A3E658B0;
}

void (*sub_1A40462E4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A403FD00();
  return sub_1A3E658B0;
}

void (*sub_1A40463C8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A403FD60();
  return sub_1A3E658B0;
}

uint64_t sub_1A404643C()
{
  v0 = sub_1A404816C(&unk_1A5313F78, &qword_1EB130B40);

  return v0;
}

void (*sub_1A40464AC(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4040B70(v2);
  return sub_1A3E658B0;
}

void (*sub_1A404656C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A403FE54();
  return sub_1A3E658B0;
}

void (*sub_1A4046694(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A4040CAC();
  return sub_1A3E658B0;
}

void (*sub_1A4046764(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A403FF58();
  return sub_1A3E658B0;
}

void sub_1A40467D8()
{
  sub_1A4048514(&unk_1A5313ED0, &qword_1EB130B20);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A404685C(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4040084(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A40468D0()
{
  v0 = sub_1A404816C(&unk_1A5313F08, &qword_1EB130B28);
  sub_1A3C66EE8(v0);
  return v0;
}

void (*sub_1A404693C(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4040534(v2);
  return sub_1A3E658B0;
}

void *sub_1A40469B0()
{
  v0 = sub_1A4048514(&unk_1A5313F40, &qword_1EB130B30);
  v1 = v0;
  return v0;
}

void (*sub_1A4046A38(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A404074C(v2);
  return sub_1A3E658B0;
}

void *sub_1A4046B00()
{
  v0 = sub_1A4048514(&unk_1A5313FE8, &qword_1EB130B60);
  v1 = v0;
  return v0;
}

void (*sub_1A4046B88(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40411A0(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046C4C(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A404189C(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046D1C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A4041BA4();
  return sub_1A3E658B0;
}

void sub_1A4046D90()
{
  sub_1A404839C();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4046E10(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A4041C98();
  return sub_1A3E658B0;
}

void (*sub_1A4046EF4(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4041D88(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4046FB4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A404091C();
  return sub_1A3E658B0;
}

void sub_1A4047028()
{
  sub_1A4048400();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4047080(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40420F4();
  return sub_1A3E658B0;
}

void sub_1A40470F4()
{
  sub_1A4048444(&unk_1A5314090, &qword_1EB130BA8);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A404715C(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  sub_1A40429F8(v2);
}

void (*sub_1A4047218(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A404203C();
  return sub_1A3E658B0;
}

void (*sub_1A40472D8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A4042CB4();
  return sub_1A3E62A10;
}

uint64_t sub_1A404734C()
{
  v0 = sub_1A4048638(&qword_1EB130BC0);
  sub_1A3C66EE8(v0);
  return v0;
}

void (*sub_1A40473B8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A4042D14();
  return sub_1A3E658B0;
}

void (*sub_1A404749C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A4042DD0();
  return sub_1A3E658B0;
}

void sub_1A4047510()
{
  sub_1A4048514(&unk_1A53140C8, &qword_1EB130BD0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4047594(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4042FA4(v2);
  return sub_1A3E658B0;
}

void (*sub_1A4047668(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4043294(v2);
  return sub_1A3E658B0;
}

void (*sub_1A404774C(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A40435B0(v2);
  return sub_1A3E658B0;
}

void (*sub_1A404780C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A4043780();
  return sub_1A3E658B0;
}

uint64_t sub_1A4047880()
{
  v0 = sub_1A4048638(&qword_1EB130BF0);
  sub_1A3C66EE8(v0);
  return v0;
}

void (*sub_1A40478EC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A40437E0();
  return sub_1A3E658B0;
}

void (*sub_1A40479D0(void *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A404395C(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A4047A98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A403FB90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *sub_1A4047AC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3C489FC(0, &qword_1EB130C28, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A4047C1C(void *a1)
{
  v38 = *(v1 + qword_1EB130AE8);
  *(v1 + qword_1EB130AE8) = a1;
  v2 = a1;
  v3 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (!v3)
  {
    sub_1A524D264();
    v9 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    sub_1A4043460(1, &qword_1EB130AE0);
    goto LABEL_48;
  }

  v4 = v3;
  if (v38)
  {
    v5 = [v38 localIdentifier];
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v10 = v3;
  v11 = [v10 localIdentifier];
  v12 = sub_1A524C674();
  v14 = v13;

  if (!v8)
  {

    goto LABEL_14;
  }

  if (v6 != v12 || v8 != v14)
  {
    v16 = sub_1A524EAB4();

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_14:

    sub_1A403E684();
  }

LABEL_16:
  if (v38 && (v17 = [v38 name]) != 0)
  {
    v18 = v17;
    v19 = sub_1A524C674();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [v10 name];
  if (!v22)
  {
    if (!v21)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v23 = v22;
  v24 = sub_1A524C674();
  v26 = v25;

  if (!v21)
  {
    if (!v26)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (!v26)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (v19 != v24 || v21 != v26)
  {
    v27 = sub_1A524EAB4();

    if (v27)
    {
      goto LABEL_32;
    }

LABEL_30:
    sub_1A403E6FC(v10);
    sub_1A403ED50(v10);
  }

LABEL_32:
  if (v38 && (v28 = [v38 personUri]) != 0)
  {
    v29 = v28;
    v30 = sub_1A524C674();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [v10 personUri];

  if (!v33)
  {
    if (!v32)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v34 = sub_1A524C674();
  v36 = v35;

  if (!v32)
  {
    if (!v36)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (!v36)
  {
LABEL_45:

LABEL_46:
    sub_1A403F094(v10);
    sub_1A403F1C0(v10);
    goto LABEL_47;
  }

  if (v30 != v34 || v32 != v36)
  {
    v37 = sub_1A524EAB4();

    if (v37)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_47:

LABEL_48:
}

void sub_1A4047FF8()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1A4047C1C(v1);
}

uint64_t sub_1A4048060()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB130B28);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  sub_1A3C66EE8(v2);
  return sub_1A3C33378(v5);
}

unint64_t sub_1A40480E4()
{
  result = qword_1EB12DB80;
  if (!qword_1EB12DB80)
  {
    sub_1A3C52C70(255, &qword_1EB126630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DB80);
  }

  return result;
}

uint64_t sub_1A404816C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A403F85C();

  v4 = v2 + *a2;
  swift_beginAccess();
  return *v4;
}

uint64_t sub_1A40481FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB130B40);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_1A4048270()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB130B50;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
}

void sub_1A4048324()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB130B68;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  sub_1A40412DC();
}

uint64_t sub_1A404839C()
{
  v1 = qword_1EB130B78;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4048400()
{
  v1 = qword_1EB130BA0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4048444(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A403F85C();

  return *(v2 + *a2);
}

uint64_t sub_1A4048514(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A403F85C();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A40485C0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_1EB130BD8;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_1A4048638(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void sub_1A404867C(void (*a1)(void, void))
{
  v3 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 contextWithPerson:v6 type:1];
    v8 = v1 + qword_1EB130BF8;
    [v7 setKeyAsset_];
    [v7 setNameSelection_];
    [v7 setWantsContactUnlinkage_];
    if ([v6 type] == -1)
    {
      [v7 setWantsToBeAddedToPeopleAlbum_];
    }

    sub_1A3D75D6C();
    sub_1A3D75DEC();
    static PeopleLogging.peopleBootstrapCallerInfo(processName:file:function:line:)();
  }

  sub_1A524D244();
  v9 = *sub_1A3CAA3FC();
  sub_1A5246DF4();

  if (a1)
  {
    a1(0, 0);
  }
}

void sub_1A40489B0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1EB130BF8);
    v5 = v4;
    v6 = a1;
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v4, a1, 2, &v9);
    v7 = v9;
    v8 = v10;
    sub_1A4043E74(&v7);
  }
}

uint64_t sub_1A4048A4C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = qword_1EB130AE8;
  *&v2[qword_1EB130AE8] = 0;
  v7 = &v2[qword_1EB130AF0];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v2[qword_1EB130AF8] = 1;
  v8 = &v2[qword_1EB130B00];
  *v8 = sub_1A3C38BD4();
  v8[1] = v9;
  v2[qword_1EB130B08] = 1;
  v10 = &v2[qword_1EB130B10];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v2[qword_1EB130B18] = 1;
  v11 = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EB130B20] = MEMORY[0x1E69E7CC0];
  v12 = &v2[qword_1EB130B28];
  *v12 = 0;
  v12[1] = 0;
  *&v2[qword_1EB130B30] = 0;
  v2[qword_1EB130B38] = 1;
  v13 = &v2[qword_1EB130B40];
  *v13 = PXDisplayCollectionDetailedCountsMake;
  v13[1] = 0;
  v14 = &v2[qword_1EB130B48];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1A524B944();
  v17 = *(&v35 + 1);
  v18 = v36;
  v19 = &v2[qword_1EB130B50];
  *v19 = v35;
  *(v19 + 1) = v17;
  v19[16] = v18;
  v2[qword_1EB130B58] = 1;
  *&v2[qword_1EB130B60] = 0;
  v20 = &v2[qword_1EB130B68];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *&v2[qword_1EB130B78] = 0;
  v2[qword_1EB130B80] = 0;
  v2[qword_1EB130B88] = 0;
  v2[qword_1EB130B90] = 0;
  *&v2[qword_1EB130B98] = 0;
  *&v2[qword_1EB130BA0] = v11;
  *&v2[qword_1EB130BA8] = v11;
  v2[qword_1EB130BB8] = 1;
  v21 = &v2[qword_1EB130BC0];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v2[qword_1EB130BC8];
  *v22 = sub_1A3C38BD4();
  v22[1] = v23;
  *&v2[qword_1EB130BD0] = v11;
  v2[qword_1EB130BE0] = 0;
  v2[qword_1EB130BE8] = 0;
  v24 = &v2[qword_1EB130BF0];
  *v24 = 0;
  v24[1] = 0;
  v2[qword_1EB130AE0] = 0;
  v2[qword_1EB130C20] = 0;
  *&v2[qword_1EB130C08] = 0;
  sub_1A5241604();
  if (a2)
  {
    v25 = *&v2[v6];
    v26 = a1;
    swift_unknownObjectRetain();

    *&v2[v6] = a1;
    *&v2[qword_1EB130C00] = a2;
    swift_unknownObjectRetain();
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(0, 0, 2, &v35);
    v27 = v36;
    v28 = &v2[qword_1EB130BF8];
    *v28 = v35;
    v28[16] = v27;
    v29 = [v26 faceCount];
    *&v2[qword_1EB130BD8] = v29;
    v34.receiver = v2;
    v34.super_class = ObjectType;
    v30 = objc_msgSendSuper2(&v34, sel_init);
    v31 = [v26 photoLibrary];
    if (v31)
    {
      v32 = v31;
      [v31 px:v30 registerChangeObserver:?];

      sub_1A403E6FC(v26);
      sub_1A403ED50(v26);
    }

    __break(1u);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A404902C()
{
  v1 = *(v0 + qword_1EB130BF8);
  v2 = v1;
  LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v1, 0, 1, &v5);
  v3 = v5;
  v4 = v6;
  sub_1A4043E74(&v3);

  sub_1A404562C();
}

void sub_1A404909C()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1A524BEE4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BEF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A4048444(&unk_1A5313E98, &qword_1EB130AE8);
  if (v12)
  {
    v23 = v2;
    v13 = *(v1 + 80);
    v24 = v12;
    v14 = sub_1A524DC34();
    if (v14)
    {
      v15 = v14;
      sub_1A3C52C70(0, &qword_1EB12B180);
      (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
      v16 = sub_1A524D4C4();
      (*(v9 + 8))(v11, v8);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v13;
      v18[3] = v15;
      v18[4] = v17;
      aBlock[4] = sub_1A404A77C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_154_0;
      v19 = _Block_copy(aBlock);
      v20 = v15;

      sub_1A524BF14();
      v28 = MEMORY[0x1E69E7CC0];
      sub_1A4049B38(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A3C68B24(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v21 = v23;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v7, v4, v19);

      _Block_release(v19);
      (*(v27 + 8))(v4, v21);
      (*(v25 + 8))(v7, v26);
    }

    else
    {
      v22 = v24;
    }
  }
}

BOOL sub_1A4049538()
{
  v0 = sub_1A524D264();
  v1 = *sub_1A3CAA3FC();
  result = os_log_type_enabled(v1, v0);
  if (result)
  {
    v3 = v1;
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136315138;
    v5 = sub_1A4043D50();
    v6 = [v5 localIdentifier];

    sub_1A524C674();
    sub_1A3C2EF94();
  }

  return result;
}

uint64_t sub_1A4049674(void *a1)
{
  v3 = sub_1A524D264();
  v4 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    *&v14 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [a1 identifier];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v8 = *(v1 + qword_1EB130BF8);
  v9 = objc_allocWithZone(PXPeopleNameSelection);
  v10 = v8;
  LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v8, [v9 initWithContact_], 0, &v14);
  v12 = v14;
  v13 = v15;
  return sub_1A4043E74(&v12);
}

uint64_t sub_1A40498F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4049950()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1A4049AB0()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    sub_1A4041034(v1, &qword_1EB130B30);
  }
}

uint64_t sub_1A4049B38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4049B80()
{
  result = qword_1EB126BA0;
  if (!qword_1EB126BA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126BA0);
  }

  return result;
}

void sub_1A4049BE4()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 personUri];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1A524C674();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        sub_1A4044D38(v6, v8);
      }
    }

    v10 = *&v3[qword_1EB130BF8 + 8];
    if (v10)
    {
      v11 = [v10 contact];
      if (v11)
      {
        v12 = [v11 identifier];
        v13 = sub_1A524C674();
        v15 = v14;

        sub_1A4044D38(v13, v15);
      }
    }

    v16 = sub_1A524D244();
    v17 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315138;
      v21 = [v1 localIdentifier];
      sub_1A524C674();

      sub_1A3C2EF94();
    }
  }
}

void sub_1A4049ED8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A4043FF4(1);
  }
}

void sub_1A4049F48()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_1EB130C00);
    v4 = Strong;
    swift_unknownObjectRetain();

    v5 = [objc_opt_self() recoControllerForPerson_];
    [v3 presentViewController:v5 animated:1 completionHandler:0];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A524D244();
    v5 = *sub_1A3CAA3FC();
    sub_1A5246DF4();
  }
}

void sub_1A404A0FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
    [v2 setDelegate_];
    [*&v1[qword_1EB130C00] presentViewController:v2 animated:1 completionHandler:0];
  }
}

void sub_1A404A1A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v2 personUri];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1A524C674();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_1A4044D38(v7, v9);
      }
    }

    v11 = *&v4[qword_1EB130BF8 + 8];
    if (v11 && (v12 = [v11 contact]) != 0)
    {
      v13 = v12;
      v14 = objc_opt_self();
      v15 = *&v4[qword_1EB130C00];
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v16;
      aBlock[4] = sub_1A404A4B8;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_118_0;
      v18 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v14 handleUnlinkContact:v13 person:v2 presentationEnvironment:v15 sourceItem:0 handleUnlinkageInternally:0 completion:v18];
      _Block_release(v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = sub_1A524D244();
      v20 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v20, v19))
      {
        v21 = v20;
        v22 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v22 = 136315138;
        v23 = [v2 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }
  }
}

void sub_1A404A4B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_1EB130BF8);
    v3 = v2;
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v2, 0, 1, &v6);
    v4 = v6;
    v5 = v7;
    sub_1A4043E74(&v4);
  }
}

void sub_1A404A54C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v1;
    sub_1A4041034(v1, &qword_1EB130B60);
  }

  sub_1A524C674();
  sub_1A524E384();
  if (*(v2 + 16) && (v6 = sub_1A3D5C0BC(v11), (v7 & 1) != 0))
  {
    sub_1A3C2F0BC(*(v2 + 56) + 32 * v6, v12);
    sub_1A3D5FAFC(v11);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_1A3C68B24(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
        sub_1A523FBB4();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1A52F8E10;
        sub_1A523FB54();
        sub_1A4042868(v10);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A3D5FAFC(v11);
  }
}

void sub_1A404A788()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = swift_dynamicCastUnknownClass();
      if (v4)
      {
        v5 = v4;
        v6 = v1;
        v4 = v5;
      }
    }

    else
    {
      v4 = 0;
    }

    sub_1A403F6D0(v4);
  }
}

void sub_1A404A818(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1A4043F24();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_1A404A88C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A4043FF4(v1);
  }
}

uint64_t sub_1A404A8E8(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 32);
  if ((result & 1) == 0)
  {
    v4 = *(v1 + 24);
    v5 = sub_1A524D244();
    v6 = *sub_1A3CAA3FC();
    result = os_log_type_enabled(v6, v5);
    if (result)
    {
      v6;
      v7 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v7 = 136315394;
      v8 = [v4 localIdentifier];
      sub_1A524C674();

      sub_1A3C2EF94();
    }
  }

  if (v3)
  {
    return v3(v2 & 1, 0);
  }

  return result;
}

void sub_1A404AAA8()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1EB130BF8 + 8);
    v5 = *(Strong + qword_1EB130BF8 + 16);
    v6 = v4;
    v7 = v1;
    LemonadePersonChangeToBeMade.init(keyAsset:nameSelection:wantsContactUnlinkage:)(v1, v4, v5, &v11);
    v9 = v11;
    v10 = v12;
    v8 = sub_1A4043E74(&v9);
    sub_1A40412DC(v8);
  }
}

uint64_t sub_1A404AB98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524C634();
  v5 = PXLemonadeLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v9 = sub_1A524C634();
  v10 = PXLemonadeLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  v14 = a1;
  LOBYTE(v10) = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  return sub_1A425463C(v14, v10 & 1, v15 & 1, v16 & 1, v17 & 1, v18 & 1, 0x332E6E6F73726570, 0xED00006C6C69662ELL, a2, v6, v8, v11, v13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

unint64_t sub_1A404AD30()
{
  result = qword_1EB129988;
  if (!qword_1EB129988)
  {
    type metadata accessor for LemonadeShelfPlaceholderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129988);
  }

  return result;
}

void sub_1A404ADBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id sub_1A404AE20(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 4) = *(a1 + 32);
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1A404AE80(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  v9 = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A404AF14(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
}

void sub_1A404B008(void *a1)
{
  v2 = [a1 dismissViewControllerAnimated:1 completion:0];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v3, v2);
  v5 = v3[4];
  v6 = v3[2];
  sub_1A3DB8180(&v6, &v4);

  sub_1A404B754(&v5, &v4, sub_1A404AD88);
  sub_1A404ADBC(0, &qword_1EB130C30, sub_1A404AD88, MEMORY[0x1E6981948]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A404B1C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedAlbumAssetPicker.SharedAlbumAssetPickerCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A404B29C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for SharedAlbumAssetPicker.SharedAlbumAssetPickerCoordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV12PhotosUICore22SharedAlbumAssetPicker33SharedAlbumAssetPickerCoordinator_assetsPicker];
  *v8 = v2;
  *(v8 + 1) = v1;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  *(v8 + 4) = v5;
  v10 = v7;
  v11 = v6;
  v9 = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A404B34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A404B8EC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A404B3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A404B8EC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A404B414()
{
  sub_1A404B8EC();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A404B43C(uint64_t a1, void *a2, unint64_t a3)
{
  v34 = a1;
  v5 = sub_1A524C2C4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = a2;
  sub_1A524C244();
  sub_1A524C234();
  v33 = v9;
  sub_1A524C254();
  if (a3 >> 62)
  {
LABEL_21:
    v11 = sub_1A524E2B4();
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1A59097F0](v14, a3);
      }

      else
      {
        if (v14 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v14 + 32);
      }

      v16 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = [v15 uuid];
      if (v17)
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        goto LABEL_22;
      }
    }

    v18 = v17;
    v19 = sub_1A524C674();
    v31 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1A3D3D914(0, *(v13 + 2) + 1, 1, v13);
    }

    v22 = *(v13 + 2);
    v21 = *(v13 + 3);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_1A3D3D914((v21 > 1), v22 + 1, 1, v13);
    }

    *(v13 + 2) = v22 + 1;
    v23 = &v13[16 * v22];
    v24 = v31;
    *(v23 + 4) = v19;
    *(v23 + 5) = v24;
  }

  while (v12 != v11);
LABEL_22:
  v25 = v33;
  sub_1A524C284();
  sub_1A3C52C70(0, &qword_1EB130C58);
  v27 = v35;
  v26 = v36;
  (*(v35 + 16))(v32, v25, v36);
  v28 = sub_1A524D754();
  sub_1A404B940();
  sub_1A5249FD4();
  sub_1A404B99C();
  sub_1A524D764();
  (*(v27 + 8))(v25, v26);
  return v28;
}

uint64_t sub_1A404B754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A404B7BC()
{
  if (!qword_1EB120C10)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120C10);
    }
  }
}

uint64_t sub_1A404B824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A404B888()
{
  result = qword_1EB130C48;
  if (!qword_1EB130C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130C48);
  }

  return result;
}

unint64_t sub_1A404B8EC()
{
  result = qword_1EB130C50;
  if (!qword_1EB130C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130C50);
  }

  return result;
}

void sub_1A404B940()
{
  if (!qword_1EB130C60)
  {
    sub_1A404B8EC();
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130C60);
    }
  }
}

unint64_t sub_1A404B99C()
{
  result = qword_1EB130C68;
  if (!qword_1EB130C68)
  {
    type metadata accessor for SharedAlbumAssetPicker.SharedAlbumAssetPickerCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130C68);
  }

  return result;
}

void sub_1A404BB18()
{
  v1 = v0;
  v2 = [v0 assets];
  sub_1A3C52C70(0, &qword_1EB126660);
  v3 = sub_1A524CA34();

  if (v3 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  type metadata accessor for OneUpAlchemistViewController();
  if (sub_1A3F47EB8(v5))
  {
    v6 = v5;
    v7 = sub_1A3F480F4(v6);
    [v1 presentViewController_];
    [v1 completeUserInteractionTaskWithSuccess:1 error:0];

    return;
  }

LABEL_13:

  [v1 completeUserInteractionTaskWithSuccess:0 error:0];
}

id sub_1A404BD5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotoKitInternalAlchemistActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CarouselSinglePageLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CarouselSinglePageLayout.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets];
  v2 = *(off_1E7721FA8 + 1);
  *v1 = *off_1E7721FA8;
  *(v1 + 1) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_edgeClippingMaskEffects] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_mainMaskingEffects] = v3;
  *&v0[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CarouselSinglePageLayout();
  v4 = objc_msgSendSuper2(&v12, sel_init);
  v5 = objc_allocWithZone(off_1E7721940);
  v6 = v4;
  v7 = [v5 initWithTarget:v6 needsUpdateSelector:sel_setNeedsUpdate];
  v8 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater;
  v9 = *&v6[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater];
  *&v6[OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater] = v7;
  v10 = v7;

  if (v10)
  {
    [v10 addUpdateSelector:sel_updateContent needsUpdate:1];

    v11 = *&v6[v8];
    if (v11)
    {
      [v11 addUpdateSelector_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A404BF3C(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A404BFF8()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets;
  swift_beginAccess();
  return *v1;
}

id sub_1A404C044(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  v9.f64[0] = a1;
  v5->f64[0] = a1;
  v5->f64[1] = a2;
  v10.f64[0] = a3;
  v5[1].f64[0] = a3;
  v5[1].f64[1] = a4;
  v9.f64[1] = a2;
  v10.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, v9), vceqq_f64(v8, v10)))) & 1) == 0)
  {
    result = *(v4 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
    if (result)
    {
      return [result setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_1A404C0F0(uint64_t *a1))(double **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_clippingInsets;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *v4 = *v6;
  v4[1] = v7;
  return sub_1A404C188;
}

void sub_1A404C188(double **a1, char a2)
{
  v2 = *a1;
  v11 = (*(*a1 + 7) + *(*a1 + 8));
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = *v11;
  v8 = v11[1];
  v9 = v11[2];
  v10 = v11[3];
  *v11 = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  LOBYTE(v11) = v3 == v7;
  if (v4 != v8)
  {
    LOBYTE(v11) = 0;
  }

  if (v5 != v9)
  {
    LOBYTE(v11) = 0;
  }

  if (v6 != v10)
  {
    LOBYTE(v11) = 0;
  }

  if (a2)
  {
    if (v11)
    {
      goto LABEL_14;
    }

    v11 = *(v2 + 7);
    v12 = *(v11 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
    if (v12)
    {
LABEL_13:
      [v12 setNeedsUpdateOf_];
      goto LABEL_14;
    }

    __break(1u);
  }

  if ((v11 & 1) == 0)
  {
    v12 = *(*(v2 + 7) + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
    if (!v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_14:

  free(v2);
}

id sub_1A404C24C()
{
  result = *(v0 + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

uint64_t sub_1A404C278()
{
  v1 = [v0 localNumberOfSprites] << 32;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A404CBAC;
  *(v3 + 24) = v2;
  v7[4] = sub_1A3FCBD58;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3FCBD80;
  v7[3] = &block_descriptor_83;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v5 modifySpritesInRange:v1 fullState:v4];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_1A404C528()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CarouselSinglePageLayout();
  objc_msgSendSuper2(&v25, sel_entityManagerDidChange);
  v24 = [v0 entityManager];
  if (v24)
  {
    v2 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_edgeClippingMaskEffects;
    swift_beginAccess();
    v3 = MEMORY[0x1E69E7CC0];
    *(v1 + v2) = MEMORY[0x1E69E7CC0];

    v4 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_mainMaskingEffects;
    swift_beginAccess();
    *(v1 + v4) = v3;

    v5 = [v1 localNumberOfSprites];
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = objc_allocWithZone(off_1E7721688);
        v8 = v24;
        v9 = [v7 initWithEntityManager_];
        v10 = [objc_allocWithZone(off_1E7721688) initWithEntityManager_];

        swift_beginAccess();
        v11 = *(v1 + v2);
        v12 = v9;
        v13 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v2) = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = sub_1A404C974(0, v11[2] + 1, 1, v11);
          *(v1 + v2) = v11;
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v11 = sub_1A404C974((v15 > 1), v16 + 1, 1, v11);
        }

        v11[2] = v16 + 1;
        v17 = &v11[2 * v16];
        v17[4] = v12;
        v17[5] = v13;
        *(v1 + v2) = v11;
        swift_endAccess();
        sub_1A3C699DC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1A52F9DE0;
        *(v18 + 32) = v12;
        *(v18 + 40) = v13;
        v19 = objc_allocWithZone(off_1E77215A8);
        sub_1A3C52C70(0, &qword_1EB130C90);
        v20 = v12;
        v21 = v13;
        v22 = sub_1A524CA14();

        [v19 initWithEffects_];

        v23 = swift_beginAccess();
        MEMORY[0x1A5907D70](v23);
        if (*(*(v1 + v4) + 16) >= *(*(v1 + v4) + 24) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();

        --v6;
      }

      while (v6);
    }

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))();
  }
}

id CarouselSinglePageLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselSinglePageLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A404C974(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A404D404();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A404D45C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A404D30C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 localNumberOfSprites];
  v5 = OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_mainMaskingEffects;
  swift_beginAccess();
  if (v4)
  {
    v6 = 0;
    v7 = v4;
    while (1)
    {
      v8 = *&v3[v5];
      if (*(v8 + 16) <= v6)
      {
        break;
      }

      v9 = *(v8 + 8 * v6 + 32);
      if (v9)
      {
        v10 = v6 + 1;
        v11 = *(*(v1 + 32) + 4 * v6);
        v12 = v9;
        v13 = [a1 mutableEffectIds];
        v13[v11] = [v12 effectId];

        v6 = v10;
        if (v7 != v10)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1A404D404()
{
  if (!qword_1EB130CF8)
  {
    sub_1A404D45C();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130CF8);
    }
  }
}

void sub_1A404D45C()
{
  if (!qword_1EB130D00)
  {
    sub_1A404D4C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130D00);
    }
  }
}

void sub_1A404D4C0()
{
  if (!qword_1EB130D08)
  {
    sub_1A3C52C70(255, &qword_1EB130D10);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130D08);
    }
  }
}

id ImportAssetActionManager.__allocating_init(importItem:importController:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PXImportAssetActionManager_importItem] = a1;
  *&v5[OBJC_IVAR___PXImportAssetActionManager_importController] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithSelectionManager_, 0);
}

id ImportAssetActionManager.init(importItem:importController:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PXImportAssetActionManager_importItem] = a1;
  *&v2[OBJC_IVAR___PXImportAssetActionManager_importController] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImportAssetActionManager();
  return objc_msgSendSuper2(&v4, sel_initWithSelectionManager_, 0);
}

id sub_1A404D77C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (sub_1A524C674() == a1 && v5 == a2)
  {

    goto LABEL_8;
  }

  v7 = sub_1A524EAB4();

  if (v7)
  {
LABEL_8:
    type metadata accessor for ImportAssetDeleteActionPerformer();
    v8 = sub_1A42F2774(*&v2[OBJC_IVAR___PXImportAssetActionManager_importItem], *&v2[OBJC_IVAR___PXImportAssetActionManager_importController]);
    [v8 setDelegate_];
    swift_unknownObjectRelease();

    return v8;
  }

  return 0;
}

id ImportAssetActionManager.__allocating_init(selectionManager:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSelectionManager_];

  return v3;
}

id ImportAssetActionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportAssetActionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A404DA50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DCB8];
  sub_1A404DC4C(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1A4051530(v2, &v14 - v10, &qword_1EB128A38, sub_1A3EBE398, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A404DCB0(v11, a1);
  }

  sub_1A524D254();
  v13 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1A404DC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A404DCB0(uint64_t a1, uint64_t a2)
{
  sub_1A3EBE398(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A404DD34()
{
  v1 = v0;
  sub_1A404DF78();
  sub_1A5249FD4();
  v2 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v3 = sub_1A524B6A4();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x1A8))(v3);

  if (v5)
  {

    v6 = sub_1A524B6A4();
    v7 = (*((*v4 & *v13) + 0x1A8))(v6);

    if (v7)
    {
      v8 = [objc_opt_self() sharedAlbumIsOwned_];

      if (v8)
      {
        v9 = sel_resendInvitation;
        v7 = sel_displayConfirmationForSubscriberRemoval;
        goto LABEL_8;
      }

      v7 = 0;
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
    v7 = sel_removeSubscriber;
  }

LABEL_8:
  result = [objc_opt_self() contactsViewControllerForParticipant:*(v1 + *(v2 + 24)) resendInvitationSelector:v9 removeSubscriberSelector:v7 target:v14];
  if (result)
  {
    v11 = result;
    v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A404DF78()
{
  if (!qword_1EB130D28)
  {
    type metadata accessor for SharedAlbumSubscriberDetailsView(255);
    sub_1A40511FC(&qword_1EB130D30);
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130D28);
    }
  }
}

uint64_t sub_1A404DFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A404E05C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A404DFF8(a1, v3 + OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A4051048(a1, type metadata accessor for SharedAlbumSubscriberDetailsView);
  return v4;
}

uint64_t sub_1A404E104@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView;
  swift_beginAccess();
  return sub_1A404DFF8(v1 + v3, a1);
}

uint64_t sub_1A404E15C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView;
  swift_beginAccess();
  sub_1A404E21C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A404E21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A404E280()
{
  sub_1A404DC4C(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v62 = v61 - v2;
  v64 = sub_1A5240A24();
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v61 - v10;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v14 = (*MEMORY[0x1E69E7D40] & *v0) + 88;
  v67 = v0;
  v13(v9);
  v15 = &v11[*(v5 + 20)];
  v17 = *v15;
  v16 = *(v15 + 1);
  aBlock = v17;
  v69 = v16;
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v19 = v18;
  sub_1A524B6A4();
  v20 = v70;
  v21 = sub_1A4051048(v11, type metadata accessor for SharedAlbumSubscriberDetailsView);
  v22 = (*((*v12 & *v20) + 0x1A8))(v21);

  if (v22)
  {
    v61[15] = v19;
    (v13)();
    v23 = *&v7[*(v5 + 24)];
    sub_1A4051048(v7, type metadata accessor for SharedAlbumSubscriberDetailsView);
    v24 = sub_1A524C634();
    v25 = PLServicesLocalizedFrameworkString();

    if (v25)
    {
      v61[10] = sub_1A524C674();
      v66 = v26;

      v27 = [v22 localizedTitle];
      v61[12] = v13;
      if (v27)
      {
        v28 = v27;
        v29 = sub_1A524C674();
        v65 = v30;
      }

      else
      {
        v29 = 0;
        v65 = 0xE000000000000000;
      }

      v61[9] = v22;
      v31 = [v23 matchingContact];
      v61[13] = v5;
      v61[14] = v7;
      v61[8] = v23;
      v61[11] = v14;
      if (v31)
      {
        v32 = v31;
        v33 = [v31 namePrefix];
        v61[7] = sub_1A524C674();
        v61[6] = v34;

        v35 = [v32 givenName];
        v61[5] = sub_1A524C674();
        v61[4] = v36;

        v37 = [v32 middleName];
        v61[3] = sub_1A524C674();
        v61[2] = v38;

        v39 = v29;
        v40 = [v32 familyName];
        v61[1] = sub_1A524C674();

        v41 = [v32 nameSuffix];
        sub_1A524C674();

        v42 = [v32 nickname];
        sub_1A524C674();

        v43 = v64;
        (*(v3 + 56))(v62, 1, 1, v64);
        v29 = v39;
        v44 = v63;
        sub_1A52409F4();
        v45 = objc_opt_self();
        v46 = sub_1A5240A04();
        v47 = [v45 localizedStringFromPersonNameComponents:v46 style:2 options:0];

        v48 = sub_1A524C674();
        v50 = v49;

        (*(v3 + 8))(v44, v43);
        goto LABEL_14;
      }

      v51 = [v23 displayName];
      if (v51)
      {
        v52 = v51;
        v48 = sub_1A524C674();
        v50 = v53;

        v54 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v54 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
LABEL_14:
          sub_1A3E072BC();
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1A52FC9F0;
          v58 = MEMORY[0x1E69E6158];
          *(v57 + 56) = MEMORY[0x1E69E6158];
          v59 = sub_1A3D710E8();
          v60 = v65;
          *(v57 + 32) = v29;
          *(v57 + 40) = v60;
          *(v57 + 96) = v58;
          *(v57 + 104) = v59;
          *(v57 + 64) = v59;
          *(v57 + 72) = v48;
          *(v57 + 80) = v50;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      v55 = [v23 displayAddress];
      v48 = sub_1A524C674();
      v50 = v56;

      goto LABEL_14;
    }

    __break(1u);
    __break(1u);
  }
}

void sub_1A404ECE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))();
  }
}

uint64_t sub_1A404EDBC()
{
  v1 = sub_1A5246F24();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A404DC4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v16(v12);
  v38 = *&v14[*(v8 + 32)];
  v17 = sub_1A4051048(v14, type metadata accessor for SharedAlbumSubscriberDetailsView);
  (v16)(v17);
  v18 = &v10[*(v8 + 28)];
  v20 = *v18;
  v19 = *(v18 + 1);
  v40 = v20;
  v41 = v19;
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v21 = v39;
  v22 = sub_1A4051048(v10, type metadata accessor for SharedAlbumSubscriberDetailsView);
  v23 = (*((*v15 & *v21) + 0x1A8))(v22);

  if (v23)
  {
    sub_1A524CC74();
    v24 = sub_1A524CCB4();
    (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v38;
    v25[5] = v23;
    sub_1A3D4D930(0, 0, v6, &unk_1A5314668, v25);
  }

  else
  {
    v27 = sub_1A3C56D80();
    v29 = v36;
    v28 = v37;
    (*(v36 + 16))(v3, v27, v37);
    v30 = v38;
    v31 = sub_1A5246F04();
    v32 = sub_1A524D244();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_1A3C1C000, v31, v32, "Not resending invitation to participant (%@) because supplied shared album is nil", v33, 0xCu);
      sub_1A3CB65E4(v34);
      MEMORY[0x1A590EEC0](v34, -1, -1);
      MEMORY[0x1A590EEC0](v33, -1, -1);
    }

    else
    {
      v35 = v31;
      v31 = v30;
    }

    return (*(v29 + 8))(v3, v28);
  }
}

uint64_t sub_1A404F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_1A5246F24();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A404F2DC, 0, 0);
}

uint64_t sub_1A404F2DC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1A404F40C;
  v4 = swift_continuation_init();
  sub_1A3FA4F7C();
  v0[17] = v5;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A3FA485C;
  v0[13] = &block_descriptor_30_0;
  v0[14] = v4;
  [v3 resendInvitationToParticipant:v2 inSharedAlbum:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A404F40C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1A404F57C;
  }

  else
  {
    v2 = sub_1A404F51C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A404F51C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A404F57C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  swift_willThrow();
  v6 = sub_1A3C56D80();
  (*(v4 + 16))(v2, v6, v3);
  v7 = v5;
  v8 = v1;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[23];
  if (v11)
  {
    v13 = v0[18];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v13;
    *v15 = v13;
    *(v14 + 12) = 2112;
    v16 = v13;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Failed to resend invitation to subscriber (%@): %@", v14, 0x16u);
    sub_1A3CB67E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    MEMORY[0x1A590EEC0](v15, -1, -1);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  else
  {
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A404F7C8()
{
  v1 = sub_1A5246F24();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EBE398(0);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A404DC4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v50 - v8;
  v9 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v18(v14);
  v19 = *&v16[*(v10 + 32)];
  v20 = sub_1A4051048(v16, type metadata accessor for SharedAlbumSubscriberDetailsView);
  (v18)(v20);
  v21 = &v12[*(v10 + 28)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v58 = v23;
  v59 = v22;
  sub_1A404DC4C(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v24 = v57;
  v25 = sub_1A4051048(v12, type metadata accessor for SharedAlbumSubscriberDetailsView);
  v26 = (*((*v17 & *v24) + 0x1A8))(v25);

  if (v26)
  {
    v27 = [v19 localizedName];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1A524C674();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v42 = v53;
    sub_1A524CC74();
    v43 = sub_1A524CCB4();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v29;
    v44[5] = v31;
    v44[6] = v26;
    v44[7] = v19;
    v45 = v19;
    v46 = v26;
    sub_1A3D4D930(0, 0, v42, &unk_1A5314678, v44);

    (v18)(v47);
    v48 = v55;
    sub_1A404DA50(v55);
    sub_1A4051048(v16, type metadata accessor for SharedAlbumSubscriberDetailsView);
    MEMORY[0x1A5906C60](v54);
    sub_1A52489B4();
    sub_1A524B904();

    return sub_1A4051048(v48, sub_1A3EBE398);
  }

  else
  {
    v32 = sub_1A3C56D80();
    v34 = v50;
    v33 = v51;
    v35 = v52;
    (*(v51 + 16))(v50, v32, v52);
    v36 = v19;
    v37 = sub_1A5246F04();
    v38 = sub_1A524D244();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_1A3C1C000, v37, v38, "Not removing participant (%@) because supplied shared album is nil", v39, 0xCu);
      sub_1A3CB65E4(v40);
      MEMORY[0x1A590EEC0](v40, -1, -1);
      MEMORY[0x1A590EEC0](v39, -1, -1);
    }

    else
    {
      v41 = v37;
      v37 = v36;
    }

    return (*(v33 + 8))(v34, v35);
  }
}

uint64_t sub_1A404FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_1A5246F24();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A404FE84, 0, 0);
}

void sub_1A404FE84()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = sub_1A3C56D80();
  v0[26] = v4;
  v5 = *(v3 + 16);
  v0[27] = v5;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40501E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1A4050368;
  }

  else
  {
    v2 = sub_1A40502F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40502F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4050368()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
  swift_willThrow();

  v2(v4, v3, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A4050624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedAlbumSubscriberDetailsView.SharedAlbumSubscriberDetailsViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4050698@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A404DC4C(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A405071C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_1A40510A8(a1, a6);
  v11 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  v12 = (a6 + v11[5]);
  type metadata accessor for SharedAlbumActionViewModel();
  result = sub_1A524B694();
  *v12 = v15;
  v12[1] = v16;
  *(a6 + v11[6]) = a2;
  v14 = (a6 + v11[7]);
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  return result;
}

uint64_t sub_1A40507CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A404DFF8(v2, v5);
  v6 = type metadata accessor for SharedAlbumSubscriberDetailsView.SharedAlbumSubscriberDetailsViewCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1A404DFF8(v5, v7 + OBJC_IVAR____TtCV12PhotosUICore32SharedAlbumSubscriberDetailsView43SharedAlbumSubscriberDetailsViewCoordinator_detailsView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1A4051048(v5, type metadata accessor for SharedAlbumSubscriberDetailsView);
  *a2 = v8;
  return result;
}

uint64_t sub_1A40508A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40511FC(&qword_1EB130D30);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4050924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40511FC(&qword_1EB130D30);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A40509A4()
{
  sub_1A40511FC(&qword_1EB130D30);
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A40509E8()
{
  sub_1A404DC4C(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v11 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v12 = sub_1A5240D44();
  v13 = [v11 initWithPhotoLibraryURL_];

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  type metadata accessor for LemonadePhotoLibraryContext();
  v15 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v13, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v19);
  v16 = sub_1A3C799F0(v5, 0, 0, 0, v2, &v19, v15, 2);
  type metadata accessor for SharedAlbumActionViewModel();

  v17 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v16, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v17 & 1, 0, 0, 0, 0);
}

uint64_t sub_1A4050E6C(uint64_t a1)
{
  v2 = sub_1A40514C4();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4050EB8(uint64_t a1)
{
  v2 = sub_1A40514C4();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4050F04()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A404F21C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4050F9C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A404FDB4(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A4051048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A40510A8(uint64_t a1, uint64_t a2)
{
  sub_1A404DC4C(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A405113C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3CB67E8(255, &qword_1EB13AE60, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A40511FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharedAlbumSubscriberDetailsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4051244()
{
  result = qword_1EB130D40;
  if (!qword_1EB130D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D40);
  }

  return result;
}

void sub_1A40512DC()
{
  sub_1A404DC4C(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A404DC4C(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A3C52C70(319, &qword_1EB12C1B0);
      if (v2 <= 0x3F)
      {
        sub_1A405113C(319, &unk_1EB12C1A0, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A4051424()
{
  result = type metadata accessor for SharedAlbumSubscriberDetailsView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A40514C4()
{
  result = qword_1EB130D48;
  if (!qword_1EB130D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D48);
  }

  return result;
}

uint64_t sub_1A4051530(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A404DC4C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1A40515AC(CVImageBufferRef imageBuffer@<X2>, void *a2@<X0>, void *a3@<X1>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, CGFloat a7@<D2>, uint64_t a8@<D3>, double a9@<D4>, float64_t a10@<D5>)
{
  v260.f64[0] = a10;
  if (imageBuffer)
  {
    CleanRect = CVImageBufferGetCleanRect(imageBuffer);
    x = CleanRect.origin.x;
    y = CleanRect.origin.y;
    width = CleanRect.size.width;
    height = CleanRect.size.height;
  }

  else
  {
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
  }

  v15 = sub_1A4054E7C(MEMORY[0x1E69E7CC0]);
  v16 = [a2 scores];
  type metadata accessor for PFPosterScoreKey(0);
  sub_1A3C52C70(0, &qword_1EB126610);
  sub_1A40555F8(&qword_1EB139D00, type metadata accessor for PFPosterScoreKey);
  v17 = sub_1A524C3E4();

  if (*(v17 + 16) && (v18 = sub_1A3C8BF74(*MEMORY[0x1E69C0CD0]), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);

    v21 = v20;
    [v21 doubleValue];
    v23 = v22;

    v24 = round(v23 * 1000.0) / 1000.0;
  }

  else
  {

    v24 = 0.0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v15;
  sub_1A40548A0(0x74756F79616CLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native, v24);
  v26 = v15;
  v27 = [a2 scores];
  v28 = sub_1A524C3E4();

  v29 = *MEMORY[0x1E69C0D10];
  if (*(v28 + 16) && (v30 = sub_1A3C8BF74(*MEMORY[0x1E69C0D10]), (v31 & 1) != 0))
  {
    v32 = *(*(v28 + 56) + 8 * v30);

    v33 = v32;
    [v33 doubleValue];
    v35 = v34;

    v36 = round(v35 * 1000.0) / 1000.0;
  }

  else
  {

    v36 = 0.0;
  }

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v26;
  sub_1A40548A0(1886351971, 0xE400000000000000, v37, v36);
  v38 = [a2 scores];
  v39 = sub_1A524C3E4();

  if (*(v39 + 16) && (v40 = sub_1A3C8BF74(v29), (v41 & 1) != 0))
  {
    v42 = *(*(v39 + 56) + 8 * v40);

    v43 = v42;
    [v43 doubleValue];
    v45 = v44;

    v46 = round(v45 * 1000.0) / 1000.0;
  }

  else
  {

    v46 = 0.0;
  }

  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v26;
  sub_1A40548A0(0x61746E656D676573, 0xEC0000006E6F6974, v47, v46);
  v48 = [a2 scores];
  v49 = sub_1A524C3E4();

  if (*(v49 + 16) && (v50 = sub_1A3C8BF74(*MEMORY[0x1E69C0C78]), (v51 & 1) != 0))
  {
    v52 = *(*(v49 + 56) + 8 * v50);

    v53 = v52;
    [v53 doubleValue];
    v55 = v54;

    v56 = round(v55 * 1000.0) / 1000.0;
  }

  else
  {

    v56 = 0.0;
  }

  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A40548A0(0xD000000000000016, 0x80000001A53C51F0, v57, v56);
  v255 = v26;
  v58 = MEMORY[0x1E69E7CC0];
  v59 = sub_1A4054F90(MEMORY[0x1E69E7CC0]);
  v60 = [a2 regions];
  [v60 acceptableCropRect];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A40549FC(0x6261747065636361, 0xEE00706F7243656CLL, v69, v62, v64, v66, v68);
  [v60 preferredCropRect];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A40549FC(0x6572726566657270, 0xED0000706F724364, v78, v71, v73, v75, v77);
  [v60 gazeAreaRect];
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *&v274 = v59;
  sub_1A40549FC(0x61657241657A6167, 0xE800000000000000, v87, v80, v82, v84, v86);
  v88 = v59;
  v89 = [v60 faceRegions];
  v90 = MEMORY[0x1E69E7CA0];
  if (v89)
  {
    v91 = v89;
    v58 = sub_1A524CA34();
  }

  v92 = *(v58 + 16);
  if (v92)
  {
    v93 = 0;
    v94 = v58 + 32;
    *&v265 = v58 + 32;
    do
    {
      v95 = v94 + 32 * v93;
      v96 = v93;
      while (1)
      {
        if (v96 >= *(v58 + 16))
        {
          goto LABEL_102;
        }

        *&v271 = v96;
        sub_1A3C2F0BC(v95, &v271 + 8);
        v274 = v271;
        v275 = v272;
        v276 = v273;
        if (!v273)
        {
          goto LABEL_44;
        }

        v267 = *&v271;
        sub_1A3C57128((&v274 + 8), &v271);
        type metadata accessor for CGRect(0);
        if (swift_dynamicCast())
        {
          break;
        }

        ++v96;
        v95 += 32;
        if (v92 == v96)
        {
          goto LABEL_43;
        }
      }

      v250 = v60;
      v262 = v269;
      *&v271 = 1701011814;
      *(&v271 + 1) = 0xE400000000000000;
      *&v269 = v267;
      v97 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v97);

      v98 = v271;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      *&v271 = v88;
      v267 = *&v98;
      v101 = sub_1A3C5DCA4(v98, *(&v98 + 1));
      v102 = v88;
      v103 = *(v88 + 16);
      v104 = (v100 & 1) == 0;
      v105 = v103 + v104;
      if (__OFADD__(v103, v104))
      {
        goto LABEL_124;
      }

      v106 = v100;
      if (*(v102 + 24) >= v105)
      {
        v90 = MEMORY[0x1E69E7CA0];
        if (v99)
        {
          goto LABEL_36;
        }

        sub_1A4054CF8();
      }

      else
      {
        sub_1A405408C(v105, v99);
        v107 = sub_1A3C5DCA4(v98, *(&v98 + 1));
        if ((v106 & 1) != (v108 & 1))
        {
          goto LABEL_127;
        }

        v101 = v107;
      }

      v90 = MEMORY[0x1E69E7CA0];
LABEL_36:
      if (v106)
      {

        v88 = v271;
        v109 = (*(v271 + 56) + 32 * v101);
        *v109 = v262;
        v109[1] = v270;
      }

      else
      {
        v88 = v271;
        *(v271 + 8 * (v101 >> 6) + 64) |= 1 << v101;
        *(*(v88 + 48) + 16 * v101) = v98;
        v110 = (*(v88 + 56) + 32 * v101);
        *v110 = v262;
        v110[1] = v270;
        v111 = *(v88 + 16);
        v112 = __OFADD__(v111, 1);
        v113 = v111 + 1;
        if (v112)
        {
          goto LABEL_125;
        }

        *(v88 + 16) = v113;
      }

      v60 = v250;
      v94 = v58 + 32;
      v93 = v96 + 1;
    }

    while (v92 - 1 != v96);
  }

LABEL_43:
  v276 = 0;
  v274 = 0u;
  v275 = 0u;
LABEL_44:

  v114 = [v60 petRegions];
  if (!v114)
  {
    goto LABEL_48;
  }

  v115 = v114;
  v116 = sub_1A524CA34();

  if (!*(v116 + 16))
  {
    swift_unknownObjectRelease();

    goto LABEL_50;
  }

  sub_1A3C2F0BC(v116 + 32, &v274);

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    v117 = v271;
    v118 = v272;
    v119 = swift_isUniquelyReferenced_nonNull_native();
    *&v274 = v88;
    sub_1A40549FC(7628144, 0xE300000000000000, v119, *&v117, *(&v117 + 1), *&v118, *(&v118 + 1));
    swift_unknownObjectRelease();
    v88 = v274;
  }

  else
  {
LABEL_48:
    swift_unknownObjectRelease();
  }

LABEL_50:
  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  v263 = v120;
  v121 = sub_1A524E764();
  v122 = v121;
  v90 = 0;
  v123 = 1 << *(v88 + 32);
  v124 = -1;
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  v125 = v124 & *(v88 + 64);
  v126 = (v123 + 63) >> 6;
  v127 = v121 + 64;
  if (v125)
  {
    v128 = __clz(__rbit64(v125));
    goto LABEL_59;
  }

  v129 = 0;
  while (1)
  {
    v90 = v129 + 1;
    if (__OFADD__(v129, 1))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v90 >= v126)
    {
      break;
    }

    v130 = *(v88 + 64 + 8 * v90);
    ++v129;
    if (v130)
    {
      v128 = __clz(__rbit64(v130));
LABEL_59:
      v131 = v128 | (v90 << 6);
      v132 = (*(v88 + 48) + 16 * v131);
      v134 = *v132;
      v133 = v132[1];
      v135 = 32 * v131;
      v136 = (*(v88 + 56) + 32 * v131);
      v137 = x + *v136 * width;
      v138 = y + v136[1] * height;
      v139 = width * v136[2];
      v140 = height * v136[3];
      *(v127 + ((v131 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v131;
      v141 = (*(v122 + 48) + 16 * v131);
      *v141 = v134;
      v141[1] = v133;
      v142 = (*(v122 + 56) + v135);
      *v142 = v137;
      v142[1] = v138;
      v142[2] = v139;
      v142[3] = v140;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v90 = v263;
  v267 = COERCE_DOUBLE(sub_1A524E764());
  v143 = 1 << *(v122 + 32);
  v144 = -1;
  if (v143 < 64)
  {
    v144 = ~(-1 << v143);
  }

  v145 = (v143 + 63) >> 6;
  v265 = width;
  if ((v144 & *(v122 + 64)) != 0)
  {
LABEL_67:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v146 = 0;
  while (1)
  {
    v147 = v146 + 1;
    if (__OFADD__(v146, 1))
    {
      goto LABEL_101;
    }

    if (v147 >= v145)
    {
      break;
    }

    ++v146;
    if (*(v127 + 8 * v147))
    {
      goto LABEL_67;
    }
  }

  v148 = [a3 layers];
  sub_1A3C52C70(0, &qword_1EB130D58);
  v90 = sub_1A524CA34();

  if (v90 >> 62)
  {
    goto LABEL_107;
  }

  for (i = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v150 = 0;
    while (1)
    {
      if ((v90 & 0xC000000000000001) != 0)
      {
        v151 = MEMORY[0x1A59097F0](v150, v90);
      }

      else
      {
        if (v150 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v151 = *(v90 + 8 * v150 + 32);
      }

      v152 = v151;
      v153 = v150 + 1;
      if (__OFADD__(v150, 1))
      {
        break;
      }

      if ([v151 isBackground])
      {
        v248 = height;

        [v152 frame];
        v155 = v154;
        width = v156;
        v158 = v157;
        v160 = v159;

        v161 = swift_isUniquelyReferenced_nonNull_native();
        *&v274 = v267;
        sub_1A40549FC(0x52656C6269736976, 0xEB00000000746365, v161, v155, width, v158, v160);
        v251 = v274;
        sub_1A40553E4(0, &qword_1EB130D60, sub_1A40550B0, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 32) = 0x5670616C7265766FLL;
        v163 = inited + 32;
        *(inited + 16) = xmmword_1A52F8E10;
        *(inited + 40) = 0xEF74636552776569;
        *(inited + 48) = a7;
        *(inited + 56) = *&a8;
        *(inited + 64) = a9;
        *(inited + 72) = v260.f64[0];
        v164 = COERCE_DOUBLE(sub_1A4054F90(inited));
        swift_setDeallocating();
        sub_1A4055118(v163);
        v278.origin.x = v155;
        v278.origin.y = width;
        v278.size.width = v158;
        v278.size.height = v160;
        CGRectGetWidth(v278);
        a7 = v155;
        v279.origin.x = v155;
        v249 = width;
        v279.origin.y = width;
        height = v158;
        v279.size.width = v158;
        v279.size.height = v160;
        CGRectGetHeight(v279);
        v166 = PXDisplayCollectionDetailedCountsMake(v165);
        v168 = v167;
        v267 = v169;
        rect = v170;
        v171 = sub_1A524E764();
        v172 = v171;
        v90 = 0;
        a9 = v164;
        v173 = 1 << *(*&v164 + 32);
        v174 = -1;
        if (v173 < 64)
        {
          v174 = ~(-1 << v173);
        }

        v175 = *&v164 + 64;
        v176 = v174 & *(*&v164 + 64);
        v177 = (v173 + 63) >> 6;
        v178 = v171 + 64;
        v179.f64[0] = v267;
        v179.f64[1] = rect;
        v260 = v179;
        if (v176)
        {
          v180 = __clz(__rbit64(v176));
          goto LABEL_88;
        }

        v181 = 0;
        while (1)
        {
          v90 = v181 + 1;
          if (__OFADD__(v181, 1))
          {
            goto LABEL_105;
          }

          if (v90 >= v177)
          {
            break;
          }

          v182 = *(v175 + 8 * v90);
          ++v181;
          if (v182)
          {
            v180 = __clz(__rbit64(v182));
LABEL_88:
            v183 = v180 | (v90 << 6);
            v184 = (*(*&a9 + 48) + 16 * v183);
            v186 = *v184;
            v185 = v184[1];
            v187 = (*(*&a9 + 56) + 32 * v183);
            v188 = v166 + v187->f64[0] * v267;
            v189 = v168 + v187->f64[1] * rect;
            v190 = (*(v172 + 48) + 16 * v183);
            v191 = vmulq_f64(v260, v187[1]);
            *(v178 + ((v183 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v183;
            *v190 = v186;
            v190[1] = v185;
            v192 = *(v172 + 56) + 32 * v183;
            *v192 = v188;
            *(v192 + 8) = v189;
            *(v192 + 16) = v191;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        v193 = sub_1A524E764();
        v90 = v193;
        v194 = 1 << *(v172 + 32);
        v195 = -1;
        if (v194 < 64)
        {
          v195 = ~(-1 << v194);
        }

        v196 = (v194 + 63) >> 6;
        a8 = v193 + 64;
        v247 = x;
        *&v260.f64[0] = v172;
        if ((v195 & *(v172 + 64)) != 0)
        {
LABEL_96:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v197 = 0;
        while (1)
        {
          v198 = v197 + 1;
          if (__OFADD__(v197, 1))
          {
            goto LABEL_106;
          }

          if (v198 >= v196)
          {
            break;
          }

          ++v197;
          if (*(v178 + 8 * v198))
          {
            goto LABEL_96;
          }
        }

        if (*(v90 + 16))
        {
          v199 = sub_1A3C5DCA4(0x5670616C7265766FLL, 0xEF74636552776569);
          if (v200)
          {
            v201 = v199;

            v202 = *(v90 + 56) + 32 * v201;
            v203 = *v202;
            v204 = *(v202 + 8);
            v205 = *(v202 + 16);
            v206 = *(v202 + 24);

            v280.origin.x = a7;
            v280.origin.y = v249;
            v280.size.width = v158;
            v280.size.height = v160;
            CGRectGetMinX(v280);
            v281.origin.x = v203;
            v281.origin.y = v204;
            v281.size.width = v205;
            v281.size.height = v206;
            CGRectGetMinX(v281);
            v282.origin.x = a7;
            v282.origin.y = v249;
            v282.size.width = v158;
            v282.size.height = v160;
            CGRectGetMinY(v282);
            v283.origin.x = v203;
            v283.origin.y = v204;
            v283.size.width = v205;
            v283.size.height = v206;
            CGRectGetMinY(v283);
            v284.origin.x = v203;
            v284.origin.y = v204;
            v284.size.width = v205;
            v284.size.height = v206;
            CGRectGetWidth(v284);
            v285.origin.x = v203;
            v285.origin.y = v204;
            v285.size.width = v205;
            v285.size.height = v206;
            CGRectGetHeight(v285);
            v208 = PXDisplayCollectionDetailedCountsMake(v207);
            v210 = v209;
            v212 = v211;
            v214 = v213;
            v215 = swift_isUniquelyReferenced_nonNull_native();
            *&v274 = v251;
            sub_1A40549FC(0x5670616C7265766FLL, 0xEF74636552776569, v215, v208, v210, v212, v214);
            v216 = *&v274;
            x = v247;
            width = v265;
            height = v248;
            goto LABEL_109;
          }
        }

        goto LABEL_126;
      }

      ++v150;
      if (v153 == i)
      {
        goto LABEL_108;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_107:
    ;
  }

LABEL_108:

  v216 = v267;
LABEL_109:
  v286.origin.x = x;
  v286.origin.y = y;
  v286.size.width = width;
  v286.size.height = height;
  v217 = CGRectGetWidth(v286);
  v287.origin.x = x;
  v287.origin.y = y;
  v287.size.width = width;
  v287.size.height = height;
  if (CGRectGetHeight(v287) >= v217)
  {
    v290.origin.x = x;
    v290.origin.y = y;
    v290.size.width = width;
    v290.size.height = height;
    CGRectGetHeight(v290);
    v291.size.width = width;
    v291.origin.x = x;
    v291.origin.y = y;
    v291.size.height = height;
    CGRectGetWidth(v291);
  }

  else
  {
    v288.origin.x = x;
    v288.origin.y = y;
    v288.size.width = width;
    v288.size.height = height;
    CGRectGetWidth(v288);
    v289.size.width = width;
    v289.origin.x = x;
    v289.origin.y = y;
    v289.size.height = height;
    CGRectGetHeight(v289);
  }

  LOBYTE(v274) = 0;
  v218 = sub_1A524E764();
  v219 = v218;
  v220 = 0;
  v221 = 1 << *(*&v216 + 32);
  v222 = -1;
  if (v221 < 64)
  {
    v222 = ~(-1 << v221);
  }

  v223 = v222 & *(*&v216 + 64);
  v224 = (v221 + 63) >> 6;
  v266 = v218 + 64;
  v268 = v218;
  if (v223)
  {
    v225 = __clz(__rbit64(v223));
    goto LABEL_121;
  }

  v226 = 0;
  while (1)
  {
    v220 = v226 + 1;
    if (__OFADD__(v226, 1))
    {
      break;
    }

    if (v220 >= v224)
    {
      v238 = PXDisplayCollectionDetailedCountsMake(v218);
      v240 = v239;
      v242 = v241;
      v244 = v243;
      v245 = sub_1A4054348(v219);

      swift_unknownObjectRelease();

      v246 = v274;
      *a4 = v245;
      *(a4 + 8) = v255;
      *(a4 + 16) = imageBuffer;
      *(a4 + 24) = v238;
      *(a4 + 32) = v240;
      *(a4 + 40) = v242;
      *(a4 + 48) = v244;
      *(a4 + 56) = v246;
      *(a4 + 64) = a5;
      *(a4 + 72) = a6;
      *(a4 + 80) = 0;
      return;
    }

    v227 = *(*&v216 + 64 + 8 * v220);
    ++v226;
    if (v227)
    {
      v225 = __clz(__rbit64(v227));
LABEL_121:
      v228 = v225 | (v220 << 6);
      v229 = (*(*&v216 + 48) + 16 * v228);
      v231 = *v229;
      v230 = v229[1];
      v232 = PXDisplayCollectionDetailedCountsMake(v218);
      *(v266 + ((v228 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v228;
      v233 = (*(v268 + 48) + 16 * v228);
      *v233 = v231;
      v233[1] = v230;
      v234 = *(v268 + 56) + 32 * v228;
      *v234 = v232;
      *(v234 + 8) = v235;
      *(v234 + 16) = v236;
      *(v234 + 24) = v237;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  __break(1u);
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:

  __break(1u);
LABEL_127:
  sub_1A524EB84();
  __break(1u);
}

uint64_t sub_1A4052AF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000737463;
  v3 = 0x655264656C616373;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0x657A695377656976;
    }

    if (v4 == 2)
    {
      v6 = 0x80000001A53C51C0;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7365726F6373;
    }

    else
    {
      v5 = 0x655264656C616373;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000737463;
    }
  }

  v7 = 0xD000000000000017;
  v8 = 0x80000001A53C51C0;
  if (a2 != 2)
  {
    v7 = 0x657A695377656976;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x7365726F6373;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A4052C34()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4052D00()
{
  sub_1A524C794();
}

uint64_t sub_1A4052DB8()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4052E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4055174();
  *a1 = result;
  return result;
}

void sub_1A4052EB0(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000737463;
  v3 = 0x655264656C616373;
  v4 = 0x80000001A53C51C0;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0x657A695377656976;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x7365726F6373;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1A4052F38()
{
  v1 = 0x655264656C616373;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x657A695377656976;
  }

  if (*v0)
  {
    v1 = 0x7365726F6373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A4052FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4055174();
  *a1 = result;
  return result;
}

uint64_t sub_1A4052FE4(uint64_t a1)
{
  v2 = sub_1A40551C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4053020(uint64_t a1)
{
  v2 = sub_1A40551C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParallaxAssetDebugInfo.encode(to:)(void *a1)
{
  sub_1A4055640(0, &qword_1EB130D70, MEMORY[0x1E69E6F58]);
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40551C0();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t ParallaxAssetDebugInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4055640(0, &qword_1EB130DB8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40551C0();
  sub_1A524ED14();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_1A4055214(0, &qword_1EB130D80, MEMORY[0x1E69E5E28]);
  LOBYTE(v26) = 0;
  sub_1A40556A4();
  sub_1A524E8E4();
  v10 = v32;
  sub_1A4055C20(0, &qword_1EB130D98, MEMORY[0x1E69E5E28]);
  LOBYTE(v26) = 1;
  sub_1A4055350(&qword_1EB130DD0, sub_1A3E57CB4);
  sub_1A524E8E4();
  v49 = v32;
  type metadata accessor for CGRect(0);
  LOBYTE(v26) = 2;
  sub_1A40555F8(&qword_1EB130DC8, type metadata accessor for CGRect);
  sub_1A524E8E4();
  v25 = v32;
  v24 = v33;
  v23 = v34;
  v22 = v35;
  v48 = 0;
  type metadata accessor for CGSize(0);
  v44 = 3;
  sub_1A40555F8(&qword_1EB138800, type metadata accessor for CGSize);
  sub_1A524E8E4();
  (*(v7 + 8))(v9, v6);
  v20 = *(&v45 + 1);
  v21 = v45;
  v46 = 0;
  *&v26 = v10;
  *(&v26 + 1) = v49;
  *&v27 = 0;
  v11 = v25;
  *(&v27 + 1) = v25;
  v12 = v24;
  *&v28 = v24;
  v13 = v23;
  v14 = v22;
  *(&v28 + 1) = v23;
  *&v29 = v22;
  v15 = v48;
  BYTE8(v29) = v48;
  HIDWORD(v29) = *&v47[3];
  *(&v29 + 9) = *v47;
  v30 = v45;
  v31 = 0;
  *(a2 + 80) = 0;
  v16 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v16;
  *(a2 + 64) = v30;
  v17 = v27;
  *a2 = v26;
  *(a2 + 16) = v17;
  sub_1A4055770(&v26, &v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32 = v10;
  v33 = v49;
  v34 = 0;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  *v40 = *v47;
  *&v40[3] = *&v47[3];
  v41 = v21;
  v42 = v20;
  v43 = 0;
  return sub_1A40557A8(&v32);
}

uint64_t sub_1A40538D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  if ((v3 & *(result + 64)) != 0)
  {
LABEL_10:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = 0;
  while (1)
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 1;
    }

    ++v4;
    if (*(result + 64 + 8 * v5))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4053A34(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  if ((v3 & *(result + 64)) != 0)
  {
LABEL_10:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = 0;
  while (1)
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 1;
    }

    ++v4;
    if (*(result + 64 + 8 * v5))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4053BA4()
{
  swift_getWitnessTable();

  return sub_1A5241714();
}

uint64_t sub_1A4053C10()
{
  sub_1A40555F8(&qword_1EB139D00, type metadata accessor for PFPosterScoreKey);
  sub_1A40555F8(&qword_1EB130E10, type metadata accessor for PFPosterScoreKey);

  return sub_1A524E7E4();
}

uint64_t sub_1A4053D70()
{
  sub_1A524EC94();
  swift_getWitnessTable();
  sub_1A5241724();
  return sub_1A524ECE4();
}

uint64_t sub_1A4053DD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4055C20(0, &qword_1EB130DF0, MEMORY[0x1E69E6EC8]);
  v33 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A405408C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v35 = v25[1];
      v36 = *v25;
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v36;
      v17[1] = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A4054348(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A40544A8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1A40545D4(v8, v4, v2);
  result = MEMORY[0x1A590EEC0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1A40544A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = CGRectIsEmpty(*(*(a3 + 56) + 32 * v16));
    if ((result & 1) == 0)
    {
      *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_1A405464C(v5, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1A405464C(v5, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A40545D4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1A40544A8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1A405464C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v8)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    ++v9;
    if (a1[v10])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_1A40548A0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A3C5DCA4(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a1;
    v22[1] = a2;
    *(v21[7] + 8 * result) = a4;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_1A4054B80();
    result = v19;
    goto LABEL_8;
  }

  sub_1A4053DD8(v16, a3 & 1);
  result = sub_1A3C5DCA4(a1, a2);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

unint64_t sub_1A40549FC(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_1A3C5DCA4(a1, a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 >= v22 && (a3 & 1) != 0)
  {
LABEL_8:
    v27 = *v8;
    if (v23)
    {
      v28 = (v27[7] + 32 * result);
      *v28 = a4;
      v28[1] = a5;
      v28[2] = a6;
      v28[3] = a7;
      return result;
    }

    v27[(result >> 6) + 8] |= 1 << result;
    v29 = (v27[6] + 16 * result);
    *v29 = a1;
    v29[1] = a2;
    v30 = (v27[7] + 32 * result);
    *v30 = a4;
    v30[1] = a5;
    v30[2] = a6;
    v30[3] = a7;
    v31 = v27[2];
    v21 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v21)
    {
      v27[2] = v32;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_15;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    v25 = result;
    sub_1A4054CF8();
    result = v25;
    goto LABEL_8;
  }

  sub_1A405408C(v22, a3 & 1);
  result = sub_1A3C5DCA4(a1, a2);
  if ((v23 & 1) == (v26 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void *sub_1A4054B80()
{
  v1 = v0;
  sub_1A4055C20(0, &qword_1EB130DF0, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

void *sub_1A4054CF8()
{
  v1 = v0;
  sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 16 * v16;
        v18 = (*(v2 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 32;
        v21 = (*(v2 + 56) + v16);
        v22 = (*(v4 + 48) + v17);
        v23 = *v21;
        v24 = v21[1];
        *v22 = v20;
        v22[1] = v19;
        v25 = (*(v4 + 56) + v16);
        *v25 = v23;
        v25[1] = v24;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A4054E7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4055C20(0, &qword_1EB130DF0, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A4054F90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4055214(0, &qword_1EB130D50, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A40550B0()
{
  if (!qword_1EB130D68)
  {
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130D68);
    }
  }
}

uint64_t sub_1A4055118(uint64_t a1)
{
  sub_1A40550B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4055174()
{
  v0 = sub_1A524E824();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A40551C0()
{
  result = qword_1EB130D78;
  if (!qword_1EB130D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D78);
  }

  return result;
}

void sub_1A4055214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A4055284()
{
  result = qword_1EB130D88;
  if (!qword_1EB130D88)
  {
    sub_1A4055214(255, &qword_1EB130D80, MEMORY[0x1E69E5E28]);
    sub_1A40555F8(&qword_1EB130D90, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130D88);
  }

  return result;
}

uint64_t sub_1A4055350(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4055C20(255, &qword_1EB130D98, MEMORY[0x1E69E5E28]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40553E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A4055448()
{
  result = qword_1EB130DA8;
  if (!qword_1EB130DA8)
  {
    sub_1A40553E4(255, &qword_1EB126718, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
    sub_1A40555F8(&qword_1EB130D90, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DA8);
  }

  return result;
}

unint64_t sub_1A4055520()
{
  result = qword_1EB130DB0;
  if (!qword_1EB130DB0)
  {
    sub_1A40553E4(255, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
    sub_1A40555F8(&qword_1EB1387E0, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DB0);
  }

  return result;
}

uint64_t sub_1A40555F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4055640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A40551C0();
    v7 = a3(a1, &type metadata for ParallaxAssetDebugInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A40556A4()
{
  result = qword_1EB130DC0;
  if (!qword_1EB130DC0)
  {
    sub_1A4055214(255, &qword_1EB130D80, MEMORY[0x1E69E5E28]);
    sub_1A40555F8(&qword_1EB130DC8, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DC0);
  }

  return result;
}

BOOL _s12PhotosUICore22ParallaxAssetDebugInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a1 + 64);
  v21 = *(a2 + 72);
  v22 = *(a1 + 72);
  v17 = *(a2 + 80);
  if ((sub_1A40538D0(*a1, *a2) & 1) == 0 || (sub_1A4053A34(v2, v10) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    type metadata accessor for CVBuffer(0);
    sub_1A40555F8(&qword_1EB13FED0, type metadata accessor for CVBuffer);
    v18 = v11;
    v19 = sub_1A5241714();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v8)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    v25.origin.x = v4;
    v25.origin.y = v5;
    v25.size.width = v6;
    v25.size.height = v7;
    v26.origin.x = v12;
    v26.origin.y = v13;
    v26.size.width = v14;
    v26.size.height = v15;
    result = CGRectEqualToRect(v25, v26);
    if (!result)
    {
      return result;
    }
  }

  if ((v9 & 1) == 0)
  {
    return (v17 & 1) == 0 && v24 == v23 && v22 == v21;
  }

  return (v17 & 1) != 0;
}

unint64_t sub_1A4055980()
{
  result = qword_1EB130DD8;
  if (!qword_1EB130DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DD8);
  }

  return result;
}

unint64_t sub_1A40559D8()
{
  result = qword_1EB130DE0;
  if (!qword_1EB130DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DE0);
  }

  return result;
}

unint64_t sub_1A4055A30()
{
  result = qword_1EB130DE8;
  if (!qword_1EB130DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130DE8);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A4055AA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1A4055AF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A4055C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4055DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4055E00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00797265766F63;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x80000001A53B5090;
    v13 = 0xD00000000000001ALL;
    if (a1 == 2)
    {
      v13 = 0xD000000000000017;
    }

    else
    {
      v12 = 0x80000001A53C5250;
    }

    v14 = 0x80000001A53C5210;
    v15 = 0xD000000000000015;
    if (a1)
    {
      v15 = 0xD000000000000017;
      v14 = 0x80000001A53C5230;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x6F755164756F6C63;
    v5 = 0xEA00000000006174;
    v6 = 0x80000001A53C52A0;
    v7 = 0xD000000000000014;
    if (a1 != 7)
    {
      v7 = 1953719668;
      v6 = 0xE400000000000000;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x65636E795363616DLL;
    v9 = 0xEF73746573734164;
    if (a1 == 4)
    {
      v8 = 0x6552737465737361;
      v9 = 0xEE00797265766F63;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0x80000001A53C5250;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v16 = "sharedLibrarySuggestion";
    }

    else
    {
      if (!a2)
      {
        v2 = 0x80000001A53C5210;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v16 = "sharedLibraryInvitation";
    }

    v2 = (v16 - 32) | 0x8000000000000000;
    if (v10 != 0xD000000000000017)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      if (v10 != 0x6552737465737361)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v2 = 0xEF73746573734164;
      if (v10 != 0x65636E795363616DLL)
      {
LABEL_52:
        v17 = sub_1A524EAB4();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v2 = 0xEA00000000006174;
    if (v10 != 0x6F755164756F6C63)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v2 = 0x80000001A53C52A0;
    if (v10 != 0xD000000000000014)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    if (v10 != 1953719668)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v11 != v2)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

void sub_1A40560C4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v86 = a1;
  v84 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v84);
  *&v85 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MacSyncedAssetsNotificationItem();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetsRecoveryNotificationItem();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeSharedLibraryCameraSharingItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v87 = type metadata accessor for NotificationsPhotosItem(0);
  v20 = *(v87 + 20);
  v88 = a2;
  v21 = &a2[v20];
  v22 = v86;
  sub_1A40585F0(v86, v21, type metadata accessor for NotificationsPhotosItem.NotificationType);
  sub_1A40585F0(v22, v19, type metadata accessor for NotificationsPhotosItem.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v38 = *v19;
        v39 = sub_1A4706D34();
        v41 = v40;
        sub_1A4055DA0(v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
        v42 = v88;
        *v88 = 7;
        *(v42 + 1) = v39;
        *(v42 + 2) = v41;
        v43 = OBJC_IVAR___PXSharedAlbumsActivityEntryItem_date;
        v44 = *(v87 + 24);
        v45 = sub_1A5241144();
        (*(*(v45 - 8) + 16))(&v42[v44], &v38[v43], v45);

        return;
      }

      v59 = v85;
      sub_1A4058588(v19, v85, type metadata accessor for TestNotificationPhotosItem);
      v89 = *v59;
      v74 = sub_1A524EA44();
      v76 = v75;
      sub_1A4055DA0(v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
      v77 = v88;
      *v88 = 8;
      *(v77 + 1) = v74;
      *(v77 + 2) = v76;
      v78 = *(v84 + 48);
      v79 = *(v87 + 24);
      v80 = sub_1A5241144();
      (*(*(v80 - 8) + 16))(&v77[v79], &v59[v78], v80);
      v67 = type metadata accessor for TestNotificationPhotosItem;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1A4058588(v19, v7, type metadata accessor for MacSyncedAssetsNotificationItem);
        v24 = sub_1A4A57924();
        v26 = v25;
        sub_1A4055DA0(v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
        v27 = v88;
        *v88 = 4;
        *(v27 + 1) = v24;
        *(v27 + 2) = v26;
        v28 = *(v87 + 24);
        v29 = sub_1A5241144();
        (*(*(v29 - 8) + 16))(&v27[v28], v7, v29);
        v30 = type metadata accessor for MacSyncedAssetsNotificationItem;
        v31 = v7;
LABEL_17:
        sub_1A4055DA0(v31, v30);
        return;
      }

      v59 = v83;
      sub_1A4058588(v19, v83, type metadata accessor for CloudQuotaNotificationItem);
      v60 = sub_1A441CEAC();
      v62 = v61;
      sub_1A4055DA0(v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
      v63 = v88;
      *v88 = 6;
      *(v63 + 1) = v60;
      *(v63 + 2) = v62;
      v64 = *(v82 + 28);
      v65 = *(v87 + 24);
      v66 = sub_1A5241144();
      (*(*(v66 - 8) + 16))(&v63[v65], &v59[v64], v66);
      v67 = type metadata accessor for CloudQuotaNotificationItem;
    }

    v30 = v67;
    v31 = v59;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1A4055DA0(v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
      sub_1A4058588(v19, v13, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
      v32 = *v13;
      v33 = *(v13 + 1);
      v34 = v88;
      *v88 = 3;
      *(v34 + 1) = v32;
      *(v34 + 2) = v33;
      v35 = *(v11 + 28);
      v36 = *(v87 + 24);
      v37 = sub_1A5241144();
      (*(*(v37 - 8) + 16))(&v34[v36], &v13[v35], v37);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A4055DA0(v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
    sub_1A4058588(v19, v10, type metadata accessor for AssetsRecoveryNotificationItem);
    v68 = *v10;
    v69 = *(v10 + 1);
    v70 = v88;
    *v88 = 4;
    *(v70 + 1) = v68;
    *(v70 + 2) = v69;
    v71 = *(v8 + 20);
    v72 = *(v87 + 24);
    v73 = sub_1A5241144();
    (*(*(v73 - 8) + 16))(&v70[v72], &v10[v71], v73);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1A4058588(v19, v16, type metadata accessor for InvitationsItem);
    sub_1A3F644C8();
  }

  v46 = *v19;
  v47 = v19[8];
  sub_1A3DB1E58();
  v49 = *(v48 + 48);
  v50 = *(v87 + 24);
  v51 = sub_1A5241144();
  v52 = *(*(v51 - 8) + 32);
  v53 = *(v19 + 2);
  v85 = *(v19 + 1);
  v87 = v53;
  v54 = v88;
  v55 = v52(&v88[v50], &v19[v49], v51);
  v89 = v46;
  v90 = v47;
  v91 = v85;
  v92 = v87;
  v56 = sub_1A42C0D24(v55);
  v58 = v57;
  sub_1A4055DA0(v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *v54 = 2;
  *(v54 + 1) = v56;
  *(v54 + 2) = v58;
}

uint64_t sub_1A40569C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NotificationsPhotosItem(0);
  sub_1A40585F0(v2 + *(v11 + 20), v10, type metadata accessor for NotificationsPhotosItem.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 7)
  {
    if (((1 << EnumCaseMultiPayload) & 0xD8) != 0 || EnumCaseMultiPayload == 2)
    {
      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1A4058588(v10, v7, type metadata accessor for CloudQuotaNotificationItem);
      sub_1A441CE34(a1, &v23);
      v22 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      result = sub_1A4055DA0(v7, type metadata accessor for CloudQuotaNotificationItem);
      v17 = v22;
      v18 = 0;
      goto LABEL_5;
    }
  }

  if (EnumCaseMultiPayload)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1A3DB1E58();
    v20 = *(v19 + 48);
    v21 = sub_1A5241144();
    result = (*(*(v21 - 8) + 8))(&v10[v20], v21);
    goto LABEL_4;
  }

LABEL_3:
  result = sub_1A4055DA0(v10, type metadata accessor for NotificationsPhotosItem.NotificationType);
LABEL_4:
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0uLL;
  v18 = 1;
LABEL_5:
  *a2 = v17;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 33) = v18;
  return result;
}

void sub_1A4056C18(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  *(a1 + 16) = *(v1 + 2);
  *(a1 + 24) = &type metadata for NotificationIdentifier;
  *a1 = v2;
  *(a1 + 8) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4056C38(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4056C4C()
{
  sub_1A4058B6C(&qword_1EB12AEE0, type metadata accessor for NotificationsPhotosItem);

    ;
  }
}

void sub_1A4056CB8()
{
  sub_1A4058B6C(&qword_1EB12AEE0, type metadata accessor for NotificationsPhotosItem);

    ;
  }
}

uint64_t sub_1A4056D24(int a1, int a2, uint64_t a3)
{
  v37 = a2;
  v30 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v10 + 20);
    v17 = *(v11 + 72);
    v34 = 0x80000001A53B5090;
    v35 = 0x80000001A53C5250;
    v33 = 0x80000001A53C5230;
    v31 = 0x80000001A53C52A0;
    v32 = 0x80000001A53C5210;
    v36 = a1;
    while (1)
    {
      sub_1A40585F0(v15, v13, type metadata accessor for NotificationsPhotosItem);
      sub_1A40585F0(&v13[v16], v8, type metadata accessor for NotificationsPhotosItem.NotificationType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if ((EnumCaseMultiPayload - 3) < 2)
      {
        sub_1A4055DA0(v8, type metadata accessor for NotificationsPhotosItem.NotificationType);
        if (a1 != 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if ((EnumCaseMultiPayload - 6) < 2)
        {
LABEL_12:
          sub_1A4055DA0(v8, type metadata accessor for NotificationsPhotosItem.NotificationType);
          if (a1 != 2)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        v25 = v29;
        sub_1A4058588(v8, v29, type metadata accessor for CloudQuotaNotificationItem);
        v26 = v25 + *(v30 + 32);
        v27 = *v26;
        v28 = *(v26 + 8);
        sub_1A4055DA0(v25, type metadata accessor for CloudQuotaNotificationItem);
        if (v28)
        {
          goto LABEL_15;
        }

        if (v27 == 2)
        {
          LOBYTE(a1) = v36;
          if (v36)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        LOBYTE(a1) = v36;
        if (v27 != 1)
        {
          goto LABEL_16;
        }

        if (v36 != 1)
        {
LABEL_4:
          sub_1A4055DA0(v13, type metadata accessor for NotificationsPhotosItem);
          goto LABEL_5;
        }
      }

LABEL_19:
      v22 = *v13;
      if (v22 == 6)
      {

        sub_1A4055DA0(v13, type metadata accessor for NotificationsPhotosItem);
        if ((v37 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        v23 = sub_1A524EAB4();

        sub_1A4055DA0(v13, type metadata accessor for NotificationsPhotosItem);
        result = 1;
        if ((v23 & 1) == 0 || (v37 & 1) == 0)
        {
          return result;
        }
      }

LABEL_5:
      v15 += v17;
      if (!--v14)
      {
        return 0;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_1A3DB1E58();
      v20 = *(v19 + 48);
      v21 = sub_1A5241144();
      (*(*(v21 - 8) + 8))(&v8[v20], v21);
    }

    else
    {
      sub_1A4055DA0(v8, type metadata accessor for NotificationsPhotosItem.NotificationType);
    }

LABEL_15:
    LOBYTE(a1) = v36;
LABEL_16:
    if (a1 != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_1A4057294(uint64_t a1)
{
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v9 + 20);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      sub_1A40585F0(v15, v12, type metadata accessor for NotificationsPhotosItem);
      sub_1A40585F0(&v12[v14], v7, type metadata accessor for NotificationsPhotosItem.NotificationType);
      sub_1A4055DA0(v12, type metadata accessor for NotificationsPhotosItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v31 = v7[8];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_1A3DB1E58();
          v25 = *(v24 + 48);
          v26 = sub_1A5241144();
          (*(*(v26 - 8) + 8))(&v7[v25], v26);
          if (v31)
          {
            return 1;
          }
        }

        else
        {
          v20 = v28;
          sub_1A4058588(v7, v28, type metadata accessor for InvitationsItem);
          v21 = *(v20 + *(v29 + 32));
          sub_1A4055DA0(v20, type metadata accessor for InvitationsItem);
          if (v21)
          {
            return 1;
          }
        }
      }

      else if ((EnumCaseMultiPayload - 2) < 4)
      {
        sub_1A4055DA0(v7, type metadata accessor for NotificationsPhotosItem.NotificationType);
      }

      else if (EnumCaseMultiPayload == 6)
      {
        v18 = *v7;
        v19 = sub_1A422B288();

        if (v19)
        {
          return 1;
        }
      }

      else
      {
        v22 = v30;
        sub_1A4058588(v7, v30, type metadata accessor for TestNotificationPhotosItem);
        v23 = *(v22 + 66);
        sub_1A4055DA0(v22, type metadata accessor for TestNotificationPhotosItem);
        if (v23 == 1)
        {
          return 1;
        }
      }

      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return 0;
}

unint64_t sub_1A4057658(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD00000000000001ALL;
    if (a1 == 2)
    {
      v5 = 0xD000000000000017;
    }

    v6 = 0xD000000000000015;
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6552737465737361;
    v2 = 0x6F755164756F6C63;
    v3 = 0xD000000000000014;
    if (a1 != 7)
    {
      v3 = 1953719668;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = 0x65636E795363616DLL;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A40577A4()
{
  sub_1A524EC94();
  sub_1A40577F4();
  return sub_1A524ECE4();
}

uint64_t sub_1A40577F4()
{
  sub_1A524C794();
}

uint64_t sub_1A4057968()
{
  sub_1A524EC94();
  sub_1A40577F4();
  return sub_1A524ECE4();
}

uint64_t sub_1A40579AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4058658();
  *a1 = result;
  return result;
}

unint64_t sub_1A40579DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A4057658(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4057AB8()
{
  sub_1A524EC94();
  sub_1A40577F4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A4057B1C()
{
  sub_1A40577F4();

  return sub_1A524C794();
}

uint64_t sub_1A4057B6C()
{
  sub_1A524EC94();
  sub_1A40577F4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A4057BCC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1A5907B60](123, 0xE100000000000000);
  sub_1A524E624();
  MEMORY[0x1A5907B60](2108704, 0xE300000000000000);
  MEMORY[0x1A5907B60](v1, v2);
  MEMORY[0x1A5907B60](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1A4057C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1A4055E00(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A4057D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  if (!a8)
  {
    goto LABEL_5;
  }

  v14 = HIBYTE(a8) & 0xF;
  if ((a8 & 0x2000000000000000) == 0)
  {
    v14 = a7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    *(a9 + 48) = 0;
    *(a9 + 56) = 0;
  }

  else
  {
LABEL_5:
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
  }

  *(a9 + 64) = a10;
  *(a9 + 65) = a11;
  *(a9 + 66) = a12 & 1;
  v15 = *(type metadata accessor for TestNotificationPhotosItem(0) + 48);
  v16 = sub_1A5241144();
  v17 = *(*(v16 - 8) + 32);

  return v17(a9 + v15, a13, v16);
}