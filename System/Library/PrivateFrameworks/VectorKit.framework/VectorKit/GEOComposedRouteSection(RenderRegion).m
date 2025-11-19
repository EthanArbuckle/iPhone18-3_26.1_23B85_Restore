@interface GEOComposedRouteSection(RenderRegion)
- (id)pathsForRenderRegion:()RenderRegion inOverlay:elevationSource:elevationSourceContext:;
- (id)pathsForRenderRegion:()RenderRegion inOverlay:excludedSegments:elevationSource:elevationSourceContext:;
- (id)pathsForRenderRegion:()RenderRegion inOverlay:shouldSnapToTransit:verifySnapping:elevationSource:elevationSourceContext:;
@end

@implementation GEOComposedRouteSection(RenderRegion)

- (id)pathsForRenderRegion:()RenderRegion inOverlay:excludedSegments:elevationSource:elevationSourceContext:
{
  v136 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v110 = a4;
  v105 = v10;
  [v10 visibleRect];
  v113 = v12;
  v115 = v11;
  v131 = v11;
  v132 = v12;
  v116 = v13;
  *v133 = v13;
  *&v133[1] = v14;
  v111 = v14;
  [a1 vkBounds];
  v19 = 0;
  v128 = v15;
  v129 = v16;
  v20 = &v128;
  *v130 = v17;
  *&v130[1] = v18;
  v21 = &v131;
  v22 = 1;
  do
  {
    if (*&v133[v19] <= *v20 || *v21 >= *&v130[v19])
    {
      v108 = 0;
      goto LABEL_90;
    }

    v23 = v22;
    v22 = 0;
    v20 = &v129;
    v21 = &v132;
    v19 = 1;
  }

  while ((v23 & 1) != 0);
  v101 = v16;
  v102 = v18;
  v103 = v17;
  v104 = v15;
  v109 = a5;
  v108 = [MEMORY[0x1E695DF70] array];
  v24.f64[0] = v116;
  v24.f64[1] = v111;
  v25.f64[0] = v115;
  v25.f64[1] = v113;
  v26.f64[0] = v104;
  v26.f64[1] = v101;
  v27 = vsubq_f64(v25, v26);
  v28.f64[0] = v103;
  v28.f64[1] = v102;
  v29 = vsubq_f64(v24, v26);
  v30 = vsubq_f64(v28, v26);
  v127 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v27, v30)), vdivq_f64(v29, v30));
  v126[0] = 0;
  v126[1] = 0;
  v125 = v126;
  v31 = [v110 composedRoute];
  v32 = [v31 transportType] == 2;

  if (v32)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v33 = [v110 composedRoute];
    v34 = [v33 visualInfos];

    v35 = [v34 countByEnumeratingWithState:&v121 objects:v135 count:16];
    if (v35)
    {
      v36 = *v122;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v122 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = *(*(&v121 + 1) + 8 * i);
          if ([v38 type] == 191)
          {
            if ([v38 routeCoordinateRange])
            {
              v118 = [v38 routeCoordinateRange];
              std::__tree<int>::__emplace_unique_key_args<int,int>(&v125, v118);
            }

            [v38 routeCoordinateRange];
            if (v39)
            {
              [v38 routeCoordinateRange];
              v118 = v40;
              std::__tree<int>::__emplace_unique_key_args<int,int>(&v125, v40);
            }
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v121 objects:v135 count:16];
      }

      while (v35);
    }

    v41 = [v110 splitSections];
    v41[1] = *v41;
    v42 = v125;
    if (v125 != v126)
    {
      v43 = 0;
      do
      {
        v44 = *(v42 + 7);
        v45 = [v110 splitSections];
        v46 = v45;
        v47 = v45[1];
        v48 = v45[2];
        if (v47 >= v48)
        {
          v50 = (v47 - *v45) >> 4;
          v51 = v50 + 1;
          if ((v50 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v52 = v48 - *v45;
          if (v52 >> 3 > v51)
          {
            v51 = v52 >> 3;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF0)
          {
            v53 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v53);
          }

          v54 = (16 * v50);
          *v54 = v43;
          v54[1] = 0;
          v54[2] = v44;
          v54[3] = 0;
          v49 = 16 * v50 + 16;
          v55 = v46[1] - *v46;
          v56 = v54 - v55;
          memcpy(v54 - v55, *v46, v55);
          v57 = *v46;
          *v46 = v56;
          v46[1] = v49;
          v46[2] = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          *v47 = v43;
          *(v47 + 1) = 0;
          v49 = (v47 + 16);
          *(v47 + 2) = v44;
          *(v47 + 3) = 0;
        }

        v46[1] = v49;
        v58 = v42[1];
        if (v58)
        {
          do
          {
            v59 = v58;
            v58 = *v58;
          }

          while (v58);
        }

        else
        {
          do
          {
            v59 = v42[2];
            v60 = *v59 == v42;
            v42 = v59;
          }

          while (!v60);
        }

        v43 = v44;
        v42 = v59;
      }

      while (v59 != v126);
    }
  }

  v61 = a1;
  v62 = [a1 endPointIndex];
  v63 = 0;
  v64 = 0;
  v117 = v62;
  v65 = v62;
  while (v63 < [v61 pointCount] - 1)
  {
    v112 = *MEMORY[0x1E69A27A0];
    v114 = *&v61[v112];
    v66 = (v114 + v63);
    v67 = (*&v61[*MEMORY[0x1E69A2798]] + 12 * v63);
    v134[0] = *v67;
    v134[1] = *(v67 + 12);
    *&v68 = gm::Box<float,2>::boxEnclosingPoints(v134, 2);
    v69 = 0;
    v70 = 0;
    v118 = LODWORD(v68);
    v119 = v71;
    v120[0] = v72;
    v120[1] = v73;
    v74 = &v127;
    v75 = &v118;
    while (1)
    {
      LODWORD(v68) = v120[v70];
      if (*&v68 <= v74->f32[0])
      {
        break;
      }

      LODWORD(v68) = *v75;
      v76 = *v75 >= v127.f32[v70 + 2];
      v77 = v69 | v76;
      v69 = 1;
      v75 = &v119;
      v74 = &v127.i32[1];
      v70 = 1;
      if (v77)
      {
        goto LABEL_45;
      }
    }

    v76 = 1;
LABEL_45:
    if (v65 == v117)
    {
      v78 = 0;
    }

    else
    {
      v79 = v126[0];
      if (!v126[0])
      {
        goto LABEL_56;
      }

      v80 = v126;
      do
      {
        v81 = v79;
        v82 = v80;
        v83 = *(v79 + 7);
        if (v83 >= v63)
        {
          v80 = v79;
        }

        v79 = v79[v83 < v63];
      }

      while (v79);
      if (v80 == v126)
      {
        goto LABEL_56;
      }

      if (v83 < v63)
      {
        v81 = v82;
      }

      if (v63 < *(v81 + 7))
      {
LABEL_56:
        v80 = v126;
      }

      v78 = v80 != v126;
    }

    if (v76 || v78)
    {
      if (v65 < v117)
      {
        v84 = [v61 transportType];
        v85 = off_1E7B2EB88;
        if (v84)
        {
          v85 = off_1E7B2EC58;
        }

        v86 = [objc_alloc(*v85) initWithOverlay:v110 section:a1 routeStartIndex:v65 routeEndIndex:v66 matchedPathSegments:0 elevationSource:a6 elevationSourceContext:a7];
        [v108 addObject:v86];
        if (v78)
        {
          v65 = v66;
        }

        else
        {
          v65 = v117;
        }

LABEL_75:
        v89 = v64;
LABEL_76:
        v61 = a1;
        goto LABEL_78;
      }
    }

    else
    {
      if (v65 >= v117)
      {
        v65 = v66;
      }

      else
      {
        v65 = v65;
      }

      if (v109)
      {
        v87 = (v109[1] - *v109) >> 3;
        if (v87 > v64)
        {
          v88 = v64;
          v89 = (v64 + 1);
          while (1)
          {
            v90 = (*v109 + 8 * v88);
            if (v66 >= *v90)
            {
              v91 = v90[1];
              v64 = v89;
              if (v66 <= v91)
              {
                break;
              }
            }

            v88 = v89;
            v92 = v87 > v89;
            v89 = (v89 + 1);
            if (!v92)
            {
              goto LABEL_75;
            }
          }

          v93 = v114;
          if (v65 < v66)
          {
            v94 = [a1 transportType];
            v95 = off_1E7B2EB88;
            if (v94)
            {
              v95 = off_1E7B2EC58;
            }

            v96 = [objc_alloc(*v95) initWithOverlay:v110 section:a1 routeStartIndex:v65 routeEndIndex:v66 matchedPathSegments:0 elevationSource:a6 elevationSourceContext:a7];
            [v108 addObject:v96];

            v91 = v90[1];
            v93 = *&a1[v112];
          }

          v63 = v91 - v114;
          v65 = v91 - v114 + v93;
          goto LABEL_76;
        }
      }
    }

    v89 = v64;
LABEL_78:
    ++v63;
    v64 = v89;
  }

  if (v65 < v117)
  {
    v97 = [v61 transportType];
    v98 = off_1E7B2EB88;
    if (v97)
    {
      v98 = off_1E7B2EC58;
    }

    v99 = [objc_alloc(*v98) initWithOverlay:v110 section:a1 routeStartIndex:v65 routeEndIndex:objc_msgSend(a1 matchedPathSegments:"endPointIndex") elevationSource:0 elevationSourceContext:{a6, a7}];
    [v108 addObject:v99];
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v126[0]);
LABEL_90:

  return v108;
}

- (id)pathsForRenderRegion:()RenderRegion inOverlay:elevationSource:elevationSourceContext:
{
  v6 = &a1[*MEMORY[0x1E69A2780]];
  v7 = &a1[*MEMORY[0x1E69A2788]];
  v8 = *(v6 + 24);
  *v7 = *v6;
  *(v7 + 1) = v8;
  v9 = [a1 pathsForRenderRegion:a3 inOverlay:a4 excludedSegments:0 elevationSource:a5 elevationSourceContext:a6];

  return v9;
}

- (id)pathsForRenderRegion:()RenderRegion inOverlay:shouldSnapToTransit:verifySnapping:elevationSource:elevationSourceContext:
{
  v8 = [a1 pathsForRenderRegion:a3 inOverlay:a4 elevationSource:a7 elevationSourceContext:a8];

  return v8;
}

@end