@interface ICStoreArtworkSizeInfo
- (BOOL)isEqual:(id)a3;
- (CGSize)maxSupportedSize;
- (unint64_t)hash;
@end

@implementation ICStoreArtworkSizeInfo

- (CGSize)maxSupportedSize
{
  width = self->_maxSupportedSize.width;
  height = self->_maxSupportedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v104 = __ROR8__(v14 + v13, 32);
  v109 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v99 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = (v17 + v99) ^ __ROR8__(v99, 51);
  type = self->_type;
  v20 = v104 + (v109 ^ type);
  v21 = __ROR8__(v109 ^ type, 48);
  v22 = (v20 ^ v21) + __ROR8__(v17 + v99, 32);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v20 + v18;
  v105 = __ROR8__(v24, 32);
  v110 = v23;
  v95 = v22 ^ type;
  v100 = v24 ^ __ROR8__(v18, 47);
  v25 = self->_supportedSizes;
  data = [(NSArray *)v25 hash];
  v26 = (v95 + v100) ^ __ROR8__(v100, 51);
  v27 = v105 + (v110 ^ data);
  v28 = __ROR8__(v110 ^ data, 48);
  v29 = (v27 ^ v28) + __ROR8__(v95 + v100, 32);
  v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
  v31 = v27 + v26;
  v106 = __ROR8__(v31, 32);
  v111 = v30;
  v96 = v29 ^ data;
  v101 = v31 ^ __ROR8__(v26, 47);

  height = self->_maxSupportedSize.height;
  v33 = self->_hasMaxSupportedSize | (height << 32);
  v34 = (v96 + v101) ^ __ROR8__(v101, 51);
  v35 = v106 + (v111 ^ v33);
  v36 = __ROR8__(v111 ^ v33, 48);
  v37 = (v35 ^ v36) + __ROR8__(v96 + v101, 32);
  v38 = v37 ^ __ROR8__(v35 ^ v36, 43);
  v39 = v35 + v34;
  v107 = __ROR8__(v39, 32);
  v97 = v37 ^ v33;
  v102 = v39 ^ __ROR8__(v34, 47);
  v113 = HIDWORD(height) + 0x2400000000000000;
  width = self->_maxSupportedSize.width;
  v41 = v113;
  if ((v113 & 0x400000000000000) != 0)
  {
    v59 = v113 & 0xFFFFFFFFFFFFFFLL | (width << 32);
    v60 = (v97 + v102) ^ __ROR8__(v102, 51);
    v61 = v107 + (v38 ^ v59);
    v62 = __ROR8__(v38 ^ v59, 48);
    v63 = (v61 ^ v62) + __ROR8__(v97 + v102, 32);
    v64 = v63 ^ __ROR8__(v61 ^ v62, 43);
    v65 = v61 + v60;
    v108 = __ROR8__(v65, 32);
    v112 = v64;
    v98 = v63 ^ v59;
    v103 = v65 ^ __ROR8__(v60, 47);
    v58 = (v113 & 0xFF00000000000000) + HIDWORD(width) + 0x800000000000000;
  }

  else
  {
    v42 = v97;
    v44 = v107;
    v43 = v102;
    if ((v113 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v45 = (v97 + v102) ^ __ROR8__(v102, 51);
      v46 = v107 + (v38 ^ v113 & 0xFFFFFFFFFFFFFFLL);
      v47 = __ROR8__(v38 ^ v113 & 0xFFFFFFFFFFFFFFLL, 48);
      v48 = (v46 ^ v47) + __ROR8__(v97 + v102, 32);
      v38 = v48 ^ __ROR8__(v46 ^ v47, 43);
      v49 = v46 + v45;
      v43 = v49 ^ __ROR8__(v45, 47);
      v44 = __ROR8__(v49, 32);
      v42 = v48 ^ v113 & 0xFFFFFFFFFFFFFFLL;
      v41 = v113 & 0xFF00000000000000;
    }

    v50 = v38 ^ width;
    v51 = v42 + v43;
    v52 = (v42 + v43) ^ __ROR8__(v43, 51);
    v53 = v44 + v50;
    v54 = __ROR8__(v50, 48);
    v55 = (v53 ^ v54) + __ROR8__(v51, 32);
    v56 = v55 ^ __ROR8__(v53 ^ v54, 43);
    v57 = v53 + v52;
    v108 = __ROR8__(v57, 32);
    v112 = v56;
    v98 = v55 ^ width;
    v103 = v57 ^ __ROR8__(v52, 47);
    v58 = v41 + 0x800000000000000;
  }

  v66 = (v98 + v103) ^ __ROR8__(v103, 51);
  v67 = v108 + (v112 ^ v58);
  v68 = __ROR8__(v112 ^ v58, 48);
  v69 = (v67 ^ v68) + __ROR8__(v98 + v103, 32);
  v70 = v69 ^ __ROR8__(v67 ^ v68, 43);
  v71 = v67 + v66;
  v72 = v71 ^ __ROR8__(v66, 47);
  v73 = (v69 ^ v58) + v72;
  v74 = v73 ^ __ROR8__(v72, 51);
  v75 = (__ROR8__(v71, 32) ^ 0xFFLL) + v70;
  v76 = __ROR8__(v70, 48);
  v77 = __ROR8__(v73, 32) + (v75 ^ v76);
  v78 = v77 ^ __ROR8__(v75 ^ v76, 43);
  v79 = v74 + v75;
  v80 = v79 ^ __ROR8__(v74, 47);
  v81 = v80 + v77;
  v82 = v81 ^ __ROR8__(v80, 51);
  v83 = __ROR8__(v79, 32) + v78;
  v84 = __ROR8__(v78, 48);
  v85 = __ROR8__(v81, 32) + (v83 ^ v84);
  v86 = v85 ^ __ROR8__(v83 ^ v84, 43);
  v87 = v82 + v83;
  v88 = v87 ^ __ROR8__(v82, 47);
  v89 = v88 + v85;
  v90 = v89 ^ __ROR8__(v88, 51);
  v91 = __ROR8__(v87, 32) + v86;
  v92 = __ROR8__(v86, 48);
  v93 = __ROR8__(v89, 32) + (v91 ^ v92);
  return (v90 + v91) ^ __ROR8__(v90, 47) ^ v93 ^ __ROR8__(v90 + v91, 32) ^ v93 ^ __ROR8__(v91 ^ v92, 43);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(ICStoreArtworkSizeInfo *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(ICStoreArtworkSizeInfo *)self type];
      if (v6 == [(ICStoreArtworkSizeInfo *)v5 type])
      {
        v7 = [(ICStoreArtworkSizeInfo *)self supportedSizes];
        v8 = [(ICStoreArtworkSizeInfo *)v5 supportedSizes];
        v9 = v8;
        if (v7 == v8)
        {
        }

        else
        {
          v10 = [v7 isEqual:v8];

          if ((v10 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v12 = [(ICStoreArtworkSizeInfo *)self hasMaxSupportedSize];
        if (v12 == [(ICStoreArtworkSizeInfo *)v5 hasMaxSupportedSize])
        {
          [(ICStoreArtworkSizeInfo *)self maxSupportedSize];
          v15 = v14;
          v17 = v16;
          [(ICStoreArtworkSizeInfo *)v5 maxSupportedSize];
          v11 = v17 == v19 && v15 == v18;
          goto LABEL_12;
        }
      }

LABEL_11:
      v11 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end