uint64_t sub_21B02A994()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43E78);
  __swift_project_value_buffer(v0, qword_27CD43E78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NoCBAMatch";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EffectiveTLDPlusOneMatch";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ParameterStrippedMatch";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ExactMatch";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B02ABFC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43E90);
  __swift_project_value_buffer(v0, qword_27CD43E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v366 = swift_allocObject();
  *(v366 + 16) = xmmword_21B118060;
  v4 = v366 + v3 + v1[14];
  *(v366 + v3) = 0;
  *v4 = "Unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v366 + v3 + v2 + v1[14];
  *(v366 + v3 + v2) = 1;
  *v8 = "ParsecWebIndex";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v366 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "Application";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v366 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Preferences";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v366 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MobileMail";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v366 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MobileSafari";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v366 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "MobileSMS";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v366 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "Stocks";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v366 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ParsecStocks";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  v23 = (v366 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TapToRadar";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v366 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SearchdZKWApps";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v366 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SearchdSuggestions";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v366 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "Podcasts";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v366 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MobileAddressBook";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v366 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "DocumentsApp";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v366 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CoreSuggestions";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v366 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "MobileDocumentsFileProvider";
  *(v38 + 1) = 27;
  v38[16] = 2;
  v7();
  v39 = (v366 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "Music";
  *(v40 + 1) = 5;
  v40[16] = 2;
  v7();
  v41 = (v366 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "MobileCal";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v366 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "OtherSearchWeb";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v366 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "OtherSearchAppStore";
  *(v46 + 1) = 19;
  v46[16] = 2;
  v7();
  v47 = (v366 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "OtherSearchMaps";
  *(v48 + 1) = 15;
  v48[16] = 2;
  v7();
  v49 = (v366 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "SuggestionListUserTypedString";
  *(v50 + 1) = 29;
  v50[16] = 2;
  v7();
  v51 = (v366 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "SuggestionListParsec";
  *(v52 + 1) = 20;
  v52[16] = 2;
  v7();
  v53 = (v366 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "OtherTapToRadar";
  *(v54 + 1) = 15;
  v54[16] = 2;
  v7();
  v55 = (v366 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "SpotlightUISearchThrough";
  *(v56 + 1) = 24;
  v56[16] = 2;
  v7();
  v57 = (v366 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "Weather";
  *(v58 + 1) = 7;
  v58[16] = 2;
  v7();
  v59 = (v366 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "Maps";
  *(v60 + 1) = 4;
  v60[16] = 2;
  v7();
  v61 = (v366 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "GoogleCompletion";
  *(v62 + 1) = 16;
  v62[16] = 2;
  v7();
  v63 = (v366 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "History";
  *(v64 + 1) = 7;
  v64[16] = 2;
  v7();
  v65 = (v366 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "SafariCompletionListSearchEngineSuggestion";
  *(v66 + 1) = 42;
  v66[16] = 2;
  v7();
  v67 = (v366 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "GoogleSearch";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v366 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "SafariCompletionListUserTypedString";
  *(v70 + 1) = 35;
  v70[16] = 2;
  v7();
  v71 = (v366 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "AppleHistory";
  *(v72 + 1) = 12;
  v72[16] = 2;
  v7();
  v73 = (v366 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "SafariCompletionListFindOnPage";
  *(v74 + 1) = 30;
  v74[16] = 2;
  v7();
  v75 = (v366 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "TopHit";
  *(v76 + 1) = 6;
  v76[16] = 2;
  v7();
  v77 = (v366 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "AppleTopHit";
  *(v78 + 1) = 11;
  v78[16] = 2;
  v7();
  v79 = (v366 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "ICloudTab";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v7();
  v81 = (v366 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "SafariCompletionListRecentSearch";
  *(v82 + 1) = 32;
  v82[16] = 2;
  v7();
  v83 = (v366 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "Bookmark";
  *(v84 + 1) = 8;
  v84[16] = 2;
  v7();
  v85 = (v366 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "YahooCompletion";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v7();
  v87 = (v366 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "AppleBookmarks";
  *(v88 + 1) = 14;
  v88[16] = 2;
  v7();
  v89 = (v366 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "AppleOther";
  *(v90 + 1) = 10;
  v90[16] = 2;
  v7();
  v91 = (v366 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "BingCompletion";
  *(v92 + 1) = 14;
  v92[16] = 2;
  v7();
  v93 = (v366 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "HashtagImagesQuerySuggestion";
  *(v94 + 1) = 28;
  v94[16] = 2;
  v7();
  v95 = (v366 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "SafariCompletionListRestoredSearch";
  *(v96 + 1) = 34;
  v96[16] = 2;
  v7();
  v97 = (v366 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "DDGCompletion";
  *(v98 + 1) = 13;
  v98[16] = 2;
  v7();
  v99 = (v366 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "YahooSearch";
  *(v100 + 1) = 11;
  v100[16] = 2;
  v7();
  v101 = (v366 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "Tweetie";
  *(v102 + 1) = 7;
  v102[16] = 2;
  v7();
  v103 = (v366 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "AddressBox";
  *(v104 + 1) = 10;
  v104[16] = 2;
  v7();
  v105 = (v366 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "SpotlightSuggestionListLocal";
  *(v106 + 1) = 28;
  v106[16] = 2;
  v7();
  v107 = (v366 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "DDGSearch";
  *(v108 + 1) = 9;
  v108[16] = 2;
  v7();
  v109 = (v366 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "BingSearch";
  *(v110 + 1) = 10;
  v110[16] = 2;
  v7();
  v111 = (v366 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "AppleNews";
  *(v112 + 1) = 9;
  v112[16] = 2;
  v7();
  v113 = (v366 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "AppleCoreSuggestions";
  *(v114 + 1) = 20;
  v114[16] = 2;
  v7();
  v115 = (v366 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "GiphyForMessenger";
  *(v116 + 1) = 17;
  v116[16] = 2;
  v7();
  v117 = (v366 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "AppleSettings";
  *(v118 + 1) = 13;
  v118[16] = 2;
  v7();
  v119 = (v366 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "Youtube";
  *(v120 + 1) = 7;
  v120[16] = 2;
  v7();
  v121 = (v366 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "WhatsApp";
  *(v122 + 1) = 8;
  v122[16] = 2;
  v7();
  v123 = (v366 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "AppleApplications";
  *(v124 + 1) = 17;
  v124[16] = 2;
  v7();
  v125 = (v366 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "RiffsyKeyboard";
  *(v126 + 1) = 14;
  v126[16] = 2;
  v7();
  v127 = (v366 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "SpotlightSuggestionListContact";
  *(v128 + 1) = 30;
  v128[16] = 2;
  v7();
  v129 = (v366 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 62;
  *v130 = "Yelp";
  *(v130 + 1) = 4;
  v130[16] = 2;
  v7();
  v131 = (v366 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 63;
  *v132 = "MicrosoftOfficeOutlook";
  *(v132 + 1) = 22;
  v132[16] = 2;
  v7();
  v133 = (v366 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 64;
  *v134 = "Pinterest";
  *(v134 + 1) = 9;
  v134[16] = 2;
  v7();
  v135 = (v366 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 65;
  *v136 = "AppleMail";
  *(v136 + 1) = 9;
  v136[16] = 2;
  v7();
  v137 = (v366 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 66;
  *v138 = "HashtagImagesCategory";
  *(v138 + 1) = 21;
  v138[16] = 2;
  v7();
  v139 = (v366 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 67;
  *v140 = "MobileNotes";
  *(v140 + 1) = 11;
  v140[16] = 2;
  v7();
  v141 = (v366 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 68;
  *v142 = "ApplePDFs";
  *(v142 + 1) = 9;
  v142[16] = 2;
  v7();
  v143 = (v366 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 69;
  *v144 = "AppleDocuments";
  *(v144 + 1) = 14;
  v144[16] = 2;
  v7();
  v145 = (v366 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 70;
  *v146 = "GoogleChromeIOS";
  *(v146 + 1) = 15;
  v146[16] = 2;
  v7();
  v147 = (v366 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 71;
  *v148 = "AppleDeveloper";
  *(v148 + 1) = 14;
  v148[16] = 2;
  v7();
  v149 = (v366 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 72;
  *v150 = "GoogleMaps";
  *(v150 + 1) = 10;
  v150[16] = 2;
  v7();
  v151 = (v366 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 73;
  *v152 = "AppleDirectories";
  *(v152 + 1) = 16;
  v152[16] = 2;
  v7();
  v153 = (v366 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 74;
  *v154 = "BaiduCompletion";
  *(v154 + 1) = 15;
  v154[16] = 2;
  v7();
  v155 = (v366 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 75;
  *v156 = "BaiduSearch";
  *(v156 + 1) = 11;
  v156[16] = 2;
  v7();
  v157 = (v366 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 76;
  *v158 = "AppleReminders";
  *(v158 + 1) = 14;
  v158[16] = 2;
  v7();
  v159 = (v366 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 77;
  *v160 = "ApplePhotos";
  *(v160 + 1) = 11;
  v160[16] = 2;
  v7();
  v161 = (v366 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 78;
  *v162 = "AppleDictionary";
  *(v162 + 1) = 15;
  v162[16] = 2;
  v7();
  v163 = (v366 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 79;
  *v164 = "SiriCompletion";
  *(v164 + 1) = 14;
  v164[16] = 2;
  v7();
  v165 = (v366 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 80;
  *v166 = "GooglePhotos";
  *(v166 + 1) = 12;
  v166[16] = 2;
  v7();
  v167 = (v366 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 81;
  *v168 = "AppleIBooks";
  *(v168 + 1) = 11;
  v168[16] = 2;
  v7();
  v169 = (v366 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 82;
  *v170 = "Linkedin";
  *(v170 + 1) = 8;
  v170[16] = 2;
  v7();
  v171 = (v366 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 83;
  *v172 = "AppleNumbers";
  *(v172 + 1) = 12;
  v172[16] = 2;
  v7();
  v173 = (v366 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 84;
  *v174 = "AppleMobileTimer";
  *(v174 + 1) = 16;
  v174[16] = 2;
  v7();
  v175 = (v366 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 85;
  *v176 = "Pandora";
  *(v176 + 1) = 7;
  v176[16] = 2;
  v7();
  v177 = (v366 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 86;
  *v178 = "HashtagImagesRecent";
  *(v178 + 1) = 19;
  v178[16] = 2;
  v7();
  v179 = (v366 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 87;
  *v180 = "MLBAtBat";
  *(v180 + 1) = 8;
  v180[16] = 2;
  v7();
  v181 = (v366 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 88;
  *v182 = "YahooAerogram";
  *(v182 + 1) = 13;
  v182[16] = 2;
  v7();
  v183 = (v366 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 89;
  *v184 = "Dropbox";
  *(v184 + 1) = 7;
  v184[16] = 2;
  v7();
  v185 = (v366 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 90;
  *v186 = "AppleLookupSearchThrough";
  *(v186 + 1) = 24;
  v186[16] = 2;
  v7();
  v187 = (v366 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 91;
  *v188 = "AppleCalendar";
  *(v188 + 1) = 13;
  v188[16] = 2;
  v7();
  v189 = (v366 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 92;
  *v190 = "AirBNB";
  *(v190 + 1) = 6;
  v190[16] = 2;
  v7();
  v191 = (v366 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 93;
  *v192 = "StubHub";
  *(v192 + 1) = 7;
  v192[16] = 2;
  v7();
  v193 = (v366 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 94;
  *v194 = "Groupon";
  *(v194 + 1) = 7;
  v194[16] = 2;
  v7();
  v195 = (v366 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 95;
  *v196 = "AppleCalculator";
  *(v196 + 1) = 15;
  v196[16] = 2;
  v7();
  v197 = (v366 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 96;
  *v198 = "Twitch";
  *(v198 + 1) = 6;
  v198[16] = 2;
  v7();
  v199 = (v366 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 97;
  *v200 = "AppleKeynote";
  *(v200 + 1) = 12;
  v200[16] = 2;
  v7();
  v201 = (v366 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 98;
  *v202 = "Zillow";
  *(v202 + 1) = 6;
  v202[16] = 2;
  v7();
  v203 = (v366 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 99;
  *v204 = "AppleVoiceMemos";
  *(v204 + 1) = 15;
  v204[16] = 2;
  v7();
  v205 = (v366 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 100;
  *v206 = "SafariCompletionListQuickSearch";
  *(v206 + 1) = 31;
  v206[16] = 2;
  v7();
  v207 = (v366 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 101;
  *v208 = "HashtagImagesZKW";
  *(v208 + 1) = 16;
  v208[16] = 2;
  v7();
  v209 = (v366 + v3 + 102 * v2);
  v210 = v209 + v1[14];
  *v209 = 102;
  *v210 = "SafariSearchSuggestion";
  *(v210 + 1) = 22;
  v210[16] = 2;
  v7();
  v211 = (v366 + v3 + 103 * v2);
  v212 = v211 + v1[14];
  *v211 = 103;
  *v212 = "ZKWSuggestions";
  *(v212 + 1) = 14;
  v212[16] = 2;
  v7();
  v213 = (v366 + v3 + 104 * v2);
  v214 = v213 + v1[14];
  *v213 = 104;
  *v214 = "OtherSearchSiri";
  *(v214 + 1) = 15;
  v214[16] = 2;
  v7();
  v215 = (v366 + v3 + 105 * v2);
  v216 = v215 + v1[14];
  *v215 = 105;
  *v216 = "SafariSwitchToTab";
  *(v216 + 1) = 17;
  v216[16] = 2;
  v7();
  v217 = (v366 + v3 + 106 * v2);
  v218 = v217 + v1[14];
  *v217 = 106;
  *v218 = "SafariQuickWebsiteSearch";
  *(v218 + 1) = 24;
  v218[16] = 2;
  v7();
  v219 = (v366 + v3 + 107 * v2);
  v220 = v219 + v1[14];
  *v219 = 107;
  *v220 = "SpotlightSiriSuggestion";
  *(v220 + 1) = 23;
  v220[16] = 2;
  v7();
  v221 = (v366 + v3 + 108 * v2);
  v222 = v221 + v1[14];
  *v221 = 108;
  *v222 = "AppleContacts";
  *(v222 + 1) = 13;
  v222[16] = 2;
  v7();
  v223 = (v366 + v3 + 109 * v2);
  v224 = v223 + v1[14];
  *v223 = 109;
  *v224 = "ParsecAppStore";
  *(v224 + 1) = 14;
  v224[16] = 2;
  v7();
  v225 = (v366 + v3 + 110 * v2);
  v226 = v225 + v1[14];
  *v225 = 110;
  *v226 = "ParsecMaps";
  *(v226 + 1) = 10;
  v226[16] = 2;
  v7();
  v227 = (v366 + v3 + 111 * v2);
  v228 = v227 + v1[14];
  *v227 = 111;
  *v228 = "ParsecWiki";
  *(v228 + 1) = 10;
  v228[16] = 2;
  v7();
  v229 = (v366 + v3 + 112 * v2);
  v230 = v229 + v1[14];
  *v229 = 112;
  *v230 = "ParsecKG";
  *(v230 + 1) = 8;
  v230[16] = 2;
  v7();
  v231 = (v366 + v3 + 113 * v2);
  v232 = v231 + v1[14];
  *v231 = 113;
  *v232 = "ParsecNews";
  *(v232 + 1) = 10;
  v232[16] = 2;
  v7();
  v233 = (v366 + v3 + 114 * v2);
  v234 = v233 + v1[14];
  *v233 = 114;
  *v234 = "ParsecWeather";
  *(v234 + 1) = 13;
  v234[16] = 2;
  v7();
  v235 = (v366 + v3 + 115 * v2);
  v236 = v235 + v1[14];
  *v235 = 115;
  *v236 = "SpotlightSearchInApp";
  *(v236 + 1) = 20;
  v236[16] = 2;
  v7();
  v237 = (v366 + v3 + 116 * v2);
  v238 = v237 + v1[14];
  *v237 = 116;
  *v238 = "SpotlightWebSuggestionsUserTyped";
  *(v238 + 1) = 32;
  v238[16] = 2;
  v7();
  v239 = (v366 + v3 + 117 * v2);
  v240 = v239 + v1[14];
  *v239 = 117;
  *v240 = "SpotlightWebSuggestionsParsec";
  *(v240 + 1) = 29;
  v240[16] = 2;
  v7();
  v241 = (v366 + v3 + 118 * v2);
  v242 = v241 + v1[14];
  *v241 = 118;
  *v242 = "SpotlightWebRelatedSearch";
  *(v242 + 1) = 25;
  v242[16] = 2;
  v7();
  v243 = (v366 + v3 + 119 * v2);
  v244 = v243 + v1[14];
  *v243 = 119;
  *v244 = "SpotlightTopHits";
  *(v244 + 1) = 16;
  v244[16] = 2;
  v7();
  v245 = (v366 + v3 + 120 * v2);
  v246 = v245 + v1[14];
  *v245 = 120;
  *v246 = "SpotlightRelatedSearch";
  *(v246 + 1) = 22;
  v246[16] = 2;
  v7();
  v247 = (v366 + v3 + 121 * v2);
  v248 = v247 + v1[14];
  *v247 = 121;
  *v248 = "MailSearchTopHit";
  *(v248 + 1) = 16;
  v248[16] = 2;
  v7();
  v249 = (v366 + v3 + 122 * v2);
  v250 = v249 + v1[14];
  *v249 = 122;
  *v250 = "MailSearchSuggestion";
  *(v250 + 1) = 20;
  v250[16] = 2;
  v7();
  v251 = (v366 + v3 + 123 * v2);
  v252 = v251 + v1[14];
  *v251 = 123;
  *v252 = "MailSearchSuggestionVip";
  *(v252 + 1) = 23;
  v252[16] = 2;
  v7();
  v253 = (v366 + v3 + 124 * v2);
  v254 = v253 + v1[14];
  *v253 = 124;
  *v254 = "MailSearchSuggestionUserTyped";
  *(v254 + 1) = 29;
  v254[16] = 2;
  v7();
  v255 = (v366 + v3 + 125 * v2);
  v256 = v255 + v1[14];
  *v255 = 125;
  *v256 = "MailSearchMessageResult";
  *(v256 + 1) = 23;
  v256[16] = 2;
  v7();
  v257 = (v366 + v3 + 126 * v2);
  v258 = v257 + v1[14];
  *v257 = 126;
  *v258 = "MailSearchMessageList";
  *(v258 + 1) = 21;
  v258[16] = 2;
  v7();
  v259 = (v366 + v3 + 127 * v2);
  v260 = v259 + v1[14];
  *v259 = 127;
  *v260 = "ParsecEntity";
  *(v260 + 1) = 12;
  v260[16] = 2;
  v7();
  v261 = (v366 + v3 + (v2 << 7));
  v262 = v261 + v1[14];
  *v261 = 128;
  *v262 = "MailSearchSuggestionDate";
  *(v262 + 1) = 24;
  v262[16] = 2;
  v7();
  v263 = (v366 + v3 + 129 * v2);
  v264 = v263 + v1[14];
  *v263 = 129;
  *v264 = "MailSearchSuggestionFreeText";
  *(v264 + 1) = 28;
  v264[16] = 2;
  v7();
  v265 = (v366 + v3 + 130 * v2);
  v266 = v265 + v1[14];
  *v265 = 130;
  *v266 = "MailSearchSuggestionAttachment";
  *(v266 + 1) = 30;
  v266[16] = 2;
  v7();
  v267 = (v366 + v3 + 131 * v2);
  v268 = v267 + v1[14];
  *v267 = 131;
  *v268 = "MailSearchSuggestionPeople";
  *(v268 + 1) = 26;
  v268[16] = 2;
  v7();
  v269 = (v366 + v3 + 132 * v2);
  v270 = v269 + v1[14];
  *v269 = 132;
  *v270 = "MailSearchSuggestionContact";
  *(v270 + 1) = 27;
  v270[16] = 2;
  v7();
  v271 = (v366 + v3 + 133 * v2);
  v272 = v271 + v1[14];
  *v271 = 133;
  *v272 = "MailSearchSuggestionMailbox";
  *(v272 + 1) = 27;
  v272[16] = 2;
  v7();
  v273 = (v366 + v3 + 134 * v2);
  v274 = v273 + v1[14];
  *v273 = 134;
  *v274 = "MailSearchSuggestionFlag";
  *(v274 + 1) = 24;
  v274[16] = 2;
  v7();
  v275 = (v366 + v3 + 135 * v2);
  v276 = v275 + v1[14];
  *v275 = 135;
  *v276 = "MailSearchSuggestionSubject";
  *(v276 + 1) = 27;
  v276[16] = 2;
  v7();
  v277 = (v366 + v3 + 136 * v2);
  v278 = v277 + v1[14];
  *v277 = 136;
  *v278 = "MailSearchLocation";
  *(v278 + 1) = 18;
  v278[16] = 2;
  v7();
  v279 = (v366 + v3 + 137 * v2);
  v280 = v279 + v1[14];
  *v279 = 137;
  *v280 = "MailSearchDocument";
  *(v280 + 1) = 18;
  v280[16] = 2;
  v7();
  v281 = (v366 + v3 + 138 * v2);
  v282 = v281 + v1[14];
  *v281 = 138;
  *v282 = "MailSearchLink";
  *(v282 + 1) = 14;
  v282[16] = 2;
  v7();
  v283 = (v366 + v3 + 139 * v2);
  v284 = v283 + v1[14];
  *v283 = 139;
  *v284 = "FirstPartyApp";
  *(v284 + 1) = 13;
  v284[16] = 2;
  v7();
  v285 = (v366 + v3 + 140 * v2);
  v286 = v285 + v1[14];
  *v285 = 140;
  *v286 = "ThirdPartyApp";
  *(v286 + 1) = 13;
  v286[16] = 2;
  v7();
  v287 = (v366 + v3 + 141 * v2);
  v288 = v287 + v1[14];
  *v287 = 141;
  *v288 = "MailSearchSuggestionSenderContains";
  *(v288 + 1) = 34;
  v288[16] = 2;
  v7();
  v289 = (v366 + v3 + 142 * v2);
  v290 = v289 + v1[14];
  *v289 = 142;
  *v290 = "MailSearchSuggestionTopicContains";
  *(v290 + 1) = 33;
  v290[16] = 2;
  v7();
  v291 = (v366 + v3 + 143 * v2);
  v292 = v291 + v1[14];
  *v291 = 143;
  *v292 = "MailSearchSuggestionInstantAnswer";
  *(v292 + 1) = 33;
  v292[16] = 2;
  v7();
  v293 = (v366 + v3 + 144 * v2);
  v294 = v293 + v1[14];
  *v293 = 144;
  *v294 = "PhotosAlbums";
  *(v294 + 1) = 12;
  v294[16] = 2;
  v7();
  v295 = (v366 + v3 + 145 * v2);
  v296 = v295 + v1[14];
  *v295 = 145;
  *v296 = "PhotosCaption";
  *(v296 + 1) = 13;
  v296[16] = 2;
  v7();
  v297 = (v366 + v3 + 146 * v2);
  v298 = v297 + v1[14];
  *v297 = 146;
  *v298 = "PhotosCategories";
  *(v298 + 1) = 16;
  v298[16] = 2;
  v7();
  v299 = (v366 + v3 + 147 * v2);
  v300 = v299 + v1[14];
  *v299 = 147;
  *v300 = "PhotosDates";
  *(v300 + 1) = 11;
  v300[16] = 2;
  v7();
  v301 = (v366 + v3 + 148 * v2);
  v302 = v301 + v1[14];
  *v301 = 148;
  *v302 = "PhotosImportedByApp";
  *(v302 + 1) = 19;
  v302[16] = 2;
  v7();
  v303 = (v366 + v3 + 149 * v2);
  v304 = v303 + v1[14];
  *v303 = 149;
  *v304 = "PhotosKeywords";
  *(v304 + 1) = 14;
  v304[16] = 2;
  v7();
  v305 = (v366 + v3 + 150 * v2);
  v306 = v305 + v1[14];
  *v305 = 150;
  *v306 = "PhotosMediaType";
  *(v306 + 1) = 15;
  v306[16] = 2;
  v7();
  v307 = (v366 + v3 + 151 * v2);
  v308 = v307 + v1[14];
  *v307 = 151;
  *v308 = "PhotosMemories";
  *(v308 + 1) = 14;
  v308[16] = 2;
  v7();
  v309 = (v366 + v3 + 152 * v2);
  v310 = v309 + v1[14];
  *v309 = 152;
  *v310 = "PhotosMoments";
  *(v310 + 1) = 13;
  v310[16] = 2;
  v7();
  v311 = (v366 + v3 + 153 * v2);
  v312 = v311 + v1[14];
  *v311 = 153;
  *v312 = "PhotosOcr";
  *(v312 + 1) = 9;
  v312[16] = 2;
  v7();
  v313 = (v366 + v3 + 154 * v2);
  v314 = v313 + v1[14];
  *v313 = 154;
  *v314 = "PhotosPeople";
  *(v314 + 1) = 12;
  v314[16] = 2;
  v7();
  v315 = (v366 + v3 + 155 * v2);
  v316 = v315 + v1[14];
  *v315 = 155;
  *v316 = "PhotosPlaces";
  *(v316 + 1) = 12;
  v316[16] = 2;
  v7();
  v317 = (v366 + v3 + 156 * v2);
  v318 = v317 + v1[14];
  *v317 = 156;
  *v318 = "PhotosTitle";
  *(v318 + 1) = 11;
  v318[16] = 2;
  v7();
  v319 = (v366 + v3 + 157 * v2);
  v320 = v319 + v1[14];
  *v319 = 157;
  *v320 = "PhotosTopResults";
  *(v320 + 1) = 16;
  v320[16] = 2;
  v7();
  v321 = (v366 + v3 + 158 * v2);
  v322 = v321 + v1[14];
  *v321 = 158;
  *v322 = "PhotosSuggestionsGeneric";
  *(v322 + 1) = 24;
  v322[16] = 2;
  v7();
  v323 = (v366 + v3 + 159 * v2);
  v324 = v323 + v1[14];
  *v323 = 159;
  *v324 = "PhotosSuggestionsPlace";
  *(v324 + 1) = 22;
  v324[16] = 2;
  v7();
  v325 = (v366 + v3 + 160 * v2);
  v326 = v325 + v1[14];
  *v325 = 160;
  *v326 = "PhotosZkwDate";
  *(v326 + 1) = 13;
  v326[16] = 2;
  v7();
  v327 = (v366 + v3 + 161 * v2);
  v328 = v327 + v1[14];
  *v327 = 161;
  *v328 = "PhotosZkwMeaning";
  *(v328 + 1) = 16;
  v328[16] = 2;
  v7();
  v329 = (v366 + v3 + 162 * v2);
  v330 = v329 + v1[14];
  *v329 = 162;
  *v330 = "PhotosZkwPerson";
  *(v330 + 1) = 15;
  v330[16] = 2;
  v7();
  v331 = (v366 + v3 + 163 * v2);
  v332 = v331 + v1[14];
  *v331 = 163;
  *v332 = "PhotosZkwPlace";
  *(v332 + 1) = 14;
  v332[16] = 2;
  v7();
  v333 = (v366 + v3 + 164 * v2);
  v334 = v333 + v1[14];
  *v333 = 164;
  *v334 = "PhotosZkwScene";
  *(v334 + 1) = 14;
  v334[16] = 2;
  v7();
  v335 = (v366 + v3 + 165 * v2);
  v336 = v335 + v1[14];
  *v335 = 165;
  *v336 = "PhotosZkwSeason";
  *(v336 + 1) = 15;
  v336[16] = 2;
  v7();
  v337 = (v366 + v3 + 166 * v2);
  v338 = v337 + v1[14];
  *v337 = 166;
  *v338 = "PhotosZkwSocialGroup";
  *(v338 + 1) = 20;
  v338[16] = 2;
  v7();
  v339 = (v366 + v3 + 167 * v2);
  v340 = v339 + v1[14];
  *v339 = 167;
  *v340 = "PhotosZkwUnnamedPerson";
  *(v340 + 1) = 22;
  v340[16] = 2;
  v7();
  v341 = (v366 + v3 + 168 * v2);
  v342 = v341 + v1[14];
  *v341 = 168;
  *v342 = "MailSearchSuggestionInstantAnswerFlight";
  *(v342 + 1) = 39;
  v342[16] = 2;
  v7();
  v343 = (v366 + v3 + 169 * v2);
  v344 = v343 + v1[14];
  *v343 = 169;
  *v344 = "MailSearchSuggestionInstantAnswerLodging";
  *(v344 + 1) = 40;
  v344[16] = 2;
  v7();
  v345 = (v366 + v3 + 170 * v2);
  v346 = v345 + v1[14];
  *v345 = 170;
  *v346 = "PhotosTrip";
  *(v346 + 1) = 10;
  v346[16] = 2;
  v7();
  v347 = (v366 + v3 + 171 * v2);
  v348 = v347 + v1[14];
  *v347 = 171;
  *v348 = "PhotosAllResults";
  *(v348 + 1) = 16;
  v348[16] = 2;
  v7();
  v349 = (v366 + v3 + 172 * v2);
  v350 = v349 + v1[14];
  *v349 = 172;
  *v350 = "PhotosSuggestionsUserGeneratedText";
  *(v350 + 1) = 34;
  v350[16] = 2;
  v7();
  v351 = (v366 + v3 + 173 * v2);
  v352 = v351 + v1[14];
  *v351 = 173;
  *v352 = "PhotosSuggestionsScene";
  *(v352 + 1) = 22;
  v352[16] = 2;
  v7();
  v353 = (v366 + v3 + 174 * v2);
  v354 = v353 + v1[14];
  *v353 = 174;
  *v354 = "PhotosSuggestionsPublicEvent";
  *(v354 + 1) = 28;
  v354[16] = 2;
  v7();
  v355 = (v366 + v3 + 175 * v2);
  v356 = v355 + v1[14];
  *v355 = 175;
  *v356 = "PhotosSuggestionsActionCam";
  *(v356 + 1) = 26;
  v356[16] = 2;
  v7();
  v357 = (v366 + v3 + 176 * v2);
  v358 = v357 + v1[14];
  *v357 = 176;
  *v358 = "PhotosSuggestionsSpatial";
  *(v358 + 1) = 24;
  v358[16] = 2;
  v7();
  v359 = (v366 + v3 + 177 * v2);
  v360 = v359 + v1[14];
  *v359 = 177;
  *v360 = "PhotosSuggestionsFilename";
  *(v360 + 1) = 25;
  v360[16] = 2;
  v7();
  v361 = (v366 + v3 + 178 * v2);
  v362 = v361 + v1[14];
  *v361 = 178;
  *v362 = "PhotosSectionPrompt";
  *(v362 + 1) = 19;
  v362[16] = 2;
  v7();
  v363 = (v366 + v3 + 179 * v2);
  v364 = v363 + v1[14];
  *v363 = 179;
  *v364 = "PhotosSectionSuggestions";
  *(v364 + 1) = 24;
  v364[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B02D740()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43EA8);
  __swift_project_value_buffer(v0, qword_27CD43EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UserReportTypeDefault";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UserReportTypeVisualLookup";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UserReportTypeHashtagImages";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UserReportTypeSafariSBA";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B02D9A8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43EC0);
  __swift_project_value_buffer(v0, qword_27CD43EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UnknownClient";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Safari";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Spotlight";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Images";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "News";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VisualIntelligence";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21B02DC88()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43ED8);
  __swift_project_value_buffer(v0, qword_27CD43ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21B118070;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "DeletionReasonUnknown";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21B112234();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Age";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Size";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "UnknownVersion";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MismatchedVersion";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Filesystem";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Corruption";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "JSON";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "JetsamPrevention";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "TooManyFiles";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "DiagnosticsAndUsageDisabled";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "Empty";
  *(v29 + 1) = 5;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "UploadSuccess";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "NotFulfilled";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "CarryOnly";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "UnknownFileType";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  return sub_21B112244();
}

uint64_t sub_21B02E1D0()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43EF0);
  __swift_project_value_buffer(v0, qword_27CD43EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_21B1150B0;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 1;
  *v4 = "avgRTT";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 2;
  *v8 = "cellRXPackets";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cellTXPackets";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "connectAttempts";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "connectSuccesses";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "minRTT";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "rxBytes";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "rxDuplicateBytes";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "rxOutOfOrderBytes";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "rxPackets";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "txBytes";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "txPackets";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "txRetransmitPackets";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "varRTT";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "wifiRXPackets";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "wifiTXPackets";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "wiredRXPackets";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "wiredTXPackets";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "statsType";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "txRetransmitBytes";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  return sub_21B112244();
}

double sub_21B02E804()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 100) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  qword_27CD43F08 = v0;
  return result;
}

uint64_t sub_21B02E86C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 100) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 152) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v7;
  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v8;
  swift_beginAccess();
  v9 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v9;
  swift_beginAccess();
  v10 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v10;
  swift_beginAccess();
  v11 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v11;
  swift_beginAccess();
  v12 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v12;
  swift_beginAccess();
  v13 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 88) = v13;
  swift_beginAccess();
  v14 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 96) = v14;
  swift_beginAccess();
  v15 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v15;
  swift_beginAccess();
  LODWORD(v15) = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v15;
  swift_beginAccess();
  v16 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v16;
  swift_beginAccess();
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 128) = v17;
  swift_beginAccess();
  v18 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 136) = v18;
  swift_beginAccess();
  v19 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v19;
  swift_beginAccess();
  v21 = *(a1 + 152);
  v20 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 152) = v21;
  *(v1 + 160) = v20;
  swift_beginAccess();
  v22 = *(a1 + 168);

  swift_beginAccess();
  *(v1 + 168) = v22;
  return v1;
}

uint64_t sub_21B02ED64()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

void Apple_Parsec_Feedback_V2_TCPInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_822();
  v2 = v0;
  OUTLINED_FUNCTION_404();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_706(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    *(v2 + v1) = sub_21B02E86C(v6);
  }

  OUTLINED_FUNCTION_162();
  sub_21B02EE18();
  OUTLINED_FUNCTION_823();
}

void sub_21B02EE18()
{
  while (1)
  {
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_21B09150C();
        break;
      case 2:
        sub_21B08C44C();
        break;
      case 3:
        sub_21B0446A4();
        break;
      case 4:
        sub_21B091708();
        break;
      case 5:
        sub_21B091760();
        break;
      case 6:
        sub_21B0917B8();
        break;
      case 7:
        sub_21B0828B4();
        break;
      case 8:
        sub_21B02F130();
        break;
      case 9:
        sub_21B05CC4C();
        break;
      case 10:
        sub_21B02F1B4();
        break;
      case 11:
        sub_21B02F238();
        break;
      case 12:
        sub_21B02F2BC();
        break;
      case 13:
        sub_21B02F340();
        break;
      case 14:
        sub_21B044B18();
        break;
      case 15:
        sub_21B02F3C4();
        break;
      case 16:
        sub_21B02F448();
        break;
      case 17:
        sub_21B02F4CC();
        break;
      case 18:
        sub_21B02F550();
        break;
      case 19:
        sub_21B02F5D4();
        break;
      case 20:
        sub_21B02F658();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B02F130()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F1B4()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F238()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F2BC()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F340()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F3C4()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F448()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F4CC()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F550()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F5D4()
{
  swift_beginAccess();
  sub_21B112074();
  return swift_endAccess();
}

uint64_t sub_21B02F658()
{
  swift_beginAccess();
  sub_21B112094();
  return swift_endAccess();
}

uint64_t sub_21B02F71C(uint64_t a1)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_21B1121F4(), !v1))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_21B112204(), !v1))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (result = sub_21B112204(), !v1))
      {
        swift_beginAccess();
        if (!*(a1 + 40) || (result = sub_21B1121F4(), !v1))
        {
          swift_beginAccess();
          if (!*(a1 + 44) || (result = sub_21B1121F4(), !v1))
          {
            swift_beginAccess();
            if (!*(a1 + 48) || (result = sub_21B1121F4(), !v1))
            {
              swift_beginAccess();
              if (!*(a1 + 56) || (result = sub_21B112204(), !v1))
              {
                swift_beginAccess();
                if (!*(a1 + 64) || (result = sub_21B112204(), !v1))
                {
                  swift_beginAccess();
                  if (!*(a1 + 72) || (result = sub_21B112204(), !v1))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 80) || (result = sub_21B112204(), !v1))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 88) || (result = sub_21B112204(), !v1))
                      {
                        swift_beginAccess();
                        if (!*(a1 + 96) || (result = sub_21B112204(), !v1))
                        {
                          swift_beginAccess();
                          if (!*(a1 + 104) || (result = sub_21B112204(), !v1))
                          {
                            swift_beginAccess();
                            if (!*(a1 + 112) || (result = sub_21B1121F4(), !v1))
                            {
                              swift_beginAccess();
                              if (!*(a1 + 120) || (result = sub_21B112204(), !v1))
                              {
                                swift_beginAccess();
                                if (!*(a1 + 128) || (result = sub_21B112204(), !v1))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 136) || (result = sub_21B112204(), !v1))
                                  {
                                    swift_beginAccess();
                                    if (!*(a1 + 144) || (result = sub_21B112204(), !v1))
                                    {
                                      swift_beginAccess();
                                      v4 = *(a1 + 160);
                                      v5 = HIBYTE(v4) & 0xF;
                                      if ((v4 & 0x2000000000000000) == 0)
                                      {
                                        v5 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
                                      }

                                      if (!v5 || (v6 = *(a1 + 160), , sub_21B1121E4(), result = , !v1))
                                      {
                                        swift_beginAccess();
                                        result = *(a1 + 168);
                                        if (result)
                                        {
                                          return sub_21B112204();
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

  return result;
}

BOOL sub_21B02FC20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (v5 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (v6 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  if (v7 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 44);
  swift_beginAccess();
  if (v8 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  v9 = *(a1 + 48);
  swift_beginAccess();
  if (v9 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v10 = *(a1 + 56);
  swift_beginAccess();
  if (v10 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 64);
  swift_beginAccess();
  if (v11 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  swift_beginAccess();
  if (v12 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v13 = *(a1 + 80);
  swift_beginAccess();
  if (v13 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 88);
  swift_beginAccess();
  if (v14 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 96);
  swift_beginAccess();
  if (v15 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 104);
  swift_beginAccess();
  if (v16 != *(a2 + 104))
  {
    return 0;
  }

  swift_beginAccess();
  v17 = *(a1 + 112);
  swift_beginAccess();
  if (v17 != *(a2 + 112))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 120);
  swift_beginAccess();
  if (v18 != *(a2 + 120))
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 128);
  swift_beginAccess();
  if (v19 != *(a2 + 128))
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 136);
  swift_beginAccess();
  if (v20 != *(a2 + 136))
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 144);
  swift_beginAccess();
  if (v21 != *(a2 + 144))
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 152);
  v23 = *(a1 + 160);
  swift_beginAccess();
  v24 = v22 == *(a2 + 152) && v23 == *(a2 + 160);
  if (!v24 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 168);
  swift_beginAccess();
  return v25 == *(a2 + 168);
}

uint64_t sub_21B030178(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B50, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0301F8(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B030268()
{
  sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);

  return sub_21B112114();
}

uint64_t sub_21B0302F4()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F10);
  __swift_project_value_buffer(v0, qword_27CD43F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_21B118080;
  v4 = v64 + v3 + v1[14];
  *(v64 + v3) = 3;
  *v4 = "interfaceIdentifier";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v64 + v3 + v2 + v1[14];
  *(v64 + v3 + v2) = 4;
  *v8 = "peerAddress";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v64 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 5;
  *v10 = "connectionRace";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v64 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "connectionReused";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v64 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "startTimeCounts";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v64 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "stopTimeCounts";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v64 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "connectionUUID";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v64 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "networkProtocolName";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v7();
  v21 = (v64 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 14;
  *v22 = "QUICWhitelistedDomain";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v64 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 15;
  *v24 = "redirectCount";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v64 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 16;
  *v26 = "redirectCountW3C";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v64 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 21;
  *v28 = "requestHeaderSize";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v64 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 22;
  *v30 = "responseBodyBytesDecoded";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v64 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 23;
  *v32 = "responseBodyBytesReceived";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v64 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 26;
  *v34 = "responseHeaderSize";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v64 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 27;
  *v36 = "TFOSuccess";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v64 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 28;
  *v38 = "timingDataInit";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v64 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 31;
  *v40 = "connectStart";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v64 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 32;
  *v42 = "connectEnd";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v7();
  v43 = (v64 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 33;
  *v44 = "domainLookupStart";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  v45 = (v64 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 34;
  *v46 = "domainLookupEnd";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v64 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 35;
  *v48 = "fetchStart";
  *(v48 + 1) = 10;
  v48[16] = 2;
  v7();
  v49 = (v64 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 36;
  *v50 = "redirectStart";
  *(v50 + 1) = 13;
  v50[16] = 2;
  v7();
  v51 = (v64 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 37;
  *v52 = "redirectEnd";
  *(v52 + 1) = 11;
  v52[16] = 2;
  v7();
  v53 = (v64 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 38;
  *v54 = "requestStart";
  *(v54 + 1) = 12;
  v54[16] = 2;
  v7();
  v55 = (v64 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 39;
  *v56 = "requestEnd";
  *(v56 + 1) = 10;
  v56[16] = 2;
  v7();
  v57 = (v64 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 40;
  *v58 = "responseStart";
  *(v58 + 1) = 13;
  v58[16] = 2;
  v7();
  v59 = (v64 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 41;
  *v60 = "responseEnd";
  *(v60 + 1) = 11;
  v60[16] = 2;
  v7();
  v61 = (v64 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 42;
  *v62 = "secureConnectStart";
  *(v62 + 1) = 18;
  v62[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B030BB8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = xmmword_21B117F10;
  *(v0 + 48) = 0;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__startTimeCounts;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__stopTimeCounts, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart) = 0;
  return v0;
}

uint64_t sub_21B030D58(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v69[2] = v69 - v4;
  *(v1 + 16) = 0;
  *(v1 + 32) = xmmword_21B117F10;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v5 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__startTimeCounts;
  v69[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__startTimeCounts;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v69[3] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__stopTimeCounts;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__stopTimeCounts, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
  v70 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
  v71 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v72 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain) = 0;
  v73 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount) = 0;
  v74 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C) = 0;
  v75 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize) = 0;
  v76 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded) = 0;
  v77 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived) = 0;
  v78 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize) = 0;
  v79 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess) = 0;
  v80 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit) = 0;
  v81 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart) = 0;
  v82 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd) = 0;
  v83 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart) = 0;
  v84 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd) = 0;
  v85 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart) = 0;
  v86 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart) = 0;
  v87 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd) = 0;
  v88 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart) = 0;
  v89 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd) = 0;
  v90 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart) = 0;
  v91 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd) = 0;
  v92 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart) = 0;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;

  sub_21AF99818(v11, v12);
  sub_21AF99728(v13, v14);
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v13;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v15 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];
  v18 = v70;
  swift_beginAccess();
  v19 = v18[1];
  *v18 = v17;
  v18[1] = v16;

  v20 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  v23 = v71;
  swift_beginAccess();
  v24 = v23[1];
  *v23 = v22;
  v23[1] = v21;

  v25 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
  swift_beginAccess();
  LOBYTE(v25) = *(a1 + v25);
  v26 = v72;
  swift_beginAccess();
  *(v1 + v26) = v25;
  v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
  swift_beginAccess();
  LODWORD(v27) = *(a1 + v27);
  v28 = v73;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
  swift_beginAccess();
  LODWORD(v29) = *(a1 + v29);
  v30 = v74;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
  swift_beginAccess();
  LODWORD(v31) = *(a1 + v31);
  v32 = v75;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
  swift_beginAccess();
  LODWORD(v33) = *(a1 + v33);
  v34 = v76;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
  swift_beginAccess();
  LODWORD(v35) = *(a1 + v35);
  v36 = v77;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
  swift_beginAccess();
  LODWORD(v37) = *(a1 + v37);
  v38 = v78;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v79;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
  swift_beginAccess();
  v42 = *(a1 + v41);
  v43 = v80;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
  swift_beginAccess();
  LODWORD(v44) = *(a1 + v44);
  v45 = v81;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
  swift_beginAccess();
  LODWORD(v46) = *(a1 + v46);
  v47 = v82;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
  swift_beginAccess();
  LODWORD(v48) = *(a1 + v48);
  v49 = v83;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
  swift_beginAccess();
  LODWORD(v50) = *(a1 + v50);
  v51 = v84;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
  swift_beginAccess();
  LODWORD(v52) = *(a1 + v52);
  v53 = v85;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
  swift_beginAccess();
  LODWORD(v54) = *(a1 + v54);
  v55 = v86;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
  swift_beginAccess();
  LODWORD(v56) = *(a1 + v56);
  v57 = v87;
  swift_beginAccess();
  *(v1 + v57) = v56;
  v58 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
  swift_beginAccess();
  LODWORD(v58) = *(a1 + v58);
  v59 = v88;
  swift_beginAccess();
  *(v1 + v59) = v58;
  v60 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
  swift_beginAccess();
  LODWORD(v60) = *(a1 + v60);
  v61 = v89;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
  swift_beginAccess();
  LODWORD(v62) = *(a1 + v62);
  v63 = v90;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
  swift_beginAccess();
  LODWORD(v64) = *(a1 + v64);
  v65 = v91;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
  swift_beginAccess();
  LODWORD(v66) = *(a1 + v66);

  v67 = v92;
  swift_beginAccess();
  *(v1 + v67) = v66;
  return v1;
}

uint64_t sub_21B03179C()
{
  v1 = OUTLINED_FUNCTION_267();
  v3 = v2(v1);
  OUTLINED_FUNCTION_163(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_52();
  v7(v6);
  return v0;
}

uint64_t sub_21B0317EC()
{
  v1 = OUTLINED_FUNCTION_267();
  v3 = v2(v1);
  OUTLINED_FUNCTION_163(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_52();
  v7(v6);
  return v0;
}

uint64_t sub_21B03183C()
{
  v1 = OUTLINED_FUNCTION_36_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_21B031930()
{
  v1 = v0[3];

  sub_21AF99728(v0[4], v0[5]);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__startTimeCounts, &qword_27CD44758, &qword_21B118100);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__stopTimeCounts, &qword_27CD44758, &qword_21B118100);
  v2 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName + 8);

  return v0;
}

void sub_21B031A50()
{
  while (1)
  {
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_21B082764();
        break;
      case 4:
        sub_21B0827B8();
        break;
      case 5:
        sub_21AFB1DA8();
        break;
      case 6:
        sub_21B05FE70();
        break;
      case 7:
        sub_21B031D2C();
        break;
      case 8:
        sub_21B031E08();
        break;
      case 9:
      case 13:
        sub_21B089408();
        break;
      case 14:
      case 27:
        sub_21B08C5F8();
        break;
      case 15:
      case 16:
      case 21:
      case 22:
      case 23:
      case 26:
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
        sub_21B091A20();
        break;
      case 28:
        sub_21B04DD34();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B031D2C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B031E08()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B031F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = a4(0);
  OUTLINED_FUNCTION_846(v7);
  OUTLINED_FUNCTION_49_1();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_48_1();
    return sub_21B111EA4();
  }

  return result;
}

uint64_t sub_21B031F98(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v67 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_21B1121E4();
    if (v2)
    {
    }

    v65 = v13;
    v18 = 0;
  }

  else
  {
    v65 = v13;
    v18 = v2;
  }

  v19 = v68;
  swift_beginAccess();
  if (!sub_21AFD45D8(*(v19 + 32), *(v19 + 40)))
  {
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    sub_21AF99818(v20, v21);
    sub_21B112184();
    if (v18)
    {
      return sub_21AF99728(v20, v21);
    }

    sub_21AF99728(v20, v21);
  }

  v22 = v68;
  swift_beginAccess();
  if (*(v22 + 48) != 1 || (result = sub_21B112164(), !v18))
  {
    v23 = v68;
    swift_beginAccess();
    if (*(v23 + 49) != 1 || (result = sub_21B112164(), !v18))
    {
      v24 = v68;
      swift_beginAccess();
      sub_21B0AA940();
      v25 = v67;
      if (__swift_getEnumTagSinglePayload(v9, 1, v67) == 1)
      {
        sub_21AF99BE0(v9, &qword_27CD44758, &qword_21B118100);
        v26 = v25;
      }

      else
      {
        sub_21B03179C();
        sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
        sub_21B112224();
        if (v18)
        {
          return sub_21B03183C();
        }

        v26 = v25;
        sub_21B03183C();
      }

      swift_beginAccess();
      v27 = v66;
      sub_21B0AA940();
      if (__swift_getEnumTagSinglePayload(v27, 1, v26) == 1)
      {
        sub_21AF99BE0(v27, &qword_27CD44758, &qword_21B118100);
LABEL_26:
        v28 = (v24 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
        swift_beginAccess();
        v29 = *v28;
        v30 = v28[1];
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {

          sub_21B1121E4();
          if (v18)
          {
          }
        }

        v32 = (v24 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
        swift_beginAccess();
        v33 = *v32;
        v34 = v32[1];
        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {

          sub_21B1121E4();
          if (v18)
          {
          }
        }

        v36 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
        swift_beginAccess();
        if (*(v24 + v36) != 1 || (result = sub_21B112164(), !v18))
        {
          v37 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
          swift_beginAccess();
          if (!*(v24 + v37) || (result = sub_21B1121F4(), !v18))
          {
            v38 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
            swift_beginAccess();
            if (!*(v24 + v38) || (result = sub_21B1121F4(), !v18))
            {
              v39 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
              swift_beginAccess();
              if (!*(v24 + v39) || (result = sub_21B1121F4(), !v18))
              {
                v40 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
                swift_beginAccess();
                if (!*(v24 + v40) || (result = sub_21B1121F4(), !v18))
                {
                  v41 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
                  swift_beginAccess();
                  if (!*(v24 + v41) || (result = sub_21B1121F4(), !v18))
                  {
                    v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
                    swift_beginAccess();
                    if (!*(v24 + v42) || (result = sub_21B1121F4(), !v18))
                    {
                      v43 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
                      swift_beginAccess();
                      if (*(v24 + v43) != 1 || (result = sub_21B112164(), !v18))
                      {
                        v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
                        swift_beginAccess();
                        if (*(v24 + v44) == 0.0 || (result = sub_21B1121D4(), !v18))
                        {
                          v45 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
                          swift_beginAccess();
                          if (!*(v24 + v45) || (result = sub_21B1121F4(), !v18))
                          {
                            v46 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
                            swift_beginAccess();
                            if (!*(v24 + v46) || (result = sub_21B1121F4(), !v18))
                            {
                              v47 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
                              swift_beginAccess();
                              if (!*(v24 + v47) || (result = sub_21B1121F4(), !v18))
                              {
                                v48 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
                                swift_beginAccess();
                                if (!*(v24 + v48) || (result = sub_21B1121F4(), !v18))
                                {
                                  v49 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
                                  swift_beginAccess();
                                  if (!*(v24 + v49) || (result = sub_21B1121F4(), !v18))
                                  {
                                    v50 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
                                    v51 = v68;
                                    swift_beginAccess();
                                    if (!*(v51 + v50) || (result = sub_21B1121F4(), !v18))
                                    {
                                      v52 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
                                      v53 = v68;
                                      swift_beginAccess();
                                      if (!*(v53 + v52) || (result = sub_21B1121F4(), !v18))
                                      {
                                        v54 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
                                        v55 = v68;
                                        swift_beginAccess();
                                        if (!*(v55 + v54) || (result = sub_21B1121F4(), !v18))
                                        {
                                          v56 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
                                          v57 = v68;
                                          swift_beginAccess();
                                          if (!*(v57 + v56) || (result = sub_21B1121F4(), !v18))
                                          {
                                            v58 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
                                            v59 = v68;
                                            swift_beginAccess();
                                            if (!*(v59 + v58) || (result = sub_21B1121F4(), !v18))
                                            {
                                              v60 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
                                              v61 = v68;
                                              swift_beginAccess();
                                              if (!*(v61 + v60) || (result = sub_21B1121F4(), !v18))
                                              {
                                                v62 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
                                                v63 = v68;
                                                swift_beginAccess();
                                                result = *(v63 + v62);
                                                if (result)
                                                {
                                                  return sub_21B1121F4();
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
        }

        return result;
      }

      sub_21B03179C();
      sub_21B099CBC(&qword_27CD45998, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
      sub_21B112224();
      if (!v18)
      {
        sub_21B03183C();
        goto LABEL_26;
      }

      return sub_21B03183C();
    }
  }

  return result;
}

BOOL sub_21B032B5C(uint64_t a1, uint64_t a2)
{
  v121 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v4 = *(*(v121 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v121);
  v7 = &v112[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v117 = &v112[-v8];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DC0, &qword_21B127D40);
  v9 = *(*(v120 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v120);
  v12 = &v112[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v119 = &v112[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v118 = &v112[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v112[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v112[-v24];
  swift_beginAccess();
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  swift_beginAccess();
  v28 = v26 == *(a2 + 16) && v27 == *(a2 + 24);
  if (v28 || (v29 = sub_21B112D04(), result = 0, (v29 & 1) != 0))
  {
    v115 = v12;
    v116 = v18;
    v114 = v7;
    swift_beginAccess();
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    swift_beginAccess();
    v34 = *(a2 + 32);
    v33 = *(a2 + 40);

    sub_21AF99818(v31, v32);
    sub_21AF99818(v34, v33);
    v35 = MEMORY[0x21CEE80C0](v31, v32, v34, v33);
    sub_21AF99728(v34, v33);
    sub_21AF99728(v31, v32);
    if ((v35 & 1) == 0)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v36 = *(a1 + 48);
    swift_beginAccess();
    if (v36 != *(a2 + 48))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v37 = *(a1 + 49);
    swift_beginAccess();
    if (v37 != *(a2 + 49))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    sub_21B0AA940();
    swift_beginAccess();
    v38 = v119;
    v39 = *(v120 + 48);
    sub_21B0AA940();
    v40 = v38;
    sub_21B0AA940();
    v41 = v121;
    if (__swift_getEnumTagSinglePayload(v38, 1, v121) == 1)
    {
      sub_21AF99BE0(v25, &qword_27CD44758, &qword_21B118100);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38 + v39, 1, v41);
      v43 = v116;
      if (EnumTagSinglePayload != 1)
      {
LABEL_21:
        v51 = &qword_27CD46DC0;
        v52 = &qword_21B127D40;
        v53 = v40;
LABEL_22:
        sub_21AF99BE0(v53, v51, v52);
        goto LABEL_23;
      }

      sub_21AF99BE0(v40, &qword_27CD44758, &qword_21B118100);
    }

    else
    {
      sub_21B0AA940();
      v44 = __swift_getEnumTagSinglePayload(v38 + v39, 1, v41);
      v43 = v116;
      if (v44 == 1)
      {
LABEL_20:
        sub_21AF99BE0(v25, &qword_27CD44758, &qword_21B118100);
        sub_21B03183C();
        goto LABEL_21;
      }

      v45 = v117;
      sub_21B03179C();
      v46 = *(v41 + 20);
      v47 = *&v23[v46];
      v48 = *&v45[v46];
      if (v47 != v48 && !sub_21B02FC20(v47, v48))
      {
        sub_21B03183C();
        sub_21AF99BE0(v25, &qword_27CD44758, &qword_21B118100);
        sub_21B03183C();
        v53 = v40;
        goto LABEL_61;
      }

      sub_21B111EC4();
      sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8]);
      v113 = sub_21B1123C4();
      sub_21B03183C();
      sub_21AF99BE0(v25, &qword_27CD44758, &qword_21B118100);
      sub_21B03183C();
      sub_21AF99BE0(v40, &qword_27CD44758, &qword_21B118100);
      if ((v113 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v25 = v118;
    sub_21B0AA940();
    swift_beginAccess();
    v49 = *(v120 + 48);
    v40 = v115;
    sub_21B0AA940();
    sub_21B0AA940();
    v50 = v121;
    if (__swift_getEnumTagSinglePayload(v40, 1, v121) == 1)
    {
      sub_21AF99BE0(v25, &qword_27CD44758, &qword_21B118100);
      if (__swift_getEnumTagSinglePayload(v40 + v49, 1, v50) == 1)
      {
        sub_21AF99BE0(v40, &qword_27CD44758, &qword_21B118100);
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_21B0AA940();
    if (__swift_getEnumTagSinglePayload(v40 + v49, 1, v50) == 1)
    {
      goto LABEL_20;
    }

    v54 = v114;
    sub_21B03179C();
    v55 = *(v50 + 20);
    v56 = *&v43[v55];
    v57 = *&v54[v55];
    if (v56 == v57 || sub_21B02FC20(v56, v57))
    {
      sub_21B111EC4();
      sub_21B099CBC(&unk_2811FAAE0, MEMORY[0x277D216C8]);
      v58 = sub_21B1123C4();
      sub_21B03183C();
      sub_21AF99BE0(v25, &qword_27CD44758, &qword_21B118100);
      sub_21B03183C();
      sub_21AF99BE0(v115, &qword_27CD44758, &qword_21B118100);
      if (v58)
      {
LABEL_28:
        v59 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
        swift_beginAccess();
        v60 = *v59;
        v61 = v59[1];
        v62 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectionUuid);
        swift_beginAccess();
        v63 = v60 == *v62 && v61 == v62[1];
        if (v63 || (sub_21B112D04() & 1) != 0)
        {
          v64 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
          swift_beginAccess();
          v65 = *v64;
          v66 = v64[1];
          v67 = (a2 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__networkProtocolName);
          swift_beginAccess();
          v68 = v65 == *v67 && v66 == v67[1];
          if (v68 || (sub_21B112D04() & 1) != 0)
          {
            v69 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            LODWORD(v69) = *(a1 + v69);
            v70 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            if (v69 == *(a2 + v70))
            {
              v71 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
              swift_beginAccess();
              LODWORD(v71) = *(a1 + v71);
              v72 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCount;
              swift_beginAccess();
              if (v71 == *(a2 + v72))
              {
                v73 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
                swift_beginAccess();
                LODWORD(v73) = *(a1 + v73);
                v74 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectCountW3C;
                swift_beginAccess();
                if (v73 == *(a2 + v74))
                {
                  v75 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  LODWORD(v75) = *(a1 + v75);
                  v76 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  if (v75 == *(a2 + v76))
                  {
                    v77 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    LODWORD(v77) = *(a1 + v77);
                    v78 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    if (v77 == *(a2 + v78))
                    {
                      v79 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      LODWORD(v79) = *(a1 + v79);
                      v80 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      if (v79 == *(a2 + v80))
                      {
                        v81 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        LODWORD(v81) = *(a1 + v81);
                        v82 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        if (v81 == *(a2 + v82))
                        {
                          v83 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
                          swift_beginAccess();
                          LODWORD(v83) = *(a1 + v83);
                          v84 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__tfosuccess;
                          swift_beginAccess();
                          if (v83 == *(a2 + v84))
                          {
                            v85 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
                            swift_beginAccess();
                            v86 = *(a1 + v85);
                            v87 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__timingDataInit;
                            swift_beginAccess();
                            if (v86 == *(a2 + v87))
                            {
                              v88 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
                              swift_beginAccess();
                              LODWORD(v88) = *(a1 + v88);
                              v89 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectStart;
                              swift_beginAccess();
                              if (v88 == *(a2 + v89))
                              {
                                v90 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
                                swift_beginAccess();
                                LODWORD(v90) = *(a1 + v90);
                                v91 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__connectEnd;
                                swift_beginAccess();
                                if (v90 == *(a2 + v91))
                                {
                                  v92 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  LODWORD(v92) = *(a1 + v92);
                                  v93 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  if (v92 == *(a2 + v93))
                                  {
                                    v94 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    LODWORD(v94) = *(a1 + v94);
                                    v95 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    if (v94 == *(a2 + v95))
                                    {
                                      v96 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      LODWORD(v96) = *(a1 + v96);
                                      v97 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      if (v96 == *(a2 + v97))
                                      {
                                        v98 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        LODWORD(v98) = *(a1 + v98);
                                        v99 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        if (v98 == *(a2 + v99))
                                        {
                                          v100 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          LODWORD(v100) = *(a1 + v100);
                                          v101 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          if (v100 == *(a2 + v101))
                                          {
                                            v102 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
                                            swift_beginAccess();
                                            LODWORD(v102) = *(a1 + v102);
                                            v103 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestStart;
                                            swift_beginAccess();
                                            if (v102 == *(a2 + v103))
                                            {
                                              v104 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              LODWORD(v104) = *(a1 + v104);
                                              v105 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              if (v104 == *(a2 + v105))
                                              {
                                                v106 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
                                                swift_beginAccess();
                                                LODWORD(v106) = *(a1 + v106);
                                                v107 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseStart;
                                                swift_beginAccess();
                                                if (v106 == *(a2 + v107))
                                                {
                                                  v108 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  LODWORD(v108) = *(a1 + v108);
                                                  v109 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  if (v108 == *(a2 + v109))
                                                  {
                                                    v110 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v110) = *(a1 + v110);

                                                    v111 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v111) = *(a2 + v111);

                                                    return v110 == v111;
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
          }
        }
      }

LABEL_23:

      return 0;
    }

    sub_21B03183C();
    sub_21AF99BE0(v25, &qword_27CD44758, &qword_21B118100);
    sub_21B03183C();
    v53 = v115;
LABEL_61:
    v51 = &qword_27CD44758;
    v52 = &qword_21B118100;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21B033B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B48, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B033BD0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F10, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B033C40()
{
  sub_21B099CBC(&qword_27CD44F10, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return sub_21B112114();
}

uint64_t sub_21B033CCC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F30);
  __swift_project_value_buffer(v0, qword_27CD43F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21B117F90;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "results";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "identifier";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "rankingScore";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "fallbackResultSection";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "isInitiallyHidden";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "totalAvailableResults";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "titleButtonItem";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_21B112244();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    v1 = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_10_2();
        sub_21B087AA4();
        break;
      case 2:
        OUTLINED_FUNCTION_318();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FD4();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0341B4(v3, v4);
        break;
      case 7:
        OUTLINED_FUNCTION_10_2();
        sub_21B034280();
        break;
      case 8:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 9:
        OUTLINED_FUNCTION_49_1();
        sub_21B112084();
        break;
      case 10:
        OUTLINED_FUNCTION_10_2();
        sub_21B034364();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0341B4(uint64_t a1, uint64_t a2)
{
  result = sub_21B112064();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 64) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_21B111F74();
      v5 = *(a2 + 64);
    }

    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = v8;
    *(a2 + 64) = 0;
    return sub_21AF83FA4(v6, v7, v5);
  }

  return result;
}

uint64_t sub_21B034364()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0) + 48);
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_21B099CBC(&qword_27CD44D10, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44828, &qword_21B118108);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_212();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_838();
  if (!v12 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_8(), sub_21B099CBC(v13, v14), OUTLINED_FUNCTION_485(), OUTLINED_FUNCTION_750(), OUTLINED_FUNCTION_58_0(), sub_21B112214(), !v0))
  {
    v15 = *(v1 + 8);
    v16 = *(v1 + 16);
    OUTLINED_FUNCTION_10_4();
    if (!v17 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v0))
    {
      if (*(v1 + 24) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v0))
      {
        v18 = *(v1 + 32);
        v19 = *(v1 + 40);
        v20 = OUTLINED_FUNCTION_34_3();
        if (sub_21AFD45D8(v20, v21) || (OUTLINED_FUNCTION_34_3(), OUTLINED_FUNCTION_63_0(), sub_21B112184(), !v0))
        {
          if (*(v1 + 64) == 255)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_455();
          OUTLINED_FUNCTION_292();
          if (v23)
          {
            sub_21B0346E8(v22);
          }

          else
          {
            sub_21B03469C(v22);
          }

          if (!v0)
          {
LABEL_27:
            if (*(v1 + 65) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
            {
              if (!*(v1 + 68) || (OUTLINED_FUNCTION_36_1(), sub_21B1121F4(), !v0))
              {
                v24 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
                v25 = *(v24 + 48);
                OUTLINED_FUNCTION_715();
                OUTLINED_FUNCTION_243();
                if (v26)
                {
                  sub_21AF99BE0(v2, &qword_27CD44828, &qword_21B118108);
LABEL_23:
                  v29 = *(v24 + 44);
                  OUTLINED_FUNCTION_27_2();
                  goto LABEL_24;
                }

                OUTLINED_FUNCTION_49_2();
                sub_21B03179C();
                OUTLINED_FUNCTION_153();
                sub_21B099CBC(v27, v28);
                OUTLINED_FUNCTION_595();
                OUTLINED_FUNCTION_58_0();
                sub_21B112224();
                OUTLINED_FUNCTION_325();
                sub_21B03183C();
                if (!v0)
                {
                  goto LABEL_23;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21B03469C(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 48);
    v2 = *(result + 56);
    return sub_21B1121E4();
  }

  return result;
}

uint64_t sub_21B0346E8(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 48);
    v3 = *(result + 56) & 1;
    sub_21B0AA400();
    return sub_21B112174();
  }

  return result;
}

uint64_t (*sub_21B034BCC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_21B034C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B40, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B034CA0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B034D10()
{
  sub_21B099CBC(&qword_27CD44DF8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B034E08()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0) + 20);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  return sub_21B1120B4();
}

void Apple_Parsec_Feedback_V2_ActionItemForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v10 = OUTLINED_FUNCTION_164(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0) + 20);
  v18 = v0;
  sub_21B0AA940();
  OUTLINED_FUNCTION_37_1(v8, 1, v2);
  if (v14)
  {
    sub_21AF99BE0(v8, &qword_27CD44830, &qword_21B118110);
LABEL_5:
    OUTLINED_FUNCTION_541();
    sub_21B111EA4();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_13();
  sub_21B03179C();
  OUTLINED_FUNCTION_552();
  sub_21B099CBC(v15, v16);
  OUTLINED_FUNCTION_750();
  sub_21B112224();
  OUTLINED_FUNCTION_120();
  sub_21B03183C();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_13();
}

void static Apple_Parsec_Feedback_V2_ActionItemForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_267();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v1);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_108();
  v6 = OUTLINED_FUNCTION_79();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_25(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_73();
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B58, &qword_21B1181D8) - 8);
  v13 = *(*v12 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_18_2();
  v16 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v15) + 20);
  v17 = v12[14];
  OUTLINED_FUNCTION_411();
  sub_21B0AA940();
  OUTLINED_FUNCTION_202(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_202(v0 + v17);
    if (v18)
    {
      sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
LABEL_12:
      sub_21B111EC4();
      OUTLINED_FUNCTION_0_15();
      sub_21B099CBC(v23, v24);
      OUTLINED_FUNCTION_7();
      v19 = OUTLINED_FUNCTION_653();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_90();
  sub_21B0AA940();
  OUTLINED_FUNCTION_202(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_120();
    sub_21B03183C();
LABEL_9:
    sub_21AF99BE0(v0, &qword_27CD44B58, &qword_21B1181D8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_13();
  sub_21B03179C();
  v20 = OUTLINED_FUNCTION_440();
  v22 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v20, v21);
  sub_21B03183C();
  OUTLINED_FUNCTION_26();
  sub_21B03183C();
  sub_21AF99BE0(v0, &qword_27CD44830, &qword_21B118110);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_498(v19);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B035330(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B38, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0353B0(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B035420()
{
  sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B0354AC()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F60);
  __swift_project_value_buffer(v0, qword_27CD43F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21B117FD0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "suggestion";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "fbr";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "topicIdentifier";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
      case 7:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112054();
        break;
      case 5:
        OUTLINED_FUNCTION_10_2();
        sub_21B035874();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_10_4();
  if (!v5 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    OUTLINED_FUNCTION_10_4();
    if (!v8 || (OUTLINED_FUNCTION_60_0(), sub_21B1121E4(), !v1))
    {
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
      OUTLINED_FUNCTION_10_4();
      if (!v11 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
      {
        if (*(v2 + 48) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B1121D4(), !v1))
        {
          if (!*(v2 + 56) || (v12 = *(v2 + 64), OUTLINED_FUNCTION_472(), sub_21B099D04(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
          {
            v13 = *(v2 + 72);
            v14 = *(v2 + 80);
            OUTLINED_FUNCTION_10_4();
            if (!v15 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
            {
              v16 = *(v2 + 88);
              v17 = *(v2 + 96);
              OUTLINED_FUNCTION_10_4();
              if (!v18 || (OUTLINED_FUNCTION_63_0(), sub_21B1121E4(), !v1))
              {
                v19 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0) + 44);
                OUTLINED_FUNCTION_27_2();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_30_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_629();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v13 = *(v2 + 64);
  if (!sub_21AFB4A88(*(v3 + 56), *(v3 + 64), *(v2 + 56)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_739();
  v16 = v6 && v14 == v15;
  if (!v16 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v3 + 88) == *(v2 + 88) && *(v3 + 96) == *(v2 + 96);
  if (!v17 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0) + 44);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v19, v20);
  return OUTLINED_FUNCTION_40_1() & 1;
}

uint64_t sub_21B035BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B30, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B035C58(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44F98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B035CC8()
{
  sub_21B099CBC(&qword_27CD44F98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B035D54()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F78);
  __swift_project_value_buffer(v0, qword_27CD43F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B115FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urls";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B112074();
        break;
      case 4:
        OUTLINED_FUNCTION_49_1();
        sub_21B112014();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_10_2();
        sub_21B0360A8(v3, v4);
        break;
      case 6:
        OUTLINED_FUNCTION_10_2();
        sub_21B036174();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B0360A8(uint64_t a1, uint64_t a2)
{
  result = sub_21B112064();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 56) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_21B111F74();
      v5 = *(a2 + 56);
    }

    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = v8;
    *(a2 + 56) = 0;
    return sub_21AF83FA4(v6, v7, v5);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_26_3();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_10_4();
  if (!v5 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_10_4();
    if (!v9 || (OUTLINED_FUNCTION_63_0(), result = sub_21B1121E4(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_36_1(), result = sub_21B1121C4(), !v1))
      {
        if (*(v2 + 56) == 255 || ((OUTLINED_FUNCTION_455(), OUTLINED_FUNCTION_292(), (v11 & 1) == 0) ? (result = sub_21B03632C(v10)) : (result = sub_21B036378(v10)), !v1))
        {
          v12 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0) + 32);
          return OUTLINED_FUNCTION_27_2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B03632C(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 40);
    v2 = *(result + 48);
    return sub_21B1121E4();
  }

  return result;
}

uint64_t sub_21B036378(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 40);
    v3 = *(result + 48) & 1;
    sub_21B0AA400();
    return sub_21B112174();
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_30_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_91();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_21B112D04() & 1) == 0 || (sub_21AFBE3A0(*(v3 + 32), *(v2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 56);
  v11 = *(v2 + 56);
  if (v10 == 255)
  {
    v28 = OUTLINED_FUNCTION_84();
    sub_21AF83F7C(v28, v29, 255);
    if (v11 == 255)
    {
      v46 = OUTLINED_FUNCTION_0();
      sub_21AF83F7C(v46, v47, 255);
      v48 = OUTLINED_FUNCTION_84();
      sub_21AF83FA4(v48, v49, 255);
LABEL_23:
      v50 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
      OUTLINED_FUNCTION_764(v50);
      OUTLINED_FUNCTION_0_15();
      sub_21B099CBC(v51, v52);
      return OUTLINED_FUNCTION_40_1() & 1;
    }

    v30 = OUTLINED_FUNCTION_0();
    sub_21AF83F7C(v30, v31, v11);
    goto LABEL_19;
  }

  v55 = *(v3 + 40);
  v56 = *(v3 + 48);
  if (v11 == 255)
  {
    v32 = OUTLINED_FUNCTION_84();
    sub_21AF83F7C(v32, v33, v10);
    v34 = OUTLINED_FUNCTION_0();
    sub_21AF83F7C(v34, v35, 255);
    v36 = OUTLINED_FUNCTION_84();
    sub_21AF83F7C(v36, v37, v10);
    v38 = OUTLINED_FUNCTION_84();
    sub_21AF83FBC(v38, v39, v40);
LABEL_19:
    v41 = OUTLINED_FUNCTION_84();
    sub_21AF83FA4(v41, v42, v10);
    v43 = OUTLINED_FUNCTION_0();
    sub_21AF83FA4(v43, v44, v11);
    return 0;
  }

  v53 = *(v2 + 40);
  v54 = *(v2 + 48);
  v12 = v11 & 1;
  v13 = OUTLINED_FUNCTION_84();
  sub_21AF83F7C(v13, v14, v10);
  v15 = OUTLINED_FUNCTION_0();
  sub_21AF83F7C(v15, v16, v11);
  v17 = OUTLINED_FUNCTION_84();
  sub_21AF83F7C(v17, v18, v10);
  static Apple_Parsec_Feedback_V2_PunchoutForFeedback.OneOf_BundleID.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_0();
  sub_21AF83FBC(v21, v22, v12);
  v23 = OUTLINED_FUNCTION_84();
  sub_21AF83FBC(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_84();
  sub_21AF83FA4(v26, v27, v10);
  if (v20)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_21B036684(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B036704(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B036774()
{
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B03680C()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43F90);
  __swift_project_value_buffer(v0, qword_27CD43F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_21B118090;
  v4 = v118 + v3 + v1[14];
  *(v118 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v118 + v3 + v2 + v1[14];
  *(v118 + v3 + v2) = 2;
  *v8 = "topHit";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v118 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v118 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "punchout";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v118 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v118 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "localFeatures";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v118 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "resultType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v118 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "rankingScore";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v118 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "isStaticCorrection";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v118 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "queryId";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v118 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "intendedQuery";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v118 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 16;
  *v28 = "correctedQuery";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v118 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 17;
  *v30 = "completedQuery";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v7();
  v31 = (v118 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 18;
  *v32 = "isLocalApplicationResult";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v7();
  v33 = (v118 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 19;
  *v34 = "publiclyIndexable";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v7();
  v35 = (v118 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 20;
  *v36 = "fbr";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v7();
  v37 = (v118 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 21;
  *v38 = "userInput";
  *(v38 + 1) = 9;
  v38[16] = 2;
  v7();
  v39 = (v118 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 22;
  *v40 = "isFuzzyMatch";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v118 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 23;
  *v42 = "doNotFold";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v118 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 24;
  *v44 = "blockId";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v7();
  v45 = (v118 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 25;
  *v46 = "hashedIdentifier";
  *(v46 + 1) = 16;
  v46[16] = 2;
  v7();
  v47 = (v118 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 26;
  *v48 = "resultBundleId";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v118 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 27;
  *v50 = "knownResultBundleId";
  *(v50 + 1) = 19;
  v50[16] = 2;
  v7();
  v51 = (v118 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 28;
  *v52 = "sectionBundleIdentifier";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v118 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 29;
  *v54 = "knownSectionBundleIdentifier";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v118 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 30;
  *v56 = "applicationBundleIdentifier";
  *(v56 + 1) = 27;
  v56[16] = 2;
  v7();
  v57 = (v118 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 31;
  *v58 = "knownApplicationBundleIdentifier";
  *(v58 + 1) = 32;
  v58[16] = 2;
  v7();
  v59 = (v118 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 32;
  *v60 = "entityData";
  *(v60 + 1) = 10;
  v60[16] = 2;
  v7();
  v61 = (v118 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 33;
  *v62 = "shouldUseCompactDisplay";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v118 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 34;
  *v64 = "noGoTakeover";
  *(v64 + 1) = 12;
  v64[16] = 2;
  v7();
  v65 = (v118 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 35;
  *v66 = "preferTopPlatter";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v118 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 36;
  *v68 = "wasCompact";
  *(v68 + 1) = 10;
  v68[16] = 2;
  v7();
  v69 = (v118 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "didTakeoverGo";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v7();
  v71 = (v118 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 38;
  *v72 = "usesCompactDisplay";
  *(v72 + 1) = 18;
  v72[16] = 2;
  v7();
  v73 = (v118 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 39;
  *v74 = "isInstantAnswer";
  *(v74 + 1) = 15;
  v74[16] = 2;
  v7();
  v75 = (v118 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 40;
  *v76 = "shouldAutoNavigate";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v7();
  v77 = (v118 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 41;
  *v78 = "card";
  *(v78 + 1) = 4;
  v78[16] = 2;
  v7();
  v79 = (v118 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 42;
  *v80 = "inlineCard";
  *(v80 + 1) = 10;
  v80[16] = 2;
  v7();
  v81 = (v118 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 43;
  *v82 = "compactCard";
  *(v82 + 1) = 11;
  v82[16] = 2;
  v7();
  v83 = (v118 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 44;
  *v84 = "containsPersonalResult";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v118 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 45;
  *v86 = "didRerankPersonalResult";
  *(v86 + 1) = 23;
  v86[16] = 2;
  v7();
  v87 = (v118 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 46;
  *v88 = "coreSpotlightIndexUsed";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v118 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 47;
  *v90 = "coreSpotlightIndexUsedReason";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v118 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 48;
  *v92 = "coreSpotlightRankingSignals";
  *(v92 + 1) = 27;
  v92[16] = 2;
  v7();
  v93 = (v118 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 49;
  *v94 = "mailRankingSignals";
  *(v94 + 1) = 18;
  v94[16] = 2;
  v7();
  v95 = (v118 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 50;
  *v96 = "mailResultDetails";
  *(v96 + 1) = 17;
  v96[16] = 2;
  v7();
  v97 = (v118 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 51;
  *v98 = "isVideoAssetFromPhotos";
  *(v98 + 1) = 22;
  v98[16] = 2;
  v7();
  v99 = (v118 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 52;
  *v100 = "isMailInstantAnswerUpdated";
  *(v100 + 1) = 26;
  v100[16] = 2;
  v7();
  v101 = (v118 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 53;
  *v102 = "indexOfSectionWhenRanked";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v7();
  v103 = (v118 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 54;
  *v104 = "indexOfResultInSectionWhenRanked";
  *(v104 + 1) = 32;
  v104[16] = 2;
  v7();
  v105 = (v118 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 55;
  *v106 = "safariAttributes";
  *(v106 + 1) = 16;
  v106[16] = 2;
  v7();
  v107 = (v118 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 56;
  *v108 = "hasAppTopHitShortcut";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v7();
  v109 = (v118 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 57;
  *v110 = "photosAttributes";
  *(v110 + 1) = 16;
  v110[16] = 2;
  v7();
  v111 = (v118 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 58;
  *v112 = "photosAggregatedInfo";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v7();
  v113 = (v118 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 59;
  *v114 = "thirdPartyQueryCompletionMatched";
  *(v114 + 1) = 32;
  v114[16] = 2;
  v7();
  v115 = (v118 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 60;
  *v116 = "thirdPartyNavigationIntentScore";
  *(v116 + 1) = 31;
  v116[16] = 2;
  v7();
  return sub_21B112244();
}

uint64_t sub_21B037760(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_391(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_21B0377B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable) = 0;
  v12 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier) = 0;
  v14 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = -1;
  v15 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = -1;
  v16 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = -1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData) = xmmword_21B117F10;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate) = 0;
  v17 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult) = 0;
  v19 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals;
  v22 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals;
  v24 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails;
  v26 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v25, 1, 1, v26);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked) = 0;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v27, 1, 1, v28);
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p) = 0;
  v29 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo;
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v31, 1, 1, v32);
  v33 = v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore) = 0;
  return v0;
}

uint64_t sub_21B037BC0(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v235 = v178 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v234 = v178 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v233 = v178 - v8;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v232 = v178 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v231 = v178 - v12;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v230 = v178 - v14;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v221 = v178 - v16;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v186 = v178 - v18;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v182 = v178 - v20;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v22 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action;
  v178[1] = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action;
  v23 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout;
  v180 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout;
  v25 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures;
  v181 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v29 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v183 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore) = 0;
  v184 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection) = 0;
  v185 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID) = 0;
  v30 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  v187 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  v188 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  v189 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v190 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult) = 0;
  v191 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable) = 0;
  v33 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  v192 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  v193 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v194 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch) = 0;
  v195 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold) = 0;
  v196 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID) = 0;
  v197 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier) = 0;
  v35 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier;
  v179 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier);
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = -1;
  v36 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID;
  v198 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = -1;
  v37 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID;
  *(v37 + 16) = -1;
  *v37 = 0;
  *(v37 + 8) = 0;
  v199 = v37;
  v200 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData);
  *v200 = xmmword_21B117F10;
  v201 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay) = 0;
  v202 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover) = 0;
  v203 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter) = 0;
  v204 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact) = 0;
  v205 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo) = 0;
  v206 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay) = 0;
  v207 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer) = 0;
  v208 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate) = 0;
  v38 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card;
  v209 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card;
  v39 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v38, 1, 1, v39);
  v210 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard, 1, 1, v39);
  v211 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard, 1, 1, v39);
  v212 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult) = 0;
  v213 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult) = 0;
  v40 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed;
  v214 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason;
  v215 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason;
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals;
  v216 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals;
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals;
  v217 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals;
  v45 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails;
  v218 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails;
  v47 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v46, 1, 1, v47);
  v219 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos) = 0;
  v220 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated) = 0;
  v222 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked) = 0;
  v223 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v48 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes;
  v224 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes;
  v49 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v48, 1, 1, v49);
  v225 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p;
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p) = 0;
  v50 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v226 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes;
  v51 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo;
  v227 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo;
  v53 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v52, 1, 1, v53);
  v54 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched;
  v228 = v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched;
  *v54 = 0;
  *(v54 + 8) = 1;
  v229 = (v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  *(v1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore) = 0;
  swift_beginAccess();
  v56 = *(a1 + 16);
  v55 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v56;
  *(v1 + 24) = v55;
  swift_beginAccess();
  v57 = *(a1 + 32);
  v58 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v57;
  *(v1 + 40) = v58;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();

  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v59 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type);
  swift_beginAccess();
  v60 = *v59;
  LOBYTE(v59) = *(v59 + 8);
  swift_beginAccess();
  *v26 = v60;
  *(v26 + 8) = v59;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v61 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  swift_beginAccess();
  v63 = *v61;
  v62 = v61[1];
  swift_beginAccess();
  v64 = v29[1];
  *v29 = v63;
  v29[1] = v62;

  v65 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  swift_beginAccess();
  v66 = *(a1 + v65);
  v67 = v183;
  swift_beginAccess();
  *(v1 + v67) = v66;
  v68 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v184;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  swift_beginAccess();
  v71 = *(a1 + v70);
  v72 = v185;
  swift_beginAccess();
  *(v1 + v72) = v71;
  v73 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v187;
  swift_beginAccess();
  v77 = v76[1];
  *v76 = v75;
  v76[1] = v74;

  v78 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v188;
  swift_beginAccess();
  v82 = v81[1];
  *v81 = v80;
  v81[1] = v79;

  v83 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  swift_beginAccess();
  v85 = *v83;
  v84 = v83[1];
  v86 = v189;
  swift_beginAccess();
  v87 = v86[1];
  *v86 = v85;
  v86[1] = v84;

  v88 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult;
  swift_beginAccess();
  LOBYTE(v88) = *(a1 + v88);
  v89 = v190;
  swift_beginAccess();
  *(v1 + v89) = v88;
  v90 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable;
  swift_beginAccess();
  LOBYTE(v90) = *(a1 + v90);
  v91 = v191;
  swift_beginAccess();
  *(v1 + v91) = v90;
  v92 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  swift_beginAccess();
  v94 = *v92;
  v93 = v92[1];
  v95 = v192;
  swift_beginAccess();
  v96 = v95[1];
  *v95 = v94;
  v95[1] = v93;

  v97 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  swift_beginAccess();
  v99 = *v97;
  v98 = v97[1];
  v100 = v193;
  swift_beginAccess();
  v101 = v100[1];
  *v100 = v99;
  v100[1] = v98;

  v102 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch;
  swift_beginAccess();
  LOBYTE(v102) = *(a1 + v102);
  v103 = v194;
  swift_beginAccess();
  *(v1 + v103) = v102;
  v104 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold;
  swift_beginAccess();
  LOBYTE(v104) = *(a1 + v104);
  v105 = v195;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  swift_beginAccess();
  v107 = *(a1 + v106);
  v108 = v196;
  swift_beginAccess();
  *(v1 + v108) = v107;
  v109 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  swift_beginAccess();
  v110 = *(a1 + v109);
  v111 = v197;
  swift_beginAccess();
  *(v1 + v111) = v110;
  v112 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier);
  v113 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 8);
  v114 = v179;
  v115 = *v179;
  v116 = v179[1];
  v117 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 16);
  *v179 = v112;
  v114[1] = v113;
  LOBYTE(v99) = *(v114 + 16);
  *(v114 + 16) = v117;
  sub_21AF83F7C(v112, v113, v117);
  sub_21AF83FA4(v115, v116, v99);
  v118 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID);
  v119 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 8);
  v120 = v198;
  v121 = *v198;
  v122 = v198[1];
  v123 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 16);
  *v198 = v118;
  v120[1] = v119;
  LOBYTE(v99) = *(v120 + 16);
  *(v120 + 16) = v123;
  sub_21AF83F7C(v118, v119, v123);
  sub_21AF83FA4(v121, v122, v99);
  v124 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID);
  v125 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 8);
  v126 = v199;
  v127 = *v199;
  v128 = v199[1];
  v129 = *(a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 16);
  *v199 = v124;
  v126[1] = v125;
  LOBYTE(v99) = *(v126 + 16);
  *(v126 + 16) = v129;
  sub_21AF83F7C(v124, v125, v129);
  sub_21AF83FA4(v127, v128, v99);
  v130 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData);
  swift_beginAccess();
  v132 = *v130;
  v131 = v130[1];
  v133 = v200;
  swift_beginAccess();
  v134 = *v133;
  v135 = v133[1];
  *v133 = v132;
  v133[1] = v131;
  sub_21AF99818(v132, v131);
  sub_21AF99728(v134, v135);
  v136 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay;
  swift_beginAccess();
  LOBYTE(v136) = *(a1 + v136);
  v137 = v201;
  swift_beginAccess();
  *(v1 + v137) = v136;
  v138 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover;
  swift_beginAccess();
  LOBYTE(v138) = *(a1 + v138);
  v139 = v202;
  swift_beginAccess();
  *(v1 + v139) = v138;
  v140 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter;
  swift_beginAccess();
  LOBYTE(v140) = *(a1 + v140);
  v141 = v203;
  swift_beginAccess();
  *(v1 + v141) = v140;
  v142 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact;
  swift_beginAccess();
  LOBYTE(v142) = *(a1 + v142);
  v143 = v204;
  swift_beginAccess();
  *(v1 + v143) = v142;
  v144 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo;
  swift_beginAccess();
  LOBYTE(v144) = *(a1 + v144);
  v145 = v205;
  swift_beginAccess();
  *(v1 + v145) = v144;
  v146 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay;
  swift_beginAccess();
  LOBYTE(v146) = *(a1 + v146);
  v147 = v206;
  swift_beginAccess();
  *(v1 + v147) = v146;
  v148 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer;
  swift_beginAccess();
  LOBYTE(v148) = *(a1 + v148);
  v149 = v207;
  swift_beginAccess();
  *(v1 + v149) = v148;
  v150 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate;
  swift_beginAccess();
  LOBYTE(v150) = *(a1 + v150);
  v151 = v208;
  swift_beginAccess();
  *(v1 + v151) = v150;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v152 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult;
  swift_beginAccess();
  LOBYTE(v152) = *(a1 + v152);
  v153 = v212;
  swift_beginAccess();
  *(v1 + v153) = v152;
  v154 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult;
  swift_beginAccess();
  LOBYTE(v154) = *(a1 + v154);
  v155 = v213;
  swift_beginAccess();
  *(v1 + v155) = v154;
  v156 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed);
  swift_beginAccess();
  v157 = *v156;
  LOBYTE(v156) = *(v156 + 8);
  v158 = v214;
  swift_beginAccess();
  *v158 = v157;
  *(v158 + 8) = v156;
  v159 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason);
  swift_beginAccess();
  v160 = *v159;
  LOBYTE(v159) = *(v159 + 8);
  v161 = v215;
  swift_beginAccess();
  *v161 = v160;
  *(v161 + 8) = v159;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v162 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos;
  swift_beginAccess();
  LOBYTE(v162) = *(a1 + v162);
  v163 = v219;
  swift_beginAccess();
  *(v1 + v163) = v162;
  v164 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated;
  swift_beginAccess();
  LOBYTE(v164) = *(a1 + v164);
  v165 = v220;
  swift_beginAccess();
  *(v1 + v165) = v164;
  v166 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v166) = *(a1 + v166);
  v167 = v222;
  swift_beginAccess();
  *(v1 + v167) = v166;
  v168 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v168) = *(a1 + v168);
  v169 = v223;
  swift_beginAccess();
  *(v1 + v169) = v168;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v170 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p;
  swift_beginAccess();
  LOBYTE(v170) = *(a1 + v170);
  v171 = v225;
  swift_beginAccess();
  *(v1 + v171) = v170;
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  swift_beginAccess();
  sub_21B0AA940();
  swift_beginAccess();
  sub_21B099C68();
  swift_endAccess();
  v172 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched);
  swift_beginAccess();
  v173 = *v172;
  LOBYTE(v172) = *(v172 + 8);
  v174 = v228;
  swift_beginAccess();
  *v174 = v173;
  *(v174 + 8) = v172;
  v175 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  swift_beginAccess();
  LODWORD(v66) = *v175;

  v176 = v229;
  swift_beginAccess();
  *v176 = v66;
  return v1;
}

uint64_t sub_21B039490()
{
  v1 = *(v0 + 24);

  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__action, &qword_27CD44838, &qword_21B118118);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__punchout, &qword_27CD44830, &qword_21B118110);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__localFeatures, &qword_27CD44858, &qword_21B118120);
  v2 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput + 8);

  sub_21AF83FA4(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 8), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 16));
  sub_21AF83FA4(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 8), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 16));
  sub_21AF83FA4(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 8), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 16));
  sub_21AF99728(*(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData), *(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData + 8));
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__card, &qword_27CD44940, &qword_21B118128);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__inlineCard, &qword_27CD44940, &qword_21B118128);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__compactCard, &qword_27CD44940, &qword_21B118128);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightRankingSignals, &qword_27CD44980, &qword_21B118130);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailRankingSignals, &qword_27CD44990, &qword_21B118138);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__mailResultDetails, &unk_27CD449A0, &qword_21B118140);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__safariAttributes, &qword_27CD449D0, &qword_21B118148);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAttributes, &qword_27CD449E8, &qword_21B118150);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__photosAggregatedInfo, &qword_27CD449F8, &qword_21B118158);
  return v0;
}

void sub_21B03978C()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v14 = v3;
  v5 = v4;
  v6 = v0;
  v8 = *(v7(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v5(0);
    OUTLINED_FUNCTION_391(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_16_1();
    *(v6 + v8) = v14(v13);
  }

  OUTLINED_FUNCTION_445();
  v2();
  OUTLINED_FUNCTION_13();
}

void sub_21B03983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_21B111F64();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_21B082764();
        continue;
      case 2:
        sub_21B08C4A4();
        continue;
      case 3:
        sub_21B039E28();
        continue;
      case 4:
        sub_21B039F04();
        continue;
      case 5:
        v11 = &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type;
        v12 = sub_21B0AA8EC;
        goto LABEL_28;
      case 7:
        sub_21B039FE0();
        continue;
      case 11:
      case 15:
      case 16:
      case 17:
      case 20:
      case 21:
      case 32:
        sub_21B089408();
        continue;
      case 12:
      case 14:
      case 24:
      case 25:
        sub_21B04DD34();
        continue;
      case 13:
      case 18:
      case 19:
      case 22:
      case 23:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 44:
      case 45:
      case 51:
      case 52:
      case 56:
        sub_21B08C5F8();
        continue;
      case 26:
        v13 = &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier;
        goto LABEL_24;
      case 27:
      case 29:
      case 31:
        sub_21B03A194();
        continue;
      case 28:
        v13 = &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID;
        goto LABEL_24;
      case 30:
        v13 = &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID;
LABEL_24:
        sub_21B03A0BC(a2, a1, a3, a4, v13, sub_21B0AB258);
        continue;
      case 41:
        sub_21B03A268();
        continue;
      case 42:
        sub_21B03A344();
        continue;
      case 43:
        sub_21B03A420();
        continue;
      case 46:
        v11 = &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed;
        v12 = sub_21B0AA79C;
        goto LABEL_28;
      case 47:
        v11 = &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason;
        v12 = sub_21B0AA748;
        goto LABEL_28;
      case 48:
        sub_21B03A4FC();
        continue;
      case 49:
        sub_21B03A5D8();
        continue;
      case 50:
        sub_21B03A6B4();
        continue;
      case 53:
      case 54:
      case 60:
        sub_21B091A20();
        continue;
      case 55:
        sub_21B03A790();
        continue;
      case 57:
        sub_21B03A86C();
        continue;
      case 58:
        sub_21B03A948();
        continue;
      case 59:
        v11 = &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched;
        v12 = sub_21B0AA6F4;
LABEL_28:
        sub_21B089468(a2, a1, a3, a4, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21B039E28()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B039F04()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B039FE0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct);
  sub_21B1120B4();
  return swift_endAccess();
}

void sub_21B03A0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_21B112064();
  if (v6)
  {
  }

  else if (v14)
  {
    v10 = (a2 + *a5);
    if (*(v10 + 16) == 255)
    {
      v11 = 255;
    }

    else
    {
      OUTLINED_FUNCTION_0();
      sub_21B111F74();
      v11 = *(v10 + 16);
    }

    v12 = *v10;
    v13 = v10[1];
    *v10 = 0;
    v10[1] = v14;
    *(v10 + 16) = 0;
    a6(v12, v13, v11);
  }

  OUTLINED_FUNCTION_746();
}

void sub_21B03A194()
{
  OUTLINED_FUNCTION_857();
  OUTLINED_FUNCTION_245();
  sub_21B0AA400();
  OUTLINED_FUNCTION_605();
  sub_21B111FA4();
  OUTLINED_FUNCTION_746();
}

uint64_t sub_21B03A268()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A344()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A420()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A4FC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  sub_21B099CBC(&qword_27CD45A90, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A5D8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  sub_21B099CBC(&qword_27CD45A78, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A6B4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A790()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A86C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes);
  sub_21B1120B4();
  return swift_endAccess();
}

uint64_t sub_21B03A948()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);
  sub_21B1120B4();
  return swift_endAccess();
}

void sub_21B03AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v197 = &v182 - v10;
  v198 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  v11 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v199 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v194 = &v182 - v15;
  v195 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  v16 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v196 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v191 = &v182 - v20;
  v192 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  v21 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v193 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v188 = &v182 - v25;
  v189 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  v26 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v190 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v185 = &v182 - v30;
  v186 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  v31 = *(*(v186 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v187 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v182 = &v182 - v35;
  v183 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  v36 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v184 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v203 = &v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v204 = &v182 - v43;
  MEMORY[0x28223BE20](v42);
  v205 = &v182 - v44;
  v206 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v45 = *(*(v206 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v206);
  v200 = &v182 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v201 = &v182 - v49;
  MEMORY[0x28223BE20](v48);
  v202 = &v182 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v212 = &v182 - v53;
  v208 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  v54 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v182 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v209 = &v182 - v58;
  v210 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v59 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v211 = &v182 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v64 = &v182 - v63;
  v65 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  swift_beginAccess();
  v67 = *(a1 + 16);
  v68 = *(a1 + 24);
  v225 = a1;
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    v70 = v214;
    sub_21B1121E4();
    v71 = a3;
    v72 = a4;
    v73 = v70;
    if (v70)
    {

      return;
    }

    v213 = v71;
  }

  else
  {
    v213 = a3;
    v72 = a4;
    v73 = v214;
  }

  v74 = v225;
  swift_beginAccess();
  if (*(v74 + 32))
  {
    v75 = *(v74 + 40);
    v223 = *(v74 + 32);
    v224 = v75;
    sub_21B0AA898();
    sub_21B112174();
    if (v73)
    {
      return;
    }

    v73 = 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
  {
    sub_21AF99BE0(v64, &qword_27CD44838, &qword_21B118118);
    v76 = v73;
    v77 = v72;
  }

  else
  {
    sub_21B03179C();
    sub_21B099CBC(&qword_27CD459D0, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);
    sub_21B112224();
    v76 = v73;
    if (v73)
    {
      goto LABEL_25;
    }

    v77 = v72;
    sub_21B03183C();
  }

  swift_beginAccess();
  v78 = v209;
  sub_21B0AA940();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v210);
  v81 = v212;
  v80 = v213;
  if (EnumTagSinglePayload == 1)
  {
    v82 = v76;
    sub_21AF99BE0(v78, &qword_27CD44830, &qword_21B118110);
    v83 = v80;
  }

  else
  {
    sub_21B03179C();
    sub_21B099CBC(&qword_27CD44D28, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
    sub_21B112224();
    if (v76)
    {
      goto LABEL_25;
    }

    v83 = v80;
    v82 = 0;
    sub_21B03183C();
  }

  v84 = v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__type;
  swift_beginAccess();
  if (!sub_21AFB4A88(*v84, *(v84 + 8), 0))
  {
    v85 = *(v84 + 8);
    v221 = *v84;
    v222 = v85;
    sub_21B0AA8EC();
    sub_21B112174();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  swift_beginAccess();
  sub_21B0AA940();
  if (__swift_getEnumTagSinglePayload(v81, 1, v208) == 1)
  {
    sub_21AF99BE0(v81, &qword_27CD44858, &qword_21B118120);
    goto LABEL_28;
  }

  sub_21B03179C();
  sub_21B099CBC(&qword_27CD45FC8, type metadata accessor for Apple_Parsec_Feedback_V2_Struct);
  sub_21B112224();
  if (v82)
  {
LABEL_25:
    sub_21B03183C();
    return;
  }

  v82 = 0;
  sub_21B03183C();
LABEL_28:
  v86 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = HIBYTE(v88) & 0xF;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v89 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (v89)
  {

    sub_21B1121E4();
    if (v82)
    {
LABEL_32:

      return;
    }
  }

  v90 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  v91 = v225;
  swift_beginAccess();
  if (*(v91 + v90) != 0.0)
  {
    sub_21B1121D4();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v92 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection;
  v93 = v225;
  swift_beginAccess();
  if (*(v93 + v92) == 1)
  {
    sub_21B112164();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v94 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  v95 = v225;
  swift_beginAccess();
  if (*(v95 + v94))
  {
    sub_21B112204();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v96 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {

    sub_21B1121E4();
    if (v82)
    {
      goto LABEL_32;
    }
  }

  v100 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  swift_beginAccess();
  v101 = *v100;
  v102 = v100[1];
  v103 = HIBYTE(v102) & 0xF;
  if ((v102 & 0x2000000000000000) == 0)
  {
    v103 = v101 & 0xFFFFFFFFFFFFLL;
  }

  if (v103)
  {

    sub_21B1121E4();
    if (v82)
    {
      goto LABEL_32;
    }
  }

  v104 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = HIBYTE(v106) & 0xF;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v107 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {

    sub_21B1121E4();
    if (v82)
    {
      goto LABEL_32;
    }
  }

  v108 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult;
  v109 = v225;
  swift_beginAccess();
  if (*(v109 + v108) == 1)
  {
    sub_21B112164();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v110 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable;
  v111 = v225;
  swift_beginAccess();
  if (*(v111 + v110) == 1)
  {
    sub_21B112164();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v112 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  swift_beginAccess();
  v113 = *v112;
  v114 = v112[1];
  v115 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v115 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (v115)
  {

    sub_21B1121E4();
    if (v82)
    {
      goto LABEL_32;
    }
  }

  v116 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  swift_beginAccess();
  v117 = *v116;
  v118 = v116[1];
  v119 = HIBYTE(v118) & 0xF;
  if ((v118 & 0x2000000000000000) == 0)
  {
    v119 = v117 & 0xFFFFFFFFFFFFLL;
  }

  if (v119)
  {

    sub_21B1121E4();
    if (v82)
    {
      goto LABEL_32;
    }
  }

  v120 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch;
  v121 = v225;
  swift_beginAccess();
  if (*(v121 + v120) == 1)
  {
    sub_21B112164();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v122 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold;
  v123 = v225;
  swift_beginAccess();
  if (*(v123 + v122) == 1)
  {
    sub_21B112164();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v124 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  v125 = v225;
  swift_beginAccess();
  if (*(v125 + v124))
  {
    sub_21B112204();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  v126 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  v127 = v225;
  swift_beginAccess();
  if (*(v127 + v126))
  {
    v128 = v83;
    v129 = v77;
    sub_21B112204();
    if (v82)
    {
      return;
    }

    v82 = 0;
  }

  else
  {
    v128 = v83;
    v129 = v77;
  }

  v130 = *(v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier + 16);
  if (v130 == 255)
  {
    goto LABEL_102;
  }

  if (v130)
  {
    sub_21B03CF70(v225, a2, v128, v129, &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier);
  }

  else
  {
    sub_21B03CEC8();
  }

  if (!v82)
  {
LABEL_102:
    v131 = *(v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID + 16);
    if (v131 == 255)
    {
      goto LABEL_184;
    }

    if (v131)
    {
      sub_21B03CF70(v225, a2, v128, v129, &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID);
    }

    else
    {
      sub_21B03CEC8();
    }

    if (!v82)
    {
LABEL_184:
      v132 = *(v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID + 16);
      if (v132 == 255)
      {
        goto LABEL_103;
      }

      if (v132)
      {
        sub_21B03CF70(v225, a2, v128, v129, &OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID);
      }

      else
      {
        sub_21B03CEC8();
      }

      if (!v82)
      {
LABEL_103:
        v133 = v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData;
        swift_beginAccess();
        if (!sub_21AFD45D8(*v133, *(v133 + 8)))
        {
          v134 = *v133;
          v135 = *(v133 + 8);
          sub_21AF99818(v134, v135);
          sub_21B112184();
          if (v82)
          {
            sub_21AF99728(v134, v135);
            return;
          }

          sub_21AF99728(v134, v135);
        }

        v136 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay;
        v137 = v225;
        swift_beginAccess();
        if (*(v137 + v136) != 1 || (sub_21B112164(), !v82))
        {
          v138 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover;
          v139 = v225;
          swift_beginAccess();
          if (*(v139 + v138) != 1 || (sub_21B112164(), !v82))
          {
            v140 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter;
            v141 = v225;
            swift_beginAccess();
            if (*(v141 + v140) != 1 || (sub_21B112164(), !v82))
            {
              v142 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact;
              v143 = v225;
              swift_beginAccess();
              if (*(v143 + v142) != 1 || (sub_21B112164(), !v82))
              {
                v144 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo;
                v145 = v225;
                swift_beginAccess();
                if (*(v145 + v144) != 1 || (sub_21B112164(), !v82))
                {
                  v146 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay;
                  v147 = v225;
                  swift_beginAccess();
                  if (*(v147 + v146) != 1 || (sub_21B112164(), !v82))
                  {
                    v148 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer;
                    v149 = v225;
                    swift_beginAccess();
                    if (*(v149 + v148) != 1 || (sub_21B112164(), !v82))
                    {
                      v150 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate;
                      v151 = v225;
                      swift_beginAccess();
                      if (*(v151 + v150) != 1 || (sub_21B112164(), !v82))
                      {
                        swift_beginAccess();
                        v152 = v205;
                        sub_21B0AA940();
                        if (__swift_getEnumTagSinglePayload(v152, 1, v206) == 1)
                        {
                          sub_21AF99BE0(v205, &qword_27CD44940, &qword_21B118128);
                        }

                        else
                        {
                          sub_21B03179C();
                          sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_21B112224();
                          if (v82)
                          {
                            goto LABEL_134;
                          }

                          sub_21B03183C();
                        }

                        swift_beginAccess();
                        v153 = v204;
                        sub_21B0AA940();
                        if (__swift_getEnumTagSinglePayload(v153, 1, v206) == 1)
                        {
                          sub_21AF99BE0(v204, &qword_27CD44940, &qword_21B118128);
                        }

                        else
                        {
                          sub_21B03179C();
                          sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_21B112224();
                          if (v82)
                          {
                            goto LABEL_134;
                          }

                          sub_21B03183C();
                        }

                        swift_beginAccess();
                        v154 = v203;
                        sub_21B0AA940();
                        if (__swift_getEnumTagSinglePayload(v154, 1, v206) == 1)
                        {
                          sub_21AF99BE0(v203, &qword_27CD44940, &qword_21B118128);
                        }

                        else
                        {
                          sub_21B03179C();
                          sub_21B099CBC(&qword_27CD44FB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback);
                          sub_21B112224();
                          if (v82)
                          {
                            goto LABEL_134;
                          }

                          sub_21B03183C();
                        }

                        v155 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult;
                        v156 = v225;
                        swift_beginAccess();
                        if (*(v156 + v155) != 1 || (sub_21B112164(), !v82))
                        {
                          v157 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult;
                          v158 = v225;
                          swift_beginAccess();
                          if (*(v158 + v157) != 1 || (sub_21B112164(), !v82))
                          {
                            v159 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed);
                            swift_beginAccess();
                            if (!*v159 || (v160 = *(v159 + 8), v219 = *v159, v220 = v160, sub_21B0AA79C(), sub_21B112174(), !v82))
                            {
                              v161 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason);
                              swift_beginAccess();
                              if (!*v161 || (v162 = *(v161 + 8), v217 = *v161, v218 = v162, sub_21B0AA748(), sub_21B112174(), !v82))
                              {
                                swift_beginAccess();
                                v163 = v182;
                                sub_21B0AA940();
                                if (__swift_getEnumTagSinglePayload(v163, 1, v183) == 1)
                                {
                                  sub_21AF99BE0(v182, &qword_27CD44980, &qword_21B118130);
                                }

                                else
                                {
                                  sub_21B03179C();
                                  sub_21B099CBC(&qword_27CD45A90, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);
                                  sub_21B112224();
                                  if (v82)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_21B03183C();
                                }

                                swift_beginAccess();
                                v164 = v185;
                                sub_21B0AA940();
                                if (__swift_getEnumTagSinglePayload(v164, 1, v186) == 1)
                                {
                                  sub_21AF99BE0(v185, &qword_27CD44990, &qword_21B118138);
                                }

                                else
                                {
                                  sub_21B03179C();
                                  sub_21B099CBC(&qword_27CD45A78, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);
                                  sub_21B112224();
                                  if (v82)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_21B03183C();
                                }

                                swift_beginAccess();
                                v165 = v188;
                                sub_21B0AA940();
                                if (__swift_getEnumTagSinglePayload(v165, 1, v189) == 1)
                                {
                                  sub_21AF99BE0(v188, &unk_27CD449A0, &qword_21B118140);
                                }

                                else
                                {
                                  sub_21B03179C();
                                  sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);
                                  sub_21B112224();
                                  if (v82)
                                  {
                                    goto LABEL_134;
                                  }

                                  sub_21B03183C();
                                }

                                v166 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos;
                                v167 = v225;
                                swift_beginAccess();
                                if (*(v167 + v166) != 1 || (sub_21B112164(), !v82))
                                {
                                  v168 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated;
                                  v169 = v225;
                                  swift_beginAccess();
                                  if (*(v169 + v168) != 1 || (sub_21B112164(), !v82))
                                  {
                                    v170 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
                                    v171 = v225;
                                    swift_beginAccess();
                                    if (!*(v171 + v170) || (sub_21B1121A4(), !v82))
                                    {
                                      v172 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
                                      v173 = v225;
                                      swift_beginAccess();
                                      if (!*(v173 + v172) || (sub_21B1121A4(), !v82))
                                      {
                                        swift_beginAccess();
                                        v174 = v191;
                                        sub_21B0AA940();
                                        if (__swift_getEnumTagSinglePayload(v174, 1, v192) == 1)
                                        {
                                          sub_21AF99BE0(v191, &qword_27CD449D0, &qword_21B118148);
                                        }

                                        else
                                        {
                                          sub_21B03179C();
                                          sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes);
                                          sub_21B112224();
                                          if (v82)
                                          {
                                            goto LABEL_134;
                                          }

                                          sub_21B03183C();
                                        }

                                        v175 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p;
                                        v176 = v225;
                                        swift_beginAccess();
                                        if (*(v176 + v175) == 1)
                                        {
                                          sub_21B112164();
                                          if (v82)
                                          {
                                            return;
                                          }
                                        }

                                        swift_beginAccess();
                                        v177 = v194;
                                        sub_21B0AA940();
                                        if (__swift_getEnumTagSinglePayload(v177, 1, v195) == 1)
                                        {
                                          sub_21AF99BE0(v194, &qword_27CD449E8, &qword_21B118150);
                                        }

                                        else
                                        {
                                          sub_21B03179C();
                                          sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes);
                                          sub_21B112224();
                                          if (v82)
                                          {
                                            goto LABEL_134;
                                          }

                                          sub_21B03183C();
                                        }

                                        swift_beginAccess();
                                        v178 = v197;
                                        sub_21B0AA940();
                                        if (__swift_getEnumTagSinglePayload(v178, 1, v198) == 1)
                                        {
                                          sub_21AF99BE0(v197, &qword_27CD449F8, &qword_21B118158);
LABEL_178:
                                          v179 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched);
                                          swift_beginAccess();
                                          if (!*v179 || (v180 = *(v179 + 8), v215 = *v179, v216 = v180, sub_21B0AA6F4(), sub_21B112174(), !v82))
                                          {
                                            v181 = (v225 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
                                            swift_beginAccess();
                                            if (*v181 != 0.0)
                                            {
                                              sub_21B112194();
                                            }
                                          }

                                          return;
                                        }

                                        sub_21B03179C();
                                        sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);
                                        sub_21B112224();
                                        if (!v82)
                                        {
                                          sub_21B03183C();
                                          goto LABEL_178;
                                        }

LABEL_134:
                                        sub_21B03183C();
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

void sub_21B03CEC8()
{
  OUTLINED_FUNCTION_11();
  v3 = (v2 + *v1);
  v4 = *(v3 + 16);
  if (v4 == 255 || (v4 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v0;
    v6 = *v3;
    v7 = v3[1];
    v8 = OUTLINED_FUNCTION_748();
    v9(v8);
    OUTLINED_FUNCTION_748();
    sub_21B1121E4();
    v10 = OUTLINED_FUNCTION_748();
    v5(v10);
    OUTLINED_FUNCTION_13();
  }
}

uint64_t sub_21B03CF70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = result + *a5;
  v6 = *(v5 + 16);
  if (v6 == 255 || (v6 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *v5;
    v8 = *(v5 + 8) & 1;
    sub_21B0AA400();
    return sub_21B112174();
  }

  return result;
}

BOOL sub_21B03D03C(uint64_t a1, uint64_t a2)
{
  v654 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  v7 = OUTLINED_FUNCTION_4_1(v654);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v656 = v10;
  v652 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DC8, &qword_21B127D48);
  OUTLINED_FUNCTION_4_1(v652);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_108();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449F8, &qword_21B118158);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v655 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24();
  v653 = v20;
  v21 = OUTLINED_FUNCTION_33_0();
  v649 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v21);
  v22 = OUTLINED_FUNCTION_4_1(v649);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_67_1();
  v650 = v25;
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DD0, &qword_21B127D50);
  OUTLINED_FUNCTION_4_1(v646);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_83();
  v651 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449E8, &qword_21B118150);
  v31 = OUTLINED_FUNCTION_25(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  v648 = v34;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24();
  v647 = v36;
  v37 = OUTLINED_FUNCTION_33_0();
  v642 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v37);
  v38 = OUTLINED_FUNCTION_4_1(v642);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_67_1();
  v644 = v41;
  v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DD8, &qword_21B127D58);
  OUTLINED_FUNCTION_4_1(v640);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_83();
  v645 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD449D0, &qword_21B118148);
  v47 = OUTLINED_FUNCTION_25(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  v643 = v50;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_24();
  v641 = v52;
  v53 = OUTLINED_FUNCTION_33_0();
  v637 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v53);
  v54 = OUTLINED_FUNCTION_4_1(v637);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_67_1();
  v638 = v57;
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DE0, &qword_21B127D60);
  OUTLINED_FUNCTION_4_1(v634);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_83();
  v639 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD449A0, &qword_21B118140);
  v63 = OUTLINED_FUNCTION_25(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_1();
  v636 = v66;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_24();
  v635 = v68;
  v69 = OUTLINED_FUNCTION_33_0();
  v629 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v69);
  v70 = OUTLINED_FUNCTION_4_1(v629);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_67_1();
  v632 = v73;
  v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DE8, &qword_21B127D68);
  OUTLINED_FUNCTION_4_1(v628);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_83();
  v633 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44990, &qword_21B118138);
  v79 = OUTLINED_FUNCTION_25(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_9_1();
  v631 = v82;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_24();
  v630 = v84;
  v85 = OUTLINED_FUNCTION_33_0();
  v625 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v85);
  v86 = OUTLINED_FUNCTION_4_1(v625);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_67_1();
  v626 = v89;
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DF0, &qword_21B127D70);
  OUTLINED_FUNCTION_4_1(v622);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_83();
  v627 = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44980, &qword_21B118130);
  v95 = OUTLINED_FUNCTION_25(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_9_1();
  v624 = v98;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_24();
  v623 = v100;
  v101 = OUTLINED_FUNCTION_33_0();
  v619 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v101);
  v102 = OUTLINED_FUNCTION_4_1(v619);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_9_1();
  v620 = v105;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_22_2();
  v614 = v107;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_24();
  v610 = v109;
  v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B88, &qword_21B118208);
  v110 = OUTLINED_FUNCTION_4_1(v616);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_9_1();
  v621 = v113;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_22_2();
  v615 = v115;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_24();
  v611 = v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44940, &qword_21B118128);
  v119 = OUTLINED_FUNCTION_25(v118);
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_9_1();
  v618 = v122;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_22_2();
  v617 = v124;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_22_2();
  v613 = v126;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_22_2();
  v612 = v128;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_22_2();
  v609 = v130;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_24();
  v608 = v132;
  v133 = OUTLINED_FUNCTION_33_0();
  v660 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v133);
  v134 = OUTLINED_FUNCTION_4_1(v660);
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_67_1();
  v657 = v137;
  v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46DF8, &qword_21B127D78);
  OUTLINED_FUNCTION_4_1(v659);
  v139 = *(v138 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_83();
  v661 = v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44858, &qword_21B118120);
  v143 = OUTLINED_FUNCTION_25(v142);
  v145 = *(v144 + 64);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_9_1();
  v658 = v146;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_24();
  v668 = v148;
  v149 = OUTLINED_FUNCTION_33_0();
  v666 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v149);
  v150 = OUTLINED_FUNCTION_4_1(v666);
  v152 = *(v151 + 64);
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_67_1();
  v662 = v153;
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B58, &qword_21B1181D8);
  OUTLINED_FUNCTION_4_1(v665);
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_83();
  v667 = v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
  v159 = OUTLINED_FUNCTION_25(v158);
  v161 = *(v160 + 64);
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_9_1();
  v663 = v162;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_24();
  v670 = v164;
  v165 = OUTLINED_FUNCTION_33_0();
  v166 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v165);
  v167 = OUTLINED_FUNCTION_4_1(v166);
  v169 = *(v168 + 64);
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_67_1();
  v664 = v170;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E00, &qword_21B127D80);
  OUTLINED_FUNCTION_135(v171);
  v173 = *(v172 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v174);
  v176 = &v606 - v175;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44838, &qword_21B118118);
  v178 = OUTLINED_FUNCTION_25(v177);
  v180 = *(v179 + 64);
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_9_1();
  v669 = v181;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_725();
  OUTLINED_FUNCTION_28_1();
  v184 = *(a1 + 16);
  v183 = *(a1 + 24);
  OUTLINED_FUNCTION_28_1();
  v185 = v184 == *(a2 + 16) && v183 == *(a2 + 24);
  if (!v185 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_1();
  v186 = *(a1 + 32);
  v187 = *(a1 + 40);
  OUTLINED_FUNCTION_28_1();
  v188 = *(a2 + 40);
  if (!sub_21AFB4A88(v186, v187, *(a2 + 32)))
  {
    return 0;
  }

  v606 = v2;
  v607 = a2;
  OUTLINED_FUNCTION_28_1();
  v189 = v607;
  sub_21B0AA940();
  OUTLINED_FUNCTION_28_1();
  v190 = *(v3 + 48);
  sub_21B0AA940();
  sub_21B0AA940();
  OUTLINED_FUNCTION_14(v176);
  if (v185)
  {

    sub_21AF99BE0(v4, &qword_27CD44838, &qword_21B118118);
    OUTLINED_FUNCTION_14(&v176[v190]);
    if (v185)
    {
      sub_21AF99BE0(v176, &qword_27CD44838, &qword_21B118118);
      goto LABEL_17;
    }

LABEL_15:
    v192 = &qword_27CD46E00;
    v193 = &qword_21B127D80;
    v194 = v176;
LABEL_26:
    sub_21AF99BE0(v194, v192, v193);
LABEL_27:

    return 0;
  }

  sub_21B0AA940();
  OUTLINED_FUNCTION_14(&v176[v190]);
  if (v191)
  {

    sub_21AF99BE0(v4, &qword_27CD44838, &qword_21B118118);
    sub_21B03183C();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_210();
  sub_21B03179C();

  static Apple_Parsec_Feedback_V2_ActionItemForFeedback.== infix(_:_:)();
  v196 = v195;
  sub_21B03183C();
  v197 = OUTLINED_FUNCTION_0();
  sub_21AF99BE0(v197, v198, &qword_21B118118);
  OUTLINED_FUNCTION_111();
  sub_21B03183C();
  sub_21AF99BE0(v176, &qword_27CD44838, &qword_21B118118);
  if ((v196 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  OUTLINED_FUNCTION_28_1();
  v199 = v670;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v665);
  v200 = v667;
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_37_1(v200, 1, v666);
  if (v185)
  {
    sub_21AF99BE0(v199, &qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_3_11(&qword_27CD44000 + v200);
    v201 = v668;
    if (v185)
    {
      sub_21AF99BE0(v200, &qword_27CD44830, &qword_21B118110);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  LODWORD(v199) = v663;
  sub_21B0AA940();
  OUTLINED_FUNCTION_3_11(&qword_27CD44000 + v200);
  v201 = v668;
  if (v202)
  {
    sub_21AF99BE0(v670, &qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_120();
    sub_21B03183C();
LABEL_25:
    v192 = &qword_27CD44B58;
    v193 = &qword_21B1181D8;
    v194 = v200;
    goto LABEL_26;
  }

  sub_21B03179C();
  v204 = OUTLINED_FUNCTION_107();
  v206 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v204, v205);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v207, v208, v209);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v210, v211, v212);
  if ((v206 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  OUTLINED_FUNCTION_587();
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_510();
  v213 = OUTLINED_FUNCTION_490();
  if (!sub_21AFB4A88(v213, v214, v215))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_667();
  OUTLINED_FUNCTION_28_1();
  v216 = *(v659 + 48);
  v217 = v661;
  OUTLINED_FUNCTION_667();
  v218 = v217;
  OUTLINED_FUNCTION_667();
  v219 = v660;
  OUTLINED_FUNCTION_37_1(v217, 1, v660);
  if (v185)
  {
    sub_21AF99BE0(v201, &qword_27CD44858, &qword_21B118120);
    OUTLINED_FUNCTION_3_11(v217 + v216);
    if (v185)
    {
      sub_21AF99BE0(v217, &qword_27CD44858, &qword_21B118120);
      goto LABEL_36;
    }

    goto LABEL_87;
  }

  v199 = v658;
  sub_21B0AA940();
  OUTLINED_FUNCTION_3_11(v217 + v216);
  if (v292)
  {
    sub_21AF99BE0(v201, &qword_27CD44858, &qword_21B118120);
    sub_21B03183C();
LABEL_87:
    v192 = &qword_27CD46DF8;
    v193 = &qword_21B127D78;
    v194 = v217;
    goto LABEL_26;
  }

  v293 = v657;
  sub_21B03179C();
  v294 = sub_21B098910(*v199, *v293);
  if ((v294 & 1) == 0 || (sub_21B0990C0(*(v199 + 8), v293[1]) & 1) == 0)
  {
    sub_21B03183C();
    OUTLINED_FUNCTION_634();
    sub_21AF99BE0(v305, v306, v307);
    sub_21B03183C();
    v194 = OUTLINED_FUNCTION_440();
    v193 = &qword_21B118120;
    goto LABEL_26;
  }

  v295 = *(v219 + 24);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v296, v297);
  v298 = OUTLINED_FUNCTION_729();
  sub_21B03183C();
  v218 = &qword_21B118120;
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v299, v300, v301);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v302, v303, v304);
  if ((v298 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_36:
  v220 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultType);
  OUTLINED_FUNCTION_630();
  v221 = *v220;
  v222 = v220[1];
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_697();
  if (!v185 || v222 != v223)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v225 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  OUTLINED_FUNCTION_28_1();
  v226 = *(a1 + v225);
  v227 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__rankingScore;
  OUTLINED_FUNCTION_28_1();
  if (v226 != *(v189 + v227))
  {
    goto LABEL_27;
  }

  v228 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isStaticCorrection;
  OUTLINED_FUNCTION_28_1();
  v229 = *(a1 + v228);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_833();
  if (!v185)
  {
    goto LABEL_27;
  }

  v230 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  OUTLINED_FUNCTION_28_1();
  v231 = *(a1 + v230);
  v232 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__queryID;
  OUTLINED_FUNCTION_28_1();
  if (v231 != *(v189 + v232))
  {
    goto LABEL_27;
  }

  v233 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__intendedQuery);
  OUTLINED_FUNCTION_630();
  v234 = *v233;
  v235 = v233[1];
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_697();
  if (!v185 || v235 != v236)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v238 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__correctedQuery);
  OUTLINED_FUNCTION_630();
  v239 = *v238;
  v240 = v238[1];
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_697();
  if (!v185 || v240 != v241)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v243 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__completedQuery);
  OUTLINED_FUNCTION_630();
  v244 = *v243;
  v245 = v243[1];
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_697();
  if (!v185 || v245 != v246)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v248 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isLocalApplicationResult;
  OUTLINED_FUNCTION_28_1();
  v249 = *(a1 + v248);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_833();
  if (!v185)
  {
    goto LABEL_27;
  }

  v250 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__publiclyIndexable;
  OUTLINED_FUNCTION_28_1();
  v251 = *(a1 + v250);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_833();
  if (!v185)
  {
    goto LABEL_27;
  }

  v252 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__fbr);
  OUTLINED_FUNCTION_630();
  v253 = *v252;
  v254 = v252[1];
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_697();
  if (!v185 || v254 != v255)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v257 = (a1 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput);
  OUTLINED_FUNCTION_630();
  v258 = *v257;
  v259 = v257[1];
  v260 = v189 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__userInput;
  OUTLINED_FUNCTION_510();
  OUTLINED_FUNCTION_697();
  if (!v185 || v259 != v261)
  {
    OUTLINED_FUNCTION_105();
    if ((sub_21B112D04() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v263 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isFuzzyMatch;
  OUTLINED_FUNCTION_28_1();
  v264 = a1;
  v265 = *(a1 + v263);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_833();
  if (!v185)
  {
    goto LABEL_27;
  }

  v266 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__doNotFold;
  OUTLINED_FUNCTION_28_1();
  v267 = *(a1 + v266);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v268 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  OUTLINED_FUNCTION_28_1();
  v269 = *(a1 + v268);
  v270 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__blockID;
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  if (v269 != *(v260 + v270))
  {
    goto LABEL_27;
  }

  v271 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  OUTLINED_FUNCTION_28_1();
  v272 = *(a1 + v271);
  v273 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hashedIdentifier;
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  if (v272 != *(v260 + v273))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_359(OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__resultBundleIdentifier);
  if (v185)
  {
    v308 = OUTLINED_FUNCTION_413();
    sub_21AF83F7C(v308, v309, 255);
    if (v199 != 255)
    {
      goto LABEL_107;
    }

    v310 = OUTLINED_FUNCTION_366();
    sub_21AF83FA4(v310, v311, 255);
  }

  else
  {
    OUTLINED_FUNCTION_601();
    if (v185)
    {
LABEL_105:
      v353 = OUTLINED_FUNCTION_278();
      sub_21AF83F7C(v353, v354, v355);
      v356 = OUTLINED_FUNCTION_30_2();
      sub_21AF83F7C(v356, v357, 255);
      v358 = OUTLINED_FUNCTION_278();
      sub_21AF83F7C(v358, v359, v360);
      v361 = OUTLINED_FUNCTION_30_2();
      sub_21AF83F7C(v361, v362, 255);
      v363 = OUTLINED_FUNCTION_278();
      sub_21AF83F7C(v363, v364, v365);

      v366 = OUTLINED_FUNCTION_30_2();
      sub_21AF83FA4(v366, v367, 255);
      v368 = OUTLINED_FUNCTION_278();
      sub_21AF83FA4(v368, v369, v370);
      v371 = OUTLINED_FUNCTION_413();
      sub_21AF83FBC(v371, v372, v373);
LABEL_108:
      v378 = OUTLINED_FUNCTION_278();
      sub_21AF83FA4(v378, v379, v380);
      v381 = OUTLINED_FUNCTION_30_2();
      sub_21AF83FA4(v381, v382, v199);
      return 0;
    }

    v671 = v217;
    v672 = v218;
    v274 = v199 & 1;
    v673 = v199 & 1;
    v275 = OUTLINED_FUNCTION_278();
    sub_21AF83F7C(v275, v276, v277);
    v278 = OUTLINED_FUNCTION_30_2();
    sub_21AF83F7C(v278, v279, v199);
    v280 = OUTLINED_FUNCTION_278();
    sub_21AF83F7C(v280, v281, v282);
    static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_ResultBundleIdentifier.== infix(_:_:)();
    LODWORD(v199) = v283;
    v284 = OUTLINED_FUNCTION_30_2();
    sub_21AF83FBC(v284, v285, v274);
    v286 = OUTLINED_FUNCTION_413();
    sub_21AF83FBC(v286, v287, v288);
    v289 = OUTLINED_FUNCTION_278();
    sub_21AF83FA4(v289, v290, v291);
    if ((v199 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_359(OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__sectionBundleID);
  if (v185)
  {
    v330 = OUTLINED_FUNCTION_413();
    sub_21AF83F7C(v330, v331, 255);
    if (v199 == 255)
    {
      v332 = OUTLINED_FUNCTION_366();
      sub_21AF83FA4(v332, v333, 255);
      goto LABEL_101;
    }

LABEL_107:
    v376 = OUTLINED_FUNCTION_30_2();
    sub_21AF83F7C(v376, v377, v199);

    goto LABEL_108;
  }

  OUTLINED_FUNCTION_601();
  if (v185)
  {
    goto LABEL_105;
  }

  v671 = v217;
  v672 = v218;
  v312 = v199 & 1;
  v673 = v199 & 1;
  v313 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v313, v314, v315);
  v316 = OUTLINED_FUNCTION_30_2();
  sub_21AF83F7C(v316, v317, v199);
  v318 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v318, v319, v320);
  static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_SectionBundleID.== infix(_:_:)();
  LODWORD(v199) = v321;
  v322 = OUTLINED_FUNCTION_30_2();
  sub_21AF83FBC(v322, v323, v312);
  v324 = OUTLINED_FUNCTION_413();
  sub_21AF83FBC(v324, v325, v326);
  v327 = OUTLINED_FUNCTION_278();
  sub_21AF83FA4(v327, v328, v329);
  if ((v199 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_101:
  OUTLINED_FUNCTION_359(OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__applicationBundleID);
  if (v185)
  {
    v374 = OUTLINED_FUNCTION_413();
    sub_21AF83F7C(v374, v375, 255);
    if (v199 == 255)
    {
      v383 = OUTLINED_FUNCTION_366();
      sub_21AF83FA4(v383, v384, 255);
      goto LABEL_110;
    }

    goto LABEL_107;
  }

  OUTLINED_FUNCTION_601();
  if (v185)
  {
    goto LABEL_105;
  }

  v671 = v217;
  v672 = v218;
  v334 = v199 & 1;
  v673 = v199 & 1;
  v335 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v335, v336, v337);
  v338 = OUTLINED_FUNCTION_30_2();
  sub_21AF83F7C(v338, v339, v199);
  v340 = OUTLINED_FUNCTION_278();
  sub_21AF83F7C(v340, v341, v342);
  static Apple_Parsec_Feedback_V2_SearchResultForFeedback.OneOf_ApplicationBundleID.== infix(_:_:)();
  v344 = v343;
  v345 = OUTLINED_FUNCTION_30_2();
  sub_21AF83FBC(v345, v346, v334);
  v347 = OUTLINED_FUNCTION_413();
  sub_21AF83FBC(v347, v348, v349);
  v350 = OUTLINED_FUNCTION_278();
  sub_21AF83FA4(v350, v351, v352);
  if ((v344 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_110:
  v385 = (v264 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData);
  OUTLINED_FUNCTION_587();
  v387 = *v385;
  v386 = v385[1];
  OUTLINED_FUNCTION_850(OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__entityData);
  OUTLINED_FUNCTION_510();
  v388 = OUTLINED_FUNCTION_413();
  sub_21AF99818(v388, v389);
  v390 = OUTLINED_FUNCTION_48_1();
  sub_21AF99818(v390, v391);
  v392 = OUTLINED_FUNCTION_413();
  v393 = MEMORY[0x21CEE80C0](v392);
  v394 = OUTLINED_FUNCTION_48_1();
  sub_21AF99728(v394, v395);
  v396 = OUTLINED_FUNCTION_413();
  sub_21AF99728(v396, v397);
  if ((v393 & 1) == 0)
  {
    goto LABEL_27;
  }

  v398 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldUseCompactDisplay;
  OUTLINED_FUNCTION_28_1();
  v399 = *(v264 + v398);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v400 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__noGoTakeover;
  OUTLINED_FUNCTION_28_1();
  v401 = *(v264 + v400);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v402 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__preferTopPlatter;
  OUTLINED_FUNCTION_28_1();
  v403 = *(v264 + v402);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v404 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__wasCompact;
  OUTLINED_FUNCTION_28_1();
  v405 = *(v264 + v404);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v406 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didTakeoverGo;
  OUTLINED_FUNCTION_28_1();
  v407 = *(v264 + v406);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v408 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__usesCompactDisplay;
  OUTLINED_FUNCTION_28_1();
  v409 = *(v264 + v408);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v410 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isInstantAnswer;
  OUTLINED_FUNCTION_28_1();
  v411 = *(v264 + v410);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v412 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__shouldAutoNavigate;
  OUTLINED_FUNCTION_28_1();
  v413 = *(v264 + v412);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v616);
  v414 = v611;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_345(v414);
  if (v185)
  {
    sub_21AF99BE0(v608, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_345(&qword_27CD44000 + v611);
    if (v185)
    {
      sub_21AF99BE0(v611, &qword_27CD44940, &qword_21B118128);
      goto LABEL_132;
    }

LABEL_156:
    v433 = &qword_27CD44B88;
    v434 = &qword_21B118208;
    v435 = v611;
LABEL_192:
    sub_21AF99BE0(v435, v433, v434);
    goto LABEL_27;
  }

  v431 = v611;
  sub_21B0AA940();
  OUTLINED_FUNCTION_345(&qword_27CD44000 + v431);
  if (v432)
  {
    sub_21AF99BE0(v608, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_31_4();
    sub_21B03183C();
    goto LABEL_156;
  }

  v436 = v610;
  OUTLINED_FUNCTION_824();
  v437 = *v609;
  v438 = *v436;
  sub_21AFBEC58();
  if ((v439 & 1) == 0)
  {
    goto LABEL_191;
  }

  v440 = v609[1] == v610[1] && v609[2] == v610[2];
  if (!v440 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_191;
  }

  v441 = OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v442, v443);
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_157();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v444, v445, v446);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v447, v448, v449);
  if ((v441 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_132:
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v616);
  v415 = v615;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_345(v415);
  if (v185)
  {
    sub_21AF99BE0(v612, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_345(&qword_27CD44000 + v615);
    if (v185)
    {
      sub_21AF99BE0(v615, &qword_27CD44940, &qword_21B118128);
      goto LABEL_137;
    }

    goto LABEL_169;
  }

  v450 = v615;
  sub_21B0AA940();
  OUTLINED_FUNCTION_345(&qword_27CD44000 + v450);
  if (v451)
  {
    sub_21AF99BE0(v612, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_31_4();
    sub_21B03183C();
LABEL_169:
    v433 = &qword_27CD44B88;
    v434 = &qword_21B118208;
    v435 = v615;
    goto LABEL_192;
  }

  v452 = v614;
  OUTLINED_FUNCTION_824();
  v453 = *v613;
  v454 = *v452;
  sub_21AFBEC58();
  if ((v455 & 1) == 0)
  {
    goto LABEL_191;
  }

  v456 = v613[1] == v614[1] && v613[2] == v614[2];
  if (!v456 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_191;
  }

  v457 = OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v458, v459);
  OUTLINED_FUNCTION_695();
  OUTLINED_FUNCTION_157();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v460, v461, v462);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v463, v464, v465);
  if ((v457 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_137:
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v616);
  v416 = v621;
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_345(v416);
  if (v185)
  {
    sub_21AF99BE0(v617, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_345(&qword_27CD44000 + v621);
    if (v185)
    {
      sub_21AF99BE0(v621, &qword_27CD44940, &qword_21B118128);
      goto LABEL_142;
    }

    goto LABEL_182;
  }

  v466 = v621;
  sub_21B0AA940();
  OUTLINED_FUNCTION_345(&qword_27CD44000 + v466);
  if (v467)
  {
    sub_21AF99BE0(v617, &qword_27CD44940, &qword_21B118128);
    OUTLINED_FUNCTION_31_4();
    sub_21B03183C();
LABEL_182:
    v433 = &qword_27CD44B88;
    v434 = &qword_21B118208;
    v435 = v621;
    goto LABEL_192;
  }

  v468 = v620;
  OUTLINED_FUNCTION_824();
  v469 = *v618;
  v470 = *v468;
  sub_21AFBEC58();
  if ((v471 & 1) == 0)
  {
    goto LABEL_191;
  }

  v472 = v618[1] == v620[1] && v618[2] == v620[2];
  if (!v472 && (sub_21B112D04() & 1) == 0)
  {
    goto LABEL_191;
  }

  v473 = OUTLINED_FUNCTION_801();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v474, v475);
  OUTLINED_FUNCTION_729();
  OUTLINED_FUNCTION_157();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v476, v477, v478);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v479, v480, v481);
  if ((v473 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_142:
  v417 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__containsPersonalResult;
  OUTLINED_FUNCTION_28_1();
  v418 = *(v264 + v417);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v419 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__didRerankPersonalResult;
  OUTLINED_FUNCTION_28_1();
  v420 = *(v264 + v419);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_587();
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_850(OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsed);
  OUTLINED_FUNCTION_510();
  v421 = OUTLINED_FUNCTION_490();
  if (!sub_21AFB4A88(v421, v422, v423))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_587();
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_850(OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__coreSpotlightIndexUsedReason);
  OUTLINED_FUNCTION_510();
  v424 = OUTLINED_FUNCTION_490();
  if (!sub_21AFB4A88(v424, v425, v426))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v622);
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v427 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v427, v428, v625);
  if (v185)
  {
    sub_21AF99BE0(v623, &qword_27CD44980, &qword_21B118130);
    v429 = OUTLINED_FUNCTION_599(v627);
    OUTLINED_FUNCTION_37_1(v429, v430, v625);
    if (v185)
    {
      sub_21AF99BE0(v627, &qword_27CD44980, &qword_21B118130);
      goto LABEL_199;
    }

LABEL_197:
    v433 = &qword_27CD46DF0;
    v434 = &qword_21B127D70;
    v435 = v627;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v485 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v485, v486, v625);
  if (v487)
  {
    sub_21AF99BE0(v623, &qword_27CD44980, &qword_21B118130);
    sub_21B03183C();
    goto LABEL_197;
  }

  sub_21B03179C();
  v488 = OUTLINED_FUNCTION_107();
  v490 = static Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.== infix(_:_:)(v488, v489);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v491, v492, v493);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v494, v495, v496);
  if ((v490 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_199:
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v628);
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v497 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v497, v498, v629);
  if (v185)
  {
    sub_21AF99BE0(v630, &qword_27CD44990, &qword_21B118138);
    v499 = OUTLINED_FUNCTION_599(v633);
    OUTLINED_FUNCTION_37_1(v499, v500, v629);
    if (v185)
    {
      sub_21AF99BE0(v633, &qword_27CD44990, &qword_21B118138);
      goto LABEL_211;
    }

LABEL_207:
    v433 = &qword_27CD46DE8;
    v434 = &qword_21B127D68;
    v435 = v633;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v501 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v501, v502, v629);
  if (v503)
  {
    sub_21AF99BE0(v630, &qword_27CD44990, &qword_21B118138);
    sub_21B03183C();
    goto LABEL_207;
  }

  v504 = v632;
  OUTLINED_FUNCTION_824();
  v505 = *(v629 + 20);
  v506 = *(v631 + v505);
  v507 = *(v504 + v505);
  if (v506 != v507 && !sub_21B047160(v506, v507))
  {
    goto LABEL_191;
  }

  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v508, v509);
  OUTLINED_FUNCTION_541();
  v510 = sub_21B1123C4();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v511, v512, v513);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v514, v515, v516);
  if ((v510 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_211:
  v517 = &qword_27CD44000;
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v634);
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v518 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v518, v519, v637);
  if (v185)
  {
    sub_21AF99BE0(v635, &unk_27CD449A0, &qword_21B118140);
    v520 = OUTLINED_FUNCTION_599(v639);
    OUTLINED_FUNCTION_37_1(v520, v521, v637);
    if (v185)
    {
      sub_21AF99BE0(v639, &unk_27CD449A0, &qword_21B118140);
      goto LABEL_221;
    }

LABEL_219:
    v433 = &qword_27CD46DE0;
    v434 = &qword_21B127D60;
    v435 = v639;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v522 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v522, v523, v637);
  if (v524)
  {
    sub_21AF99BE0(v635, &unk_27CD449A0, &qword_21B118140);
    sub_21B03183C();
    goto LABEL_219;
  }

  sub_21B03179C();
  OUTLINED_FUNCTION_107();
  v525 = static Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.== infix(_:_:)();
  sub_21B03183C();
  v517 = &unk_27CD449A0;
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v526, v527, v528);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v529, v530, v531);
  if ((v525 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_221:
  v532 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isVideoAssetFromPhotos;
  OUTLINED_FUNCTION_28_1();
  v533 = *(v264 + v532);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v534 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__isMailInstantAnswerUpdated;
  OUTLINED_FUNCTION_28_1();
  v535 = *(v264 + v534);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  v536 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  OUTLINED_FUNCTION_28_1();
  LODWORD(v536) = *(v264 + v536);
  v537 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfSectionWhenRanked;
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  if (v536 != *(v517 + v537))
  {
    goto LABEL_27;
  }

  v538 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  OUTLINED_FUNCTION_28_1();
  LODWORD(v538) = *(v264 + v538);
  v539 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__indexOfResultInSectionWhenRanked;
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  if (v538 != *(v517 + v539))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v640);
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v540 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v540, v541, v642);
  if (v185)
  {
    sub_21AF99BE0(v641, &qword_27CD449D0, &qword_21B118148);
    v542 = OUTLINED_FUNCTION_599(v645);
    OUTLINED_FUNCTION_37_1(v542, v543, v642);
    if (v185)
    {
      sub_21AF99BE0(v645, &qword_27CD449D0, &qword_21B118148);
      goto LABEL_232;
    }

LABEL_243:
    v433 = &qword_27CD46DD8;
    v434 = &qword_21B127D58;
    v435 = v645;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v550 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v550, v551, v642);
  if (v552)
  {
    sub_21AF99BE0(v641, &qword_27CD449D0, &qword_21B118148);
    sub_21B03183C();
    goto LABEL_243;
  }

  v553 = v644;
  OUTLINED_FUNCTION_824();
  v554 = *v643;
  v555 = *v553;
  if (*(v553 + 8) == 1)
  {
    if (v555)
    {
      if (v555 == 1)
      {
        if (v554 != 1)
        {
LABEL_191:
          sub_21B03183C();
          OUTLINED_FUNCTION_634();
          sub_21AF99BE0(v482, v483, v484);
          sub_21B03183C();
          OUTLINED_FUNCTION_634();
          goto LABEL_192;
        }
      }

      else if (v554 != 2)
      {
        goto LABEL_191;
      }
    }

    else if (v554)
    {
      goto LABEL_191;
    }
  }

  else if (v554 != v555)
  {
    goto LABEL_191;
  }

  v556 = *(v642 + 20);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v557, v558);
  v559 = OUTLINED_FUNCTION_695();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v560, v561, v562);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v563, v564, v565);
  if ((v559 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_232:
  v544 = OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__hasAppTopHitShortcut_p;
  OUTLINED_FUNCTION_28_1();
  v545 = *(v264 + v544);
  OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_524();
  if (!v185)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v646);
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v546 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v546, v547, v649);
  if (v185)
  {
    sub_21AF99BE0(v647, &qword_27CD449E8, &qword_21B118150);
    v548 = OUTLINED_FUNCTION_599(v651);
    OUTLINED_FUNCTION_37_1(v548, v549, v649);
    if (v185)
    {
      sub_21AF99BE0(v651, &qword_27CD449E8, &qword_21B118150);
      goto LABEL_261;
    }

LABEL_255:
    v433 = &qword_27CD46DD0;
    v434 = &qword_21B127D50;
    v435 = v651;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v566 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v566, v567, v649);
  if (v568)
  {
    sub_21AF99BE0(v647, &qword_27CD449E8, &qword_21B118150);
    sub_21B03183C();
    goto LABEL_255;
  }

  sub_21B03179C();
  v569 = OUTLINED_FUNCTION_107();
  v571 = static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)(v569, v570);
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v572, v573, v574);
  OUTLINED_FUNCTION_826();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v575, v576, v577);
  if ((v571 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_261:
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_600();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_591(v652);
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_397();
  v578 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_37_1(v578, v579, v654);
  if (v185)
  {
    sub_21AF99BE0(v653, &qword_27CD449F8, &qword_21B118158);
    v580 = OUTLINED_FUNCTION_599(v606);
    OUTLINED_FUNCTION_37_1(v580, v581, v654);
    if (v185)
    {
      sub_21AF99BE0(v606, &qword_27CD449F8, &qword_21B118158);
      goto LABEL_274;
    }

LABEL_269:
    v433 = &qword_27CD46DC8;
    v434 = &qword_21B127D48;
    v435 = v606;
    goto LABEL_192;
  }

  sub_21B0AA940();
  v582 = OUTLINED_FUNCTION_539();
  OUTLINED_FUNCTION_37_1(v582, v583, v654);
  if (v584)
  {
    sub_21AF99BE0(v653, &qword_27CD449F8, &qword_21B118158);
    sub_21B03183C();
    goto LABEL_269;
  }

  v585 = v656;
  sub_21B03179C();
  v586 = *(v585 + 8);
  if (!sub_21AFB4A88(*v655, *(v655 + 8), *v585))
  {
    goto LABEL_191;
  }

  v587 = *(v656 + 24);
  if (!sub_21AFB4A88(*(v655 + 16), *(v655 + 24), *(v656 + 16)))
  {
    goto LABEL_191;
  }

  v588 = *(v656 + 40);
  if (!sub_21AFB4A88(*(v655 + 32), *(v655 + 40), *(v656 + 32)))
  {
    goto LABEL_191;
  }

  v589 = *(v654 + 28);
  sub_21B111EC4();
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v590, v591);
  v592 = OUTLINED_FUNCTION_695();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v593, v594, v595);
  OUTLINED_FUNCTION_98();
  sub_21B03183C();
  OUTLINED_FUNCTION_487();
  sub_21AF99BE0(v596, v597, v598);
  if ((v592 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_274:
  OUTLINED_FUNCTION_587();
  OUTLINED_FUNCTION_834();
  OUTLINED_FUNCTION_850(OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyQueryCompletionMatched);
  OUTLINED_FUNCTION_510();
  v599 = OUTLINED_FUNCTION_490();
  if (!sub_21AFB4A88(v599, v600, v601))
  {
    goto LABEL_27;
  }

  v602 = (v264 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_587();
  v603 = *v602;

  v604 = (v607 + OBJC_IVAR____TtCV23SearchOnDeviceAnalytics48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_4033A9E3B9308D91B698097CB2A2897513_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_587();
  v605 = *v604;

  return v603 == v605;
}

uint64_t sub_21B03FE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B20, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B03FF1C(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B03FF8C()
{
  sub_21B099CBC(&qword_27CD44D08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B040024()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43FB0);
  __swift_project_value_buffer(v0, qword_27CD43FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "totalNumberOfAssets";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfEmbeddingMatchedAssets";
  *(v10 + 1) = 35;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfMetadataMatchedAssets";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_10_2();
        sub_21AF846AC();
        break;
      case 2:
        OUTLINED_FUNCTION_10_2();
        sub_21B040334();
        break;
      case 1:
        OUTLINED_FUNCTION_10_2();
        sub_21B0402CC();
        break;
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_340(a1);
  v4 = *(v1 + 8);
  if (!sub_21AFB4A88(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_848();
  if (!sub_21AFB4A88(v5, v6, v7))
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_492();
  if (!sub_21AFB4A88(v8, v9, v10))
  {
    return 0;
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_736(v11);
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v12, v13);
  return OUTLINED_FUNCTION_40_1() & 1;
}

uint64_t (*sub_21B040594(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_21B0405E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B040668(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B0406D8()
{
  sub_21B099CBC(&qword_27CD45A18, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo);

  return sub_21B112114();
}

uint64_t sub_21B040770()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43FC8);
  __swift_project_value_buffer(v0, qword_27CD43FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "positionIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isEmbeddingMatched";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isMetadataMatched";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isVideo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isFavorite";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosSuggestionType";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_238();
        sub_21B112094();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_49_1();
        sub_21B111F94();
        break;
      case 6:
        OUTLINED_FUNCTION_10_2();
        sub_21B040B04();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_PhotosAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_2() || (OUTLINED_FUNCTION_35_3(), sub_21B112204(), !v0))
  {
    if (*(v1 + 8) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
    {
      if (*(v1 + 9) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
      {
        if (*(v1 + 10) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
        {
          if (*(v1 + 11) != 1 || (OUTLINED_FUNCTION_36_1(), sub_21B112164(), !v0))
          {
            if (!*(v1 + 16) || (v2 = *(v1 + 24), OUTLINED_FUNCTION_472(), sub_21B099DAC(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v0))
            {
              v3 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0) + 40);
              OUTLINED_FUNCTION_27_2();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_282(a1, a2);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_81();
  if (*(v5 + 8) != *(v6 + 8))
  {
    return 0;
  }

  if (v3[9] != v2[9])
  {
    return 0;
  }

  if (v3[10] != v2[10])
  {
    return 0;
  }

  if (v3[11] != v2[11])
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_848();
  if (!sub_21AFB4A88(v7, v8, v9))
  {
    return 0;
  }

  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_873(v10);
  OUTLINED_FUNCTION_0_15();
  sub_21B099CBC(v11, v12);
  return OUTLINED_FUNCTION_40_1() & 1;
}

uint64_t (*sub_21B040DC4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_21B040E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B10, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B040E98(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B040F08()
{
  sub_21B099CBC(&qword_27CD45A30, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes);

  return sub_21B112114();
}

uint64_t sub_21B04100C()
{
  OUTLINED_FUNCTION_515();
  while (1)
  {
    OUTLINED_FUNCTION_30_2();
    result = sub_21B111F64();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_445();
      v0();
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_SafariAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_472(), sub_21B099E00(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
  {
    v4 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0) + 20);
    OUTLINED_FUNCTION_27_2();
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_SafariAttributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
      OUTLINED_FUNCTION_870(v4);
      OUTLINED_FUNCTION_0_15();
      sub_21B099CBC(v5, v6);
      return OUTLINED_FUNCTION_40_1() & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_21B0412A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B08, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B041324(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B041394()
{
  sub_21B099CBC(&qword_27CD45A48, type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes);

  return sub_21B112114();
}

uint64_t sub_21B041420()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, &qword_27CD43FF8);
  __swift_project_value_buffer(v0, &qword_27CD43FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B1141D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dataSources";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestionScore";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "skgMegadomeSpotlightIndexEntries";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_4();
  while (1)
  {
    OUTLINED_FUNCTION_48_1();
    result = sub_21B111F64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FF4();
        break;
      case 2:
        OUTLINED_FUNCTION_49_1();
        sub_21B111FE4();
        break;
      case 1:
        OUTLINED_FUNCTION_10_2();
        sub_21B0416D0();
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_26_3();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_472(), sub_21B099E54(), OUTLINED_FUNCTION_58_0(), sub_21B112174(), !v1))
  {
    if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_143(), sub_21B112194(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_36_1(), sub_21B1121A4(), !v1))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0) + 28);
        OUTLINED_FUNCTION_27_2();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v1 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v1 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v1)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v1 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_722();
    if (v4)
    {
      OUTLINED_FUNCTION_737();
      if (v4)
      {
        v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
        OUTLINED_FUNCTION_736(v5);
        OUTLINED_FUNCTION_0_15();
        sub_21B099CBC(v6, v7);
        return OUTLINED_FUNCTION_40_1() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21B04197C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B099CBC(&qword_27CD46B00, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21B0419FC(uint64_t a1)
{
  v2 = sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21B041A6C()
{
  sub_21B099CBC(&qword_27CD45A60, type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback);

  return sub_21B112114();
}

uint64_t sub_21B041AF8()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD44010);
  __swift_project_value_buffer(v0, qword_27CD44010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_21B1180A0;
  v4 = v146 + v3 + v1[14];
  *(v146 + v3) = 1;
  *v4 = "wasReorderedByRecency";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21B112234();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v146 + v3 + v2 + v1[14];
  *(v146 + v3 + v2) = 2;
  *v8 = "numEngagements";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v146 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "numDaysEngagedLast30Days";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v146 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "averageEngagementAgeLast7Days";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v7();
  v13 = (v146 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "averageEngagementAgeLast14Days";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v7();
  v15 = (v146 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "averageEngagementAgeLast21Days";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  v17 = (v146 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "averageEngagementAgeLast30Days";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v7();
  v19 = (v146 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "daysSinceReceipt";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v146 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "l1Score";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v7();
  v23 = (v146 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "l2Score";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v146 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "isFlagged";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v146 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isRepliedTo";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v146 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isSemanticMatch";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v146 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isSyntacticMatch";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v146 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "semanticScore";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v7();
  v35 = (v146 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "syntacticScore";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v146 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "countUnigramMatchInAuthors";
  *(v38 + 1) = 26;
  v38[16] = 2;
  v7();
  v39 = (v146 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "countBigramMatchInAuthors";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = (v146 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "countNgramMatchInAuthors";
  *(v42 + 1) = 24;
  v42[16] = 2;
  v7();
  v43 = (v146 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "countUnigramPrefixMatchInAuthors";
  *(v44 + 1) = 32;
  v44[16] = 2;
  v7();
  v45 = (v146 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "countBigramPrefixMatchInAuthors";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v146 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "countNgramPrefixMatchInAuthors";
  *(v48 + 1) = 30;
  v48[16] = 2;
  v7();
  v49 = (v146 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "countUnigramMatchInAuthorEmailAddresses";
  *(v50 + 1) = 39;
  v50[16] = 2;
  v7();
  v51 = (v146 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "countBigramMatchInAuthorEmailAddresses";
  *(v52 + 1) = 38;
  v52[16] = 2;
  v7();
  v53 = (v146 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "countNgramMatchInAuthorEmailAddresses";
  *(v54 + 1) = 37;
  v54[16] = 2;
  v7();
  v55 = (v146 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "countUnigramPrefixMatchInAuthorEmailAddresses";
  *(v56 + 1) = 45;
  v56[16] = 2;
  v7();
  v57 = (v146 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "countBigramPrefixMatchInAuthorEmailAddresses";
  *(v58 + 1) = 44;
  v58[16] = 2;
  v7();
  v59 = (v146 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "countNgramPrefixMatchInAuthorEmailAddresses";
  *(v60 + 1) = 43;
  v60[16] = 2;
  v7();
  v61 = (v146 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "countUnigramMatchInSubject";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v7();
  v63 = (v146 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "countBigramMatchInSubject";
  *(v64 + 1) = 25;
  v64[16] = 2;
  v7();
  v65 = (v146 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "countNgramMatchInSubject";
  *(v66 + 1) = 24;
  v66[16] = 2;
  v7();
  v67 = (v146 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "countUnigramPrefixMatchInSubject";
  *(v68 + 1) = 32;
  v68[16] = 2;
  v7();
  v69 = (v146 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "countBigramPrefixMatchInSubject";
  *(v70 + 1) = 31;
  v70[16] = 2;
  v7();
  v71 = (v146 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "countNgramPrefixMatchInSubject";
  *(v72 + 1) = 30;
  v72[16] = 2;
  v7();
  v73 = (v146 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "countUnigramMatchInTextContent";
  *(v74 + 1) = 30;
  v74[16] = 2;
  v7();
  v75 = (v146 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "countBigramMatchInTextContent";
  *(v76 + 1) = 29;
  v76[16] = 2;
  v7();
  v77 = (v146 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "countNgramMatchInTextContent";
  *(v78 + 1) = 28;
  v78[16] = 2;
  v7();
  v79 = (v146 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "countUnigramPrefixMatchInTextContent";
  *(v80 + 1) = 36;
  v80[16] = 2;
  v7();
  v81 = (v146 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "countBigramPrefixMatchInTextContent";
  *(v82 + 1) = 35;
  v82[16] = 2;
  v7();
  v83 = (v146 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "countNgramPrefixMatchInTextContent";
  *(v84 + 1) = 34;
  v84[16] = 2;
  v7();
  v85 = (v146 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "countUnigramMatchInRecipients";
  *(v86 + 1) = 29;
  v86[16] = 2;
  v7();
  v87 = (v146 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "countBigramMatchInRecipients";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v7();
  v89 = (v146 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "countNgramMatchInRecipients";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v146 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "countUnigramPrefixMatchInRecipients";
  *(v92 + 1) = 35;
  v92[16] = 2;
  v7();
  v93 = (v146 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "countBigramPrefixMatchInRecipients";
  *(v94 + 1) = 34;
  v94[16] = 2;
  v7();
  v95 = (v146 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "countNgramPrefixMatchInRecipients";
  *(v96 + 1) = 33;
  v96[16] = 2;
  v7();
  v97 = (v146 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "countUnigramMatchInRecipientEmailAddresses";
  *(v98 + 1) = 42;
  v98[16] = 2;
  v7();
  v99 = (v146 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "countBigramMatchInRecipientEmailAddresses";
  *(v100 + 1) = 41;
  v100[16] = 2;
  v7();
  v101 = (v146 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "countNgramMatchInRecipientEmailAddresses";
  *(v102 + 1) = 40;
  v102[16] = 2;
  v7();
  v103 = (v146 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "countUnigramPrefixMatchInRecipientEmailAddresses";
  *(v104 + 1) = 48;
  v104[16] = 2;
  v7();
  v105 = (v146 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "countBigramPrefixMatchInRecipientEmailAddresses";
  *(v106 + 1) = 47;
  v106[16] = 2;
  v7();
  v107 = (v146 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "countNgramPrefixMatchInRecipientEmailAddresses";
  *(v108 + 1) = 46;
  v108[16] = 2;
  v7();
  v109 = (v146 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "countUnigramMatchInEmailAddresses";
  *(v110 + 1) = 33;
  v110[16] = 2;
  v7();
  v111 = (v146 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "countBigramMatchInEmailAddresses";
  *(v112 + 1) = 32;
  v112[16] = 2;
  v7();
  v113 = (v146 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "countNgramMatchInEmailAddresses";
  *(v114 + 1) = 31;
  v114[16] = 2;
  v7();
  v115 = (v146 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "countUnigramPrefixMatchInEmailAddresses";
  *(v116 + 1) = 39;
  v116[16] = 2;
  v7();
  v117 = (v146 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "countBigramPrefixMatchInEmailAddresses";
  *(v118 + 1) = 38;
  v118[16] = 2;
  v7();
  v119 = (v146 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "countNgramPrefixMatchInEmailAddresses";
  *(v120 + 1) = 37;
  v120[16] = 2;
  v7();
  v121 = (v146 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "countUnigramMatchInAttachmentTypes";
  *(v122 + 1) = 34;
  v122[16] = 2;
  v7();
  v123 = (v146 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "countBigramMatchInAttachmentTypes";
  *(v124 + 1) = 33;
  v124[16] = 2;
  v7();
  v125 = (v146 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "countNgramMatchInAttachmentTypes";
  *(v126 + 1) = 32;
  v126[16] = 2;
  v7();
  v127 = (v146 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "countUnigramPrefixMatchInAttachmentTypes";
  *(v128 + 1) = 40;
  v128[16] = 2;
  v7();
  v129 = (v146 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "countBigramPrefixMatchInAttachmentTypes";
  *(v130 + 1) = 39;
  v130[16] = 2;
  v7();
  v131 = (v146 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "countNgramPrefixMatchInAttachmentTypes";
  *(v132 + 1) = 38;
  v132[16] = 2;
  v7();
  v133 = (v146 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "countUnigramMatchInAttachmentNames";
  *(v134 + 1) = 34;
  v134[16] = 2;
  v7();
  v135 = (v146 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "countBigramMatchInAttachmentNames";
  *(v136 + 1) = 33;
  v136[16] = 2;
  v7();
  v137 = (v146 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 67;
  *v138 = "countNgramMatchInAttachmentNames";
  *(v138 + 1) = 32;
  v138[16] = 2;
  v7();
  v139 = (v146 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 68;
  *v140 = "countUnigramPrefixMatchInAttachmentNames";
  *(v140 + 1) = 40;
  v140[16] = 2;
  v7();
  v141 = (v146 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 69;
  *v142 = "countBigramPrefixMatchInAttachmentNames";
  *(v142 + 1) = 39;
  v142[16] = 2;
  v7();
  v143 = (v146 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 70;
  *v144 = "countNgramPrefixMatchInAttachmentNames";
  *(v144 + 1) = 38;
  v144[16] = 2;
  v7();
  return sub_21B112244();
}

void sub_21B042D08()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  bzero((v0 + 24), 0x114uLL);
  qword_27CD44028 = v0;
}

uint64_t sub_21B042DF8(uint64_t a1)
{
  *(v1 + 16) = 0;
  bzero((v1 + 24), 0x114uLL);
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v5;
  swift_beginAccess();
  LODWORD(v5) = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 52) = v5;
  swift_beginAccess();
  v6 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v6;
  swift_beginAccess();
  v7 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v7;
  swift_beginAccess();
  v8 = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 68) = v8;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 74);
  swift_beginAccess();
  *(v1 + 74) = v6;
  swift_beginAccess();
  LOBYTE(v6) = *(a1 + 75);
  swift_beginAccess();
  *(v1 + 75) = v6;
  swift_beginAccess();
  v9 = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 76) = v9;
  swift_beginAccess();
  v10 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v10;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 84) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 88) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 92) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 96) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 100) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 108) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 112) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 116) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 124) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 128) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 132) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 136) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 140) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 148);
  swift_beginAccess();
  *(v1 + 148) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 152) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 156);
  swift_beginAccess();
  *(v1 + 156) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 160) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 164) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 168) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 172);
  swift_beginAccess();
  *(v1 + 172) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 176) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 180);
  swift_beginAccess();
  *(v1 + 180) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 184) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 188);
  swift_beginAccess();
  *(v1 + 188) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 192);
  swift_beginAccess();
  *(v1 + 192) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 196) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 200) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 204);
  swift_beginAccess();
  *(v1 + 204) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 208) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 212);
  swift_beginAccess();
  *(v1 + 212) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 216) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 220);
  swift_beginAccess();
  *(v1 + 220) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 224);
  swift_beginAccess();
  *(v1 + 224) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 228);
  swift_beginAccess();
  *(v1 + 228) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 232) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 236);
  swift_beginAccess();
  *(v1 + 236) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 240);
  swift_beginAccess();
  *(v1 + 240) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 244);
  swift_beginAccess();
  *(v1 + 244) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 248) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 252);
  swift_beginAccess();
  *(v1 + 252) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 256) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 260);
  swift_beginAccess();
  *(v1 + 260) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 264) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 268);
  swift_beginAccess();
  *(v1 + 268) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 272) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 276);
  swift_beginAccess();
  *(v1 + 276) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 280) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 284);
  swift_beginAccess();
  *(v1 + 284) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 288);
  swift_beginAccess();
  *(v1 + 288) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 292);
  swift_beginAccess();
  *(v1 + 292) = v6;
  swift_beginAccess();
  LODWORD(v6) = *(a1 + 296);

  swift_beginAccess();
  *(v1 + 296) = v6;
  return v1;
}